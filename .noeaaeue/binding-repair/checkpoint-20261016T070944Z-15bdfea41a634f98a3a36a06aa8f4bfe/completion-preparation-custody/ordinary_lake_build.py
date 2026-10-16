#!/usr/bin/env python3
"""Plan, or explicitly run, the supplementary ordinary GRWTSK Lake target.

No native command runs without --run. The exact four prior stages must have
passed, all source/pin identities are retained before/after, and one exclusive
record/log directory is used. This ordinary build supplies no axiom acceptance.
"""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import signal
import stat
import subprocess
import sys

ROOT = Path('/Users/think/Desktop/math')
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT / '.noeaaeue/scripts'))
import check_math_trust as guard
import moebius_response_inputs as inputs

CHECKPOINT = '.noeaaeue/binding-repair/checkpoint-20261016T070944Z-15bdfea41a634f98a3a36a06aa8f4bfe'
OUTPUT = CHECKPOINT + '/ordinary-lake-build'
COMMAND = ['lake', 'build', 'GRWTSK']


def require(value, message):
    if not value:
        raise RuntimeError(message)


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def now():
    return datetime.datetime.now(datetime.timezone.utc).isoformat()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--run', action='store_true', help='Run only after owner review and the four passed stages')
    args = parser.parse_args()
    directory = ROOT / OUTPUT
    require(not directory.exists() and not directory.is_symlink(), 'Exclusive ordinary-build output already exists')
    if not args.run:
        print(json.dumps({'status': 'PLAN_ONLY_NO_NATIVE_COMMAND', 'command': COMMAND, 'cwd': str(ROOT),
            'record': OUTPUT + '/record.json', 'log': OUTPUT + '/output.log',
            'required_barrier': 'All four exact final serial-native stages passed; shared native lease and competing-job guards clear.',
            'required_source_scope': {'public_sources': 447, 'public_snapshot_inputs': 506,
                                      'application_modules': 450, 'contract_assets': 24},
            'scope': 'Supplementary ordinary build only; separate trust-zero owned audits remain authoritative.'}))
        return

    guard.make_directory(directory, exclusive=True)
    guard.write_bytes(directory / 'output.log', b'', exclusive=True)
    state = {'schema': 'supplementary-ordinary-lake-build-v1', 'status': 'FAILED_BEFORE_BUILD',
        'command': COMMAND, 'cwd': str(ROOT), 'started_utc': now(), 'build_started_utc': None,
        'finished_utc': None, 'exit_code': None, 'native_build_executed': False,
        'proof_acceptance': False, 'mathematical_acceptance': False, 'rh_proved': False, 'abc_proved': False,
        'log': OUTPUT + '/output.log', 'record': OUTPUT + '/record.json',
        'scope': 'Supplementary ordinary Lake build of the exact current GRWTSK root. This is not a trust-zero or owned-axiom audit, cold Mathlib build, candidate admission, or RH/ABC implication.'}
    observed, expected, frozen = {}, {}, {}
    process = None
    previous_signal_handlers = {}

    def interrupted(signum, _frame):
        state['interrupted_signal'] = signum
        raise InterruptedError('Ordinary build interrupted by signal ' + str(signum))

    def local(name):
        p = Path(name)
        if p.is_absolute():
            p = p.relative_to(ROOT)
        require('..' not in p.parts, 'Nonlocal input locator')
        return p.as_posix()

    def read(name):
        name = local(name)
        raw = guard.read_source(ROOT, name)
        require(name not in observed or observed[name] == raw, 'Prior receipt/metadata readset drift: ' + name)
        observed[name] = raw
        return raw

    def js(name):
        return json.loads(read(name))

    def identity(name):
        name = local(name)
        raw = read(name)
        return {'path': name, 'sha256': sha(raw), 'bytes': len(raw)}

    def bind(name, digest):
        require(name not in expected or expected[name] == digest, 'Conflicting frozen identities: ' + name)
        require(sha(read(name)) == digest, 'Current pinned input drift: ' + name)
        expected[name] = digest

    try:
        for signum in [signal.SIGTERM, signal.SIGHUP]:
            previous_signal_handlers[signum] = signal.signal(signum, interrupted)
        records_path = CHECKPOINT + '/serial-native/records.json'
        stages = js(records_path)
        require(len(stages) == 4 and stages[0]['name'] in {'contract-validate', 'contract-validate-retry'}
                and [row['name'] for row in stages[1:]] ==
                ['native-audit-self-test', 'public-library-replay', 'application-replay'], 'Exact four serial stages required')
        receipts = []
        for row in stages:
            require(row['status'] == 'passed' and row['exit'] == 0
                    and row['script_sha256_before'] == row['script_sha256_after'], 'Prior stage incomplete or unstable')
            scripts = [arg for arg in row['argv'] if arg.endswith('.py')]
            require(len(scripts) == 1 and sha(read(scripts[0])) == row['script_sha256_after']
                    and sha(read(row['log'])) == row['log_sha256']
                    and sha(read(row['retained_receipt'])) == row['receipt_sha256']
                    and read(row['retained_receipt']) == read(row['original_receipt']), 'Prior stage custody differs')
            receipts.append(js(row['retained_receipt']))
        validation, selftest, public, application = receipts
        require(validation['status'] == 'inputs-validated' and validation['kernel_checked'] is False
                and selftest['status'] == 'LEAN_AUDIT_SELF_TEST_PASSED'
                and public['status'] == 'ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED'
                and public['source_count'] == len(public['snapshot']['sources']) == 447
                and len(public['snapshot']['sha256']) == 506
                and application['status'] == 'kernel-checked' and application['kernel_checked'] is True
                and application['compiled_module_count'] == 450 and application['all_final_hashes_match'] is True,
                'Prior native acceptance scope differs')
        preparation = js(CHECKPOINT + '/preparation-manifest.json')
        contract_path = local(preparation['future_contract'])
        contract = js(contract_path)
        require(len(contract['modules']) == 450 and len(contract['assets']) == 24
                and local(application['manifest']) == contract_path
                and application['manifest_sha256'] == sha(read(contract_path)), 'Exact final application contract differs')
        guard.verify_snapshot(ROOT, public['snapshot'])
        for name, digest in public['snapshot']['sha256'].items():
            bind(name, digest)
        for row in contract['modules'].values():
            bind(row['path'], row['sha256'])
        for name, digest in contract['assets'].items():
            bind(name, digest)
        bind(contract_path, sha(read(contract_path)))
        own_path = Path(__file__).relative_to(ROOT).as_posix()
        bind(own_path, sha(read(own_path)))
        for name in ['.noeaaeue/scripts/check_math_trust.py', '.noeaaeue/scripts/moebius_response_inputs.py']:
            bind(name, sha(read(name)))
        lean = Path(application['lean_executable'])
        require(lean.is_absolute() and lean.name == 'lean', 'Recorded actual compiler path differs')
        lake = lean.with_name('lake')
        native_hashes = {str(path): sha(guard.read_source(path.parent, path.name)) for path in [lean, lake]}
        require(native_hashes[str(lean)] == application['lean_sha256'] == contract['lean_sha256']
                == public['lean_binary_sha256'] and application['lean_version'] == contract['lean_version']
                == public['lean_version'], 'Pinned compiler identities differ')
        pins, checkouts, lock_hash = inputs.package_pins(ROOT, ROOT / '.lake/packages', guard.read_source)
        require(pins == contract['dependency_revisions'] == public['dependency_revisions']
                and lock_hash == contract['dependency_lock_sha256']
                and checkouts == public['dependency_checkout_states'], 'Dependency source pins differ')
        anchors = {row['path']: row['sha256'] for row in contract['package_anchors']}
        for name, digest in anchors.items():
            require(sha(guard.read_source(ROOT / '.lake/packages', name)) == digest, 'Pinned package anchor differs')
        state.update(prior_pipeline_records=identity(records_path),
            prior_public_receipt=identity(stages[2]['retained_receipt']),
            prior_application_receipt=identity(stages[3]['retained_receipt']),
            final_contract=identity(contract_path), public_source_count=447, public_snapshot_input_count=506,
            application_module_count=450, contract_asset_count=24,
            input_hashes_before=dict(sorted(expected.items())), root_sha256=expected['GRWTSK.lean'],
            validated_prepublication_head=public['snapshot']['head'],
            native_executable_hashes_before=native_hashes, lean_version=public['lean_version'],
            dependency_revisions_before=pins, dependency_checkouts_before=checkouts,
            dependency_lock_sha256_before=lock_hash, package_anchor_hashes_before=anchors)
        locks = sorted({str(ROOT / '.noeaaeue/.local/math-trust/replay.lock'), *application['shared_native_locks']})
        state['shared_native_locks'] = locks
        with inputs.native_lease(locks):
            state['competing_project_jobs_before'] = guard.competing_jobs(ROOT)
            require(not state['competing_project_jobs_before'], 'BUSY: existing project replay/build driver')
            state['competing_native_jobs_before'] = inputs.competing_native_jobs()
            source_dir = directory / 'source'
            guard.make_directory(source_dir, exclusive=True)
            for name, digest in sorted(expected.items()):
                raw = read(name)
                require(sha(raw) == digest, 'Pre-build source changed')
                guard.write_bytes(source_dir / name, raw, exclusive=True, readonly=True)
                frozen[name] = digest
            guard.verify_snapshot(ROOT, public['snapshot'])
            for name, raw in observed.items():
                require(guard.read_source(ROOT, name) == raw, 'Pre-build readset changed: ' + name)
            require(not guard.competing_jobs(ROOT), 'BUSY: late project replay/build driver')
            inputs.competing_native_jobs()
            environment = dict(os.environ)
            environment['PATH'] = str(lake.parent) + os.pathsep + environment.get('PATH', '')
            environment.pop('LEAN_PATH', None)
            environment.pop('LEAN_SYSROOT', None)
            state['resolved_lake_executable'] = str(lake)
            state['environment_policy'] = 'Pinned compiler bin first in PATH; LEAN_PATH and LEAN_SYSROOT removed. Ordinary repository Lake build uses its normal project object cache.'
            with os.fdopen(os.open(directory / 'output.log', os.O_WRONLY | os.O_APPEND | os.O_NOFOLLOW), 'wb') as log:
                require(stat.S_ISREG(os.fstat(log.fileno()).st_mode), 'Build log is not regular')
                state['build_started_utc'] = now()
                process = subprocess.Popen(COMMAND, cwd=ROOT, env=environment, stdout=log,
                                           stderr=subprocess.STDOUT, start_new_session=True)
                state['native_build_executed'] = True
                state['child_pid'] = process.pid
                state['exit_code'] = process.wait()
            state['build_finished_utc'] = now()
            after = {name: sha(guard.read_source(ROOT, name)) for name in expected}
            state['input_hashes_after'] = after
            state['snapshot_copy_hashes_after'] = {name: sha(guard.read_source(source_dir, name)) for name in frozen}
            state['native_executable_hashes_after'] = {
                str(path): sha(guard.read_source(path.parent, path.name)) for path in [lean, lake]}
            pins_after, checkouts_after, lock_after = inputs.package_pins(ROOT, ROOT / '.lake/packages', guard.read_source)
            state.update(dependency_revisions_after=pins_after, dependency_checkouts_after=checkouts_after,
                         dependency_lock_sha256_after=lock_after,
                         package_anchor_hashes_after={name: sha(guard.read_source(ROOT / '.lake/packages', name)) for name in anchors})
            guard.verify_snapshot(ROOT, public['snapshot'])
            require(all(guard.read_source(ROOT, name) == raw for name, raw in observed.items()), 'Post-build metadata readset changed')
            state['all_inputs_unchanged'] = (after == expected == state['snapshot_copy_hashes_after']
                and state['native_executable_hashes_after'] == native_hashes
                and pins_after == pins and checkouts_after == checkouts and lock_after == lock_hash
                and state['package_anchor_hashes_after'] == anchors)
            require(state['all_inputs_unchanged'], 'Source, toolchain, dependency pin or anchor drift during ordinary build')
            require(state['exit_code'] == 0, 'Ordinary Lake build failed; retained without proof-status inference')
            state['status'] = 'ORDINARY_LAKE_BUILD_PASSED_AT_EXACT_CURRENT_SCOPE'
    except BaseException as error:
        if process is not None and process.poll() is None:
            os.killpg(process.pid, signal.SIGTERM)
            try:
                process.wait(timeout=10)
            except subprocess.TimeoutExpired:
                os.killpg(process.pid, signal.SIGKILL)
                process.wait()
            state['exit_code'] = process.returncode
        state['status'] = 'FAILED_OR_STALE_ORDINARY_BUILD_RETAINED'
        state['error'] = type(error).__name__ + ': ' + str(error)
    finally:
        state['finished_utc'] = now()
        state['log_sha256'] = sha(guard.read_source(ROOT, OUTPUT + '/output.log'))
        guard.write_bytes(directory / 'record.json', (json.dumps(state, indent=2) + '\n').encode(), exclusive=True)
        for signum, handler in previous_signal_handlers.items():
            signal.signal(signum, handler)
    print(json.dumps({'status': state['status'], 'record': OUTPUT + '/record.json', 'exit_code': state['exit_code']}))
    if state['status'] != 'ORDINARY_LAKE_BUILD_PASSED_AT_EXACT_CURRENT_SCOPE':
        raise SystemExit(1)


if __name__ == '__main__':
    main()
