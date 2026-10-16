#!/usr/bin/env python3
"""Replay pinned source moments and finite phase-interface tests; no network/Git writes.

Direction: R.A. Jacob Martone. Implementation: OpenAI ChatGPT. MIT.
Finite checks do not discharge the all-depth signed Dirichlet-head estimate.
"""
from fractions import Fraction as Q
import argparse
import hashlib
import json
from pathlib import Path
import platform
import re
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[2]
BASE = '.noeaaeue/evidence/number-theory/zeta/laguerre-dirichlet-20261015'
MANIFEST_SHA256 = '52e4ff0c304fde12353e30eb7818fcf713cef4b752a69b5731b5e1332f592d25'


def require(condition, message):
    if not condition:
        raise ValueError(message)


def unique(pairs):
    result = {}
    for key, value in pairs:
        require(key not in result, 'duplicate JSON key')
        result[key] = value
    return result


def reject_number(value):
    raise ValueError('nonexact mathematical JSON number: '+value)


def decode(text):
    return json.loads(text, object_pairs_hook=unique, parse_float=reject_number,
                      parse_constant=reject_number)


def pinned():
    p = ROOT/BASE/'inputs.json'
    require(not p.is_symlink(), 'manifest symlink')
    raw = p.read_bytes()
    require(hashlib.sha256(raw).hexdigest() == MANIFEST_SHA256, 'manifest drift')
    manifest = decode(raw)
    for name, expected in manifest['inputs'].items():
        p = ROOT/name
        require(not Path(name).is_absolute() and '..' not in Path(name).parts, 'unsafe input path')
        require(not p.is_symlink() and not any(x.is_symlink() for x in p.parents), 'symlink input')
        require(hashlib.sha256(p.read_bytes()).hexdigest() == expected, 'input drift: '+name)
    return manifest


def check_report(r, bits):
    require(r['schema'] == 'laguerre-dirichlet-profile-v1', 'wrong profile schema')
    require((r['moment_count'], r['working_bits'], r['grid_bits'], r['cutoff'], r['em_order'])
            == (128, bits, 160, 128, 96), 'wrong source profile')
    for key in ('RH_proved', 'all_depth_bound', 'new_zero_exclusion', 'native_Lean_admission',
                'enormous_cutoffs_executed'):
        require(r.get(key) is False, 'unsupported claim: '+key)
    for key in ('gamma_evaluated', 'full_xi_quotient_inverted'):
        require(r['analytic'].get(key) is False, 'wrong source construction')
    require(Q(r['analytic']['initial_zeta_box']['lower']) > 0, 'unseparated initial denominator')
    denominator = 1 << 160
    require(r['grid_denominator'] == str(denominator), 'wrong output grid')
    for name in ('p_jet', 'u_jet'):
        require(len(r[name]) == 128, 'missing terminal coefficient')
        for pair in r[name]:
            require(len(pair) == 2 and all(type(x) is str and str(int(x)) == x for x in pair)
                    and int(pair[0]) <= int(pair[1]), 'invalid coefficient box')
    require([x['N'] for x in r['energy_prefixes']] == [1, 2, 4, 8, 16, 32, 64, 128],
            'incomplete prefix inventory')
    lower = upper = Q(0)
    by_size = {x['N']: x['energy_box'] for x in r['energy_prefixes']}
    for n, (lo, hi) in enumerate(r['u_jet'], 1):
        lo, hi = Q(int(lo), denominator), Q(int(hi), denominator)
        lower += 0 if lo <= 0 <= hi else min(lo*lo, hi*hi)
        upper += max(lo*lo, hi*hi)
        if n in by_size:
            box = by_size[n]
            require(0 <= Q(box['lower']) <= lower <= upper <= Q(box['upper']) < Q(5, 24),
                    'energy enclosure or strict finite bound not certified')
    h = r['finite_head']
    require((h['cutoff'], h['length'], h['bits']) == (64, 8, 256) and len(h['moments']) == 8,
            'wrong independently assembled finite head')
    require(h['includes_touching_prime_power'] is True and h['includes_both_backgrounds'] is True,
            'head source terms omitted')
    for n in (1, 2, 4, 8, 16, 32, 64, 128):
        b = r['tail_squared_by_N'][str(n)]
        prime = Q(16*n*(4*n+1)**2*9**(2*n-2), 256**n)
        freq = Q(n*(16*n+1)**2, 16**n)
        require(Q(b['prime_label']) == prime and Q(b['mellin_frequency']) == freq
                and Q(b['total']) == 2*(prime+freq), 'incomplete tail budget')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--mode', choices=('normal', 'optimized', 'both'), default='both')
    args = parser.parse_args()
    modes = ('normal', 'optimized') if args.mode == 'both' else (args.mode,)
    report = {'schema': 'laguerre-dirichlet-replay-v1', 'status': 'STARTED', 'steps': [],
              'environment': {'python': platform.python_version(), 'platform': platform.platform()},
              'RH_proved': False, 'all_depth_bound': False, 'native_Lean_admission': False,
              'full_repository_checks': 'NOT_RUN'}
    own = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    outputs = {}
    try:
        report['inputs'] = pinned()['inputs']
        report['runner_sha256'] = own
        for mode in modes:
            py = [sys.executable, '-B']+(['-O'] if mode == 'optimized' else [])
            jobs = [
                ('historical-laguerre', ['.noeaaeue/evidence/number-theory/zeta/laguerre-discrepancy-20261015/check_finite_identities.py.txt'], 24),
                ('new-interface', ['-m', 'unittest', 'discover', '-s', '.noeaaeue/tests', '-p', 'test_laguerre_dirichlet_bridge.py', '-v'], 28),
                ('source-tests', ['-m', 'unittest', 'discover', '-s', '.noeaaeue/tests', '-p', 'test_arithmetic_quotient_sections.py', '-v'], 30),
                ('hankel-tests', ['-m', 'unittest', 'discover', '-s', '.noeaaeue/tests', '-p', 'test_hankel_quotient_bridge.py', '-v'], 39),
                ('synthesis-tests', ['-m', 'unittest', 'discover', '-s', '.noeaaeue/evidence/number-theory/zeta/density-hankel-20261015/historical', '-p', 'check_synthesis.py', '-v'], 16),
                ('source-1024', ['.noeaaeue/scripts/laguerre_dirichlet_bridge.py', '--bits', '1024'], None),
                ('source-1152', ['.noeaaeue/scripts/laguerre_dirichlet_bridge.py', '--bits', '1152'], None)]
            for name, argv, count in jobs:
                started = time.monotonic()
                step = {'mode': mode, 'name': name, 'argv': py+argv, 'status': 'STARTED'}
                report['steps'].append(step)
                try:
                    run = subprocess.run(py+argv, cwd=ROOT, capture_output=True, text=True, timeout=180)
                except subprocess.TimeoutExpired as exc:
                    step.update(status='TIMEOUT', stdout=str(exc.stdout or ''), stderr=str(exc.stderr or ''))
                    raise
                step.update(status='EXITED', returncode=run.returncode, stdout=run.stdout,
                            stderr=run.stderr, wall_seconds=round(time.monotonic()-started, 6))
                require(run.returncode == 0, mode+'/'+name+' failed')
                if count is not None:
                    found = re.findall(r'Ran (\d+) tests? in ', run.stderr)
                    require(found == [str(count)] and run.stderr.rstrip().endswith('OK'), 'test inventory mismatch')
                    step['tests'] = count
                else:
                    bits = int(name.split('-')[1])
                    parsed = decode(run.stdout)
                    check_report(parsed, bits)
                    outputs[(mode, bits)] = parsed
                    step['stdout_sha256'] = hashlib.sha256(run.stdout.encode()).hexdigest()
        for bits in (1024, 1152):
            if len(modes) == 2:
                require(outputs[('normal', bits)] == outputs[('optimized', bits)], 'mode-dependent source output')
        for mode in modes:
            for key in ('p_jet', 'u_jet'):
                for x, y in zip(outputs[(mode, 1024)][key], outputs[(mode, 1152)][key]):
                    require(max(int(x[0]), int(y[0])) <= min(int(x[1]), int(y[1])), 'disjoint cross-precision boxes')
        pinned()
        require(hashlib.sha256(Path(__file__).read_bytes()).hexdigest() == own, 'runner changed during execution')
        report.update(status='PASSED', tests_per_mode=137, prior_numerical_diagnostics_per_mode=3,
                      coefficient_boxes_compared_per_mode=256,
                      finite_energy_bound='5/24', finite_bound_all_integer_N_from=1,
                      finite_bound_all_integer_N_through=128)
    except Exception as exc:
        report.update(status='FAILED', error=type(exc).__name__+': '+str(exc))
    print(json.dumps(report, sort_keys=True, indent=2))
    return 0 if report['status'] == 'PASSED' else 1


if __name__ == '__main__':
    sys.exit(main())
