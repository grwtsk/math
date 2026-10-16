from pathlib import Path
import json,subprocess
P=Path(__file__).resolve().parents[2];out=[]
def check(rel,expected):
 p=subprocess.run(['lake','env','lean','-j2','--trust=0','-DwarningAsError=true',rel],cwd=P,capture_output=True,text=True,timeout=300)
 if (p.returncode==0)!=(expected==0):raise RuntimeError(rel+' unexpected result\n'+p.stdout+p.stderr)
 if expected and not any(s in p.stdout+p.stderr for s in ['error:','error(lean.']):raise RuntimeError('hostile control failed without Lean diagnostic')
 out.append({'path':rel,'expected_success':expected==0,'actual_success':p.returncode==0})
 return p.stdout+p.stderr
s=check('GRWTSK/Logic/FiniteCoverage/Checks/Audit.lean',0)
if s.count('FINITE_COVERAGE_DECL::')!=5 or s.count('FINITE_COVERAGE_SYNTHETIC_REUSE::')!=4:raise RuntimeError('incomplete native audit')
for name,expected in [('ExactDomainAndTail',0),('MissingCoverage',1),('MissingTail',1),('PromoteDomainToUniverse',1),('ReverseRayCounterexample',1),('ReverseEndpointCounterexample',1)]:
 role='Positive' if expected==0 else 'Negative';check('GRWTSK/Logic/FiniteCoverage/Checks/'+role+'/'+name+'.lean',expected)
(P/'.noeaaeue/.local').mkdir(parents=True, exist_ok=True);(P/'.noeaaeue/.local/finitecoverage-verification.json').write_text(json.dumps({'status':'ALL_DECLARED_CHECKS_PASSED','source_theorems':4,'definitions':0,'logical_records':5,'original_canonical_reuse_roles':0,'synthetic_wrappers':4,'checks':out},indent=2)+'\n')
print('FINITE_COVERAGE_INTERFACE_AND_HOSTILE_CONTROLS_PASSED')
