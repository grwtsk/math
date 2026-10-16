"""Observe current/stale process bindings without refreshing any expected hash."""
from pathlib import Path
import hashlib,json,sys
ROOT=Path(__file__).resolve().parents[2];sys.path.insert(0,str(ROOT/'.noeaaeue/scripts'))
import check_moebius_response as checker
import moebius_owner_census as census
from repository_paths import relocated_name
sha=lambda raw:hashlib.sha256(raw).hexdigest()
def observation(logical,expected):
 physical=relocated_name(logical);p=ROOT/physical
 if not p.is_file() or p.is_symlink():return {'logical_path':logical,'current_path':physical,'expected_sha256':expected,'current_status':'missing-or-unsafe-current-file'}
 actual=sha(p.read_bytes())
 return {'logical_path':logical,'current_path':physical,'expected_sha256':expected,'observed_current_sha256':actual,'current_status':'same-bytes' if actual==expected else 'stale-source-or-asset-binding'}
def manifest(name):
 p=ROOT/name;raw=p.read_bytes();data=json.loads(raw)
 assets=[observation(name,h) for name,h in data.get('assets',{}).items()]
 sources=[observation(row['path'],row['sha256']) for row in data.get('modules',{}).values()]
 c=data.get('owner_census',{});helper=c.get('helper',{});old_profile=c.get('runtime_exception_policy',{})
 return {'path':name,'sha256':sha(raw),'recorded_generation_status':data.get('generation_status'),'recorded_kernel_checked':data.get('kernel_checked',False),'status':'stale-historical-binding' if name.startswith('.noeaaeue/evidence/') else 'retained-current-observation-attempt','changed_or_missing_assets':[r for r in assets if r['current_status']!='same-bytes'],'changed_or_missing_sources':[r for r in sources if r['current_status']!='same-bytes'],'recorded_profile_sha256':old_profile.get('profile_sha256'),'selected_current_profile_sha256':census.GENERATED_PARTIAL_PROFILE_SHA256,'profile_binding_status':'same-profile' if old_profile.get('profile_sha256')==census.GENERATED_PARTIAL_PROFILE_SHA256 else 'stale-or-superseded-profile-generation','recorded_helper':observation(helper['path'],helper['sha256']) if helper else None,'selected_current_helper':{'path':census.HELPER_RELATIVE,'sha256':census.HELPER_SHA256},'helper_protocol_status':('current-qualified-helper-binding' if helper.get('path')==census.HELPER_RELATIVE and helper.get('sha256')==census.HELPER_SHA256 else 'historical-helper-preserved; active-current-helper-separately-qualified'),'expected_hashes_rewritten':False}
old=json.loads((ROOT/'.noeaaeue/bindings/moebius-historical-profile-v1.json').read_bytes())
owner_changes=[]
for entry in old['entries']:
 relative=entry['owner'].replace('.','/')+'.lean';r=observation(relative,entry['owner_source_sha256'])
 if r['current_status']!='same-bytes' and not any(v['logical_path']==relative for v in owner_changes):owner_changes.append(r)
report={'schema':'moebius-current-vs-historical-binding-status-v2','scope':'Current byte/protocol observations only. Historical manifests, profile permissions, receipts and expected hashes remain unchanged. A structural input check is separate from current scoped native qualification and whole-closure proof replay.','historical_manifest':manifest('.noeaaeue/evidence/moebius-response-sources.json'),'retained_observation_attempts':[manifest(p.relative_to(ROOT).as_posix()) for p in sorted((ROOT/'.noeaaeue/bindings').glob('moebius-current-inputs-v*.json'))],'legacy_singleton':{**observation(census.RUNTIME_SOURCE,census.RUNTIME_SOURCE_SHA256),'historical_source_fixture':'.noeaaeue/tests/fixtures/moebius/legacy-ordered-product.lean.txt','current_exception_inherited':False,'status':'stale-current-binding; exact historical fixture retained for compatibility controls'},'prior_five_pair_profile':{'path':'.noeaaeue/bindings/moebius-historical-profile-v1.json','profile_sha256':census.HISTORICAL_GENERATED_PARTIAL_PROFILE_SHA256,'status':'historical-stale-current-source-pin','changed_owner_sources':owner_changes,'helper_path':'.noeaaeue/checks/MoebiusResponseOwnerAudit.lean','helper_sha256':sha((ROOT/'.noeaaeue/checks/MoebiusResponseOwnerAudit.lean').read_bytes()),'historical_helper_bytes_preserved':sha((ROOT/'.noeaaeue/checks/MoebiusResponseOwnerAudit.lean').read_bytes())==census.HISTORICAL_PARTIAL_HELPER_SHA256},'current_default':{'path':checker.DEFAULT_CURRENT_MANIFEST,'kernel_acceptance_from_metadata':False,'scope':'Exact current source/assets observation; validator must check current bytes and shared layout before any source replay.'},'current_scoped_native_qualification':{'path':'.noeaaeue/binding-repair/moebius-current-qualification.json','status':json.loads((ROOT/'.noeaaeue/binding-repair/moebius-current-qualification.json').read_bytes())['status'],'library_wide_admission':False}}
output=ROOT/'.noeaaeue/binding-repair/moebius-binding-status.json';output.write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({'historical_asset_drifts':len(report['historical_manifest']['changed_or_missing_assets']),'historical_source_drifts':len(report['historical_manifest']['changed_or_missing_sources']),'historical_profile':report['historical_manifest']['recorded_profile_sha256'],'current_profile':census.GENERATED_PARTIAL_PROFILE_SHA256,'singleton_status':report['legacy_singleton']['status'],'old_expected_hashes_rewritten':False}))
