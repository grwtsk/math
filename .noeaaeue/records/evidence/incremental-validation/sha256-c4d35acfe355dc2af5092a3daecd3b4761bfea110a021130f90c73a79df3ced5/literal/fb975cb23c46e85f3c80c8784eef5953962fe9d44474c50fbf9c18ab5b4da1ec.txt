#!/usr/bin/env python3
"""Pin and replay the reflected heat bundle, retaining full output and proof limits.

Direction: R.A. Jacob Martone. Implementation: OpenAI ChatGPT. MIT.
No network, Git writes, installation, or native proof admission is performed.
The existing arithmetic evaluator and its original runner are not changed.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[2]
ARCHIVE = '.noeaaeue/evidence/analysis/reflected-heat-boundary-20261014'
BUNDLE = ARCHIVE + '/bundle-update-v1'
PIN_PATH = BUNDLE + '/replay-inputs.json'
PIN_SHA256 = 'a74ff52db44bfd37c4522b5b707b40734cbd31641228a3190db15c3a8d75a38c'
BASE_COMMIT = '23bf37f3e389c9b0b8ccf111c68e72c05c9a0d3c'
MAX_FILE_BYTES = 2 * 1024 * 1024
GUARD_TESTS = 24
CORE_PATHS = ('.noeaaeue/scripts/screw_hodge_transfer.py',
              '.noeaaeue/scripts/verify_screw_hodge_transfer.py',
              '.noeaaeue/tests/test_screw_hodge_transfer.py')
NONCLAIMS = ('RH', 'new_zeta_zero_exclusion', 'global_positive_boundary_approximation')


class VerificationError(ValueError):
    """A failed check never becomes a positive certificate."""


def require(condition: bool, message: str) -> None:
    if not condition:
        raise VerificationError(message)


def unique_object(pairs):
    result = {}
    for key, value in pairs:
        require(key not in result, 'duplicate JSON key: ' + key)
        result[key] = value
    return result


def read_json(raw: bytes | str):
    require(len(raw) <= MAX_FILE_BYTES, 'JSON resource limit')
    def nonfinite(value):
        raise VerificationError('nonfinite JSON number: ' + value)
    return json.loads(raw, object_pairs_hook=unique_object, parse_constant=nonfinite)


def safe_file(root: Path, name: str) -> Path:
    require(isinstance(name, str) and bool(name), 'empty or nonstring path')
    part = PurePosixPath(name)
    require(not part.is_absolute() and str(part) == name and
            '\\' not in name and '..' not in part.parts, 'noncanonical relative path')
    root = root.resolve()
    path = root
    for segment in part.parts:
        path = path / segment
        require(not path.is_symlink(), 'symlink input: ' + name)
    require(path.is_file(), 'missing input: ' + name)
    require(path.resolve().is_relative_to(root), 'input escapes root')
    return path


def fingerprint(path: Path) -> dict:
    require(path.stat().st_size <= MAX_FILE_BYTES, 'input resource limit')
    with path.open('rb') as stream:
        raw = stream.read(MAX_FILE_BYTES + 1)
    require(len(raw) <= MAX_FILE_BYTES, 'input grew past resource limit')
    return {'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest()}


def check_inputs(root: Path, inputs: dict) -> dict:
    require(type(inputs) is dict and 0 < len(inputs) <= 128, 'input inventory')
    observed = {}
    for name, descriptor in sorted(inputs.items()):
        require(type(descriptor) is dict and set(descriptor) == {'bytes', 'sha256'},
                'descriptor fields')
        require(type(descriptor['bytes']) is int and
                0 <= descriptor['bytes'] <= MAX_FILE_BYTES, 'descriptor byte count')
        require(isinstance(descriptor['sha256'], str) and
                re.fullmatch('[0-9a-f]{64}', descriptor['sha256']) is not None,
                'descriptor digest')
        actual = fingerprint(safe_file(root, name))
        require(actual == descriptor, 'input binding mismatch: ' + name)
        observed[name] = actual
    return observed


def load_pinset(root: Path) -> dict:
    path = safe_file(root, PIN_PATH)
    require(path.stat().st_size <= MAX_FILE_BYTES, 'pinset resource limit')
    raw = path.read_bytes()
    require(hashlib.sha256(raw).hexdigest() == PIN_SHA256, 'pinset binding mismatch')
    record = read_json(raw)
    require(type(record) is dict and set(record) == {'schema', 'base_commit', 'inputs'},
            'pinset schema fields')
    require(record['schema'] == 'reflected-heat-replay-inputs-v1' and
            record['base_commit'] == BASE_COMMIT, 'pinset source base')
    return check_inputs(root, record['inputs'])


def expected_core_bindings(inputs: dict) -> dict:
    result = {name: inputs[name] for name in CORE_PATHS}
    for bits in (160, 192):
        name = f'bilateral-4096-{bits}.json'
        result[name] = inputs[ARCHIVE + '/' + name]
    return result


def validate_core_report(report: dict, mode: str, bindings: dict) -> None:
    require(type(report) is dict, 'core report object')
    require(report.get('schema') == 'screw-hodge-transfer-replay-v1', 'core schema')
    require(report.get('sympy') == '1.14.0', 'pinned SymPy test version')
    require(report.get('modes') == [mode], 'core execution mode')
    require(type(report.get('tests_per_mode')) is int and report['tests_per_mode'] == 64,
            'core test count')
    require(report.get('source_bindings') == bindings, 'executed core source bindings')
    require(report.get('finite_replay') == 'PASSED', 'core replay did not pass')
    require(report.get('cross_precision_overlap') is True, 'cross-precision overlap')
    require(type(report.get('independent_mobius_factorization_through')) is int and
            report['independent_mobius_factorization_through'] == 4096, 'factorization scope')
    require(report.get('continuum_proofs') == 'WRITTEN_NOT_KERNEL_CHECKED',
            'continuum status promotion')
    require(type(report.get('new_Lean_admissions')) is int and
            report['new_Lean_admissions'] == 0, 'native status promotion')
    for name in NONCLAIMS:
        require(report.get(name) is False, 'unsupported conclusion: ' + name)
    steps = report.get('steps')
    require(type(steps) is list and len(steps) == 3, 'complete core step inventory')
    require([s.get('label') for s in steps if type(s) is dict] ==
            ['finite-tests', 'endpoint-160', 'endpoint-192'], 'core step labels')
    for step in steps:
        require(step.get('mode') == mode and type(step.get('returncode')) is int and
                step['returncode'] == 0, 'failed core subprocess')
        require(type(step.get('stdout')) is str and type(step.get('stderr')) is str,
                'missing core log body')
        if step['label'] == 'finite-tests':
            require(re.search(r'Ran 64 tests\b', step['stderr']) is not None and
                    step['stderr'].rstrip().endswith('OK'), 'core unittest result')
        else:
            value = read_json(step['stdout'])
            require(type(value) is dict and set(value) ==
                    {'verified', 'new_zeta_zero_exclusion'} and value['verified'] is True and
                    value['new_zeta_zero_exclusion'] is False, 'endpoint status')


def check_papers(root: Path, folder: Path) -> dict:
    corpus = read_json(safe_file(root, BUNDLE + '/paper-map.json').read_bytes())
    rows = corpus['files']
    require(len(rows) == 10 and len({r['filename'] for r in rows}) == 10 and
            sum(r['pages'] for r in rows) == 180, 'paper inventory')
    expected = {r['filename']: {k: r[k] for k in ('bytes', 'sha256')} for r in rows}
    checked = check_inputs(folder, expected)
    return {'status': 'HASH_AND_SIZE_MATCH', 'files': checked,
            'page_count_scope': '180 as recorded in the bound paper map; not reparsed here',
            'paper_companion_replays': 'NOT_RUN'}


def execute(mode: str, name: str, args: list[str], steps: list) -> dict:
    flags = ['-O', '-B'] if mode == 'optimized' else ['-B']
    command = [sys.executable, *flags, *args]
    start = time.monotonic()
    step = {'label': name, 'mode': mode, 'argv': command}
    try:
        child = subprocess.run(command, cwd=ROOT, capture_output=True, text=True,
                               timeout=180, check=False)
        step.update(returncode=child.returncode, stdout=child.stdout, stderr=child.stderr)
    except subprocess.TimeoutExpired as exc:
        def text(value):
            return value.decode(errors='replace') if isinstance(value, bytes) else (value or '')
        step.update(returncode=None, timeout=True, stdout=text(exc.stdout), stderr=text(exc.stderr))
    step['seconds'] = time.monotonic() - start
    steps.append(step)
    require(step['returncode'] == 0, 'subprocess failed or timed out: ' + name)
    return step


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--mode', choices=('normal', 'optimized', 'both'), default='both')
    parser.add_argument('--integrity-only', action='store_true')
    parser.add_argument('--papers-dir', type=Path)
    args = parser.parse_args()
    modes = ['normal', 'optimized'] if args.mode == 'both' else [args.mode]
    report = {'schema': 'reflected-heat-bundle-replay-v1', 'base_commit': BASE_COMMIT,
              'status': 'FAILED', 'finite_replay': 'NOT_RUN', 'steps': [],
              'new_Lean_admissions': 0, 'continuum_proofs': 'WRITTEN_NOT_KERNEL_CHECKED',
              'RH': False, 'new_zeta_zero_exclusion': False,
              'global_positive_boundary_approximation': False,
              'whole_repository_checks': 'NOT_RUN', 'paper_companion_replays': 'NOT_RUN'}
    try:
        runner = fingerprint(Path(__file__))
        inputs = load_pinset(ROOT)  # No project code executes before the pin check.
        report.update(input_bindings=inputs, runner_binding=runner, pinset_sha256=PIN_SHA256)
        report['papers'] = check_papers(ROOT, args.papers_dir) if args.papers_dir else {
            'status': 'NOT_REQUESTED', 'reason': 'PDF bytes are not redistributed in the repository'}
        if not args.integrity_only:
            for mode in modes:
                guard = execute(mode, 'bundle-guard-tests', ['-m', 'unittest', 'discover',
                                '-s', '.noeaaeue/tests', '-p', 'test_reflected_heat_bundle.py', '-v'], report['steps'])
                require(re.search(rf'Ran {GUARD_TESTS} tests\b', guard['stderr']) is not None and
                        guard['stderr'].rstrip().endswith('OK'), 'guard test count or result')
                step = execute(mode, 'complete-source-replay',
                               ['.noeaaeue/scripts/verify_screw_hodge_transfer.py', '--mode', mode], report['steps'])
                validate_core_report(read_json(step['stdout']), mode, expected_core_bindings(inputs))
            report.update(finite_replay='PASSED', modes=modes, core_tests_per_mode=64,
                          guard_tests_per_mode=GUARD_TESTS, endpoint_cutoff=4096,
                          endpoint_precisions=[160, 192])
        require(load_pinset(ROOT) == inputs and fingerprint(Path(__file__)) == runner,
                'bundle changed during replay')
        report['status'] = 'INTEGRITY_ONLY' if args.integrity_only else 'PASSED'
    except Exception as exc:
        report['error'] = type(exc).__name__ + ': ' + str(exc)
        report['status'] = 'FAILED'
    print(json.dumps(report, indent=2, sort_keys=True))
    return 1 if report['status'] == 'FAILED' else 0


if __name__ == '__main__':
    raise SystemExit(main())
