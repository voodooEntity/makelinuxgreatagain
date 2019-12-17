#!/bin/bash
echo -e "- - - - - - - - - - - - - - - - - - - - - -"
echo -e "Make linux great again!"
echo -e "> An installer of basic tools for debian based *nix systems\n"

# first we make sure you are root 
if [ "$EUID" -ne 0 ]
  then echo -e "!!Please run as root!!! aborting\n"
  exit
fi

# now we update the repo lists and suppress output
apt update > /dev/null

# than we install all those nice things 
apt --assume-yes install vim htop aptitude curl net-tools iotop tmux  

# now we list other packages that may be interresting
echo -e "- - - - - - - - - - - - - - - - - - - - - -"
echo -e "The following packages are not installed \nbut may be interresting for you:"
echo -e "- iptables-persistent"
echo -e "\n\nThis script was brought to you by Maze & voodooEntity\n\nso long and thanks for all the fish\n"
