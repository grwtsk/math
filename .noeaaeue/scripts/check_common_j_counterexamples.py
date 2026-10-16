"""Manifest-bound rational counterexample interface and native dependency audit."""
from pathlib import Path
import hashlib,json,os,subprocess
root=Path(__file__).resolve().parents[2]
manifest=json.loads((root/'.noeaaeue/evidence/source-manifest.json').read_text())
for relative,expected in manifest['files'].items():
    p=root/relative
    if p.is_symlink() or not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=expected:
        raise RuntimeError('invalidated input: '+relative)
lean=subprocess.check_output(['elan','which','lean'],cwd=root,text=True).strip()
version=subprocess.check_output([lean,'--version'],text=True)
if '4.33.0' not in version or 'd8b18978322de05a8f3dba51ef03cf5461676c17' not in version:
    raise RuntimeError('invalidated compiler identity')
env=os.environ.copy();env.pop('LEAN_PATH',None);env.pop('LEAN_SRC_PATH',None)
r=subprocess.run(['lake','env',lean,'-j2','--trust=0','-DwarningAsError=true','GRWTSK/LinearAlgebra/CommonJCounterexamples/Checks/Audit.lean'],cwd=root,env=env,capture_output=True,text=True,timeout=600)
output=(r.stdout+r.stderr).replace(str(root),'<project>')
if r.returncode or output.count('COMMON_J_COUNTER_DECL::')!=15 or output.count('COMMON_J_COUNTER_ORIGINAL_DECL_REUSE::')!=4 or output.count('COMMON_J_COUNTER_SYNTHETIC_REUSE::')!=2 or output.count('COMMON_J_COUNTER_EQUATION::')!=3:
    raise RuntimeError(output)
print(json.dumps({'status':'COUNTEREXAMPLE_INTERFACE_EQUATIONS_AND_DECLARATION_REUSE_CHECKED','source_roots':7,'logical_records':15,'original_intra_family_declaration_consumers':4,'distinct_external_original_consumers':0,'synthetic_consumers':2,'source_sha256':manifest['files']['GRWTSK/LinearAlgebra/CommonJCounterexamples.lean'],'toolchain':'leanprover/lean4:v4.33.0','admission':'LOCAL_CANDIDATE'}))
print(output)

for name,expected in [('ExactCounterexampleContracts',0),('WrongCommutativity',1),('WrongProductInverse',1)]:
    role='Positive' if expected==0 else 'Negative'
    r=subprocess.run(['lake','env',lean,'-j2','--trust=0','-DwarningAsError=true','GRWTSK/Logic/Counterexamples/Checks/'+role+'/'+name+'.lean'],cwd=root,env=env,capture_output=True,text=True,timeout=600)
    text=r.stdout+r.stderr
    if r.returncode!=expected or expected and 'unsolved goals' not in text:
        raise RuntimeError('counterexample hostile outcome mismatch: '+name+' '+text)
    print('COMMON_J_COUNTER_CONTROL::'+name+'::'+('PASSED' if expected==0 else 'REJECTED_FALSE_PROOF'))
