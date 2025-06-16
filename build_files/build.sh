#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf -y copr enable pgdev/ghostty
dnf -y copr enable peterwu/iosevka
dnf -y copr enable solopasha/hyprland
dnf -y copr enable tofik/nwg-shell
dnf -y copr enable atim/starship
dnf -y copr enable peterwu/iosevka
dnf -y install fish atuin hyprland hyprland-plugin-hyprbars stow hyprlock hypridle hyprpaper hyprlock hyprshot hyprdim hyprsunset cliphist waybar waypaper blueman network-manager-applet xwaylandvideobridge udiskie mpv feh zoxide jq qt6ct qt5ct qt6-qtwayland qt5-qtwayland copyq lsd ImageMagick GraphicsMagick swww wlogout wl-paste wl-clipboard wl-copy nwg-clipman nwg-shell-config nwg-drawer python-psutil fd brightnessctl btrbk micro restic bat cosmic-term starship swaync cargo satty vips uwsm breeze-gtk plasma-breeze rsms-inter{,-vf}-fonts jetbrains-mono-fonts-all iosevka-etoile-fonts meson cmake scdoc dmenu python3-pyxdg python3-dbus gtk3-devel gtk4-devel gobject-introspection-devel gtk-layer-shell-devel kdeconnectd kde-connect-nautilus

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
