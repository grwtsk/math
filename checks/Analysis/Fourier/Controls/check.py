# Cold, source-bound selected proof replay. Does not issue effect authority.
import argparse,pathlib,subprocess,json,hashlib,os,re,time,stat
M=pathlib.Path(__file__).resolve().parents[4]
p=argparse.ArgumentParser();p.add_argument('--output',type=pathlib.Path,required=True);p.add_argument('--project-root',type=pathlib.Path,default=M,help='Explicit source root when launching a frozen read-only checker generation');a=p.parse_args()
M=a.project_root.absolute()
O=a.output.resolve();O.mkdir(parents=True,exist_ok=False)
lib=O/'lib';lib.mkdir(parents=True)
lean=subprocess.check_output(['elan','which','lean'],cwd=M,text=True).strip()
version=subprocess.check_output([lean,'--version'],text=True)
if hashlib.sha256(pathlib.Path(lean).read_bytes()).hexdigest()!='1b370cfcbf44e80d1b004ab1b1ab9a4c73951f9f7c242140bcff9bc577576554':
 raise RuntimeError('unexpected pinned Lean executable bytes')
if '4.33.0' not in version or 'd8b18978322de05a8f3dba51ef03cf5461676c17' not in version:
 raise RuntimeError('unexpected pinned Lean compiler')
git_env={k:v for k,v in os.environ.items() if not k.startswith('GIT_')}
git_env.update(GIT_CONFIG_NOSYSTEM='1',GIT_CONFIG_GLOBAL='/dev/null',GIT_OPTIONAL_LOCKS='0',LC_ALL='C')
if subprocess.check_output(['/usr/bin/git','rev-parse','HEAD'],cwd=M/'.lake/packages/mathlib',env=git_env,text=True).strip()!='db584cd6d46c92f209a44c0f1c829460d327499d':
 raise RuntimeError('unexpected Mathlib revision')
env={k:v for k,v in os.environ.items() if k not in {'LEAN_PATH','LEAN_SRC_PATH','LEAN_SYSROOT'}}
env.update(LEAN_PATH=':'.join([str(lib)]+[str(x) for x in (M/'.lake/packages').glob('*/.lake/build/lib/lean')]))
def validate_profile(profile):
 names={'FalseCoverage','FalseRounding','FalseAlias','FalseTraceBound','WrongAngular','MissingReturn'}
 if not isinstance(profile,dict) or profile.get('schema')!='WF-CONTROLS-2':
  raise RuntimeError('unqualified consumer profile schema')
 sources=profile.get('negative_sources');reasons=profile.get('negative');diagnostics=profile.get('negative_diagnostics')
 if not all(isinstance(value,dict) for value in (sources,reasons,diagnostics)):
  raise RuntimeError('malformed negative profile')
 if set(sources)!=names or set(reasons)!=names:
  raise RuntimeError('negative control name inventory changed')
 for name,source in sources.items():
  if not isinstance(source,str) or not source.startswith('checks/') or not source.endswith('/'+name+'.lean'):
   raise RuntimeError('invalid mathematical negative source: '+name)
  if any(part in {'','.','..'} or part.casefold()=='.git' for part in source.split('/')):
   raise RuntimeError('unsafe negative source: '+name)
 if len(set(sources.values()))!=len(names) or set(diagnostics)!=set(sources.values()):
  raise RuntimeError('incomplete or duplicate negative bindings')
 for source,entry in diagnostics.items():
  if not isinstance(entry,dict) or not isinstance(entry.get('source_sha256'),str) or not re.fullmatch(r'[0-9a-f]{64}',entry['source_sha256']):
   raise RuntimeError('invalid negative source digest')
  diagnostic=entry.get('diagnostic')
  if not isinstance(diagnostic,dict) or diagnostic.get('fileName')!=source or diagnostic.get('severity')!='error':
   raise RuntimeError('invalid measured negative diagnostic')
  for key in ('pos','endPos'):
   position=diagnostic.get(key)
   if not isinstance(position,dict) or set(position)!={'line','column'} or any(type(value) is not int for value in position.values()):
    raise RuntimeError('invalid measured diagnostic position')
 return sources

def intended_rejection(source, source_sha256, process, expected, compiled_path):
 """Accept only the measured diagnostic for these exact hostile source bytes."""
 if process.returncode != 1 or process.stderr.strip():return False
 if not isinstance(expected,dict) or expected.get('source_sha256') != source_sha256:return False
 try:
  diagnostics=[json.loads(line) for line in process.stdout.splitlines() if line.strip()]
 except (ValueError,TypeError):return False
 if len(diagnostics) != 1 or not isinstance(diagnostics[0],dict):return False
 wanted=expected.get('diagnostic')
 if not isinstance(wanted,dict) or wanted.get('severity') != 'error':return False
 wanted=dict(wanted)
 if wanted.get('fileName') != source:return False
 wanted['fileName']=str(compiled_path)
 return json.dumps(diagnostics[0],sort_keys=True,separators=(',',':')) == json.dumps(wanted,sort_keys=True,separators=(',',':'))

SOURCE_ORDER=['GRWTSK/Data/Sampling/Descriptions.lean', 'GRWTSK/Analysis/Fourier/IntegerSeries.lean', 'GRWTSK/Logic/FiniteSequences/PrefixCoverage.lean', 'GRWTSK/LinearAlgebra/Schrodinger/SampledPotential.lean', 'GRWTSK/Algebra/BigOperators/OrderedSquare.lean', 'GRWTSK/Analysis/Fourier/Parseval.lean', 'GRWTSK/Analysis/Asymptotics/PolynomialErrorBound.lean', 'GRWTSK/Algebra/BigOperators/QuadraticCounterexample.lean', 'GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean', 'GRWTSK/LinearAlgebra/Schrodinger/Sampling.lean', 'GRWTSK/Analysis/NormedSpace/QuadraticError.lean', 'GRWTSK/Analysis/Fourier/WindowCertificates.lean', 'GRWTSK/Analysis/Asymptotics/PolynomialClosure.lean']
frozen=O/'source';frozen.mkdir()
inputs={};identities={}
def read_input(source):
 parts=tuple(source.split('/'))
 if any(part in {'','.','..'} or part.casefold()=='.git' for part in parts):
  raise RuntimeError('unsafe project input path: '+source)
 descriptors=[];parents=[]
 try:
  directory=os.open(M,os.O_RDONLY|os.O_DIRECTORY|os.O_NOFOLLOW);descriptors.append(directory)
  for part in parts[:-1]:
   parent=directory;directory=os.open(part,os.O_RDONLY|os.O_DIRECTORY|os.O_NOFOLLOW,dir_fd=parent)
   descriptors.append(directory);parents.append((parent,part,os.fstat(directory)))
  leaf=os.open(parts[-1],os.O_RDONLY|os.O_NOFOLLOW|os.O_NONBLOCK,dir_fd=directory);descriptors.append(leaf)
  before=os.fstat(leaf)
  if not stat.S_ISREG(before.st_mode):raise RuntimeError('nonregular project input: '+source)
  data=b''
  while True:
   block=os.read(leaf,1048576)
   if not block:break
   data+=block
  identity=lambda st:(st.st_dev,st.st_ino,st.st_size,st.st_mtime_ns,st.st_ctime_ns,st.st_mode)
  current=os.stat(parts[-1],dir_fd=directory,follow_symlinks=False)
  if identity(before)!=identity(os.fstat(leaf)) or identity(before)!=identity(current):
   raise RuntimeError('project input changed during read: '+source)
  for parent,part,opened in parents:
   current=os.stat(part,dir_fd=parent,follow_symlinks=False)
   if (opened.st_dev,opened.st_ino)!=(current.st_dev,current.st_ino):
    raise RuntimeError('project input ancestor changed during read: '+source)
  return data,identity(before)
 finally:
  for descriptor in reversed(descriptors):os.close(descriptor)
profile_source='checks/Analysis/Fourier/Controls/expected.json'
profile_data,profile_identity=read_input(profile_source)
profile=json.loads(profile_data)
validate_profile(profile)
selected=SOURCE_ORDER+['checks/Analysis/Fourier/Controls/Audit.lean',
 'checks/Analysis/Fourier/Controls/expected.json',
 'checks/Analysis/Fourier/Controls/check.py']+list(profile['negative_sources'].values())
for source in selected:
 data,identity=read_input(source)
 if source==profile_source and (data!=profile_data or identity!=profile_identity):
  raise RuntimeError('profile generation changed before freeze')
 inputs[source]=hashlib.sha256(data).hexdigest();identities[source]=identity
 target=frozen/source;target.parent.mkdir(parents=True,exist_ok=True)
 with target.open('xb') as output:output.write(data)
 target.chmod(0o400)
def stable_inputs():
 for source,expected in inputs.items():
  current,identity=read_input(source)
  if identity!=identities[source] or hashlib.sha256(current).hexdigest()!=expected:
   raise RuntimeError('live project input drift: '+source)
  if hashlib.sha256((frozen/source).read_bytes()).hexdigest()!=expected:
   raise RuntimeError('frozen project input drift: '+source)
stable_inputs()
results=[]

def run(source,out=None,negative=False):
 stable_inputs()
 f=frozen/source
 cmd=[lean,'-j1','--trust=0','--root='+str(frozen),'-DwarningAsError=true']
 if negative:cmd+=['--json']
 if out:cmd+=['-o',str(lib/out)]
 cmd+=[str(f)];t=time.monotonic();r=subprocess.run(cmd,env=env,cwd=M,capture_output=True,text=True)
 (O/(f.stem+'.log')).write_text(r.stdout+r.stderr)
 expected=profile.get('negative_diagnostics',{}).get(source) if negative else None
 passed=intended_rejection(source,inputs[source],r,expected,f) if negative else r.returncode==0
 results.append({'source':source,'expected':'reject' if negative else 'pass','outcome':'passed' if passed else 'failed','exit_code':r.returncode,'seconds':time.monotonic()-t,'output_sha256':hashlib.sha256((r.stdout+r.stderr).encode()).hexdigest()})
 (O/'progress.json').write_text(json.dumps({'inputs':inputs,'results':results},indent=2)+'\n')
 stable_inputs()
 if not passed:raise RuntimeError('unexpected Lean result: '+source)
 return r.stdout
for source in SOURCE_ORDER:
 output=lib/pathlib.Path(source).with_suffix('.olean');output.parent.mkdir(parents=True,exist_ok=True)
 run(source,str(pathlib.Path(source).with_suffix('.olean')))
audit_output=run('checks/Analysis/Fourier/Controls/Audit.lean')
def selected_axioms(log, expected_names):
 """Parse complete wrapped records and require the exact selected name census."""
 pattern=r"(?m)^'([^'\n]+)'[ \t]+(?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)[ \t]*$"
 records=re.findall(pattern,log,re.S)
 if len(records)!=len(expected_names) or len(set(expected_names))!=len(expected_names):
  raise RuntimeError('incomplete selected declaration audit')
 actual_names=[name for name,_ in records]
 if len(set(actual_names))!=len(actual_names) or set(actual_names)!=set(expected_names):
  raise RuntimeError('selected declaration names differ')
 allowed={'propext','Classical.choice','Quot.sound'}
 for name,axioms in records:
  if not set(x.strip() for x in axioms.split(',') if x.strip())<=allowed:
   raise RuntimeError('unaccepted transitive axioms: '+name)
 return [{'name':name,'axioms':[x.strip() for x in axioms.split(',') if x.strip()]} for name,axioms in records]

axiom_lines=selected_axioms(audit_output,profile['audit_declarations'])
for name in profile['negative']:
 run(profile['negative_sources'][name],negative=True)
stable_inputs()
receipt={'schema':'WF-CHECKS-2','program_scope':'Acceptance requires a frozen read-only executing checker generation bound by its launcher; later live self-file hashing does not authenticate execution provenance','source_scope':'Immutable selected project-source copies, compared with exact live bytes and file identities before and after each command; separate complete owned-family audit required','dependency_scope':'Pinned dependency revision and imported cache objects; no complete Mathlib source rebuild or persistent cache lineage claim','inputs':inputs,'lean_version':version.strip(),'mathlib':'db584cd6d46c92f209a44c0f1c829460d327499d','results':results,'axioms':axiom_lines,'status':'LOCALLY_CHECKED_SELECTED_DECLARATIONS','negative_oracle':'Exact source SHA and literal single error JSON; syntax/import/warning/extra diagnostics rejected','excluded':['angular window certificate supplier','actual uniform Mobius P04 bound','whole-codec Rust/compiler/library refinement','publication/operational authority']}
(O/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n');print(json.dumps({'results':len(results),'declarations':len(axiom_lines),'status':receipt['status']}))
