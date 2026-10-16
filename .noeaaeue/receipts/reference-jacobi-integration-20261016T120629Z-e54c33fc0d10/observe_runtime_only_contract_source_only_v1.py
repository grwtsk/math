#!/usr/bin/env python3
"""Inert until explicit --observe and an exact root tuple are supplied.

This is cooperative source-only metadata installation, not native authority,
hostile-host confinement, or an atomic transaction across multiple files.
"""
import argparse
import contextlib
import hashlib
import importlib.util
import io
import json
import os
from pathlib import Path
import signal
import subprocess
import sys

ROOT = Path('/Users/think/Desktop/math')
BASE = ROOT / '.noeaaeue/receipts/reference-jacobi-integration-20261016T120629Z-e54c33fc0d10'
READSET = BASE / 'held-public-metadata887-inputs-20261016T170028Z-8cc8b945aa11.json'
READSET_SHA = 'b8c9c0176802e2c97ec6562670c84c5244dd0407e35f4304b52bc5d583f063c5'
CAPTURE = BASE / 'capture_held_public_metadata887_v1.py'
CAPTURE_SHA = '5070a08c7ec83ce27403df3db1b787954cd630ae5ae03737ecab4feedfcd077e'
HANDOFF = ROOT / '.noeaaeue/.local/runtime-identity-repair/final-handoff-20261016T180014Z-ac9a41c0/handoff.json'
HANDOFF_SHA = 'd8241dafd85cf64168904ffcad7305032a5757540dcb5cbd5e1922c9d7a7edd1'
MANIFEST = HANDOFF.with_name('changed-source-manifest.json')
MANIFEST_SHA = 'b3a856ec559ef81318206dbe19806799cd5e1d0003809cf9552d1ad55d9d4482'
APPROVAL = BASE / 'coordinator-runtime-repair-source-review-20261016T180146Z-54b2b2b58139.json'
APPROVAL_SHA = 'b8b29bb7408ecd6d8ec606bd57b1bfcbf1499dfe63ea64c7faaabaf4b339f55f'
PRODUCER = ROOT / '.noeaaeue/binding-repair/observe_current_moebius_inputs.py'
PRODUCER_SHA = '1caae3a7ff23fb9cd07b3780981db37881a1d2841d25ae5d8793fb004e6168a9'
RUNTIME_SHA = 'c48f0fb338d4947e55e4f3974e49b7d1d4a12ad0ac0a783355a135d7bda01f7d'
ACTIVE = '.noeaaeue/bindings/moebius-current-inputs-current.json'
B4_SHA = 'b4ea709d3636c3432cf954d2b684240b5639434fde1244eee2f10058e0a37d62'
LEAN = Path('/Users/think/.elan/toolchains/leanprover--lean4---v4.33.0/bin/lean')
HEAD = 'd25ccee49a781e150e991f885cb00f8be8f6e453'


def require(value, message):
    if not value:
        raise ValueError(message)


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def canonical(value):
    return (json.dumps(value, sort_keys=True, separators=(',', ':'),
                       ensure_ascii=True, allow_nan=False) + '\n').encode()


def load(name, path, expected):
    raw = path.read_bytes()
    require(not path.is_symlink() and sha(raw) == expected, 'bound source changed: ' + str(path))
    module = importlib.util.module_from_spec(importlib.util.spec_from_file_location(name, path))
    sys.modules[name] = module
    exec(compile(raw, str(path), 'exec', dont_inherit=True), vars(module))
    return module


def validate_delta(baseline, handoff, rows):
    """Only the pinned manifest may change old inputs, never a caller drift map."""
    require(len(baseline['inputs']) == 1488 and len(baseline['source_paths']) == 887
            and baseline['head'] == HEAD, 'wrong B8 scope')
    require(type(rows) is list and len(rows) == 76, 'exact76 manifest required')
    expected = dict(baseline['inputs'])
    names = []
    for row in rows:
        name = row['path']
        require(type(name) is str and name.endswith('.py') and '..' not in Path(name).parts
                and (name.startswith('.noeaaeue/scripts/')
                     or name.startswith('.noeaaeue/binding-repair/'))
                and name in expected and expected[name] == row['old_sha256'],
                'unreviewed source delta: ' + str(name))
        require(row['new_sha256'] != row['old_sha256'], 'unchanged manifest row')
        names.append(name)
        expected[name] = row['new_sha256']
    require(len(set(names)) == 76 and set(names) == set(handoff['changed_source_paths']),
            'manifest duplicate/membership differs')
    require(not set(names) & set(baseline['source_paths']), 'mathematical source changed')
    return expected


def validate_contract(old, new, expected_inputs, runtime):
    require(len(old['modules']) == 456 and len(old['assets']) == 28
            and 'public_compilation_origin' not in old.get('incremental_validation', {}),
            'wrong runtime-only baseline contract')
    require(sha(canonical(runtime['compiler_runtime_identity'])) == runtime['compiler_runtime_sha256']
            == RUNTIME_SHA and runtime.get('target_executions') == 0,
            'reviewed static runtime identity differs')
    desired = dict(old)
    desired['assets'] = {name: expected_inputs[name] for name in old['assets']}
    desired['compiler_runtime_identity'] = runtime['compiler_runtime_identity']
    desired['compiler_runtime_sha256'] = runtime['compiler_runtime_sha256']
    require(canonical(new) == canonical(desired), 'contract delta exceeds assets+two runtime fields')
    require(new['kernel_checked'] is False, 'source observation cannot claim admission')


def bind_identity(cap, identity, additions):
    require(type(identity) is dict and set(identity) == {'path', 'sha256', 'bytes'}
            and type(identity['path']) is str and Path(identity['path']).is_absolute()
            and type(identity['sha256']) is str and len(identity['sha256']) == 64
            and type(identity['bytes']) is int and identity['bytes'] > 0, 'exact file identity required')
    name = cap.rel(identity['path'])
    raw = cap.read(Path(identity['path']))
    require(sha(raw) == identity['sha256'] and len(raw) == identity['bytes'], 'bound identity differs: ' + name)
    require(name not in additions or additions[name] == identity['sha256'], 'identity collision')
    additions[name] = identity['sha256']
    return raw


def context(cap):
    additions = {}
    def fixed(path, expected):
        raw = cap.read(path)
        require(sha(raw) == expected, 'fixed input changed: ' + str(path))
        additions[cap.rel(path)] = expected
        return cap.decoded(raw)
    baseline = fixed(READSET, READSET_SHA)
    handoff = fixed(HANDOFF, HANDOFF_SHA)
    rows = fixed(MANIFEST, MANIFEST_SHA)
    fixed(APPROVAL, APPROVAL_SHA)
    require(handoff['baseline_readset'] == cap.identity(READSET)
            and handoff['changed_source_manifest'] == cap.identity(MANIFEST), 'handoff inputs differ')
    expected = validate_delta(baseline, handoff, rows)
    for row in rows:
        for key, digest, size in [('old_archive_source', row['old_sha256'], row['old_bytes']),
                                  ('retained_preimage', row['old_sha256'], row['old_bytes']),
                                  ('frozen_postimage', row['new_sha256'], row['new_bytes'])]:
            require(row[key]['sha256'] == digest and row[key]['bytes'] == size, 'archive row differs')
            bind_identity(cap, row[key], additions)
    runtime = cap.decoded(bind_identity(cap, handoff['static_runtime_observation'], additions))
    require(runtime['compiler_runtime_sha256'] == handoff['compiler_runtime_sha256'] == RUNTIME_SHA,
            'handoff runtime digest differs')
    # Seven logical control suites use nine files because engine/public modes
    # have separate records. Their exact identities come from the fixed handoff.
    for item in handoff['pure_tests']:
        bind_identity(cap, item['identity'], additions)
    producer_handoff = cap.decoded(bind_identity(cap, handoff['application_producer_handoff'], additions))
    for identity in producer_handoff['owned_sources'] + producer_handoff['tested_helper_parser_closure']:
        bind_identity(cap, identity, additions)
    bind_identity(cap, producer_handoff['final_test_receipt'], additions)
    old = cap.decoded(cap.read(ROOT / baseline['contract']))
    require(sha(cap.read(ROOT / baseline['contract'])) == B4_SHA == baseline['inputs'][ACTIVE],
            'B4 preimage differs')
    return baseline, expected, old, runtime, additions


def observe(tuple_path, tuple_sha):
    cap = load('runtime_only_prior_capture_primitives', CAPTURE, CAPTURE_SHA)
    raw_tuple = cap.read(tuple_path)
    require(sha(raw_tuple) == tuple_sha, 'tuple digest differs')
    request = cap.decoded(raw_tuple)
    require(type(request) is dict and set(request) == {'schema', 'root', 'head', 'wrapper', 'outputs'}
            and request['schema'] == 'runtime-only-source-observation-request-v1'
            and request['root'] == str(ROOT) and request['head'] == HEAD,
            'closed metadata request required')
    require(request['wrapper'] == cap.identity(Path(__file__).absolute()), 'wrapper identity differs')
    require(set(request['outputs']) == {'contract', 'report', 'receipt', 'b4_archive'}, 'closed outputs required')
    outputs = {key: ROOT / cap.rel(value) for key, value in request['outputs'].items()}
    require(len(set(outputs.values())) == 4 and outputs['contract'].parent == ROOT / '.noeaaeue/bindings'
            and outputs['contract'].suffix == '.json' and outputs['contract'] != ROOT / ACTIVE
            and all(path.parent == BASE for key, path in outputs.items() if key != 'contract'), 'unsafe output locations')
    for path in outputs.values():
        require(not path.exists() and not path.is_symlink(), 'output already exists: ' + str(path))
    baseline, expected, old, runtime, additions = context(cap)
    self_identity = cap.identity(Path(__file__).absolute())
    head = cap.git('rev-parse', '--verify', 'HEAD').decode().strip()
    index = cap.git('ls-files', '--stage', '-z')
    require(head == HEAD and not cap.git('diff', '--cached', '--name-only', '-z')
            and not cap.git('ls-files', '--unmerged', '-z'), 'wrong quiet HEAD/index')

    def guard(active_sha=B4_SHA):
        require(cap.universe() == baseline['source_paths'], '887 source universe changed')
        for name, digest in expected.items():
            require(sha(cap.read(ROOT / name)) == (active_sha if name == ACTIVE else digest),
                    'protected input changed: ' + name)
        for name, digest in additions.items():
            require(sha(cap.read(ROOT / name)) == digest, 'custody input changed: ' + name)
        require(cap.git('rev-parse', '--verify', 'HEAD').decode().strip() == HEAD
                and cap.git('ls-files', '--stage', '-z') == index, 'HEAD/logical index changed')
        require(cap.identity(Path(__file__).absolute()) == self_identity
                and sha(cap.read(tuple_path)) == tuple_sha, 'wrapper/tuple changed')

    guard(); guard()
    b4_raw = cap.read(ROOT / ACTIVE)
    fd = os.open(outputs['b4_archive'], os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o400)
    with os.fdopen(fd, 'wb') as stream:
        stream.write(b4_raw); stream.flush(); os.fsync(stream.fileno())
    original_popen, git_calls, blocked = subprocess.Popen, [], []
    def deny(*args, **kwargs):
        blocked.append('external/native/location/signal route')
        raise RuntimeError('source-only process gate denied external execution')
    def git_only(argv, *args, **kwargs):
        command = list(argv) if isinstance(argv, (list, tuple)) else []
        prefix = [str(cap.GIT), '--no-optional-locks', '-c', 'core.fsmonitor=false',
                  '-c', 'core.hooksPath=/dev/null', '-C', str(ROOT)]
        if kwargs.get('shell') or command[:len(prefix)] != prefix:
            return deny(argv)
        tail = command[len(prefix):]
        if not tail or tail[0] not in ('ls-files', 'rev-parse', 'diff'):
            return deny(argv)
        require(sha(cap.read(cap.GIT)) == cap.GIT_SHA, 'pinned read-only Git changed')
        git_calls.append(command)
        return original_popen(command, *args, **kwargs)
    subprocess.Popen = git_only
    for name in ('system', 'popen', 'fork', 'forkpty', 'posix_spawn', 'posix_spawnp', 'kill', 'killpg',
                 'execl', 'execle', 'execlp', 'execlpe', 'execv', 'execve', 'execvp', 'execvpe',
                 'spawnl', 'spawnle', 'spawnlp', 'spawnlpe', 'spawnv', 'spawnve', 'spawnvp', 'spawnvpe'):
        if hasattr(os, name): setattr(os, name, deny)
    for name in ('raise_signal', 'pthread_kill'):
        if hasattr(signal, name): setattr(signal, name, deny)
    producer = load('runtime_only_exact_producer', PRODUCER, PRODUCER_SHA)
    original_loader, loaded = producer._load_runtime_helpers, []
    def expected_runtime_loader(root, sources):
        engine = original_loader(root, sources)
        original_identity = engine.compiler_runtime_identity
        def current(compiler, **kwargs):
            identity = original_identity(compiler, **kwargs)
            require(canonical(identity) == canonical(runtime['compiler_runtime_identity'])
                    and engine.compiler_runtime_digest(identity) == RUNTIME_SHA,
                    'current runtime differs before metadata publication')
            return identity
        engine.compiler_runtime_identity = current
        loaded.append(engine)
        return engine
    producer._load_runtime_helpers = expected_runtime_loader
    argv = ['--output', str(outputs['contract']), '--activate-default', '--incremental',
            '--lean-binary', str(LEAN)]
    stdout = io.StringIO()
    with contextlib.redirect_stdout(stdout): producer.main(argv)
    require(len(loaded) == 1, 'runtime helper was not loaded exactly once')
    loaded[0].assert_compiler_runtime_unchanged(LEAN, runtime['compiler_runtime_identity'])
    report_raw = stdout.getvalue().encode()
    report = cap.decoded(report_raw)
    contract_raw = cap.read(outputs['contract'])
    contract = cap.decoded(contract_raw)
    validate_contract(old, contract, expected, runtime)
    require(report['path'] == cap.rel(outputs['contract']) and report['sha256'] == sha(contract_raw)
            and report['module_count'] == 456 and report['asset_count'] == 28
            and report['kernel_checked'] is False, 'producer report differs')
    require(cap.read(ROOT / ACTIVE) == contract_raw
            and report['active_default']['previous_sha256'] == B4_SHA, 'active/prior copy differs')
    history = ROOT / '.noeaaeue/bindings/moebius-current-inputs-history' / ('prior-' + B4_SHA + '.json')
    require(cap.read(history) == b4_raw == cap.read(outputs['b4_archive']), 'B4 custody differs')
    guard(sha(contract_raw)); guard(sha(contract_raw))
    require(not blocked, 'a denied external route was attempted')
    fd = os.open(outputs['report'], os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o400)
    with os.fdopen(fd, 'wb') as stream:
        stream.write(report_raw); stream.flush(); os.fsync(stream.fileno())
    require(cap.read(outputs['report']) == report_raw, 'raw report readback differs')
    result = {'schema': 'runtime-only-source-observation-result-v1',
        'status': 'SOURCE_ONLY_RUNTIME_INPUTS_ACTIVE_NATIVE_NOT_RUN',
        'wrapper': self_identity, 'request': cap.identity(tuple_path),
        'baseline': cap.identity(READSET), 'handoff': cap.identity(HANDOFF),
        'manifest': cap.identity(MANIFEST), 'approval': cap.identity(APPROVAL),
        'static_runtime': cap.identity(Path(cap.decoded(cap.read(HANDOFF))['static_runtime_observation']['path'])),
        'contract': cap.identity(outputs['contract']), 'active': cap.identity(ROOT / ACTIVE),
        'b4_archive': cap.identity(outputs['b4_archive']), 'b4_history': cap.identity(history),
        'producer_report': cap.identity(outputs['report']), 'producer': cap.identity(PRODUCER),
        'argv': argv, 'head': HEAD, 'logical_index_sha256': sha(index),
        'source_count': 887, 'protected_old_inputs': 1488, 'reviewed_code_changes': 76,
        'compiler_runtime_sha256': RUNTIME_SHA, 'module_count': 456, 'asset_count': 28,
        'kernel_checked': False, 'native_jobs': 0, 'guarded_git_calls': len(git_calls),
        'blocked_external_routes': blocked,
        'scope': 'Cooperative source-only metadata observation/activation; no proof acceptance, native release or hostile-host atomicity. PriorB4/raw/history, B778, cf31 and every Lean source retained.'}
    print(json.dumps({'receipt': cap.write_new(outputs['receipt'], result),
                      'contract': result['contract'], 'producer_report': result['producer_report']}))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--observe', action='store_true')
    parser.add_argument('--tuple', type=Path)
    parser.add_argument('--tuple-sha256')
    options = parser.parse_args()
    require(options.observe and options.tuple is not None and options.tuple_sha256 is not None,
            'explicit --observe and exact root tuple required')
    observe(options.tuple, options.tuple_sha256)
