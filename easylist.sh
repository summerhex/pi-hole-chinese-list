curl -s -L https://easylist.to/easylist/easylist.txt https://easylist.to/easylist/fanboy-annoyance.txt https://easylist.to/easylist/fanboy-social.txt https://easylist-downloads.adblockplus.org/easylistchina.txt https://easylist-downloads.adblockplus.org/malwaredomains_full.txt https://github.com/cjx82630/cjxlist/blob/master/cjxlist.txt > easylist
sort -u easylist| grep ^\|\|.*\^$ | grep -v \/ > easylist.sorted
sed 's/[\|^]//g' < easylist.sorted > easylist.hosts
rm easylist easylist.sorted
