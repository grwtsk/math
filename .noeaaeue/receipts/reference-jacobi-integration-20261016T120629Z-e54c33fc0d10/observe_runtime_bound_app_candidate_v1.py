#!/usr/bin/env python3
"""Inert runtime-bound APP candidate preparation; no activation/native release."""
import argparse
import contextlib
import hashlib
import importlib.util
import io
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import sys

ROOT = Path('/Users/local/Desktop/math')
BASE = ROOT / '.noeaaeue/receipts/reference-jacobi-integration-20261016T120629Z-e54c33fc0d10'
METADATA = BASE / 'observe_runtime_only_contract_source_only_v1.py'
METADATA_SHA = '54544ea17a743a85d230b73a83188261ab875bd0fed206174160046e20daae0e'
PUBLIC = BASE / 'held-public-runtime-bound-inputs-20261016T181243Z-06a3f68d6d98.json'
PUBLIC_SHA = 'd883064612692cf287d50c52a0f255aeb9e7f078ec8ab67aa5c4639c171121b0'
ACTIVE = '.noeaaeue/bindings/moebius-current-inputs-current.json'
B37_SHA = 'b37f947774bee8794d174718d06a4d7bd044924821c428c3296313cea705499e'
RUNTIME_SHA = 'c48f0fb338d4947e55e4f3974e49b7d1d4a12ad0ac0a783355a135d7bda01f7d'
CALLER_SHA = '05601e37c03f870ed127a6b1e4a691aebb18c16b0acd68372b67dfe545485848'


def require(value, message):
    if not value: raise ValueError(message)


def sha(raw): return hashlib.sha256(raw).hexdigest()


def canonical(value):
    return (json.dumps(value,sort_keys=True,separators=(',',':'),ensure_ascii=True,
                       allow_nan=False)+'\n').encode()


def load(name, path, expected):
    raw=path.read_bytes()
    require(not path.is_symlink() and sha(raw)==expected,'bound helper changed')
    module=importlib.util.module_from_spec(importlib.util.spec_from_file_location(name,path))
    sys.modules[name]=module
    exec(compile(raw,str(path),'exec',dont_inherit=True),vars(module))
    return module


def origin_identity(identity):
    require(type(identity) is dict and set(identity)=={'path','sha256','bytes','attempt_id'}
        and type(identity['path']) is str and Path(identity['path']).is_absolute()
        and '..' not in Path(identity['path']).parts
        and type(identity['sha256']) is str and re.fullmatch(r'[0-9a-f]{64}',identity['sha256'])
        and type(identity['bytes']) is int and identity['bytes']>0
        and type(identity['attempt_id']) is str
        and re.fullmatch(r'[^\x00-\x20\x7f/\\]{1,256}',identity['attempt_id']),
        'exact public origin identity required')
    return identity


def validate_selection(selection, descriptor, payload, terminal, approval, current):
    require(type(selection) is dict and set(selection)=={
        'approval','descriptor','terminal_receipt','origin'},'closed public selection required')
    identity=origin_identity(selection['origin'])
    require(canonical(descriptor)==canonical(identity),'descriptor/public origin swapping')
    require(canonical(approval.get('new_app_origin_choice'))==canonical(identity)
        and canonical(approval.get('first_receipt'))==canonical(selection['terminal_receipt'])
        and type(approval.get('status')) is str and approval['status'].startswith('ACCEPTED_ACTUAL_'),
        'coordinator approval does not select this first origin/receipt')
    require(payload.get('schema')=='proof-validation-origin-v1' and payload.get('terminal') is True
        and payload.get('outcome')=='passed' and payload.get('attempt_id')==identity['attempt_id'],
        'origin is not the selected successful terminal attempt')
    require(canonical(terminal.get('proof_validation_origin'))==canonical(identity),
        'terminal receipt/public origin differs')
    for state in (payload.get('evidence',{}).get('validation'),terminal):
        require(type(state) is dict and state.get('mode')=='all-project-replay'
            and state.get('status')=='ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED',
            'selected evidence is not successful public validation')
        descriptor=state.get('compiler_runtime_identity')
        require(type(descriptor) is dict and canonical(descriptor)==canonical(current['compiler_runtime_identity'])
            and sha(canonical(descriptor))==state.get('compiler_runtime_sha256')==RUNTIME_SHA
            ==current['compiler_runtime_sha256'], 'runtime-bound public origin required; no historical fallback')


def validate_candidate(current, candidate, baseline_inputs, origin):
    require(len(current['modules'])==456 and len(current['assets'])==28
        and current['kernel_checked'] is False
        and 'public_compilation_origin' not in current['incremental_validation'],
        'fixed runtime-only456/28 baseline required')
    additions={'.noeaaeue/scripts/check_math_trust.py','.noeaaeue/scripts/incremental_math_trust.py'}
    require(not additions & set(current['assets']),'public assets already present')
    desired=dict(current)
    desired['assets']={**current['assets'],**{p:baseline_inputs[p] for p in additions}}
    desired['incremental_validation']={**current['incremental_validation'],
                                      'public_compilation_origin':origin_identity(origin)}
    require(canonical(candidate)==canonical(desired),'candidate delta exceeds two assets+exact origin')


def preserved_union(baseline_inputs, additions):
    result=dict(baseline_inputs)
    for name,digest in additions.items():
        require(type(name) is str and not Path(name).is_absolute() and '\\' not in name
            and all(part not in ('','.','..','.git') for part in name.split('/')),
            'unsafe APP input addition')
        require(type(digest) is str and re.fullmatch(r'[0-9a-f]{64}',digest),'invalid APP input digest')
        require(name not in result or result[name]==digest,'APP addition shadows protected public input')
        result[name]=digest
    return result


def bind_selection(cap, metadata, selection, current, additions):
    require(type(selection) is dict and set(selection)=={
        'approval','descriptor','terminal_receipt','origin'},'closed public selection required')
    identity=origin_identity(selection['origin'])
    raw={key:metadata.bind_identity(cap,selection[key],additions)
         for key in ('approval','descriptor','terminal_receipt')}
    origin_raw=metadata.bind_identity(cap,{k:identity[k] for k in ('path','sha256','bytes')},additions)
    validate_selection(selection,cap.decoded(raw['descriptor']),cap.decoded(origin_raw),
                       cap.decoded(raw['terminal_receipt']),cap.decoded(raw['approval']),current)


def context(cap, metadata):
    raw=cap.read(PUBLIC)
    require(sha(raw)==PUBLIC_SHA,'runtime public baseline changed')
    baseline=cap.decoded(raw)
    require(len(baseline['inputs'])==1761 and len(baseline['source_paths'])==887
        and baseline['head']==metadata.HEAD and baseline['caller']['sha256']==CALLER_SHA,
        'fixed1761/887/runtime-caller baseline required')
    current_raw=cap.read(ROOT/baseline['contract'])
    require(sha(current_raw)==B37_SHA==baseline['inputs'][ACTIVE]
        and cap.read(ROOT/ACTIVE)==current_raw,'B37 active/immutable changed')
    current=cap.decoded(current_raw)
    require(current['compiler_runtime_sha256']==RUNTIME_SHA
        ==sha(canonical(current['compiler_runtime_identity'])),'B37 runtime identity differs')
    return baseline,current


def observe(tuple_path, tuple_sha):
    metadata=load('app_candidate_metadata_primitives',METADATA,METADATA_SHA)
    cap=metadata.load('app_candidate_prior_reader',metadata.CAPTURE,metadata.CAPTURE_SHA)
    raw=cap.read(tuple_path);require(sha(raw)==tuple_sha,'candidate tuple differs')
    t=cap.decoded(raw)
    require(type(t) is dict and set(t)=={'schema','root','head','wrapper','selection','outputs'}
        and t['schema']=='runtime-bound-app-candidate-request-v1' and t['root']==str(ROOT)
        and t['head']==metadata.HEAD,'closed APP candidate tuple required')
    require(t['wrapper']==cap.identity(Path(__file__).absolute()),'candidate wrapper identity differs')
    require(set(t['outputs'])=={'contract','report','receipt'},'closed candidate outputs required')
    outputs={k:ROOT/cap.rel(v) for k,v in t['outputs'].items()}
    require(len(set(outputs.values()))==3 and outputs['contract'].parent==ROOT/'.noeaaeue/bindings'
        and outputs['contract'].suffix=='.json' and outputs['contract']!=ROOT/ACTIVE
        and all(p.parent==BASE for k,p in outputs.items() if k!='contract'),'unsafe candidate outputs')
    for p in outputs.values():require(not p.exists() and not p.is_symlink(),'candidate output exists')
    baseline,current=context(cap,metadata)
    additions={cap.rel(PUBLIC):PUBLIC_SHA,cap.rel(tuple_path):tuple_sha,
               cap.rel(Path(__file__).absolute()):t['wrapper']['sha256']}
    bind_selection(cap,metadata,t['selection'],current,additions)
    protected=preserved_union(baseline['inputs'],additions)
    index=cap.git('ls-files','--stage','-z')
    require(not cap.git('diff','--cached','--name-only','-z')
        and not cap.git('ls-files','--unmerged','-z'),'quiet index required')
    def guard():
        require(cap.universe()==baseline['source_paths'],'887 source universe changed')
        require(cap.git('rev-parse','--verify','HEAD').decode().strip()==metadata.HEAD
            and cap.git('ls-files','--stage','-z')==index,'HEAD/logical index changed')
        for name,digest in protected.items():
            require(sha(cap.read(ROOT/name))==digest,'protected source/selection changed: '+name)
    guard();guard()
    original_popen,blocked,git_calls=subprocess.Popen,[],[]
    def deny(*args,**kwargs):
        blocked.append('external/native/location/signal route')
        raise RuntimeError('source-only APP process gate denied external execution')
    def git_only(argv,*args,**kwargs):
        command=list(argv) if isinstance(argv,(list,tuple)) else []
        prefix=[str(cap.GIT),'--no-optional-locks','-c','core.fsmonitor=false',
                '-c','core.hooksPath=/dev/null','-C',str(ROOT)]
        tail=command[len(prefix):]
        if kwargs.get('shell') or command[:len(prefix)]!=prefix or not tail or tail[0] not in ('ls-files','rev-parse','diff'):
            return deny(argv)
        require(sha(cap.read(cap.GIT))==cap.GIT_SHA,'pinned Git changed')
        git_calls.append(command)
        return original_popen(command,*args,**kwargs)
    subprocess.Popen=git_only
    for name in ('system','popen','fork','forkpty','posix_spawn','posix_spawnp','kill','killpg',
        'execl','execle','execlp','execlpe','execv','execve','execvp','execvpe',
        'spawnl','spawnle','spawnlp','spawnlpe','spawnv','spawnve','spawnvp','spawnvpe'):
        if hasattr(os,name):setattr(os,name,deny)
    for name in ('raise_signal','pthread_kill'):
        if hasattr(signal,name):setattr(signal,name,deny)
    producer=metadata.load('app_candidate_exact_producer',metadata.PRODUCER,metadata.PRODUCER_SHA)
    original_loader,loaded=producer._load_runtime_helpers,[]
    def expected_runtime_loader(root,sources):
        engine=original_loader(root,sources);original_identity=engine.compiler_runtime_identity
        def checked(compiler,**kwargs):
            identity=original_identity(compiler,**kwargs)
            require(canonical(identity)==canonical(current['compiler_runtime_identity'])
                and engine.compiler_runtime_digest(identity)==RUNTIME_SHA,'APP runtime changed before candidate write')
            return identity
        engine.compiler_runtime_identity=checked;loaded.append(engine);return engine
    producer._load_runtime_helpers=expected_runtime_loader
    argv=['--output',str(outputs['contract']),'--incremental','--public-compilation-origin',
          t['selection']['descriptor']['path'],'--lean-binary',str(metadata.LEAN)]
    stdout=io.StringIO()
    with contextlib.redirect_stdout(stdout):producer.main(argv)
    require(len(loaded)==1,'runtime helper not loaded once')
    loaded[0].assert_compiler_runtime_unchanged(metadata.LEAN,current['compiler_runtime_identity'])
    report_raw=stdout.getvalue().encode();report=cap.decoded(report_raw)
    candidate_raw=cap.read(outputs['contract']);candidate=cap.decoded(candidate_raw)
    validate_candidate(current,candidate,baseline['inputs'],t['selection']['origin'])
    require(report['path']==cap.rel(outputs['contract']) and report['sha256']==sha(candidate_raw)
        and report['module_count']==456 and report['asset_count']==30 and report['kernel_checked'] is False
        and 'active_default' not in report,'APP candidate report/activation differs')
    guard();guard();require(not blocked,'blocked external route attempted')
    fd=os.open(outputs['report'],os.O_WRONLY|os.O_CREAT|os.O_EXCL|os.O_NOFOLLOW,0o400)
    with os.fdopen(fd,'wb') as stream:
        stream.write(report_raw);stream.flush();os.fsync(stream.fileno())
    require(cap.read(outputs['report'])==report_raw,'raw APP report readback differs')
    result={'schema':'runtime-bound-app-candidate-result-v1','status':'CANDIDATE_ONLY_NO_ACTIVATION_NO_NATIVE',
        'wrapper':t['wrapper'],'request':cap.identity(tuple_path),'public_baseline':cap.identity(PUBLIC),
        'selection':t['selection'],'contract':cap.identity(outputs['contract']),
        'producer_report':cap.identity(outputs['report']),'active':cap.identity(ROOT/ACTIVE),
        'head':metadata.HEAD,'logical_index_sha256':sha(index),'source_count':887,
        'retained_public_inputs':1761,'module_count':456,'asset_count':30,
        'compiler_runtime_sha256':RUNTIME_SHA,'kernel_checked':False,'native_jobs':0,
        'guarded_git_calls':len(git_calls),'blocked_external_routes':blocked,'argv':argv,
        'scope':'New immutable APP candidate only. B37/B778/cf31 and all public baseline bytes retained. Origin supplies compilation candidates, never APP census/profile/axiom/control acceptance. Runtime guard is cooperative, not hostile-host confinement.'}
    print(json.dumps({'receipt':cap.write_new(outputs['receipt'],result),'contract':result['contract']}))


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--observe',action='store_true');parser.add_argument('--tuple',type=Path)
    parser.add_argument('--tuple-sha256');args=parser.parse_args()
    require(args.observe and args.tuple is not None and args.tuple_sha256 is not None,
            'explicit --observe and exact root tuple required')
    observe(args.tuple,args.tuple_sha256)
