"""Fresh scoped runtime-profile examination; never whole-library admission."""
from pathlib import Path
import datetime,fcntl,hashlib,json,os,subprocess,sys,time,uuid
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'.noeaaeue/scripts'))
import check_moebius_response as checker
import moebius_owner_census as historical

RUN=ROOT/'.noeaaeue/binding-repair/native'/('moebius-current-'+datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')+'-'+uuid.uuid4().hex[:8])
RUN.mkdir(parents=True,exist_ok=False);SOURCE=RUN/'source';BUILD=RUN/'build';SOURCE.mkdir();BUILD.mkdir();(RUN/'logs').mkdir()
receipt={'schema':'scoped-moebius-current-profile-qualification-v1','status':'examining','scope':'Exact three current source owners, their fresh project closure, selected runtime helper/original pairs, and explicit negative controls only. Cached dependency sources are not replayed. No library-wide theorem admission.','run':str(RUN.relative_to(ROOT)),'kernel_trust_level':0,'warnings_as_errors':True,'native_threads':1,'commands':[],'sources':{},'configs':{},'generated_objects':{}}
def sha(raw):return hashlib.sha256(raw).hexdigest()
def save():
 (RUN/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
def guard():
 for name,h in {**receipt['sources'],**receipt['configs']}.items():
  p=ROOT/name
  if not p.is_file() or p.is_symlink() or sha(p.read_bytes())!=h:raise RuntimeError('input drift: '+name)
 for name,h in receipt['generated_objects'].items():
  p=Path(name)
  if not p.is_file() or p.is_symlink() or sha(p.read_bytes())!=h:raise RuntimeError('generated object drift: '+name)
def command(label,argv,expected=0):
 guard();start=time.monotonic();p=subprocess.run(argv,cwd=SOURCE,env=ENV,capture_output=True,text=True,timeout=600);raw=p.stdout+p.stderr;log=RUN/'logs'/(label+'.log');log.write_text(raw)
 r={'label':label,'argv':list(map(str,argv)),'cwd':str(SOURCE),'exit_code':p.returncode,'seconds':time.monotonic()-start,'log':str(log.relative_to(RUN)),'log_sha256':sha(raw.encode()),'expected':expected};receipt['commands'].append(r);save();guard()
 if p.returncode!=expected:raise RuntimeError('unexpected result '+label+': '+raw[-3000:])
 return raw
def freeze(name,raw):
 p=SOURCE/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(raw);p.chmod(0o400);return p
def track():
 for p in BUILD.rglob('*'):
  if p.is_file():receipt['generated_objects'][str(p)]=sha(p.read_bytes())
 save()
lockpath=ROOT/'.noeaaeue/.local/math-trust/replay.lock';lockpath.parent.mkdir(parents=True,exist_ok=True)
try:
 with lockpath.open('a+b') as lock:
  fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
  roots=sorted(historical.GENERATED_PARTIAL_OWNER_SHA256);raws={};order=[];active=set()
  def visit(name):
   if name in raws:return
   if name in active:raise RuntimeError('project import cycle')
   active.add(name);p=ROOT/(name.replace('.','/')+'.lean');read=checker.stable_read(p);data=read.data
   for dep in checker.imports(data.decode()):
    if dep=='GRWTSK' or dep.startswith('GRWTSK.'):visit(dep)
   active.remove(name);raws[name]=data;order.append(name)
  for root in roots:visit(root)
  for name,data in raws.items():
   relative=name.replace('.','/')+'.lean';receipt['sources'][relative]=sha(data);freeze(relative,data)
  for name in ('lean-toolchain','lakefile.toml','lake-manifest.json'):
   data=checker.stable_read(ROOT/name).data;receipt['configs'][name]=sha(data);freeze(name,data)
  for name in ('.noeaaeue/scripts/moebius_owner_census.py','.noeaaeue/scripts/check_moebius_response.py','.noeaaeue/checks/MoebiusResponseOwnerAudit.lean'):
   receipt['configs'][name]=sha(checker.stable_read(ROOT/name).data)
  LEAN=subprocess.check_output(['elan','which','lean'],cwd=ROOT,text=True).strip();receipt['lean_binary_sha256']=sha(Path(LEAN).read_bytes())
  version=subprocess.check_output([LEAN,'--version'],cwd=ROOT,text=True).strip();receipt['lean_version']=version
  if '4.33.0' not in version or 'd8b18978322de05a8f3dba51ef03cf5461676c17' not in version:raise RuntimeError('pinned compiler mismatch')
  paths=subprocess.check_output(['lake','env','printenv','LEAN_PATH'],cwd=ROOT,text=True).strip().split(os.pathsep)
  paths=[str((ROOT/p).resolve() if not Path(p).is_absolute() else Path(p).resolve()) for p in paths if p and '.lake/packages/' in p]
  if not paths:raise RuntimeError('no pinned package object roots')
  receipt['dependency_mode']='Pinned cached package objects checked by Lean at trust=0; package source files not freshly replayed.'
  receipt['package_object_roots']=paths
  for package in json.loads((ROOT/'lake-manifest.json').read_bytes())['packages']:
   actual=subprocess.check_output(['git','-C',str(ROOT/'.lake/packages'/package['name']),'rev-parse','HEAD'],text=True).strip()
   if actual!=package['rev']:raise RuntimeError('dependency revision drift: '+package['name'])
  ENV=dict(os.environ,LEAN_PATH=os.pathsep.join([str(BUILD),*paths]));ENV.pop('LEAN_SRC_PATH',None)
  def argv(relative,out=None):
   return [LEAN,'--trust=0','--threads=1','--memory=4096','-DwarningAsError=true',*(['-o',str(out)] if out else []),str(SOURCE/relative)]
  receipt['owners']=sorted(raws);save()
  for i,name in enumerate(order):
   relative=name.replace('.','/')+'.lean';target=BUILD/Path(relative).with_suffix('.olean');target.parent.mkdir(parents=True,exist_ok=True)
   command('source-'+str(i),argv(relative,target));track()
  historical_data=historical.helper_source();freeze('MoebiusResponseOwnerAudit.lean',historical_data)
  command('historical-observer',argv('MoebiusResponseOwnerAudit.lean',BUILD/'MoebiusResponseOwnerAudit.olean'));track()
  freeze('CurrentInspect.lean',historical.generate_audit_source(sorted(raws)).encode())
  inspect=command('default-current-inspection',argv('CurrentInspect.lean'),1)
  rows,modules=historical.census_records(inspect,sorted(raws))
  by_name={r['name']:r for r in rows};partials={r['name']:r for r in rows if r['partial']}
  expected={e['helper']:e for e in historical.GENERATED_PARTIAL_PROFILE}
  if set(partials)!=set(expected):raise RuntimeError('actual current partial helpers differ from reviewed whitelist: '+repr(sorted(partials)))
  for row in rows:
   if row['unsafe'] or row['kind']=='axiom' or not set(row['axioms'])<=historical.ALLOWED_AXIOMS:raise RuntimeError('unapproved owned declaration: '+row['name'])
  entries=[]
  for old in historical.GENERATED_PARTIAL_PROFILE:
   row=partials[old['helper']];parent=by_name.get(old['original'])
   if parent is None or row['module']!=old['owner'] or parent['module']!=old['owner'] or parent['unsafe'] or parent['partial'] or parent['kind']!='definition' or row['type']!=parent['type']:raise RuntimeError('observed helper/original pair differs')
   entry=dict(old,owner_source_sha256=sha(raws[old['owner']]))
   entries.append(entry)
  profile_hash=sha(json.dumps(entries,sort_keys=True,separators=(',',':')).encode())
  observation={'schema':'moebius-current-runtime-profile-v2','kind':'pinned-lean-generated-partial-recursor-profile','profile_sha256':profile_hash,'entries':entries,'source_observation':'Fresh current owner closure compiled with trust=0 and fatal warnings; default native census observed all five partial pairs. Exact Expr/universe qualification is pending below.','status':'observed-not-yet-qualified','historical_profile_sha256':historical.GENERATED_PARTIAL_PROFILE_SHA256,'historical_profile_scope':'Preserved old source qualification; not rebound to current owner bytes.','qualification_receipt':str((RUN/'receipt.json').relative_to(ROOT))}
  metadata=ROOT/'.noeaaeue/bindings/moebius-current-profile-v2.json';metadata.parent.mkdir(parents=True,exist_ok=True)
  if metadata.exists():raise RuntimeError('current profile output already exists')
  metadata.write_text(json.dumps(observation,indent=2)+'\n')
  helper=historical_data.decode()
  for old,new in zip(historical.GENERATED_PARTIAL_PROFILE,entries):helper=helper.replace(old['owner_source_sha256'],new['owner_source_sha256'])
  helper=helper.replace(historical.GENERATED_PARTIAL_PROFILE_SHA256,profile_hash).replace('following 15 pinned pairs','following 5 pinned pairs').replace('any of the 15 exact helpers','any of the 5 exact helpers')
  current_path=ROOT/'.noeaaeue/checks/MoebiusResponseOwnerAuditCurrent.lean'
  if current_path.exists():raise RuntimeError('current observer output already exists')
  current_path.write_text('/- Current source profile v2; prior observer retained separately. Qualification scope is recorded in .noeaaeue/bindings/moebius-current-profile-v2.json. -/\n'+helper)
  current_data=current_path.read_bytes();receipt['current_profile']=observation;receipt['current_helper_sha256']=sha(current_data);receipt['current_helper_path']=str(current_path.relative_to(ROOT));receipt['status']='inspected-awaiting-current-qualification';save()
  print(json.dumps({'status':receipt['status'],'run':str(RUN.relative_to(ROOT)),'owners':len(raws),'declarations':len(rows),'pairs':len(entries),'profile_sha256':profile_hash,'helper_sha256':sha(current_data)}),flush=True)
except BaseException as error:
 receipt['status']='failed';receipt['error']=str(error);save();raise
