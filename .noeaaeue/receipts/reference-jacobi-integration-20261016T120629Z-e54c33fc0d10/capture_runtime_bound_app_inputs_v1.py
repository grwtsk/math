#!/usr/bin/env python3
"""Inert APP-only finite readset capture; no validation stage is executed."""
import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import sys

ROOT=Path('/Users/local/Desktop/math')
BASE=ROOT/'.noeaaeue/receipts/reference-jacobi-integration-20261016T120629Z-e54c33fc0d10'
CANDIDATE=BASE/'observe_runtime_bound_app_candidate_v1.py'
CANDIDATE_SHA='174337bbe0dcf7103c7e06924d4169ecb45837b6490c11b0adcfb57dd6293d87'


def require(value,message):
    if not value:raise ValueError(message)


def sha(raw):return hashlib.sha256(raw).hexdigest()


def application_readset(baseline,inputs,contract_name,selection):
    require(set(baseline['inputs'])<=set(inputs)
        and all(inputs[p]==h for p,h in baseline['inputs'].items()),'APP capture lost/changed public input')
    require(contract_name.startswith('.noeaaeue/bindings/') and contract_name.endswith('.json')
        and contract_name!=baseline['contract']
        and contract_name!='.noeaaeue/bindings/moebius-current-inputs-current.json'
        and contract_name in inputs,'new candidate-bound immutable contract required')
    origin=selection['origin'];descriptor=selection['descriptor']
    for identity in (origin,descriptor):
        name=Path(identity['path']).relative_to(Path(baseline['root'])).as_posix()
        require(inputs.get(name)==identity['sha256'],'APP origin/descriptor is not byte-bound')
    for key in ('caller','old_helper'):
        identity=baseline[key];name=Path(identity['path']).relative_to(Path(baseline['root'])).as_posix()
        require(inputs.get(name)==identity['sha256'],'selected caller/helper is not byte-bound')
    result={key:baseline[key] for key in ('root','head','source_paths','caller','old_helper')}
    result.update(schema='serial-incremental-phase-inputs-v1',phase='application',
        inputs=dict(sorted(inputs.items())),contract=contract_name,
        source_origin={'kind':'approved-public-terminal-origin','descriptor':descriptor,'origin':origin})
    require(set(result)=={'schema','phase','root','head','inputs','source_paths','contract',
        'caller','old_helper','source_origin'},'closed APP readset schema differs')
    return result


def load(name,path,expected):
    raw=path.read_bytes()
    require(not path.is_symlink() and sha(raw)==expected,'APP capture helper changed')
    module=importlib.util.module_from_spec(importlib.util.spec_from_file_location(name,path))
    sys.modules[name]=module
    exec(compile(raw,str(path),'exec',dont_inherit=True),vars(module))
    return module


def capture(tuple_path,tuple_sha):
    candidate=load('app_capture_candidate_functions',CANDIDATE,CANDIDATE_SHA)
    metadata=candidate.load('app_capture_metadata_functions',candidate.METADATA,candidate.METADATA_SHA)
    cap=metadata.load('app_capture_prior_reader',metadata.CAPTURE,metadata.CAPTURE_SHA)
    raw=cap.read(tuple_path);require(sha(raw)==tuple_sha,'APP capture tuple changed')
    t=cap.decoded(raw)
    require(type(t) is dict and set(t)=={'schema','root','head','candidate_result',
        'capture_wrapper','controls','outputs'} and t['schema']=='runtime-bound-app-capture-request-v1'
        and t['root']==str(ROOT) and t['head']==metadata.HEAD,'closed APP capture tuple required')
    require(t['capture_wrapper']==cap.identity(Path(__file__).absolute()),'APP capture source differs')
    require(set(t['outputs'])=={'readset','plan'},'closed APP capture outputs required')
    outputs={k:ROOT/cap.rel(v) for k,v in t['outputs'].items()}
    require(len(set(outputs.values()))==2 and all(p.parent==BASE for p in outputs.values()),'unsafe APP capture outputs')
    for p in outputs.values():require(not p.exists() and not p.is_symlink(),'APP capture output already exists')
    baseline,current=candidate.context(cap,metadata)
    additions={cap.rel(candidate.PUBLIC):candidate.PUBLIC_SHA,
               cap.rel(tuple_path):tuple_sha,
               cap.rel(Path(__file__).absolute()):t['capture_wrapper']['sha256'],
               cap.rel(CANDIDATE):CANDIDATE_SHA}
    result=cap.decoded(metadata.bind_identity(cap,t['candidate_result'],additions))
    require(result['schema']=='runtime-bound-app-candidate-result-v1'
        and result['status']=='CANDIDATE_ONLY_NO_ACTIVATION_NO_NATIVE'
        and result['kernel_checked'] is False and result['native_jobs']==0
        and result['wrapper']==cap.identity(CANDIDATE)
        and result['public_baseline']==cap.identity(candidate.PUBLIC)
        and result['head']==metadata.HEAD and result['source_count']==887
        and result['retained_public_inputs']==1761,'APP candidate result scope/source differs')
    for key in ('request','contract','producer_report','active'):
        metadata.bind_identity(cap,result[key],additions)
    require(cap.rel(result['active']['path'])==candidate.ACTIVE
        and result['active']['sha256']==candidate.B37_SHA,'candidate changed activeB37')
    request=cap.decoded(cap.read(Path(result['request']['path'])))
    require(candidate.canonical(request['selection'])==candidate.canonical(result['selection'])
        and request['wrapper']==result['wrapper'],'candidate request/selection swapping')
    for key,result_key in (('contract','contract'),('report','producer_report'),('receipt',None)):
        name=cap.rel(request['outputs'][key])
        expected=cap.rel(t['candidate_result']['path'] if result_key is None else result[result_key]['path'])
        require(name==expected,'candidate output identity differs')
    candidate.bind_selection(cap,metadata,result['selection'],current,additions)
    contract_raw=cap.read(Path(result['contract']['path']))
    contract=cap.decoded(contract_raw)
    candidate.validate_candidate(current,contract,baseline['inputs'],result['selection']['origin'])
    report=cap.decoded(cap.read(Path(result['producer_report']['path'])))
    require(report['sha256']==result['contract']['sha256'] and report['module_count']==456
        and report['asset_count']==30 and report['kernel_checked'] is False
        and 'active_default' not in report,'candidate report is not APP-only source observation')
    controls=cap.decoded(metadata.bind_identity(cap,t['controls'],additions))
    require(controls['stable'] is True and len(controls['runs'])==2
        and all(run['exit_code']==0 for run in controls['runs']),'APP helper controls not passed')
    require({x['path'] for x in controls['sources_after']}=={
        str(CANDIDATE),str(Path(__file__).absolute()),str(BASE/'test_runtime_bound_app_source_helpers_v1.py')},
        'APP helper controls source scope differs')
    for identity in controls['sources_after']:metadata.bind_identity(cap,identity,additions)
    for run in controls['runs']:metadata.bind_identity(cap,run['log'],additions)
    inputs=candidate.preserved_union(baseline['inputs'],additions)
    data=application_readset(baseline,inputs,cap.rel(result['contract']['path']),result['selection'])
    index=cap.git('ls-files','--stage','-z')
    require(not cap.git('diff','--cached','--name-only','-z')
        and not cap.git('ls-files','--unmerged','-z'),'quiet APP capture index required')
    def guard():
        require(cap.universe()==baseline['source_paths'],'887 APP source universe differs')
        require(cap.git('rev-parse','--verify','HEAD').decode().strip()==metadata.HEAD
            and cap.git('ls-files','--stage','-z')==index,'APP HEAD/logical index changed')
        for name,digest in inputs.items():
            require(sha(cap.read(ROOT/name))==digest,'APP finite input changed: '+name)
    guard();guard()
    readset=cap.write_new(outputs['readset'],data)
    guard()
    plan={'schema':'runtime-bound-app-source-capture-plan-v1','status':'APP_INPUTS_CAPTURED_NO_NATIVE_RELEASE',
        'readset':readset,'source_origin':data['source_origin'],'candidate_result':t['candidate_result'],
        'capture_wrapper':t['capture_wrapper'],'controls':t['controls'],'public_baseline':cap.identity(candidate.PUBLIC),
        'contract':result['contract'],'active':result['active'],'caller':data['caller'],'old_helper':data['old_helper'],
        'input_count':len(inputs),'retained_public_inputs':1761,'source_count':887,
        'module_count':456,'asset_count':30,'head':metadata.HEAD,'logical_index_sha256':sha(index),
        'compiler_runtime_sha256':candidate.RUNTIME_SHA,'kernel_checked':False,'native_jobs':0,
        'release_created':False,'stage':'application-only fourth stage; public stages not dispatched',
        'scope':'New candidate-bound APP inputs only; exactB37/B778/cf31/public bytes retained. Actual fresh456census,6runtime-profile and10namespace-axiom controls plus final sealed guards remain mandatory. Root/coordinator must separately authorize actual APP native execution.'}
    print(json.dumps({'readset':readset,'plan':cap.write_new(outputs['plan'],plan)}))


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--capture',action='store_true');parser.add_argument('--tuple',type=Path)
    parser.add_argument('--tuple-sha256');args=parser.parse_args()
    require(args.capture and args.tuple is not None and args.tuple_sha256 is not None,
            'explicit --capture and exact root tuple required')
    capture(args.tuple,args.tuple_sha256)
