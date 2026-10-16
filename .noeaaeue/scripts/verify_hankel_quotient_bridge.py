#!/usr/bin/env python3
"""Pinned finite replay of the Hankel quotient bridge. No network or Git writes.

Direction: R.A. Jacob Martone. Implementation: OpenAI ChatGPT. MIT.
This is not a native theorem audit or an all-depth certificate.
"""
import argparse
from fractions import Fraction as Q
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[2]
BASE = '.noeaaeue/evidence/number-theory/zeta/hankel-quotient-20261015'
MANIFEST_SHA256 = '9ff15c53ec30cf83ee9f37fd6980e8dd8042cacc1161bd59749faf8173abe13a'


def unique(pairs):
    d = {}
    for k, v in pairs:
        if k in d:
            raise ValueError('duplicate JSON key')
        d[k] = v
    return d


def bad_number(value):
    raise ValueError('nonexact JSON number: '+value)


def decode(text):
    return json.loads(text, object_pairs_hook=unique, parse_float=bad_number,
                      parse_constant=bad_number)


def pinned():
    raw = (ROOT/BASE/'inputs.json').read_bytes()
    if hashlib.sha256(raw).hexdigest() != MANIFEST_SHA256:
        raise ValueError('input manifest drift')
    m = decode(raw)
    for name, expected in m['inputs'].items():
        p = ROOT/name
        if p.is_symlink() or any(x.is_symlink() for x in p.parents if x != ROOT.parent):
            raise ValueError('symlink input')
        actual = hashlib.sha256(p.read_bytes()).hexdigest()
        if actual != expected:
            raise ValueError('input drift: '+name)
    return m


def check_report(r, bits):
    if r.get('schema') != 'hankel-quotient-bridge-v1':
        raise ValueError('wrong report schema')
    for k in ('RH_proved', 'all_depth_bound', 'native_Lean_admission', 'new_zero_exclusion'):
        if r.get(k) is not False:
            raise ValueError('unsupported claim: '+k)
    if (r['coefficient_count'], r['working_bits'], r['matrix_bits'], r['cutoff'], r['em_order']) != (64, bits, 160, 128, 64):
        raise ValueError('wrong source profile')
    if r['coefficient_denominator'] != str(1 << 160):
        raise ValueError('wrong coefficient grid')
    for name in ('logarithmic_jet', 'quotient_jet'):
        if len(r[name]) != 64:
            raise ValueError('incomplete jet')
        for pair in r[name]:
            if len(pair) != 2 or any(type(x) is not str or str(int(x)) != x for x in pair) or int(pair[0]) > int(pair[1]):
                raise ValueError('invalid coefficient interval')
    if [x['size'] for x in r['sections']] != [1, 2, 4, 8, 16, 32]:
        raise ValueError('incomplete section inventory')
    for x in r['sections']:
        if x['terminal_index'] != 2*x['size']-1 or x['all_depth'] is not False or not 0 <= Q(x['J_upper']) < Q(1, 600):
            raise ValueError('invalid finite moment certificate')
    for name, bound in (('filtered_K', '7/25'), ('hankel_H', '23/50')):
        x = r[name]
        if x['squared_norm_bound'] != bound or x['strict'] is not True or x['complement_discarded'] is not False or len(x['vector']) != 32 or Q(x['positive_margin_lower']) <= 0:
            raise ValueError('invalid complete norm certificate')


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--mode', choices=('normal', 'optimized', 'both'), default='both')
    args = p.parse_args()
    modes = ('normal', 'optimized') if args.mode == 'both' else (args.mode,)
    report = {'schema': 'hankel-quotient-replay-v1', 'status': 'STARTED', 'steps': [],
              'mathematical_status': 'FINITE_RATIONAL_WITH_WRITTEN_CONTINUUM_PROOFS',
              'RH_proved': False, 'all_depth_bound': False, 'native_Lean_admission': False,
              'full_repository_checks': 'NOT_RUN'}
    beginning = time.monotonic()
    own = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    outputs = {}
    try:
        manifest = pinned()
        report['inputs'] = manifest['inputs']
        report['runner_sha256'] = own
        for mode in modes:
            python = [sys.executable, '-B']+(['-O'] if mode == 'optimized' else [])
            jobs = [('legacy-tests', ['-m', 'unittest', 'discover', '-s', '.noeaaeue/tests', '-p', 'test_arithmetic_quotient_sections.py', '-v'], 30),
                    ('bridge-tests', ['-m', 'unittest', 'discover', '-s', '.noeaaeue/tests', '-p', 'test_hankel_quotient_bridge.py', '-v'], 39)]
            jobs += [('historical-tests', ['-m', 'unittest', 'discover', '-s', '.noeaaeue/evidence/number-theory/zeta/density-hankel-20261015/historical', '-p', 'check_synthesis.py', '-v'], 16)]
            jobs += [(str(bits), ['.noeaaeue/scripts/hankel_quotient_bridge.py', '--bits', str(bits)], None) for bits in (512, 640)]
            for label, rest, count in jobs:
                argv = python+rest
                step = {'mode': mode, 'label': label, 'argv': argv}
                try:
                    result = subprocess.run(argv, cwd=ROOT, capture_output=True, text=True, timeout=180)
                except subprocess.TimeoutExpired as e:
                    step.update(status='TIMEOUT', stdout=(e.stdout or b'').decode() if isinstance(e.stdout, bytes) else e.stdout,
                                stderr=(e.stderr or b'').decode() if isinstance(e.stderr, bytes) else e.stderr)
                    report['steps'].append(step)
                    raise ValueError('subprocess timeout: '+label)
                step.update(exit_code=result.returncode, stdout=result.stdout, stderr=result.stderr)
                report['steps'].append(step)
                if result.returncode:
                    raise ValueError('subprocess failed: '+label)
                if count:
                    if f'Ran {count} tests in ' not in result.stderr or not result.stderr.rstrip().endswith('OK'):
                        raise ValueError('test inventory incomplete')
                else:
                    r = decode(result.stdout)
                    check_report(r, int(label))
                    digest = hashlib.sha256(result.stdout.encode()).hexdigest()
                    if label in outputs and digest != outputs[label][0]:
                        raise ValueError('normal/optimized source mismatch')
                    outputs[label] = (digest, r)
            for name in ('logarithmic_jet', 'quotient_jet'):
                for a, b in zip(outputs['512'][1][name], outputs['640'][1][name]):
                    if max(int(a[0]), int(b[0])) > min(int(a[1]), int(b[1])):
                        raise ValueError('cross-precision source disagreement')
        pinned()
        if own != hashlib.sha256(Path(__file__).read_bytes()).hexdigest():
            raise ValueError('runner changed during replay')
        report.update(status='PASSED', tests_per_mode=85, new_tests_per_mode=39,
                      legacy_tests_per_mode=46, cross_precision_boxes=128,
                      profile_output_sha256={k: v[0] for k, v in outputs.items()},
                      elapsed_seconds=round(time.monotonic()-beginning, 3))
    except Exception as e:
        report.update(status='FAILED', reason=str(e), elapsed_seconds=round(time.monotonic()-beginning, 3))
    print(json.dumps(report, sort_keys=True, indent=2))
    return 0 if report['status'] == 'PASSED' else 1


if __name__ == '__main__':
    sys.exit(main())
