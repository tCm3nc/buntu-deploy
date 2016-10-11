#!/bin/bash
cd /tmp/
sudo apt-get install -y python-pip git vim fonts-font-awesome firefox scrot mpd tmux mpc ncmpcpp connman connman-ui parcellite dunst nautilus x11-xserver-utils hsetroot 
# Termite terminal
wget https://raw.githubusercontent.com/Corwind/termite-install/master/termite-install.sh
chmod +x termite-install.sh && ./termite-install.sh
rm termite-install.sh
rm -rf ./vte-ng
rm -rf ./termite
# vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# powerline and vim related
sudo pip install --user git+git://github.com/powerline/powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
git clone https://github.com/powerline/fonts ~/fonts
. ~/fonts/install.sh
vim +:PluginInstall

# cscope
sudo apt-get install -y cscope exuberant-ctags

# clone my config directory
mkdir tCmconf
git clone https://github.com/tCm3nc/dotconfig.git ./tCmconf
cd tCmconf
cp -r .* ~
cp -r * ~
cd ../
rm -rf tCmconf

# Keyboard magickery
xset led 3

# reboot
sudo reboot
