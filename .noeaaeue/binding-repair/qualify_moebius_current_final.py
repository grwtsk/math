"""Qualify a separately observed current five-pair runtime whitelist natively."""
from pathlib import Path
import datetime,fcntl,hashlib,json,os,shutil,subprocess,sys,time,uuid
ROOT=Path(__file__).resolve().parents[2];sys.path.insert(0,str(ROOT/'.noeaaeue/scripts'))
import check_moebius_response as checker
import moebius_owner_census as census
sha=lambda raw:hashlib.sha256(raw).hexdigest()
INSPECT=ROOT/'.noeaaeue/binding-repair/native/moebius-current-20261016T020032Z-b0c20a0b'
prior=json.loads((INSPECT/'receipt.json').read_bytes());OWNERS=prior['owners'];HASHES={name:prior['sources'][name.replace('.','/')+'.lean'] for name in OWNERS}
RUN=ROOT/'.noeaaeue/binding-repair/native'/('moebius-qualified-'+datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')+'-'+uuid.uuid4().hex[:8]);RUN.mkdir(parents=True,exist_ok=False)
SOURCE=RUN/'source';BUILD=RUN/'build';SOURCE.mkdir();BUILD.mkdir();(RUN/'logs').mkdir()
receipt={'schema':'scoped-moebius-current-profile-qualified-v2','status':'preparing','scope':'Exact current five runtime pairs across three owners and five freshly compiled project-closure modules; not library-wide admission. Native Expr/universe equality, exact whitelist, safe originals, partial flags, ownership, source bytes, theorem type/value references, and six negative controls are required. Cached dependency sources are not replayed.','kernel_trust_level':0,'warnings_as_errors':True,'native_threads':1,'sources':prior['sources'],'configs':{},'commands':[],'generated_objects':{},'prior_fresh_source_replay':{'receipt':str((INSPECT/'receipt.json').relative_to(ROOT)),'sha256':sha((INSPECT/'receipt.json').read_bytes()),'source_command_labels':[x['label'] for x in prior['commands'] if x['label'].startswith('source-')]},'profile_sha256':census.GENERATED_PARTIAL_PROFILE_SHA256,'profile_metadata_sha256':census.CURRENT_PROFILE_METADATA_SHA256,'helper_sha256':census.HELPER_SHA256,'negative_controls':[]}
def save():(RUN/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
def guard():
 for name,h in {**receipt['sources'],**receipt['configs']}.items():
  p=ROOT/name
  if not p.is_file() or p.is_symlink() or sha(p.read_bytes())!=h:raise RuntimeError('original input drift: '+name)
 for name,h in receipt['generated_objects'].items():
  p=Path(name)
  if not p.is_file() or p.is_symlink() or sha(p.read_bytes())!=h:raise RuntimeError('generated object drift: '+name)
 for name,h in frozen_hashes.items():
  p=SOURCE/name
  if not p.is_file() or p.is_symlink() or sha(p.read_bytes())!=h:raise RuntimeError('frozen input drift: '+name)
def freeze(name,raw):
 p=SOURCE/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(raw);p.chmod(0o400);frozen_hashes[name]=sha(raw)
def track():
 for p in BUILD.rglob('*'):
  if p.is_file():receipt['generated_objects'][str(p)]=sha(p.read_bytes())
 save()
def argv(name,target=None):return [LEAN,'--trust=0','--threads=1','--memory=4096','-DwarningAsError=true',*(['-o',str(target)] if target else []),name]
def command(label,args,expected):
 guard();start=time.monotonic();p=subprocess.run(args,cwd=SOURCE,env=ENV,capture_output=True,text=True,timeout=600);text=p.stdout+p.stderr;log=RUN/'logs'/(label+'.log');log.write_text(text)
 entry={'label':label,'argv':list(map(str,args)),'exit_code':p.returncode,'seconds':time.monotonic()-start,'status':'completed','postcheck_passed':True,'log':str(log.relative_to(RUN)),'log_sha256':sha(text.encode()),'text':text};receipt['commands'].append({k:v for k,v in entry.items() if k!='text'});save();guard()
 if p.returncode!=expected:raise RuntimeError('unexpected native outcome '+label+': '+text[-3000:])
 return entry
frozen_hashes={};lockpath=ROOT/'.noeaaeue/.local/math-trust/replay.lock'
try:
 with lockpath.open('a+b') as lock:
  fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
  for relative,h in prior['sources'].items():
   raw=checker.stable_read(ROOT/relative).data
   if sha(raw)!=h or raw!=(INSPECT/'source'/relative).read_bytes():raise RuntimeError('current source differs from fresh inspection: '+relative)
   freeze(relative,raw)
  for name in ('lean-toolchain','lakefile.toml','lake-manifest.json','.noeaaeue/scripts/check_moebius_response.py','.noeaaeue/scripts/moebius_owner_census.py','.noeaaeue/scripts/repository_paths.py',census.CURRENT_PROFILE_RELATIVE,census.HELPER_RELATIVE,str(Path(__file__).relative_to(ROOT))):
   raw=checker.stable_read(ROOT/name).data;receipt['configs'][name]=sha(raw)
  for name,h in prior['generated_objects'].items():
   source=Path(name);relative=source.relative_to(INSPECT/'build')
   if relative.parts[0]!='GRWTSK':continue
   if sha(source.read_bytes())!=h:raise RuntimeError('fresh source replay object changed: '+name)
   target=BUILD/relative;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(source,target)
   if sha(target.read_bytes())!=h:raise RuntimeError('fresh source object copy mismatch')
  LEAN=subprocess.check_output(['elan','which','lean'],cwd=ROOT,text=True).strip()
  if sha(Path(LEAN).read_bytes())!=prior['lean_binary_sha256']:raise RuntimeError('compiler differs from fresh inspection')
  receipt['lean_binary_sha256']=prior['lean_binary_sha256'];receipt['lean_version']=prior['lean_version']
  ENV=dict(os.environ,LEAN_PATH=os.pathsep.join([str(BUILD),*prior['package_object_roots']]));ENV.pop('LEAN_SRC_PATH',None)
  receipt['dependency_mode']=prior['dependency_mode'];receipt['package_object_roots']=prior['package_object_roots']
  freeze('MoebiusResponseOwnerAudit.lean',census.helper_source())
  freeze('CurrentQualifiedAudit.lean',census.generate_audit_source(OWNERS,generated_partial_profile_sha256=census.GENERATED_PARTIAL_PROFILE_SHA256).encode())
  plan=checker.generated_partial_control_plan(OWNERS,vars(census),census.GENERATED_PARTIAL_PROFILE_SHA256)
  for control in plan:
   freeze(control['fixture_relative'],control['fixture_source']);freeze(control['wrapper_relative'],control['wrapper_source'])
  receipt['frozen_inputs']=dict(frozen_hashes);track();guard()
  command('current-observer',argv('MoebiusResponseOwnerAudit.lean',BUILD/'MoebiusResponseOwnerAudit.olean'),0);track()
  positive=command('current-qualified-owner-census',argv('CurrentQualifiedAudit.lean'),0)
  parsed=census.validate_owner_census(positive['text'],OWNERS,HASHES,allow_generated_partial_profile=True,generated_partial_profile_sha256=census.GENERATED_PARTIAL_PROFILE_SHA256)
  receipt['qualified_census']={k:v for k,v in parsed.items() if k not in {'declarations','modules'}};receipt['declaration_count']=len(parsed['declarations']);receipt['owner_count']=len(parsed['modules']);receipt['known_generated_helpers']=[r['name'] for r in parsed['declarations'] if r['known_generated_runtime_helper']];save()
  for control in plan:
   case=control['case'];target=BUILD/Path(control['fixture_relative']).with_suffix('.olean');target.parent.mkdir(parents=True,exist_ok=True)
   source=command('control-'+case+'-source',argv(control['fixture_relative'],target),0)
   if checker.diagnostic_records(source['text']):raise RuntimeError('nonclean negative source compilation: '+case)
   track();result=command('control-'+case+'-audit',argv(control['wrapper_relative']),1)
   hashes={**HASHES,control['fixture_module']:sha(control['fixture_source'])}
   verdict=checker.generated_partial_control_oracle(case,result,control['wrapper_source'],control['wrapper_relative'],control['fixture_module'],control['expected_owners'],hashes,vars(census))
   receipt['negative_controls'].append({'case':case,'fixture_source_sha256':sha(control['fixture_source']),'wrapper_source_sha256':sha(control['wrapper_source']),'oracle':verdict});save()
  guard();receipt['status']='CURRENT_SCOPED_PROFILE_QUALIFIED';receipt['kernel_checked']=True;receipt['library_wide_admission']=False;receipt['stale_historical_profiles_rebound']=False;save()
  summary={'schema':'current-moebius-scoped-qualification-reference-v2','status':receipt['status'],'receipt':str((RUN/'receipt.json').relative_to(ROOT)),'receipt_sha256':sha((RUN/'receipt.json').read_bytes()),'profile_metadata':census.CURRENT_PROFILE_RELATIVE,'profile_metadata_sha256':census.CURRENT_PROFILE_METADATA_SHA256,'profile_sha256':census.GENERATED_PARTIAL_PROFILE_SHA256,'helper_path':census.HELPER_RELATIVE,'helper_sha256':census.HELPER_SHA256,'source_hashes':HASHES,'scope':receipt['scope'],'native_commands':len(receipt['commands']),'negative_controls':len(receipt['negative_controls']),'declarations':receipt['declaration_count'],'kernel_checked':True,'library_wide_admission':False}
  output=ROOT/'.noeaaeue/binding-repair/moebius-current-qualification.json'
  if output.exists():raise RuntimeError('qualification summary already exists')
  output.write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary),flush=True)
except BaseException as error:
 receipt['status']='failed';receipt['error']=str(error);save();raise
