#!/usr/bin/env python3
"""Bounded source-only metadata reconciliation; no native/proof admission.

Uses the unchanged reviewed observer and producer. All old inputs except the
two designated mutable current observations remain exact. Old variants and
failed attempts are retained; no taxonomy/intake/catalog/code edits are made.
The cooperative quiet-freeze CAS is not arbitrary-host atomicity/confinement.
"""
import contextlib
import datetime
import hashlib
import importlib.util
import io
import json
import os
from pathlib import Path
import signal
import stat
import subprocess
import sys
import uuid

ROOT = Path('/Users/think/Desktop/math')
BASE = ROOT / '.noeaaeue/receipts/reference-jacobi-integration-20261016T120629Z-e54c33fc0d10'
OLD_READSET = BASE / 'held-public-phase-inputs-20261016T162606Z-bcc7a2c0e602.json'
OBS = '.noeaaeue/bindings/current-source-observations.json'
ACTIVE = '.noeaaeue/bindings/moebius-current-inputs-current.json'
LEAN = Path('/Users/think/.elan/toolchains/leanprover--lean4---v4.33.0/bin/lean')
EXTRA = {
    'GRWTSK/Combinatorics/FiniteVoting/QuorumMajority.lean': '93ed23cd6f113e4bb6f0ef5749cd9f33f1760e4e0abb75aff11e09789d2c88be',
    'GRWTSK/Combinatorics/Sequences/FibonacciLayers.lean': '9a1521d73db0d390397e9a1a99d4aedf18e9c931c74e75f246b49910f38b113c',
    'GRWTSK/Order/Interval/BoundedQuantizer.lean': '9d8435cfd3721d6632182082f65537164789dcd54257f91a2c557f991c7e1f0c',
}


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def load(name, path, expected):
    raw = path.read_bytes()
    if sha(raw) != expected or path.is_symlink():
        raise ValueError('source drift: ' + str(path))
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    exec(compile(raw, str(path), 'exec', dont_inherit=True), module.__dict__)
    return module


def raw_new(path, raw):
    fd = os.open(path, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o400)
    with os.fdopen(fd, 'wb') as stream:
        stream.write(raw)
        stream.flush()
        os.fsync(stream.fileno())
    if path.read_bytes() != raw:
        raise ValueError('new raw record readback differs')


def main():
    old_raw = OLD_READSET.read_bytes()
    if sha(old_raw) != 'a57a8d6dbe650e0ae20d08a943d922c313437cd9e94c62cf1ee92a29ae4110d3':
        raise ValueError('historical readset drift')
    old = json.loads(old_raw)
    cap_path = BASE / 'capture_held_public_readset_20261016.py'
    cap = load('immutable_prior_source_capture', cap_path,
               old['inputs'][str(cap_path.relative_to(ROOT))])
    stamp = datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ') + '-' + uuid.uuid4().hex[:12]
    run = BASE / ('three-candidate-source-only-reconciliation-' + stamp)
    run.mkdir(mode=0o700)
    def identity(path):
        raw = cap.read(path)
        return {'path': str(path), 'sha256': sha(raw), 'bytes': len(raw)}
    expected_sources = sorted(set(old['source_paths']) | set(EXTRA))
    source_old = cap.read(ROOT / OBS)
    active_old = cap.read(ROOT / ACTIVE)
    if sha(source_old) != old['inputs'][OBS] or sha(active_old) != old['inputs'][ACTIVE]:
        raise ValueError('current observation/active baseline drift')
    raw_new(run / 'current-source-observations.before.json.txt', source_old)
    raw_new(run / 'active-default.before.json.txt', active_old)
    before_stat = (ROOT / OBS).stat()
    stat_id = lambda s: (s.st_dev, s.st_ino, s.st_mode, s.st_size, s.st_mtime_ns, s.st_ctime_ns)
    if not stat.S_ISREG(before_stat.st_mode) or before_stat.st_nlink != 1:
        raise ValueError('current source observation must be single regular occurrence')
    index = cap.git('ls-files', '--stage', '-z')
    head = cap.git('rev-parse', '--verify', 'HEAD').decode().strip()
    if head != old['head'] or cap.git('diff', '--cached', '--name-only', '-z'):
        raise ValueError('Git context/staged work drift')
    def check_old(*, observation=source_old, active=active_old):
        if cap.universe() != expected_sources:
            raise ValueError('concurrent887source universe drift')
        for name, expected in old['inputs'].items():
            raw = cap.read(ROOT / name)
            wanted = sha(observation) if name == OBS else sha(active) if name == ACTIVE else expected
            if sha(raw) != wanted:
                raise ValueError('old protected input drift: ' + name)
        for name, expected in EXTRA.items():
            if sha(cap.read(ROOT / name)) != expected:
                raise ValueError('new source changed: ' + name)
        if cap.git('rev-parse', '--verify', 'HEAD').decode().strip() != head or cap.git('ls-files', '--stage', '-z') != index:
            raise ValueError('HEAD/logical index drift')
    check_old()
    check_old()
    # Public process interfaces are fail-closed. Only exact qualified read-only
    # Git queries needed by the custody checks may launch, through this gate.
    original_popen = subprocess.Popen
    git_calls, blocked = [], []
    def deny(*args, **kwargs):
        blocked.append(str(args[:1]))
        raise RuntimeError('external/native/location/signal route blocked')
    def git_only(argv, *args, **kwargs):
        command = list(argv) if isinstance(argv, (list, tuple)) else []
        if not command or kwargs.get('shell') or str(command[0]) != str(cap.GIT):
            return deny(argv)
        if '-C' not in command or command[command.index('-C') + 1] != str(ROOT):
            return deny(argv)
        tail = command[command.index('-C') + 2:]
        if not tail or tail[0] not in ('ls-files', 'rev-parse', 'diff'):
            return deny(argv)
        if sha(cap.read(cap.GIT)) != cap.EXPECTED_GIT:
            raise ValueError('qualified Git bytes changed')
        git_calls.append(command)
        return original_popen(command, *args, **kwargs)
    subprocess.Popen = git_only
    for name in ('system', 'fork', 'forkpty', 'posix_spawn', 'posix_spawnp', 'kill', 'killpg',
                 'execl', 'execle', 'execlp', 'execlpe', 'execv', 'execve', 'execvp', 'execvpe',
                 'spawnl', 'spawnle', 'spawnlp', 'spawnlpe', 'spawnv', 'spawnve', 'spawnvp', 'spawnvpe'):
        if hasattr(os, name):
            setattr(os, name, deny)
    for name in ('raise_signal', 'pthread_kill'):
        if hasattr(signal, name):
            setattr(signal, name, deny)
    sys.path.insert(0, str(ROOT / '.noeaaeue/scripts'))
    import check_math_layout as layout
    import source_observations as observer
    observation = observer.create(ROOT, lambda root, name: cap.read(Path(root) / name),
                                  expected_sources, layout.source_role, layout.imports)
    if observation != observer.create(ROOT, lambda root, name: cap.read(Path(root) / name),
                                      expected_sources, layout.source_role, layout.imports):
        raise ValueError('quiet observation reads differ')
    rows = {row['path']: row for row in observation['observation']['sources']}
    if len(rows) != 887 or observation['mathematical_admission'] is not False:
        raise ValueError('observation count/admission differs')
    previous = json.loads(source_old)
    for row in previous['observation']['sources']:
        if rows[row['path']] != row:
            raise ValueError('old source role/bytes changed: ' + row['path'])
    for name in EXTRA:
        row = rows[name]
        if (row['source_set'] != 'candidate-evidence' or row['classification_reason'] !=
                'pending-library-source-outside-public-entrypoint-closure' or row['proof_status'] != 'not-replayed'
                or row['mathematical_admission'] is not False or row['public_release_eligible'] is not False):
            raise ValueError('new source role/admission differs: ' + name)
    new_raw = (json.dumps(observation, indent=2) + '\n').encode()
    version = ROOT / '.noeaaeue/bindings' / ('current-source-observations-observation-' + stamp + '.json')
    raw_new(version, new_raw)
    check_old()
    parent = os.open(ROOT / '.noeaaeue/bindings', os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    temporary = '.current-source-observations-' + stamp + '.tmp'
    try:
        fd = os.open(temporary, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o600, dir_fd=parent)
        with os.fdopen(fd, 'wb') as stream:
            stream.write(new_raw)
            stream.flush()
            os.fsync(stream.fileno())
        check_old()
        reopened = os.open(ROOT / '.noeaaeue/bindings', os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
        try:
            if (os.fstat(parent).st_dev, os.fstat(parent).st_ino) != (os.fstat(reopened).st_dev, os.fstat(reopened).st_ino):
                raise ValueError('observation parent changed')
        finally:
            os.close(reopened)
        if stat_id(os.stat(Path(OBS).name, dir_fd=parent, follow_symlinks=False)) != stat_id(before_stat):
            raise ValueError('source-observation CAS occurrence drift')
        os.replace(temporary, Path(OBS).name, src_dir_fd=parent, dst_dir_fd=parent)
        os.fsync(parent)
    finally:
        os.close(parent)
    check_old(observation=new_raw)
    producer_path = ROOT / '.noeaaeue/binding-repair/observe_current_moebius_inputs.py'
    producer = load('unchanged_current_input_producer', producer_path,
                    '0d37421178a56f2a586209d7767279d7d113338dffd595ad7ec0d0e4cf9af038')
    out = io.StringIO()
    with contextlib.redirect_stdout(out):
        producer.main(['--lean-binary', str(LEAN)])
    raw_new(run / 'producer.stdout.txt', out.getvalue().encode())
    report = json.loads(out.getvalue())
    contract_version = ROOT / report['path']
    active_new = cap.read(ROOT / ACTIVE)
    contract = json.loads(active_new)
    if (cap.read(contract_version) != active_new or contract['kernel_checked'] is not False
            or len(contract['modules']) != 456 or len(contract['assets']) != 28
            or contract['assets'][OBS] != sha(new_raw)
            or 'public_compilation_origin' in contract['incremental_validation']):
        raise ValueError('new source-only default contract differs')
    check_old(observation=new_raw, active=active_new)
    check_old(observation=new_raw, active=active_new)
    if blocked:
        raise ValueError('blocked external route was attempted')
    receipt = {'schema': 'three-candidate-source-observation-contract-reconciliation-v1',
        'status': 'NEW887_SOURCE_OBSERVATION_AND_SOURCE_ONLY_DEFAULT_ACTIVE; NATIVE_NOT_RUN',
        'head': head, 'old_readset': identity(OLD_READSET), 'wrapper': identity(Path(__file__)),
        'old_observation_archive': identity(run / 'current-source-observations.before.json.txt'),
        'new_observation': identity(version), 'current_observation': identity(ROOT / OBS),
        'observation_identity': observation['identity'], 'source_count': 887,
        'candidate_count': sum(row['source_set'] == 'candidate-evidence' for row in rows.values()),
        'old884_source_rows_exact': True, 'new_three_candidate_paths': EXTRA,
        'new_contract': identity(contract_version), 'active_default': identity(ROOT / ACTIVE),
        'prior62_history': identity(ROOT / '.noeaaeue/bindings/moebius-current-inputs-history' / ('prior-' + sha(active_old) + '.json')),
        'producer_report': report, 'module_count': 456, 'asset_count': 28,
        'protected_prior_inputs': len(old['inputs']), 'only_old_input_changes': [OBS, ACTIVE],
        'whole887_membership_and_quiet_reads_exact': True, 'logical_index_and_HEAD_preserved': True,
        'known_readonly_git_calls': len(git_calls), 'external_or_native_attempts': blocked,
        'native_Lean_Lake_inspector_jobs': 0, 'mathematical_admission': False,
        'public_or_warm_validation': 'NOT_RUN', 'git_mutations': 0,
        'scope': 'Bounded cooperative quiet-freeze source/hash/role observation only; no proof acceptance or hostile-host atomicity claim'}
    cap.write_new(run / 'receipt.json', receipt)
    print(json.dumps({'receipt': identity(run / 'receipt.json'), 'new_observation': identity(version),
                      'current_observation': identity(ROOT / OBS), 'new_contract': identity(contract_version),
                      'active_default': identity(ROOT / ACTIVE), 'wrapper': identity(Path(__file__))}, sort_keys=True))


if __name__ == '__main__':
    main()
