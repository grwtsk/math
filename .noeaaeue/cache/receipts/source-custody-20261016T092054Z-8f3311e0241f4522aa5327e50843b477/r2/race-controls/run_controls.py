#!/usr/bin/env python3
"""Bounded own-fixture operational controls; no project/expanded-code imports."""
import sys
sys.dont_write_bytecode = True
import argparse
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import stat
import subprocess
import tempfile
import time

HELPER = Path('/Users/local/Desktop/math/.noeaaeue/.local/physical-cache-comparison-r2-852c7caaca42447a9a10e9f42d7bdf1b/compare_expansion_bytes.py')
HELPER_SHA = 'cffb66b6efd0615e58dd31d35d5d9228dcbef7bf4388baf7eba827d7c51142c2'
BINDING = HELPER.parent / 'comparison-helper-manifest.json'
BINDING_SHA = 'c2944060acd787a6be18a61ddad1f1bc44a6ba0bacd52c6eabb43278c37cf7b2'
REPOSITORY = '/Users/local/Desktop/math'

class ControlFailure(RuntimeError):
    pass

def require(value, message):
    if not value:
        raise ControlFailure(message)

def sha(raw):
    return hashlib.sha256(raw).hexdigest()

def input_record(path):
    raw = path.read_bytes()
    return {'path': str(path), 'sha256': sha(raw), 'bytes': len(raw)}

def import_reviewed_helper():
    require(sys.flags.isolated, 'worker must run with -I')
    require(sha(HELPER.read_bytes()) == HELPER_SHA, 'frozen helper hash mismatch')
    require(sha(BINDING.read_bytes()) == BINDING_SHA, 'frozen binding hash mismatch')
    binding = json.loads(BINDING.read_bytes())
    require(binding['helper_sha256'] == HELPER_SHA, 'binding does not name exact helper')
    spec = importlib.util.spec_from_file_location('reviewed_r2_comparison_helper', HELPER)
    require(spec is not None and spec.loader is not None, 'helper import unavailable')
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module

def external_fixture():
    value = tempfile.TemporaryDirectory(prefix='grwtsk-r2-race-external-')
    resolved = os.path.realpath(value.name)
    require(os.path.commonpath([REPOSITORY, resolved]) not in (REPOSITORY, resolved),
            'fixture must be outside repository and not its ancestor')
    return value

def fifo_case(helper):
    observations = {'hook_count': 0, 'swap_completed': False}
    with external_fixture() as name:
        leaf = Path(name) / 'leaf'
        leaf.write_bytes(b'original regular leaf\n')
        base_fd = os.open(name, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
        original_open = os.open
        expected_identity = helper.identity(os.stat(leaf, follow_symlinks=False))
        def intercepted_open(path, flags, *args, **kwargs):
            if path == 'leaf' and kwargs.get('dir_fd') is not None and not (flags & os.O_DIRECTORY):
                require(observations['hook_count'] == 0, 'leaf unexpectedly reopened')
                observations['hook_count'] += 1
                observations['flags'] = flags
                observations['o_nonblock'] = bool(flags & os.O_NONBLOCK)
                observations['o_nofollow'] = bool(flags & os.O_NOFOLLOW)
                require(stat.S_ISREG(os.stat(leaf, follow_symlinks=False).st_mode),
                        'target was not regular immediately before swap')
                os.unlink(leaf)
                os.mkfifo(leaf, 0o600)
                observations['swap_completed'] = True
                require(observations['o_nonblock'], 'actual leaf-open flags omit O_NONBLOCK')
                require(observations['o_nofollow'], 'actual leaf-open flags omit O_NOFOLLOW')
                opened = original_open(path, flags, *args, **kwargs)
                observations['opened_fifo'] = stat.S_ISFIFO(os.fstat(opened).st_mode)
                return opened
            return original_open(path, flags, *args, **kwargs)
        started = time.monotonic()
        try:
            helper.os.open = intercepted_open
            try:
                helper.read_regular(base_fd, 'leaf', expected_identity)
            except helper.Rejected as error:
                observations['exception_type'] = type(error).__name__
                observations['exception_message'] = str(error)
            else:
                raise ControlFailure('FIFO replacement was accepted')
        finally:
            helper.os.open = original_open
            os.close(base_fd)
        observations['elapsed_seconds'] = time.monotonic() - started
        require(observations['hook_count'] == 1 and observations['swap_completed']
                and observations.get('opened_fifo') is True, 'deterministic FIFO swap did not occur')
        require(observations.get('exception_message') == 'opened leaf is not regular: leaf',
                'refusal was not the intended opened-regular-file guard')
        require(observations['elapsed_seconds'] < 5, 'FIFO refusal exceeded 5 seconds')
        observations['temporary_fixture_was_external'] = True
    observations['temporary_fixture_removed'] = not os.path.lexists(name)
    require(observations['temporary_fixture_removed'], 'external fixture retained')
    return observations

def entry_bound_case(helper):
    with external_fixture() as name:
        for index in range(4):
            (Path(name) / ('entry-' + str(index))).write_bytes(b'x')
        root_fd = os.open(name, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
        old_limit = helper.MAX_ENTRIES
        started = time.monotonic()
        observations = {'fixture_entries': 4, 'original_max_entries': old_limit,
                        'temporary_max_entries': 3}
        try:
            helper.MAX_ENTRIES = 3
            try:
                helper.enumerate_tree(root_fd)
            except helper.Rejected as error:
                observations['exception_type'] = type(error).__name__
                observations['exception_message'] = str(error)
            else:
                raise ControlFailure('four entries were accepted against limit three')
        finally:
            helper.MAX_ENTRIES = old_limit
            os.close(root_fd)
        observations['elapsed_seconds'] = time.monotonic() - started
        observations['module_limit_restored'] = helper.MAX_ENTRIES == old_limit
        require(observations.get('exception_message') == 'expansion exceeds entry bound',
                'refusal was not the intended resource-limit guard')
        require(observations['elapsed_seconds'] < 5, 'entry-bound refusal exceeded 5 seconds')
        require(observations['module_limit_restored'], 'module limit not restored')
        observations['temporary_fixture_was_external'] = True
    observations['temporary_fixture_removed'] = not os.path.lexists(name)
    require(observations['temporary_fixture_removed'], 'external fixture retained')
    return observations

def worker(case):
    helper = import_reviewed_helper()
    observations = fifo_case(helper) if case == 'fifo' else entry_bound_case(helper)
    require(sha(HELPER.read_bytes()) == HELPER_SHA, 'helper drifted during control')
    require(sha(BINDING.read_bytes()) == BINDING_SHA, 'binding drifted during control')
    print(json.dumps({'status': 'PASS_EXPECTED_REJECTION', 'case': case,
        'isolated': bool(sys.flags.isolated), 'optimize': sys.flags.optimize,
        'helper_sha256': HELPER_SHA, 'binding_sha256': BINDING_SHA,
        'observations': observations, 'proof_status': 'unknown-unreplayed',
        'mathematical_acceptance': False}, sort_keys=True))

def controller():
    require(sys.flags.isolated, 'controller must run with -I')
    owned = Path(__file__).absolute().parent
    before = [input_record(path) for path in (HELPER, BINDING, Path(__file__))]
    require(before[0]['sha256'] == HELPER_SHA and before[1]['sha256'] == BINDING_SHA,
            'input mismatch before controls')
    for path in (HELPER, BINDING):
        (owned / ('retained-' + path.name)).write_bytes(path.read_bytes())
    (owned / 'inputs-before.json').write_text(json.dumps(before, indent=2, sort_keys=True) + '\n')
    results = []
    for optimize in (False, True):
        for case in ('fifo', 'entry-bound'):
            label = ('optimized' if optimize else 'normal') + '-' + case
            argv = [sys.executable, '-I', '-B'] + (['-O'] if optimize else [])
            argv += [str(Path(__file__).absolute()), '--worker', case]
            started = time.monotonic()
            try:
                process = subprocess.run(argv, capture_output=True, timeout=5, check=False,
                                         cwd=owned)
                out, err = process.stdout, process.stderr
                outcome = {'returncode': process.returncode, 'timed_out': False}
            except subprocess.TimeoutExpired as error:
                out, err = error.stdout or b'', error.stderr or b''
                outcome = {'returncode': None, 'timed_out': True}
            (owned / (label + '.stdout.log')).write_bytes(out)
            (owned / (label + '.stderr.log')).write_bytes(err)
            outcome.update({'label': label, 'argv': argv, 'timeout_seconds': 5,
                'elapsed_seconds': time.monotonic() - started,
                'stdout': input_record(owned / (label + '.stdout.log')),
                'stderr': input_record(owned / (label + '.stderr.log'))})
            try:
                outcome['result'] = json.loads(out)
            except (ValueError, UnicodeError):
                outcome['result'] = None
            outcome['passed'] = (outcome['returncode'] == 0 and not outcome['timed_out']
                and outcome['result'] is not None
                and outcome['result'].get('status') == 'PASS_EXPECTED_REJECTION'
                and outcome['result'].get('case') == case
                and outcome['result'].get('optimize') == int(optimize))
            results.append(outcome)
    after = [input_record(path) for path in (HELPER, BINDING, Path(__file__))]
    (owned / 'inputs-after.json').write_text(json.dumps(after, indent=2, sort_keys=True) + '\n')
    receipt = {'schema': 'r2-physical-comparison-bounded-fixture-controls-v1',
        'status': 'PASS' if all(row['passed'] for row in results) and before == after else 'FAIL',
        'scope': 'Correlated operational model tests of two selected helper refusal branches only.',
        'inputs_before': before, 'inputs_after': after, 'inputs_stable': before == after,
        'case_executions': len(results), 'results': results,
        'global_source_scan': False, 'project_or_expanded_code_imported_or_executed': False,
        'native_jobs': False, 'cache_ref_source_registry_git_mutations': False,
        'writes': 'Owned ignored controls directory and owned external temporary fixtures only.',
        'limits': ['No complete cache expansion comparison performed by this harness.',
                   'Deterministic single-thread fixture replaces only the leaf between stat and open.',
                   'Four-entry enumeration with an imported-module-only MAX_ENTRIES=3 exercises the initial bound.',
                   'No claim of exhaustive races, global atomicity, arbitrary filesystem deadlines or absolute memory bounds.',
                   'No native/compiler execution, formal proof acceptance or parser/runtime refinement.'],
        'proof_status': 'unknown-unreplayed', 'mathematical_acceptance': False}
    (owned / 'receipt.json').write_text(json.dumps(receipt, indent=2, sort_keys=True) + '\n')
    print(json.dumps({'status': receipt['status'], 'receipt': str(owned / 'receipt.json'),
        'receipt_sha256': sha((owned / 'receipt.json').read_bytes()),
        'executions': len(results), 'inputs_stable': before == after}, sort_keys=True))
    return 0 if receipt['status'] == 'PASS' else 1

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--worker', choices=('fifo', 'entry-bound'))
    options = parser.parse_args()
    if options.worker:
        worker(options.worker)
    else:
        raise SystemExit(controller())
