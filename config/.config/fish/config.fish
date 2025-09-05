set -U fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source
    set -Ux CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense' # optional
    mkdir -p ~/.config/fish/completions
    carapace --list | awk '{print $1}' | xargs -I{} touch ~/.config/fish/completions/{}.fish # disable auto-loaded completions (#185)
    carapace _carapace | source
    # abbr --add code /var/lib/flatpak/exports/bin/com.visualstudio.code
end