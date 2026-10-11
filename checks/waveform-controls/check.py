# Cold, source-bound selected proof replay. Does not issue effect authority.
import argparse,pathlib,subprocess,json,hashlib,os,re,time
M=pathlib.Path(__file__).resolve().parents[2]
p=argparse.ArgumentParser();p.add_argument('--output',type=pathlib.Path,required=True);a=p.parse_args()
O=a.output.resolve();O.mkdir(parents=True,exist_ok=False)
lib=O/'lib';(lib/'GRWTSK/Analysis/Waveform').mkdir(parents=True)
lean=subprocess.check_output(['elan','which','lean'],cwd=M,text=True).strip()
version=subprocess.check_output([lean,'--version'],text=True)
assert '4.33.0' in version and 'd8b18978322de05a8f3dba51ef03cf5461676c17' in version
assert subprocess.check_output(['git','rev-parse','HEAD'],cwd=M/'.lake/packages/mathlib',text=True).strip()=='db584cd6d46c92f209a44c0f1c829460d327499d'
env=dict(os.environ,LEAN_PATH=':'.join([str(lib)]+[str(x) for x in (M/'.lake/packages').glob('*/.lake/build/lib/lean')]))
results=[];inputs={str(x.relative_to(M)):hashlib.sha256(x.read_bytes()).hexdigest() for x in [pathlib.Path(__file__).resolve(),M/'checks/waveform-controls/expected.json']}
def run(source,out=None,negative=False):
 f=M/source;inputs[source]=hashlib.sha256(f.read_bytes()).hexdigest()
 cmd=[lean,'-j1','--trust=0','-DwarningAsError=true']
 if out:cmd+=['-o',str(lib/out)]
 cmd+=[str(f)];t=time.monotonic();r=subprocess.run(cmd,env=env,cwd=M,capture_output=True,text=True)
 (O/(f.stem+'.log')).write_text(r.stdout+r.stderr)
 passed=(r.returncode!=0 and 'error:' in r.stdout+r.stderr) if negative else r.returncode==0
 results.append({'source':source,'expected':'reject' if negative else 'pass','outcome':'passed' if passed else 'failed','exit_code':r.returncode,'seconds':time.monotonic()-t})
 (O/'progress.json').write_text(json.dumps({'inputs':inputs,'results':results},indent=2)+'\n')
 assert passed,source
for name in ['Basic','Scheduling','Interfaces']:
 run('GRWTSK/Analysis/Waveform/'+name+'.lean','GRWTSK/Analysis/Waveform/'+name+'.olean')
run('checks/waveform-controls/Audit.lean')
log=(O/'Audit.log').read_text();axiom_lines=[x for x in log.splitlines() if 'axioms' in x]
assert len(axiom_lines)==len(json.loads((M/'checks/waveform-controls/expected.json').read_text())['audit_declarations'])
allowed={'propext','Classical.choice','Quot.sound'}
for line in axiom_lines:
 if 'does not depend on any axioms' in line:continue
 m=re.search(r'axioms: \[(.*?)\]',line);assert m,line
 assert set(x.strip() for x in m[1].split(',') if x.strip())<=allowed,line
for name in json.loads((M/'checks/waveform-controls/expected.json').read_text())['negative']:
 run('checks/waveform-controls/'+name+'.lean',negative=True)
receipt={'schema':'WF-CHECKS-1','inputs':inputs,'lean_version':version.strip(),'mathlib':'db584cd6d46c92f209a44c0f1c829460d327499d','results':results,'axioms':axiom_lines,'status':'LOCALLY_CHECKED_SELECTED_DECLARATIONS','excluded':['angular window certificate supplier','actual uniform Mobius P04 bound','whole-codec Rust/compiler/library refinement','publication/operational authority']}
(O/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n');print(json.dumps({'results':len(results),'declarations':len(axiom_lines),'status':receipt['status']}))
