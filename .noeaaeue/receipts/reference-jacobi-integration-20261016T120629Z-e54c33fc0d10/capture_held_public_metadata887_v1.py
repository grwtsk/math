#!/usr/bin/env python3
"""Inert until --capture plus an exact root-provided metadata tuple.

New source-only custody observation and UNEXECUTED public plan. No project
imports, native jobs, releases, validator execution or old-readset rewriting.
Only pinned read-only Git queries run during an explicitly authorized capture.
"""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import stat
import subprocess
import sys
import uuid

ROOT = Path('/Users/think/Desktop/math')
BASE = ROOT / '.noeaaeue/receipts/reference-jacobi-integration-20261016T120629Z-e54c33fc0d10'
OLD = BASE / 'held-public-phase-inputs-20261016T162606Z-bcc7a2c0e602.json'
OLD_SHA = 'a57a8d6dbe650e0ae20d08a943d922c313437cd9e94c62cf1ee92a29ae4110d3'
HEAD = 'd25ccee49a781e150e991f885cb00f8be8f6e453'
GIT = Path('/Applications/Xcode.app/Contents/Developer/usr/bin/git')
GIT_SHA = 'acf0f202ebd6ecf78a731d900673b8a5f923f3b3c2783da599f1762ad4862dc0'
CURRENT_OBS = '.noeaaeue/bindings/current-source-observations.json'
OLD_OBS_SHA = '85f3536a338fbd358fb371e6be6153dc0c2de53daaa568d86b1350588e1894b3'
ACTIVE = '.noeaaeue/bindings/moebius-current-inputs-current.json'
OLD_CONTRACT_SHA = '62a71043d8145e3fe2da8efc447c65f94015ee8649b5163ffae5f9f27b966ca2'
CALLER_SHA = '123143671d0c4dee627a919db9ba689b5baf832984657fc3788973300bbc90f7'
HELPER_SHA = '64000202b88d2d7c3fcd05aabd476164cf8b7aeea846fe714639aeea4162a15b'


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(',', ':')).encode()


def decoded(raw):
    def unique(pairs):
        d = {}
        for k, v in pairs:
            if k in d:
                raise ValueError('duplicate JSON key')
            d[k] = v
        return d
    return json.loads(raw, object_pairs_hook=unique)


def require(value, message):
    if not value:
        raise ValueError(message)


def rel(path):
    path = Path(path)
    name = path.relative_to(ROOT).as_posix() if path.is_absolute() else path.as_posix()
    require('\\' not in name and all(p not in ('', '.', '..', '.git') for p in name.split('/')),
            'unsafe repository-relative path')
    return name


def read(path):
    path = Path(path)
    require(path.is_absolute() and '..' not in path.parts, 'unsafe absolute path')
    fd = os.open('/', os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        for part in path.parts[1:-1]:
            child = os.open(part, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=fd)
            os.close(fd)
            fd = child
        leaf = os.open(path.name, os.O_RDONLY | os.O_NONBLOCK | os.O_NOFOLLOW, dir_fd=fd)
        with os.fdopen(leaf, 'rb') as stream:
            before = os.fstat(stream.fileno())
            require(stat.S_ISREG(before.st_mode) and before.st_size <= 128 * 1024 * 1024,
                    'nonregular/oversized input')
            raw = stream.read(128 * 1024 * 1024 + 1)
            after = os.fstat(stream.fileno())
        final = os.stat(path.name, dir_fd=fd, follow_symlinks=False)
        identity = lambda x: (x.st_dev, x.st_ino, x.st_mode, x.st_size, x.st_mtime_ns, x.st_ctime_ns)
        require(identity(before) == identity(after) == identity(final), 'input changed during read')
        require(len(raw) <= 128 * 1024 * 1024, 'input exceeded limit')
        return raw
    finally:
        os.close(fd)


def identity(path):
    raw = read(path)
    return {'path': str(path), 'sha256': sha(raw), 'bytes': len(raw)}


def bind_identity(value, reads):
    require(type(value) is dict and set(value) == {'path', 'sha256', 'bytes'}, 'three-field identity required')
    require(type(value['path']) is str and Path(value['path']).is_absolute(), 'absolute identity required')
    require(type(value['bytes']) is int and value['bytes'] > 0, 'positive literal byte size required')
    name = rel(value['path'])
    raw = read(ROOT / name)
    require(sha(raw) == value['sha256'] and len(raw) == value['bytes'], 'provided identity differs: ' + name)
    reads[name] = sha(raw)
    return raw


def git(*args):
    require(sha(read(GIT)) == GIT_SHA, 'pinned read-only Git differs')
    process = subprocess.run([str(GIT), '--no-optional-locks', '-c', 'core.fsmonitor=false',
        '-c', 'core.hooksPath=/dev/null', '-C', str(ROOT), *args], capture_output=True,
        check=True, timeout=60, env=dict(os.environ, GIT_OPTIONAL_LOCKS='0'))
    return process.stdout


def universe():
    names = set()
    for flags in (('--cached',), ('--others', '--exclude-standard')):
        for item in git('ls-files', '-z', *flags, '--', 'GRWTSK', 'GRWTSK.lean').split(b'\0'):
            if item:
                name = item.decode()
                if name == 'GRWTSK.lean' or name.startswith('GRWTSK/') and name.endswith('.lean'):
                    names.add(rel(name))
    return sorted(names)


def write_new(path, value):
    raw = (json.dumps(value, sort_keys=True, indent=2) + '\n').encode()
    fd = os.open(path, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o400)
    with os.fdopen(fd, 'wb') as stream:
        stream.write(raw)
        stream.flush()
        os.fsync(stream.fileno())
    require(read(path) == raw, 'create-only output readback mismatch')
    return {'path': str(path), 'sha256': sha(raw), 'bytes': len(raw)}


def capture(tuple_path, tuple_sha):
    # Validate all provided identities before any read-only Git query. This tuple
    # authorizes data capture only, never a serial coordinator/native release.
    tuple_path = Path(tuple_path).absolute()
    tuple_raw = read(tuple_path)
    require(sha(tuple_raw) == tuple_sha, 'root tuple digest mismatch')
    t = decoded(tuple_raw)
    identity_keys = {'new_observation_immutable', 'new_observation_current', 'new_contract_immutable',
        'active_contract', 'old_raw_observation_archive', 'metadata_activation_receipt',
        'contract_activation_receipt', 'contract_activation_wrapper', 'prior_contract_history'}
    require(type(t) is dict and set(t) == identity_keys | {'schema', 'head',
        'expected_old_current_observation_sha256', 'new_source_hashes', 'extra_approved_metadata_changes'}
        and t['schema'] == '887-metadata-public-readset-capture-tuple-v1' and t['head'] == HEAD,
        'closed root capture tuple required')
    require(t['expected_old_current_observation_sha256'] == OLD_OBS_SHA, 'old observation expectation differs')
    old_raw = read(OLD)
    require(sha(old_raw) == OLD_SHA, 'prior1476 readset changed')
    old = decoded(old_raw)
    require(len(old['inputs']) == 1476 and len(old['source_paths']) == 884 and old['head'] == HEAD,
            'prior readset scope differs')
    require(old['inputs'][CURRENT_OBS] == OLD_OBS_SHA and old['inputs'][ACTIVE] == OLD_CONTRACT_SHA,
            'prior current metadata identities differ')
    additions = {rel(tuple_path): sha(tuple_raw), rel(OLD): OLD_SHA,
                 rel(Path(__file__).absolute()): sha(read(Path(__file__).absolute()))}
    raw = {key: bind_identity(t[key], additions) for key in sorted(identity_keys)}
    require(rel(t['new_observation_current']['path']) == CURRENT_OBS
            and rel(t['active_contract']['path']) == ACTIVE, 'wrong designated current paths')
    require(raw['new_observation_immutable'] == raw['new_observation_current'], 'observation copies differ')
    require(raw['new_contract_immutable'] == raw['active_contract'], 'contract copies differ')
    require(sha(raw['old_raw_observation_archive']) == OLD_OBS_SHA
            and sha(raw['prior_contract_history']) == OLD_CONTRACT_SHA, 'prior raw history differs')
    contract_name = rel(t['new_contract_immutable']['path'])
    require(contract_name.startswith('.noeaaeue/bindings/') and contract_name.endswith('.json')
            and contract_name != ACTIVE and contract_name != old['contract'], 'NEW immutable contract required')
    contract = decoded(raw['new_contract_immutable'])
    require(contract.get('kernel_checked') is False and len(contract['modules']) == 456,
            'contract must remain source-only exact APP456 observation')
    new = t['new_source_hashes']
    require(type(new) is dict and len(new) == 3 and not set(new) & set(old['source_paths']),
            'exact three newly present source identities required')
    for name, digest in new.items():
        require(name.startswith('GRWTSK/') and name.endswith('.lean'), 'new source path invalid')
        require(sha(read(ROOT / rel(name))) == digest, 'new source differs: ' + name)
        additions[name] = digest
    allowed = {CURRENT_OBS: t['new_observation_current']['sha256'], ACTIVE: t['active_contract']['sha256']}
    extra = t['extra_approved_metadata_changes']
    require(type(extra) is dict, 'explicit extra metadata map required')
    for name, digest in extra.items():
        require(name in old['inputs'] and name.startswith('.noeaaeue/')
                and name.endswith(('.json', '.jsonl')) and name not in allowed
                and name not in {'.noeaaeue/evidence/source-intake.json', '.noeaaeue/documentation/math-layout.json'}
                and not name.startswith('.noeaaeue/documentation/'), 'unallocated old-path change')
        allowed[name] = digest
    require(git('rev-parse', '--verify', 'HEAD').decode().strip() == HEAD, 'HEAD differs')
    index = git('ls-files', '--stage', '-z')
    require(not git('diff', '--cached', '--name-only', '-z'), 'staged work present')
    sources = universe()
    require(len(sources) == 887 and set(sources) == set(old['source_paths']) | set(new),
            'actual887source universe differs from old884plus approved3')
    inputs = {}
    for name, prior_digest in old['inputs'].items():
        observed = sha(read(ROOT / rel(name)))
        require(observed == allowed.get(name, prior_digest), 'unapproved old input drift: ' + name)
        inputs[name] = observed
    inputs.update(additions)
    for name, digest in contract['assets'].items():
        require(inputs.get(name) == digest, 'new contract asset missing/different: ' + name)
    for row in contract['modules'].values():
        require(inputs.get(row['path']) == row['sha256'], 'new contract source differs')
    require(old['caller']['sha256'] == CALLER_SHA and old['old_helper']['sha256'] == HELPER_SHA
            and sha(read(Path(old['caller']['path']))) == CALLER_SHA
            and sha(read(Path(old['old_helper']['path']))) == HELPER_SHA, 'caller/helper drift')
    data = {'schema': 'serial-incremental-phase-inputs-v1', 'phase': 'public', 'root': str(ROOT),
        'head': HEAD, 'inputs': dict(sorted(inputs.items())), 'source_paths': sources,
        'contract': contract_name, 'caller': old['caller'], 'old_helper': old['old_helper']}
    data['source_origin'] = {'kind': 'frozen-source-input-set', 'sha256': sha(canonical({k: data[k]
        for k in ('root', 'head', 'inputs', 'source_paths', 'contract')}))}
    for name, digest in inputs.items():
        require(sha(read(ROOT / name)) == digest, 'final input drift: ' + name)
    require(read(OLD) == old_raw and read(tuple_path) == tuple_raw, 'old readset/tuple drift')
    require(git('rev-parse', '--verify', 'HEAD').decode().strip() == HEAD
            and universe() == sources and git('ls-files', '--stage', '-z') == index,
            'HEAD/source universe/logical index drift')
    stamp = datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ') + '-' + uuid.uuid4().hex[:12]
    record = write_new(BASE / ('held-public-metadata887-inputs-' + stamp + '.json'), data)
    plan = {'schema': 'held-public-metadata887-plan-v1', 'status': 'UNEXECUTED_NATIVE_HOLD',
        'readset': record, 'source_origin': data['source_origin'], 'head': HEAD,
        'input_count': len(inputs), 'source_count': len(sources), 'contract': t['new_contract_immutable'],
        'active_contract': t['active_contract'], 'root_metadata_tuple': identity(tuple_path),
        'capture': identity(Path(__file__).absolute()), 'old1476_readset': identity(OLD),
        'approved_old_input_changes': allowed, 'three_new_source_hashes': new,
        'metadata_artifact_identities': {key: t[key] for key in sorted(identity_keys)},
        'logical_index_listing_sha256': sha(index), 'cold': False,
        'planned_stages': [{'name': 'ordinary-build', 'argv': ['lake', 'build', 'GRWTSK']},
            {'name': 'native-self-test', 'argv': [sys.executable, '-B', str(ROOT / '.noeaaeue/scripts/check_math_trust.py'), '--lean-self-test']},
            {'name': 'public-replay', 'argv': [sys.executable, '-B', str(ROOT / '.noeaaeue/scripts/check_math_trust.py'), '--memory-mib', '12288']}],
        'native_jobs': 0, 'project_imports': 0, 'release_created': False, 'kernel_checked': False,
        'mathematical_acceptance': False, 'public_module_count': '453 pending actual replay',
        'application_module_count': '456 source-only contract; actual replay pending',
        'scope': 'Finite cooperative source/metadata readback. All old hashes preserved except explicitly approved metadata. No native authority, release or hostile-host atomicity.'}
    return {'readset': record, 'plan': write_new(BASE / ('held-public-metadata887-plan-' + stamp + '.json'), plan)}


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--tuple', type=Path)
    parser.add_argument('--tuple-sha256')
    parser.add_argument('--capture', action='store_true')
    args = parser.parse_args(argv)
    require(args.capture and args.tuple is not None and args.tuple_sha256 is not None,
            'inert preparation; exact root tuple and explicit --capture required')
    print(json.dumps(capture(args.tuple, args.tuple_sha256), sort_keys=True))


if __name__ == '__main__':
    main()
