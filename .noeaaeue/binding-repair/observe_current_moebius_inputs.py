"""Write a new exact current input observation; never rewrite historical evidence."""
from pathlib import Path
import argparse,hashlib,json,subprocess,sys
ROOT=Path(__file__).resolve().parents[2];sys.path.insert(0,str(ROOT/'.noeaaeue/scripts'))
import check_moebius_response as checker
import moebius_owner_census as census
sha=lambda raw:hashlib.sha256(raw).hexdigest()
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,default=ROOT/checker.DEFAULT_CURRENT_MANIFEST);args=p.parse_args();output=args.output.absolute()
if output.exists() or output.is_symlink():raise RuntimeError('Refusing existing input contract; choose a new versioned --output path')
audit='GRWTSK.Logic.ProofChecking.Checks.FullAnalyticArithmeticKernel';aggregator='GRWTSK.Logic.ProofChecking.Checks.MoebiusResponseLibrary'
reads={};modules={};active=set()
def read(name):
 data=checker.read_regular(ROOT,name).data
 if name in reads and reads[name]!=data:raise RuntimeError('concurrent input changed during observation: '+name)
 reads[name]=data;return data
def visit(module):
 if module in modules:return
 if module in active:raise RuntimeError('project import cycle: '+module)
 active.add(module);relative=module.replace('.','/')+'.lean';data=read(relative);imports=checker.imports(data.decode())
 for name in imports:
  if name=='GRWTSK' or name.startswith('GRWTSK.'):visit(name)
 active.remove(module);modules[module]={'path':relative,'sha256':sha(data),'imports':imports}
visit(audit);visit(aggregator)
source_dirs={ROOT/Path(row['path']).parent for row in modules.values()}
assets={p.relative_to(ROOT).as_posix() for p in checker.source_assets(source_dirs,umbrella_root=ROOT if 'GRWTSK' in modules else None)}
assets.update({'.noeaaeue/scripts/check_moebius_response.py','.noeaaeue/scripts/moebius_owner_census.py','.noeaaeue/scripts/moebius_response_inputs.py','.noeaaeue/scripts/check_math_layout.py','.noeaaeue/scripts/repository_paths.py','.noeaaeue/scripts/source_observations.py','.noeaaeue/bindings/current-source-observations.json',census.CURRENT_PROFILE_RELATIVE,'lean-toolchain','lakefile.toml','lake-manifest.json'})
assets={name:sha(read(name)) for name in sorted(assets)}
helper=read(census.HELPER_RELATIVE)
if sha(helper)!=census.HELPER_SHA256:raise RuntimeError('current operational observer pin differs')
lock=json.loads(read('lake-manifest.json'));packages=ROOT/'.lake/packages';pins={row['name']:row['rev'] for row in lock['packages']}
anchor='mathlib/.lake/build/lib/lean/Mathlib.olean';anchor_read=checker.stable_read(packages/anchor).data
qualification_path=ROOT/'.noeaaeue/binding-repair/moebius-current-qualification.json';qualification_raw=qualification_path.read_bytes();qualification=json.loads(qualification_raw)
if qualification['status']!='CURRENT_SCOPED_PROFILE_QUALIFIED' or qualification['profile_sha256']!=census.GENERATED_PARTIAL_PROFILE_SHA256 or qualification['helper_sha256']!=census.HELPER_SHA256:raise RuntimeError('current scoped profile qualification is absent or different')
for owner,h in qualification['source_hashes'].items():
 if sha(read(owner.replace('.','/')+'.lean'))!=h:raise RuntimeError('profile source changed after qualification: '+owner)
lean=subprocess.check_output(['elan','which','lean'],cwd=ROOT,text=True).strip();binary=checker.stable_read(Path(lean)).data
# Reuse the explicitly recorded freshly checked compiler identity only after
# verifying its actual binary bytes; this observation does not invoke Lean.
qualified_receipt=json.loads((ROOT/qualification['receipt']).read_bytes())
if sha(binary)!=qualified_receipt['lean_binary_sha256']:raise RuntimeError('compiler bytes differ from scoped current qualification')
contract={'schema_version':1,'modules':dict(sorted(modules.items())),'audit_module':audit,'aggregator_module':aggregator,'assets':assets,'lean_version':qualified_receipt['lean_version'],'lean_sha256':sha(binary),'package_anchors':[{'path':anchor,'sha256':sha(anchor_read)}],'owner_census':{'helper_module':census.HELPER_MODULE,'parser_asset':'.noeaaeue/scripts/moebius_owner_census.py','runtime_exceptions_allowed':True,'helper':{'path':census.HELPER_RELATIVE,'sha256':census.HELPER_SHA256,'imports':['Lean']},'runtime_exception_policy':census.generated_partial_profile_descriptor()},'dependency_revisions':pins,'dependency_lock_sha256':sha(read('lake-manifest.json')),'generation_status':'CURRENT_INPUT_OBSERVATION_NOT_FULL_REPLAY_ACCEPTANCE','kernel_checked':False,'generation_scope':'Exact current input/source graph observation. Only the separately referenced five-module runtime-profile scope is freshly qualified. This complete manifested application/library closure has not been freshly replayed by this metadata record.','historical_manifest':{'path':'.noeaaeue/evidence/moebius-response-sources.json','sha256':sha(read('.noeaaeue/evidence/moebius-response-sources.json')),'status':'historical-stale-preserved; no hashes or acceptance rewritten'},'current_scoped_profile_qualification':{'path':str(qualification_path.relative_to(ROOT)),'sha256':sha(qualification_raw),'scope':qualification['scope'],'library_wide_admission':False}}
for name,data in reads.items():
 if checker.read_regular(ROOT,name).data!=data:raise RuntimeError('concurrent observation collision: '+name)
output.parent.mkdir(parents=True,exist_ok=True)
with output.open('xb') as stream:stream.write((json.dumps(contract,indent=2)+'\n').encode())
report={'schema':'current-moebius-contract-observation-v2','path':str(output.relative_to(ROOT)),'sha256':sha(output.read_bytes()),'module_count':len(modules),'asset_count':len(assets),'status':contract['generation_status'],'kernel_checked':False}
print(json.dumps(report))
