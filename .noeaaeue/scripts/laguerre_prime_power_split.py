#!/usr/bin/env python3
"""Retain prime powers as a critical carrier plus an H2 reconstruction error.

Direction: grwtsk contributors. Derivation/implementation: OpenAI ChatGPT. MIT.
Finite rational computations; the all-depth bounds have written proofs using
an explicitly cited PNT input. No RH, zero exclusion, or Lean admission.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
from functools import lru_cache
import hashlib
import json
from math import factorial
from pathlib import Path
import arithmetic_quotient_sections as a
import laguerre_discrepancy_energy as e

I = a.I
PINS = {'arithmetic_quotient_sections.py': 'efc700c5aca9223b4ca07743e69e6469f61e6dd55aed53ee7e5f550a80d5580e',
        'laguerre_discrepancy_energy.py': '78ab10cde308dcc273473f10e4ce1c1ed0e35cc9c34ad1a8332788fcc9e9797a'}


def require(ok, message):
    if not ok:
        raise ValueError(message)


def pins():
    for name, sha in PINS.items():
        p = Path(__file__).resolve().parent / name
        require(not p.is_symlink() and hashlib.sha256(p.read_bytes()).hexdigest() == sha,
                'changed source: ' + name)


def exp_negative_upper(x):
    """Positive rational upper bound on exp(-x), from two elementary series bounds."""
    x = a.exact(x)
    require(0 <= x <= 100000, 'bounded nonnegative exponent required')
    term = total = Q(1)
    for j in range(1, 129):
        term *= x/j
        total += term
    # e>2, so this second bound supplies exponential decay even at large x.
    return min(1/total, Q(1, 2**(x.numerator//x.denominator)))


def exponential_moment_tail_polynomial(degree, start, rate):
    a.integer(degree, 'degree', 0, 32)
    start, rate = a.exact(start), a.exact(rate)
    require(start >= 0 and rate > 0, 'invalid tail parameters')
    return sum((Q(factorial(degree), factorial(j))*start**j/rate**(degree+1-j)
                for j in range(degree+1)), Q(0))


def square_error_budget():
    """Scalar constant for the written normalized theta(sqrt(x)) error bound."""
    return Q(2048) + 400*exp_negative_upper(Q(128, 5))*exponential_moment_tail_polynomial(9, 16, Q(8, 5))


def correction_tail_budget(r):
    """Squared l2 error, uniformly in depth, at the theoretical cutoff 2^(3*r*r)."""
    a.integer(r, 'tail schedule index', 1, 128)
    t = 2*r*r
    square = 400*exp_negative_upper(Q(8*r, 5))*exponential_moment_tail_polynomial(9, r, Q(8, 5))
    higher = Q(81, 4)*exp_negative_upper(Q(t, 3))*(3*t*t+18*t+54)
    constant = exp_negative_upper(Q(t))
    return Q(3, 2)*(square+higher+constant)


def critical_carrier(k):
    a.integer(k, 'coefficient index', 0, 4096)
    return Q((-1)**k)-Q(2, 3)*Q(-1, 3)**k


def critical_carrier_energy(n):
    a.integer(n, 'depth', 1, 4096)
    return Q(n)-Q(3, 2)+2*Q(1, 3)**n-Q(1, 2)*Q(1, 9)**n


def time_multiplication(n):
    """Rectangular Laguerre matrix; the outgoing degree-N row is retained."""
    a.integer(n, 'dimension', 1, 128)
    out = [[Q(0) for _ in range(n)] for _ in range(n+1)]
    for k in range(n):
        out[k][k] = Q(2*k+1, 2)
        out[k+1][k] = Q(-k-1, 2)
        if k:
            out[k-1][k] = Q(-k, 2)
    return out


def prime_power_classes(cutoff):
    a.integer(cutoff, 'cutoff', 1, 65536)
    inventory = dict(e.prime_power_inventory(cutoff))
    for n in range(2, cutoff+1):
        require(e.trial_prime_base(n) == inventory.get(n), 'factorization mismatch')
    result = []
    for n, p in sorted(inventory.items()):
        m, j = n, 0
        while m % p == 0:
            m //= p
            j += 1
        require(m == 1 and p**j == n, 'invalid prime exponent')
        result.append((n, p, j))
    return result


def profile(count=16, cutoff=1024, bits=256):
    a.integer(count, 'count', 1, 16)
    a.integer(cutoff, 'cutoff', 1, 65536)
    a.integer(bits, 'bits', 192, 768)
    pins()
    inv = prime_power_classes(cutoff)
    zero = I.point(0, bits)
    @lru_cache(maxsize=None)
    def tail(m, k, rate):
        p = e.exponential_tail_polynomial(e.laguerre(k, Q(2)), rate)
        logm = a.log_q(Q(m), bits)
        if rate == 1:
            factor = I.point(Q(1, m), bits)
        else:
            factor = I.point(Q(1, m), bits).sqrt()
            if rate == Q(3, 2):
                factor /= m
        return factor*e.polynomial(p, logm)
    def integral(k, rate):
        return zero if cutoff == 1 else tail(1, k, rate)-tail(cutoff, k, rate)
    vectors = {name: [] for name in ('original', 'prime_only', 'carrier', 'compensated_prime',
                'square_atoms', 'higher_power_atoms', 'square_centered', 'constant', 'residual')}
    atom_audit = hashlib.sha256()
    for n, p, j in inv:
        atom_audit.update(f'{n}:{p}:{j}\n'.encode())
    for k in range(count):
        sums = [zero, zero, zero]
        for n, p, j in inv:
            feature = zero if n == cutoff else tail(n, k, Q(3, 2))-tail(cutoff, k, Q(3, 2))
            sums[min(j, 3)-1] += a.log_q(Q(p), bits)*feature
        prime, square, higher = sums
        c0, root, continuous = integral(k, Q(3, 2)), integral(k, Q(1)), integral(k, Q(1, 2))
        prime_only = prime-continuous+c0
        carrier = root-c0
        compensated = prime-continuous+root
        residual = square+higher-root+c0
        original = prime+square+higher-continuous+c0
        for name, value in zip(vectors, (original, prime_only, carrier, compensated,
                                        square, higher, square-root, c0, residual)):
            vectors[name].append(e.clean(value))
    original_head = e.finite_head(count, cutoff, bits)
    for x, box in zip(vectors['original'], original_head['moments']):
        require(max(x.lo, Q(box['lower'])) <= min(x.hi, Q(box['upper'])), 'unchanged head mismatch')
    def en(name):
        return e.energy(vectors[name])
    mixed = 2*sum((x*y for x, y in zip(vectors['compensated_prime'], vectors['residual'])), I.point(0, 160))
    assembled = en('compensated_prime')+mixed+en('residual')
    require(max(assembled.lo, en('original').lo) <= min(assembled.hi, en('original').hi), 'lost energy interaction')
    require(en('residual').hi < 2000, 'residual budget unresolved')
    require(en('higher_power_atoms').hi < 81, 'higher-power budget unresolved')
    require(en('square_atoms').hi < 36*count, 'square budget unresolved')
    require(en('square_centered').hi < 1125, 'centered square budget unresolved')
    return {'schema': 'laguerre-prime-power-profile-v1', 'count': count, 'cutoff': cutoff,
            'working_bits': bits, 'output_grid_bits': 160, 'source_pins': PINS,
            'inventory': {'classes': [list(row) for row in inv], 'prime_power_count': len(inv),
                'prime_count': sum(j == 1 for _, _, j in inv),
                'square_count': sum(j == 2 for _, _, j in inv),
                'higher_power_count': sum(j >= 3 for _, _, j in inv),
                'factorization_checked_through': cutoff, 'sha256': atom_audit.hexdigest(),
                'touching_label_retained': True, 'touching_feature_exact_zero': True},
            'moments': {name: [x.record() for x in v] for name, v in vectors.items()},
            'energies': {name: en(name).record() for name in vectors},
            'mixed_compensated_residual': mixed.record(), 'source_comparison_boxes': count,
            'enormous_cutoff_enumerated': False, 'RH_proved': False, 'all_depth_prime_bound': False,
            'native_Lean_admission': False, 'new_zero_exclusion': False,
            'grade': 'FINITE_RATIONAL; universal remainder bounds are written and cite external PNT'}


def budget_report():
    b = square_error_budget()
    require(b < 2250, 'PNT scalar budget failed')
    return {'schema': 'laguerre-prime-power-budgets-v1',
            'normalized_square_error_L2_squared_upper': str(b),
            'normalized_square_error_L2_squared_target': '2250',
            'higher_power_coefficient_energy_upper': '81',
            'full_residual_coefficient_energy_upper': '2000',
            'critical_carrier_energy': {str(n): str(critical_carrier_energy(n)) for n in (1, 8, 32, 128)},
            'uniform_depth_correction_tails': [
                {'index': r, 'prime_cutoff_power_of_two': 3*r*r,
                 'squared_l2_error_upper': str(correction_tail_budget(r)),
                 'enumerated': False} for r in (16, 32, 64)],
            'external_input': 'Johnston--Yang arXiv:2204.01980v2 Corollary 1.2 and first Table 1 row',
            'external_proof_replayed': False, 'all_depth_prime_bound': False, 'RH_proved': False}


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--count', type=int, default=16)
    p.add_argument('--cutoff', type=int, default=1024)
    p.add_argument('--bits', type=int, default=256)
    p.add_argument('--budgets', action='store_true')
    args = p.parse_args()
    print(json.dumps(budget_report() if args.budgets else profile(args.count, args.cutoff, args.bits),
                     sort_keys=True, indent=2))


if __name__ == '__main__':
    main()
