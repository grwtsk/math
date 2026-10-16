"""Selected catalog and whole maintained-page structure; not proof admission."""
import argparse,copy,hashlib,json,pathlib,re,os,tempfile,datetime
import check_documentation_layout as layout
ROOT=pathlib.Path(__file__).resolve().parents[2]
def sha_bytes(raw):return hashlib.sha256(raw).hexdigest()
def record_input_names(data):
 return {'docs/reference/results.json',*(r[k] for r in data['records'] for k in ('source','page','evidence'))}
def reconciled_record(record):
 reconciliation=record.get('binding_reconciliation')
 if reconciliation is None:return False
 layout.require(isinstance(reconciliation,dict) and set(reconciliation)=={'previous_record','current_source','current_verification','scope'},
                'catalog reconciliation fields')
 previous=reconciliation['previous_record'];current=reconciliation['current_source']
 layout.require(isinstance(previous,dict) and isinstance(current,dict)
                and current=={'path':record['source'],'sha256':record.get('observed_source_sha256')},
                'catalog reconciliation observation')
 layout.require(record['verification']==previous.get('verification')=='historical-source-relocated'
                and record.get('current_verification')==reconciliation['current_verification']=='not-run',
                'catalog reconciliation cannot invent verification')
 layout.require(previous.get('source')!=record['source'] and previous.get('original_source')!=previous.get('source'),
                'catalog reconciliation lacks prior distinct path')
 expected=dict(previous,source=record['source'],observed_source_sha256=record['observed_source_sha256'],binding_reconciliation=reconciliation)
 layout.require(record==expected,'catalog reconciliation changed retained record')
 layout.require(reconciliation['scope']=='Current path and byte observation only; retained verification labels do not establish replay.',
                'catalog reconciliation scope changed')
 return True
def validate(data,bound=None):
 ids=set()
 for r in data['records']:
  layout.require(r['id'] not in ids,'duplicate ID');ids.add(r['id'])
  layout.require(r['premises'],'missing premises')
  record={k:(layout.local_bytes(ROOT,r[k],bound)) for k in ['source','page','evidence']}
  layout.require(re.fullmatch(r'[0-9a-f]{64}',r['sha256']) is not None,'invalid retained source hash')
  layout.require(r['verification'] in ('historical','fresh-selected','historical-source-changed','historical-source-relocated'),'unsupported status')
  current=sha_bytes(record['source'])
  reconciled=reconciled_record(r)
  if r['verification'] in ('historical-source-changed','historical-source-relocated'):
   # Retain the old binding without treating current bytes as replayed evidence.
   layout.require(r.get('observed_source_sha256')==current,'current observation invalidated')
   if r['verification']=='historical-source-changed':
    layout.require(r['sha256']!=current,'changed-source label without changed source')
   else:
    layout.require(layout.canonical_name(r.get('original_source'))
                   and (r['original_source']!=r['source'] or reconciled),
                   'relocated-source label without original distinct path')
    layout.require(r['sha256']==current,'relocated-source label requires unchanged source bytes')
   layout.require(r.get('current_verification')=='not-run','unsupported current verification')
   layout.require(r.get('evidence_limit'),'missing historical evidence limit')
  else:
   layout.require(current==r['sha256'],'source invalidated')
   layout.require('observed_source_sha256' not in r,'changed-source metadata under verified status')
   layout.require('current_verification' not in r,'unverified metadata under verified status')
  if r['verification']=='fresh-selected':
   try:receipt=layout.load_json(record['evidence'].decode())
   except UnicodeDecodeError as error:raise layout.LayoutError('non-UTF8 selected evidence') from error
   layout.require(receipt.get('outcome')=='passed','missing passed receipt')
   layout.require(receipt.get('source_hashes',{}).get(r['source'])==r['sha256'],'receipt not current')
   checks=receipt.get('selected_checks',{})
   layout.require(checks and all(x=='passed' for x in checks.values()),'absent/failed check')
  layout.require(not re.search(r'/Users/|grwtsk/noeaaeue|gate1-|worktree',json.dumps(r)),'private provenance')
def verification_label(record):
 if record['verification']=='historical-source-relocated':return 'historical; source relocated, replay pending'
 return ('historical; current source changed, replay pending'
         if record['verification'] in ('historical-source-changed','historical-source-relocated') else record['verification'])
def render(data):
 return '# Selected result catalog\n\n'+data['coverage']+'. Records are candidate documentation. Verification labels refer to the bound source, not operational authority. A changed-source label preserves historical evidence and reports current replay as pending. Priority is editorial architectural relevance.\n\n| Priority | Family | Verification |\n|---|---|---|\n'+''.join('| '+str(r['priority'])+' | ['+r['title']+'](../../'+r['page']+') | '+verification_label(r)+' |\n' for r in sorted(data['records'],key=lambda r:r['priority']))+'\n[Structured records](results.json) · [Mathematical page inventory](library-pages.md)\n'
def write_projection(name,raw,expected,archive):
 target=ROOT/name
 layout.require(target.parent.resolve().is_relative_to(ROOT.resolve()),'escaped generated output')
 if expected is not None:layout.require(layout.read_safe(ROOT,name)==expected,'generated output changed before write: '+name)
 else:layout.require(not os.path.lexists(target),'new generated output already exists: '+name)
 if expected==raw:return
 target.parent.mkdir(parents=True,exist_ok=True)
 if expected is not None:
  saved=archive/name;saved.parent.mkdir(parents=True,exist_ok=True)
  with saved.open('xb') as f:f.write(expected)
 with tempfile.NamedTemporaryFile(dir=target.parent,delete=False) as f:f.write(raw);temporary=pathlib.Path(f.name)
 os.chmod(temporary,0o644)
 try:
  if expected is not None:layout.require(layout.read_safe(ROOT,name)==expected,'generated output changed before replace: '+name)
  else:layout.require(not os.path.lexists(target),'new generated output appeared: '+name)
  os.replace(temporary,target)
 finally:
  if temporary.exists():temporary.unlink()
def render_indexes():
 name='.noeaaeue/documentation/reference/documentation-layout.json'
 original=layout.read_safe(ROOT,name);x=layout.load_json(original)
 if 'navigation' not in x:return {'docs/index.md':layout.render_navigation(x).encode()},{
  'docs/index.md':layout.read_safe(ROOT,'docs/index.md'),
  'docs/reference/results.md':layout.read_safe(ROOT,'docs/reference/results.md')}
 sources=layout.visible_source_inventory(ROOT)
 articles=layout.indexes.articles(x)
 areas={p['subject'] for p in layout.indexes.articles(x).values()}|{pathlib.PurePosixPath(p).parts[1] for p in sources}
 output_names={name,layout.indexes.SUMMARY_PATH,'docs/index.md','docs/reference/results.md',
               *articles,*('docs/mathematics/'+area+'/index.md' for area in areas)}
 # Freeze current outputs before computing projections; concurrent edits are
 # collisions, never new expected preimages that may be overwritten.
 preimages={n:(layout.read_safe(ROOT,n) if os.path.lexists(ROOT/n) else None) for n in output_names}
 layout.require(preimages[name]==original,'layout changed before rendering')
 for area in areas:
  path='docs/mathematics/'+area+'/index.md'
  layout.require(path in x['pages'] or preimages[path] is None,'unregistered existing area output: '+path)
 input_names=set(layout.indexes.INPUT_PATHS)|sources;bound,observations=layout.observe_inputs(ROOT,input_names)
 source_census=layout.census.count_sources(ROOT,{n:bound[n] for n in sources})
 provisional=layout.build_navigation_summary(ROOT,x,sources,bound,original,source_census)
 for area in provisional['areas']:
  path='docs/mathematics/'+area+'/index.md'
  expected={'title':layout.indexes.area_title(area),'category':'navigation','area':area}
  layout.require(path not in x['pages'] or x['pages'][path]==expected,'existing area-index registration differs')
  x['pages'][path]=expected
 rendered_layout=(json.dumps(x,indent=2,ensure_ascii=False)+'\n').encode()
 # Retain the exact ledger bytes if its data has not changed.
 if layout.load_json(original)==x:rendered_layout=original
 summary=layout.build_navigation_summary(ROOT,x,sources,bound,rendered_layout,source_census)
 outputs={name:rendered_layout,layout.indexes.SUMMARY_PATH:(json.dumps(summary,indent=2,ensure_ascii=False)+'\n').encode(),
          'docs/index.md':layout.render_navigation(x,summary).encode()}
 for area in summary['areas']:
  outputs['docs/mathematics/'+area+'/index.md']=layout.indexes.render_area(x,summary,area).encode()
 for article in articles:
  layout.require(preimages[article] is not None,'missing mathematical object guide: '+article)
  try:
   text=preimages[article].decode()
   block=layout.indexes.render_article_totals(x,summary,article)
   outputs[article]=layout.indexes.update_article_totals(text,block).encode()
  except (UnicodeDecodeError,ValueError) as error:
   raise layout.LayoutError('cannot update mathematics totals: '+article+': '+str(error)) from error
 unused,terminal=layout.observe_inputs(ROOT,input_names)
 changed=sorted(n for n in set(terminal)|set(observations) if terminal.get(n)!=observations.get(n))
 layout.require(not changed,'navigation inventory input changed during render: '+', '.join(changed))
 layout.require(layout.visible_source_inventory(ROOT)==sources,'source inventory changed during render')
 for n,expected in preimages.items():
  if expected is not None:layout.require(layout.read_safe(ROOT,n)==expected,'generated output changed during render: '+n)
  else:layout.require(not os.path.lexists(ROOT/n),'new generated output appeared during render: '+n)
 return outputs,preimages
def main():
 p=argparse.ArgumentParser();p.add_argument('--render',action='store_true');a=p.parse_args()
 catalog_raw,catalog_observation=layout.read_safe(ROOT,'docs/reference/results.json',with_observation=True)
 try:d=layout.load_json(catalog_raw.decode())
 except UnicodeDecodeError as error:raise layout.LayoutError('non-UTF8 selected result catalog') from error
 names=record_input_names(d);bound,observations=layout.observe_inputs(ROOT,names,{
  'docs/reference/results.json':(catalog_raw,catalog_observation)})
 validate(d,bound)
 control_count=0
 for mutation in ['duplicate','premise','source','receipt','private']:
  bad=copy.deepcopy(d)
  if mutation=='duplicate':bad['records'].append(copy.deepcopy(bad['records'][0]))
  if mutation=='premise':bad['records'][0]['premises']=''
  if mutation=='source':bad['records'][0]['sha256']='0'*64
  if mutation=='receipt':bad['records'][1]['verification']='fresh-selected'
  if mutation=='private':bad['records'][0]['contribution']='/Users/hidden'
  try:validate(bad,bound)
  except layout.LayoutError:control_count+=1
  else:raise layout.LayoutError('hostile input accepted: '+mutation)
 changed=next((r for r in d['records'] if r['verification']=='historical-source-changed'),None)
 if changed:
  for mutation in ['stale-observation','erase-history','old-receipt-promoted','undeclared-drift','invent-current-pass','omit-evidence-limit']:
   bad=copy.deepcopy(d);r=next(x for x in bad['records'] if x['id']==changed['id'])
   if mutation=='stale-observation':r['observed_source_sha256']='0'*64
   if mutation=='erase-history':r['sha256']=r['observed_source_sha256']
   if mutation=='old-receipt-promoted':
    r['verification']='fresh-selected';r['sha256']=r.pop('observed_source_sha256');r.pop('current_verification')
   if mutation=='undeclared-drift':
    r['verification']='historical';r.pop('observed_source_sha256');r.pop('current_verification')
   if mutation=='invent-current-pass':r['current_verification']='passed'
   if mutation=='omit-evidence-limit':r.pop('evidence_limit')
   try:validate(bad,bound)
   except layout.LayoutError:control_count+=1
   else:raise layout.LayoutError('hostile input accepted: '+mutation)
 target=ROOT/'docs/reference/results.md';expected=render(d)
 source_census=None
 if a.render:
  outputs,preimages=render_indexes();outputs['docs/reference/results.md']=expected.encode()
  archive=ROOT/'.noeaaeue/.local/documentation-index-render'/datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
  for name,raw in outputs.items():write_projection(name,raw,preimages[name],archive)
  generated=names&set(outputs)
  rendered,rendered_observations=layout.observe_inputs(ROOT,generated)
  layout.require(all(rendered[n]==outputs[n] for n in generated),'generated catalog page changed after write')
  observations.update(rendered_observations)
  if layout.indexes.SUMMARY_PATH in outputs:
   source_census=layout.load_json(outputs[layout.indexes.SUMMARY_PATH]).get('source_census')
 else:
  try:actual=layout.read_safe(ROOT,'docs/reference/results.md').decode()
  except UnicodeDecodeError as error:raise layout.LayoutError('non-UTF8 selected result catalog rendering') from error
  layout.require(actual==expected,'generated catalog stale')
 n,s=layout.check(source_census=source_census)
 unused,terminal_observations=layout.observe_inputs(ROOT,names)
 layout.require(terminal_observations==observations,'selected result catalog input changed during check')
 print(f'{n} maintained pages; {s} legacy dispositions; selected catalog and {control_count} hostile record controls passed')
if __name__=='__main__':main()
