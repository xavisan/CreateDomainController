#------ Code for Create a Domain Controller ---
# PowerShell Code for Windows Server 2016
# created by: xavisan
#----------------------------------------------
Import-Module ADDSDeployment
install-windowsfeature AD-Domain-Services
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath “C:\Windows\NTDS” -DomainMode “Win2012R2” -DomainName “domainname.local” -DomainNetbiosName “PCT6M” -ForestMode “Win2012R2” -InstallDns:$true -LogPath “C:\Windows\NTDS” -NoRebootOnCompletion:$false -SysvolPath “C:\Windows\SYSVOL” -Force:$true 
# -SafeModeAdministratorPassword "password"