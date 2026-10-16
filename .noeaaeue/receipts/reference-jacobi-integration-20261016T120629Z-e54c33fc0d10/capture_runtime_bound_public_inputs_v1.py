#!/usr/bin/env python3
"""Inert finite runtime-bound public readset capture; never a native release."""
import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import sys

ROOT = Path('/Users/think/Desktop/math')
BASE = ROOT / '.noeaaeue/receipts/reference-jacobi-integration-20261016T120629Z-e54c33fc0d10'
METADATA = BASE / 'observe_runtime_only_contract_source_only_v1.py'
METADATA_SHA = '54544ea17a743a85d230b73a83188261ab875bd0fed206174160046e20daae0e'
CALLER = BASE / 'serial_native_runtime_successor_v1.py'
CALLER_SHA = '05601e37c03f870ed127a6b1e4a691aebb18c16b0acd68372b67dfe545485848'
CALLER_TEST = BASE / 'test_serial_native_runtime_successor_v1.py'
CALLER_TEST_SHA = '7bf9b35da8f837081cfa8abcd61bfb8eff22aa4ea6194b8a4b6c6937952cf554'
CALLER_CONTROLS = BASE / 'runtime-successor-pure-controls-20261016T180424Z-1d8f0538c6fb4866a1c9eae326e2cf46/receipt.json'
CALLER_CONTROLS_SHA = 'c11edf0ea53dafa48e137d42d8f0c7fff5896b9ba710b804eb10ab541e0ae7a3'
METADATA_CONTROLS = BASE / 'runtime-only-metadata-pure-controls-20261016T180734Z-feace7f03dc9443991dfdaf64960a307/receipt.json'
METADATA_CONTROLS_SHA = '13a5596e1e56bc66bbdec0cb9541641c9a3a6a046f9eec37e503cb0fc4d7f356'
PUBLIC_ADDENDUM = ROOT / '.noeaaeue/.local/runtime-identity-repair/final-handoff-20261016T180014Z-ac9a41c0/public33-source-binding-addendum.json'
PUBLIC_ADDENDUM_SHA = 'bc8e8f5f274bf11e978741da15a1b1ee59b75b9072df0cd645c866e94f02e6de'
VERIFIER_ADDENDUM = PUBLIC_ADDENDUM.with_name('verifier-type-addendum.json')
VERIFIER_ADDENDUM_SHA = '201fc5d294fe86bcdcdf601263680426d72734ebdc9911fa056200bdeb629470'


def require(value, message):
    if not value: raise ValueError(message)


def sha(raw): return hashlib.sha256(raw).hexdigest()


def load(name, path, expected):
    raw = path.read_bytes()
    require(not path.is_symlink() and sha(raw) == expected, 'capture helper source differs')
    module = importlib.util.module_from_spec(importlib.util.spec_from_file_location(name, path))
    sys.modules[name] = module
    exec(compile(raw, str(path), 'exec', dont_inherit=True), vars(module))
    return module


def merge_inputs(expected, additions, active_name, active_sha):
    """No old input changes except the previously validated active copy."""
    result = dict(expected)
    for name, digest in additions.items():
        require(type(name) is str and not Path(name).is_absolute() and '\\' not in name
                and all(p not in ('', '.', '..', '.git') for p in name.split('/')),
                'unsafe finite addition path')
        require(type(digest) is str and re.fullmatch(r'[0-9a-f]{64}', digest), 'finite digest required')
        if name in expected:
            require(digest == (active_sha if name == active_name else expected[name]),
                    'unapproved old-input override: ' + name)
        result[name] = digest
    result[active_name] = active_sha
    return result


def public_readset(baseline, inputs, contract_name, caller):
    caller_name = Path(caller['path']).relative_to(ROOT).as_posix()
    require(set(caller) == {'path','sha256','bytes'} and caller['sha256'] == CALLER_SHA
            and type(caller['bytes']) is int and caller['bytes'] > 0
            and inputs.get(caller_name) == CALLER_SHA, 'wrong/unbound selected runtime caller')
    require(contract_name.startswith('.noeaaeue/bindings/') and contract_name.endswith('.json')
            and contract_name != '.noeaaeue/bindings/moebius-current-inputs-current.json'
            and contract_name != baseline['contract'] and contract_name in inputs,
            'new immutable contract required')
    data = {'schema': 'serial-incremental-phase-inputs-v1', 'phase': 'public',
            'root': baseline['root'], 'head': baseline['head'], 'inputs': dict(sorted(inputs.items())),
            'source_paths': baseline['source_paths'], 'contract': contract_name,
            'caller': caller, 'old_helper': baseline['old_helper']}
    payload = {k: data[k] for k in ('root', 'head', 'inputs', 'source_paths', 'contract')}
    data['source_origin'] = {'kind': 'frozen-source-input-set', 'sha256': sha(json.dumps(
        payload, sort_keys=True, separators=(',', ':'), allow_nan=False).encode())}
    require(set(data) == {'schema','phase','root','head','inputs','source_paths','contract',
                          'caller','old_helper','source_origin'}, 'closed public schema differs')
    return data


def capture(tuple_path, tuple_sha):
    metadata = load('runtime_bound_metadata_capture_functions', METADATA, METADATA_SHA)
    cap = metadata.load('runtime_bound_prior_capture_primitives', metadata.CAPTURE, metadata.CAPTURE_SHA)
    tuple_raw = cap.read(tuple_path)
    require(sha(tuple_raw) == tuple_sha, 'capture tuple digest differs')
    t = cap.decoded(tuple_raw)
    require(type(t) is dict and set(t) == {'schema','root','head','metadata_result',
        'capture_wrapper','capture_controls','outputs'} and t['schema'] == 'runtime-bound-public-capture-request-v1'
        and t['root'] == str(ROOT) and t['head'] == metadata.HEAD, 'closed capture tuple required')
    require(t['capture_wrapper'] == cap.identity(Path(__file__).absolute()), 'capture source differs')
    require(set(t['outputs']) == {'readset', 'plan'}, 'closed capture outputs required')
    outputs = {key: ROOT / cap.rel(value) for key,value in t['outputs'].items()}
    require(len(set(outputs.values())) == 2 and all(path.parent == BASE for path in outputs.values()),
            'capture output location differs')
    for path in outputs.values(): require(not path.exists() and not path.is_symlink(), 'capture output exists')
    baseline, expected, old, runtime, additions = metadata.context(cap)
    result_raw = metadata.bind_identity(cap, t['metadata_result'], additions)
    result = cap.decoded(result_raw)
    require(result['schema'] == 'runtime-only-source-observation-result-v1'
            and result['status'] == 'SOURCE_ONLY_RUNTIME_INPUTS_ACTIVE_NATIVE_NOT_RUN'
            and result['kernel_checked'] is False and result['native_jobs'] == 0
            and result['compiler_runtime_sha256'] == metadata.RUNTIME_SHA,
            'metadata result is not the authorized source-only observation')
    require(result['wrapper'] == cap.identity(METADATA) and result['head'] == metadata.HEAD
            and result['source_count'] == 887 and result['protected_old_inputs'] == 1488
            and result['reviewed_code_changes'] == 76, 'metadata result source/scope differs')
    for key in ('request','contract','active','b4_archive','b4_history','producer_report','producer'):
        metadata.bind_identity(cap, result[key], additions)
    require(cap.rel(result['active']['path']) == metadata.ACTIVE
            and result['active']['sha256'] == result['contract']['sha256']
            and result['active']['bytes'] == result['contract']['bytes'], 'active/immutable identity differs')
    contract_name = cap.rel(result['contract']['path'])
    contract = cap.decoded(cap.read(Path(result['contract']['path'])))
    metadata.validate_contract(old, contract, expected, runtime)
    require(cap.read(Path(result['active']['path'])) == cap.read(Path(result['contract']['path'])),
            'active and immutable bytes differ')
    require(result['b4_history']['sha256'] == result['b4_archive']['sha256'] == metadata.B4_SHA,
            'B4 preimage/history differs')
    report = cap.decoded(cap.read(Path(result['producer_report']['path'])))
    require(report['sha256'] == result['contract']['sha256'] and report['module_count'] == 456
            and report['asset_count'] == 28 and report['kernel_checked'] is False
            and report['active_default']['previous_sha256'] == metadata.B4_SHA, 'producer report differs')
    def fixed(path, digest):
        raw = cap.read(path); require(sha(raw) == digest, 'fixed capture input changed: ' + str(path))
        additions[cap.rel(path)] = digest
        return cap.decoded(raw)
    for path, digest in ((CALLER,CALLER_SHA),(CALLER_TEST,CALLER_TEST_SHA)):
        require(sha(cap.read(path)) == digest, 'caller code differs')
        additions[cap.rel(path)] = digest
    controls = fixed(CALLER_CONTROLS, CALLER_CONTROLS_SHA)
    for identity in controls['new_sources'] + controls['read_only_production_runtime_source_tuple']:
        metadata.bind_identity(cap, identity, additions)
    for mode in ('normal','optimized'): metadata.bind_identity(cap, controls['controls'][mode]['log'], additions)
    meta_controls = fixed(METADATA_CONTROLS, METADATA_CONTROLS_SHA)
    for identity in meta_controls['sources_after']: metadata.bind_identity(cap, identity, additions)
    for run in meta_controls['runs']: metadata.bind_identity(cap, run['log'], additions)
    capture_controls = cap.decoded(metadata.bind_identity(cap, t['capture_controls'], additions))
    require(capture_controls['stable'] is True and len(capture_controls['runs']) == 2
            and all(run['exit_code'] == 0 for run in capture_controls['runs']), 'capture controls not passed')
    require({row['path'] for row in capture_controls['sources_after']} == {
        str(Path(__file__).absolute()), str(BASE / 'test_runtime_bound_public_capture_v1.py')},
        'capture controls source scope differs')
    for identity in capture_controls['sources_after']: metadata.bind_identity(cap, identity, additions)
    for run in capture_controls['runs']: metadata.bind_identity(cap, run['log'], additions)
    public_addendum = fixed(PUBLIC_ADDENDUM, PUBLIC_ADDENDUM_SHA)
    for run in public_addendum['public_control_runs']:
        metadata.bind_identity(cap, run['receipt'], additions)
        metadata.bind_identity(cap, run['log'], additions)
    verifier_addendum = fixed(VERIFIER_ADDENDUM, VERIFIER_ADDENDUM_SHA)
    for key in ('prior_verifier','successor_verifier'):
        metadata.bind_identity(cap, verifier_addendum[key], additions)
    additions[cap.rel(tuple_path)] = tuple_sha
    additions[cap.rel(Path(__file__).absolute())] = t['capture_wrapper']['sha256']
    inputs = merge_inputs(expected, additions, metadata.ACTIVE, result['active']['sha256'])
    data = public_readset(baseline, inputs, contract_name, cap.identity(CALLER))
    index = cap.git('ls-files', '--stage', '-z')
    require(not cap.git('diff', '--cached', '--name-only', '-z')
            and not cap.git('ls-files', '--unmerged', '-z'), 'index is not the quiet captured context')
    def guard():
        require(cap.universe() == baseline['source_paths'], '887 source universe differs')
        require(cap.git('rev-parse', '--verify', 'HEAD').decode().strip() == metadata.HEAD
                and cap.git('ls-files', '--stage', '-z') == index, 'HEAD/logical index differs')
        for name, digest in inputs.items():
            require(sha(cap.read(ROOT / name)) == digest, 'finite capture input changed: ' + name)
    guard(); guard()
    readset = cap.write_new(outputs['readset'], data)
    guard()
    plan = {'schema':'runtime-bound-public-source-capture-plan-v1','status':'CAPTURE_ONLY_NO_NATIVE_RELEASE',
        'readset':readset,'source_origin':data['source_origin'],'head':metadata.HEAD,
        'input_count':len(inputs),'source_count':887,'baseline_input_count':1488,
        'reviewed_code_changes':76,'only_other_changed_old_input':metadata.ACTIVE,
        'metadata_result':t['metadata_result'],'contract':result['contract'],'active':result['active'],
        'capture':t['capture_wrapper'],'caller':data['caller'],'old_helper':data['old_helper'],
        'compiler_runtime_sha256':metadata.RUNTIME_SHA,'logical_index_sha256':sha(index),
        'kernel_checked':False,'native_jobs':0,'release_created':False,
        'scope':'Finite source-only public readset capture. No prior input omitted, no proof/native authority. Runtime objects outsideROOT are bound by contract descriptor and new caller actual runtime guard, not copied through this128MiB reader.'}
    print(json.dumps({'readset':readset,'plan':cap.write_new(outputs['plan'],plan)}))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--capture', action='store_true')
    parser.add_argument('--tuple', type=Path)
    parser.add_argument('--tuple-sha256')
    args = parser.parse_args()
    require(args.capture and args.tuple is not None and args.tuple_sha256 is not None,
            'explicit --capture and exact root tuple required')
    capture(args.tuple, args.tuple_sha256)
