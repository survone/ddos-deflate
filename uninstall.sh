#!/bin/bash
echo; echo "Uninstalling DOS-Deflate"
echo; echo; echo -n "Deleting script files....."
if [ -e '/usr/local/sbin/ddos' ]; then
	rm -f /usr/local/sbin/ddos
	echo -n ".."
fi
if [ -d '/usr/local/ddos' ]; then
	rm -rf /usr/local/ddos
	echo -n ".."
fi
echo "done"

echo; echo "Removing man page"
if [ -e '/usr/share/man/man1/ddos.1' ]; then
	rm -f /usr/share/man/man1/ddos.1
fi
if [ -e '/usr/share/man/man1/ddos.1.gz' ]; then
	rm -f /usr/share/man/man1/ddos.1.gz
fi

echo; echo -n "Deleting cron job....."
if [ -e '/etc/cron.d/ddos' ]; then
	rm -f /etc/cron.d/ddos
	echo -n ".."
fi
echo "done"
echo; echo "Uninstall Complete"; echo