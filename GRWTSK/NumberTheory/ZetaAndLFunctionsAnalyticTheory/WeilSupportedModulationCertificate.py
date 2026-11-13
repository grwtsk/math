#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact rational hostile algebra for supported high-modulation Weil theorem.

The continuous Fourier/Plancherel, gamma log-growth, Paley-Wiener and
original arithmetic Weil source-return proofs are WRITTEN in the sibling
.md, not proved by this finite checker. In particular this is NOT a
numerical RH/GRH certificate or a Lean kernel replay.
"""
from fractions import Fraction as F
from itertools import product
from random import Random


def re_of_product(a, b):
    return a[0] * b[0] - a[1] * b[1]


def conjugate(a):
    return a[0], -a[1]


def multiply(a, b):
    return (a[0]*b[0]-a[1]*b[1], a[0]*b[1]+a[1]*b[0])


def norm_squared(a):
    return a[0]*a[0]+a[1]*a[1]


def pole_checks():
    checked = sharp = 0
    # Exact original two-orientation signed complex pole pairing.
    for r1, i1, r2, i2 in product(range(-2, 3), repeat=4):
        u, v = (r1, i1), (r2, i2)
        P = 2*re_of_product(u, conjugate(v))
        plus, minus = (r1+r2, i1+i2), (r1-r2, i1-i2)
        # P = 1/2 * (|Mplus+Mminus|^2 - |Mplus-Mminus|^2).
        assert 2*P == norm_squared(plus)-norm_squared(minus)
        assert 2*P >= -norm_squared(minus)
        if u == (-v[0], -v[1]):
            assert 2*P == -norm_squared(minus)
            sharp += 1
        checked += 1
    return checked, sharp


def phase_checks():
    phases = [(1, 0), (0, 1), (-1, 0), (0, -1)]
    checked = 0
    for chi, modulation, x, y in product(phases, phases, range(-3, 4), range(-3, 4)):
        c = (x, y)
        mod_c = multiply(modulation, c)
        true_signed_re = re_of_product(conjugate(chi), mod_c)
        # A unit character phase must NOT be replaced by an absolute square.
        assert true_signed_re**2 <= norm_squared(c)
        assert norm_squared(mod_c) == norm_squared(c)
        checked += 1
    return checked


def spectral_split_checks():
    rng = Random(17031952)
    tests = triggered = actual_low = negative_sign = 0
    for j in range(1200):
        sig = F(rng.randrange(1, 7), rng.randrange(1, 7))
        B = F(rng.randrange(0, 9), rng.randrange(1, 5))
        D = F(rng.randrange(0, 11), rng.randrange(1, 5))
        kappa = B + 2*sig
        T = F(rng.randrange(2, 7))
        sign = -1 if j % 2 else 1
        nu = sign*F(rng.randrange(int(T)+1, int(T)+13))
        d = abs(nu)-T
        assert d > 0

        # Spectral samples represent the exact Plancherel *algebra*
        # after g has been modulated. They are NOT a Fourier transform
        # of an actual smooth compact test, and no source soundness is
        # inferred from sampling.
        omegas = [F(rng.randrange(-20,21)) for _ in range(7)]
        weights = [F(rng.randrange(0,8),rng.randrange(1,9)) for _ in omegas]
        if not any(weights):
            weights[0]=F(1)
        E = sum(weights,F(0))
        derivative_energy = sum((omega*omega*w for omega,w in zip(omegas,weights)),F(0))
        low = F(0)
        actual_m = F(0)
        for omega,w in zip(omegas,weights):
            xi=nu+omega
            if abs(xi)<T:
                low += w
                # Real signed symbol may be negative in the low band.
                value = -D + F(rng.randrange(0,10),3)
                if value<0: negative_sign+=1
            else:
                value = kappa + F(rng.randrange(0,10),3)
            actual_m += value*w
        if low: actual_low += 1
        assert d*d*low <= derivative_energy
        # The signed pole can be as low as -B E (and can also be positive).
        pole = -B*E + F(rng.randrange(0,5))*E
        Q = actual_m+pole
        bound = 2*sig*E - (kappa+D)*derivative_energy/(d*d)
        assert Q >= bound
        if d*d*sig*E >= (kappa+D)*derivative_energy:
            triggered += 1
            assert Q >= sig*E
        tests += 1

    assert triggered >= 1 and actual_low >= 1 and negative_sign >= 1

    # Analytic H^1_0 example (not falsely passed off as C_c^infinity):
    # g(x)=1-x^2 for |x|<1, zero outside. Exact integrals:
    # int g^2=16/15 and int |g'|^2=8/3; ratio^2=5/2.
    norm = F(16,15)
    deriv = F(8,3)
    assert deriv/norm == F(5,2)
    return tests,triggered,actual_low,negative_sign


def main():
    if not __debug__:
        raise RuntimeError('self-test requires assertions enabled (no Python -O)')
    p, sharp=pole_checks()
    phases=phase_checks()
    n,trig,low,negative=spectral_split_checks()
    print('PASS WSMP_EXACT_SUPPORTED_MODULATION_ALGEBRA_V1')
    print(f'signed_complex_pole_pairings={p}; sharp_negative_cases={sharp}')
    print(f'complex_unit_character_modulation_pairs={phases}')
    print(f'finite_spectral_leakage_algebra_cases={n}; positivity_implications={trig}')
    print(f'nonempty_low_band_cases={low}; negative_low_symbol_cases={negative}')
    print('H1_0_polynomial_gradient_to_mass_squared=5/2')
    print('finite_algebra=EXACT_FRACTIONS; analytic_source_return=WRITTEN')
    print('Lean=NOT_RUN; kernel=NOT_RUN; RH_GRH=UNPROVED')


if __name__ == '__main__':
    main()
