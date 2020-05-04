# !/bin/bash

# Installation script i3-gaps window manager in linix.
# Linux: Debian 10 "Buster".
# https://github.com/v-v-tarasov/Bash/
# Author e-mail: v-v-tarasov@github.com

echo ""
echo "-----------------------------------"
echo "Installation i3-gaps window manager"
echo "-----------------------------------"
echo ""

sudo apt update && apt upgrade -y
sudo apt install gcc make dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev i3 feh compton -y
mkdir tmp
cd tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

echo "-----------------------"
echo "Installation completed!"
echo "-----------------------"
echo ""
