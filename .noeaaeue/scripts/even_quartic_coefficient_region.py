#!/usr/bin/env python3
"""Exact coefficient-region checks for the explicit even-quartic Hermite form.

These finite inequalities concern supplied REAL coefficient intervals. They do
not identify an orbit, produce zeta zeros, validate arbitrary uploaded moment
records, or constitute Lean admission. The demo independently regenerates its
source moments with source_hermite_bridge before applying this scalar consumer.
Human direction: R.A. Jacob Martone. Implementation: OpenAI ChatGPT. MIT.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
import json
from pathlib import Path
import reflected_zeta_cover as base
import source_hermite_bridge as source


def square_interval(a: base.Interval) -> base.Interval:
    if not isinstance(a, base.Interval):
        raise TypeError('a proved rational Interval is required')
    lower = Q(0) if a.lo <= 0 <= a.hi else min(a.lo*a.lo, a.hi*a.hi)
    return base.Interval(lower, max(a.lo*a.lo, a.hi*a.hi))


def coefficient_region(p: base.Interval, r: base.Interval) -> dict:
    """Sufficient UNIVERSAL interval test, never an existence assertion.

    For exact real p,r: H(p,r) is PSD iff p<=0,r>=0,p^2-4r>=0.
    PD iff all three signs are strict. The written proof includes p=0.
    Negative interval endpoints can mean uncertainty, not a counterexample.
    """
    if not isinstance(p, base.Interval) or not isinstance(r, base.Interval):
        raise TypeError('proved rational coefficient intervals required')
    gap = square_interval(p) - 4*r
    psd = p.hi <= 0 and r.lo >= 0 and gap.lo >= 0
    pd = p.hi < 0 and r.lo > 0 and gap.lo > 0
    return {'p': p, 'r': r, 'gap': gap,
            'coefficient_region_certified': psd,
            'strict_coefficient_region_certified': pd,
            'conclusion': ('ALL_ENCLOSED_COEFFICIENTS_HAVE_POSITIVE_DEFINITE_HERMITE_FORM'
                           if pd else 'ALL_ENCLOSED_COEFFICIENTS_HAVE_NONNEGATIVE_HERMITE_FORM'
                           if psd else 'INCONCLUSIVE'),
            'actual_zeta_source_identified_by_this_function': False}


def demo() -> dict:
    """Fresh source computations; no input status flags are treated as proofs."""
    heights = [Q(t) for t in ('113/8','21','25','487/16','527/16','601/16')]
    packets = [source.circle_source_packet(t) for t in heights]
    rows = []
    for i in (0, 2, 4):
        divisor = source.even_four_divisor(packets[i], packets[i+1])
        # Outward rounding widens the proved input boxes; recompute the test.
        region = coefficient_region(divisor['p'].rounded(64), divisor['r'].rounded(64))
        if not divisor['hermite_positive_definite'] or not region['strict_coefficient_region_certified']:
            raise ArithmeticError('actual finite coefficient-region test did not close')
        rows.append({'centers': divisor['positive_centers'], 'count': 4,
                     'family': divisor['family'], 'spectral_scale': divisor['scale'],
                     'scalar_consumer': region, 'moment_gap': divisor['gap'].rounded(64),
                     'odd_minor': divisor['odd_principal_minor'].rounded(64),
                     'even_minor': divisor['even_principal_minor'].rounded(64)})
    return source.serial({'schema': 'even-quartic-source-region-v1',
                          'scope': 'Three previously covered four-zero divisors; written analytic source bridge and exact finite inequalities; not Lean',
                          'coefficient_rounding_bits': 64, 'divisors': rows,
                          'all_height_claim': False, 'new_region_claim': False,
                          'single_orbit_positivity_claim': False, 'native_lean_admission': False})


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    try:
        result = demo()
        args.output.write_text(json.dumps(result, indent=2)+'\n')
        print(json.dumps({'divisors':len(result['divisors']),
                          'all_three_strict_regions':True,
                          'new_zero_exclusion':False,'native_lean':False}))
    except (ValueError, TypeError, ArithmeticError, OSError) as exc:
        parser.exit(2, str(exc)+'\n')

if __name__ == '__main__':
    main()
