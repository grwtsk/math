#!/usr/bin/env python3
"""Exact finite centered-atom accounting for the unchanged Laguerre discrepancy.

Direction: R.A. Jacob Martone. Derivation/implementation: OpenAI ChatGPT. MIT.
This is finite interval computation with written analytic bounds, not an
all-depth signed-energy estimate, zero exclusion, or native Lean admission.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
from functools import lru_cache
import hashlib
import json
from pathlib import Path
import arithmetic_quotient_sections as a
import laguerre_discrepancy_energy as e

I = a.I
PINS = {'arithmetic_quotient_sections.py': 'efc700c5aca9223b4ca07743e69e6469f61e6dd55aed53ee7e5f550a80d5580e',
        'laguerre_discrepancy_energy.py': '78ab10cde308dcc273473f10e4ce1c1ed0e35cc9c34ad1a8332788fcc9e9797a'}


def require(ok, message):
    if not ok:
        raise ValueError(message)


def pin_inputs():
    for name, sha in PINS.items():
        p = Path(__file__).resolve().parent / name
        require(not p.is_symlink() and hashlib.sha256(p.read_bytes()).hexdigest() == sha,
                'source drift: ' + name)


def overlap(x, y):
    return max(x.lo, y.lo) <= min(x.hi, y.hi)


def tail_polynomial(k, rate=Q(3, 2)):
    return e.exponential_tail_polynomial(e.laguerre(k, Q(2)), rate)


def scheduled_diagonal_bound(n):
    a.integer(n, 'depth', 1, 1000000)
    return 64*n*n + 4*n


def complete_gram_entry(m, n, cutoff):
    """Full function-space Gram, not a replacement for the finite projection."""
    for x, label in [(m, 'first atom'), (n, 'second atom'), (cutoff, 'cutoff')]:
        a.integer(x, label, 2, 1000000)
    require(max(m, n) <= cutoff, 'atom outside cutoff')
    return (Q(1, max(m, n))-Q(1, cutoff))/2


def finite_accounting(weights, features):
    """Complete finite Gram accounting, including both off-diagonal orders."""
    require(len(weights) == len(features) and bool(features), 'complete nonempty atom inventory required')
    dim = len(features[0])
    require(dim > 0 and all(len(row) == dim for row in features), 'ragged feature matrix')
    total = [sum((w*row[k] for w, row in zip(weights, features)), 0) for k in range(dim)]
    def sq(x):
        return x.square() if isinstance(x, I) else x*x
    diagonal = sum((sq(w)*sum((sq(x) for x in row), 0)
                    for w, row in zip(weights, features)), 0)
    norm = sum((sq(x) for x in total), 0)
    return total, diagonal, norm-diagonal, norm


def source_report(count=8, cutoff=1024, bits=256):
    a.integer(count, 'coefficient count', 1, 16)
    a.integer(cutoff, 'prime cutoff', 2, 4096)
    a.integer(bits, 'working bits', 192, 768)
    pin_inputs()
    inventory = dict(e.prime_power_inventory(cutoff))
    for m in range(2, cutoff+1):
        require(e.trial_prime_base(m) == inventory.get(m), 'prime-power factorization mismatch')
    zero = I.point(0, bits)
    @lru_cache(maxsize=None)
    def tail(m, k, rate):
        logm = a.log_q(Q(m), bits)
        root = I.point(Q(1, m), bits).sqrt()
        factor = root/m if rate == Q(3, 2) else root
        return factor*e.polynomial(tail_polynomial(k, rate), logm)
    rows = []
    weights = []
    majorant = zero
    audit = hashlib.sha256()
    row_checks = 0
    for m in range(2, cutoff+1):
        row = [zero if m == cutoff else tail(m, k, Q(3, 2))-tail(cutoff, k, Q(3, 2))
               for k in range(count)]
        weight = a.log_q(Q(inventory[m]), bits)-1 if m in inventory else I.point(-1, bits)
        bound = complete_gram_entry(m, m, cutoff)
        require(e.energy(row).hi <= bound, 'finite atom diagonal exceeds Bessel budget')
        rows.append(row)
        weights.append(weight)
        majorant += weight.square()*bound
        audit.update(json.dumps({'n': m, 'prime_base': inventory.get(m), 'weight': weight.record(),
                                 'features': [x.record() for x in row]}, sort_keys=True).encode()+b'\n')
        row_checks += 1
    step, diagonal, cross, step_energy = finite_accounting(weights, rows)
    # The fractional-cell remainder is assembled independently from its cells,
    # including the interval [1,2] and the upper endpoint of every cell.
    frac = []
    for k in range(count):
        total = zero
        for j in range(1, cutoff):
            total += j*(tail(j, k, Q(3, 2))-tail(j+1, k, Q(3, 2)))
            total -= tail(j, k, Q(1, 2))-tail(j+1, k, Q(1, 2))
        frac.append(total)
    combined = [x+y for x, y in zip(step, frac)]
    head = e.finite_head(count, cutoff, bits)
    for x, record in zip(combined, head['moments']):
        require(overlap(x, I(Q(record['lower']), Q(record['upper']), 160)), 'source reconstruction failed')
    fractional_energy = e.energy(frac)
    mixed = 2*sum((x*y for x, y in zip(step, frac)), zero)
    energy = e.energy(combined)
    identity = diagonal+cross+mixed+fractional_energy
    require(overlap(identity, energy), 'complete energy identity failed')
    logx = a.log_q(Q(cutoff), bits)
    analytic_diagonal = logx.square()+logx/2
    require(diagonal.hi <= majorant.lo, 'diagonal domination unresolved')
    require(majorant.hi < analytic_diagonal.lo, 'arithmetic diagonal bound unresolved')
    require(fractional_energy.hi < Q(1, 2), 'fractional remainder budget unresolved')
    def rec(x):
        return e.clean(x).record()
    return {'schema': 'laguerre-centered-atoms-v1', 'cutoff': cutoff,
            'coefficient_count': count, 'working_bits': bits, 'output_grid_bits': 160,
            'source_pins': PINS, 'atom_inventory': {'first': 2, 'last': cutoff,
            'count': cutoff-1, 'prime_power_count': len(inventory),
            'non_prime_powers_kept_with_weight_minus_one': cutoff-1-len(inventory),
            'factorization_checked_through': cutoff, 'touching_atom_kept': True,
            'touching_feature_exact_zero': all(x.lo == x.hi == 0 for x in rows[-1]),
            'complete_features_sha256': audit.hexdigest()},
            'step_moments': [rec(x) for x in step],
            'fractional_moments': [rec(x) for x in frac],
            'source_moments': [rec(x) for x in combined],
            'diagonal': rec(diagonal), 'ordered_cross': rec(cross),
            'step_energy': rec(step_energy), 'mixed_fractional': rec(mixed),
            'fractional_energy': rec(fractional_energy), 'source_energy': rec(energy),
            'full_function_diagonal_majorant': rec(majorant),
            'analytic_diagonal_majorant': rec(analytic_diagonal),
            'finite_atom_Bessel_checks': row_checks,
            'source_comparison_boxes': count,
            'ordered_cross_term_count': (cutoff-1)*(cutoff-2),
            'cross_evaluation': 'complete squared sum minus diagonal; not pairwise absolute values',
            'all_depth_diagonal': 'WRITTEN_PROOF: Q_(N,2^(11N)) <= 64*N^2+4*N',
            'fractional_all_depth': 'WRITTEN_PROOF: sum_k |r_k^(X)|^2 <= 1/2',
            'proof_grade': 'FINITE_RATIONAL_WITH_WRITTEN_ANALYTIC_BOUND',
            'RH_proved': False, 'all_depth_cross_bound': False,
            'new_zero_exclusion': False, 'native_Lean_admission': False}


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--count', type=int, default=8)
    p.add_argument('--cutoff', type=int, default=1024)
    p.add_argument('--bits', type=int, default=256)
    args = p.parse_args()
    print(json.dumps(source_report(args.count, args.cutoff, args.bits), sort_keys=True, indent=2))


if __name__ == '__main__':
    main()
