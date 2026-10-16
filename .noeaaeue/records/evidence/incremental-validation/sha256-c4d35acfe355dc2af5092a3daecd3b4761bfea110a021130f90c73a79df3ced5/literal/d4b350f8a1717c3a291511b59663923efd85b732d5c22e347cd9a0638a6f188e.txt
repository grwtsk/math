from pathlib import Path
import subprocess,json
P=Path(__file__).resolve().parents[2]
r=subprocess.run(['lake','env','lean','-j2','--trust=0','-DwarningAsError=true','GRWTSK/LinearAlgebra/SchrodingerTransfer/Checks/Audit.lean'],cwd=P,capture_output=True,text=True,timeout=90)
s=r.stdout+r.stderr
if r.returncode or s.count('SCHRODINGER_CONTRACT::')!=9 or s.count('SCHRODINGER_SYNTHETIC::')!=3:raise RuntimeError(s)
(P/'.noeaaeue/.local').mkdir(parents=True, exist_ok=True)
(P/'.noeaaeue/.local/schrodinger-verification.json').write_text(json.dumps({'status':'NATIVE_KERNEL_AND_INTERFACE_CHECKS_PASSED','source_definitions':3,'source_theorems':3,'stored_equation_helpers':3,'synthetic_wrappers':3,'rh_proved':False},indent=2)+'\n')
print('SCHRODINGER_INTERFACE_PASSED')
