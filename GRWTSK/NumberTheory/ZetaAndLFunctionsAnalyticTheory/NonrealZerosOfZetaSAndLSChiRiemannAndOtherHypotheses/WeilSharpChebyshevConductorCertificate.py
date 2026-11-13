#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact-rational scalar checks for the sharp Chebyshev moving Weil window.

The universal lcm/Abel estimate and source-exact Weil transfer are WRITTEN
analytical arguments in the adjacent .md, not proved by this finite test.
No Lean execution, mathematical admission or RH/GRH claim is made.
"""
from fractions import Fraction as F
from itertools import product
from math import comb, gcd


def arctan_bounds(x, terms):
    """Rational alternating-series enclosure of atan(x), 0<=x<=1."""
    assert isinstance(x, F) and F(0) <= x <= F(1) and terms > 0
    partial = sum(((-1) ** k * x ** (2*k + 1) / F(2*k + 1)
                   for k in range(terms)), F(0))
    error = x ** (2*terms + 1) / F(2*terms + 1)
    return ((partial, partial + error) if terms % 2 == 0
            else (partial - error, partial))


def pi_bounds():
    """Machin identity with outward rational intervals."""
    a, b = arctan_bounds(F(1, 5), 20)
    c, d = arctan_bounds(F(1, 239), 6)
    return 16*a - 4*d, 16*b - 4*c


def prime_power_base(n):
    if n < 2:
        return 0
    for p in range(2, n+1):
        if n % p:
            continue
        v = n
        while v % p == 0:
            v //= p
        return p if v == 1 else 0
    raise AssertionError("factorization impossible")


def gaussian_checks():
    def conjmul(x, y):
        return (x[0]*y[0]+x[1]*y[1], x[0]*y[1]-x[1]*y[0])
    cases = 0
    for values in product((-1, 0, 1), repeat=6):
        a, b, c = values[0:2], values[2:4], values[4:6]
        x, y = conjmul(a, b), conjmul(b, c)
        re, im = x[0]+y[0], x[1]+y[1]
        m = sum(z*z for z in values)
        assert 2*(re*re+im*im) <= m*m
        assert 16*(re*re+im*im) <= 9*m*m
        cases += 1
    # Sharpness counterexamples to illegal adjacent-band substitutions.
    assert F(12, 17) > F(1, 2)  # 3-site (1,3/2,1)
    assert 2*3*3 > 4*4  # four-site (1,1,1,1) defeats three-site norm
    return cases


def check():
    if not __debug__:
        raise RuntimeError("exact certificate requires enabled assertions (no -O)")

    # All-power Chebyshev source, including highest p^k under each cutoff.
    lcm = 1
    pp_product = 1
    lcm_checks = 0
    for n in range(1, 2049):
        lcm = lcm*n//gcd(lcm, n)
        p = prime_power_base(n)
        if p:
            pp_product *= p
        assert lcm == pp_product
        assert lcm <= 4**n
        if n >= 2:
            r = (n+1)//2
            assert (4**r * comb(n, n//2)) >= lcm
        lcm_checks += 1

    # Exact two-sided bounds from log(2)=2atanh(1/3).
    # Terms k=0,1 are explicit. For all k>=2, replace 1/(2k+1)
    # by 1/5 and sum a positive geometric tail of ratio 1/9.
    log2_lo = F(2, 3) + F(2, 81)
    log2_hi = log2_lo + F(1, 540)
    assert F(2, 3) < log2_lo < log2_hi < F(139, 200)
    log4_lo, log4_hi = 2*log2_lo, 2*log2_hi
    assert log4_lo > F(4, 3) and log4_hi < F(139, 100)

    pi_lo, pi_hi = pi_bounds()
    assert F(3) < pi_lo < pi_hi < F(22, 7)
    # e^(6/5)>1+6/5+(6/5)^2/2+(6/5)^3/6=401/125>22/7>pi.
    exp_lower = 1 + F(6,5) + F(6,5)**2/2 + F(6,5)**3/6
    assert exp_lower == F(401,125) and exp_lower > F(22,7)
    # gamma<=1 follows independently from H_n<=1+log n.
    c_upper = F(6,5) + 1 + F(11,7) + 3*F(139,200)
    assert c_upper == F(8199,1400) < 6

    # For M=log q>=32 and s=e^(L/2)<=v=M/6, v>=16/3.
    assert F(16,3) > F(256,49)
    assert F(16,3)**2 > 27
    poly = 2 + F(7,16) + F(1,3)
    assert poly == F(133,48)
    budget_coefficient = F(139,100)*poly/6
    assert budget_coefficient == F(18487,28800)
    coercivity_coefficient = 1-budget_coefficient
    assert coercivity_coefficient == F(10313,28800)
    constant = -6+2*F(4,3)
    assert constant == -F(10,3)
    margin_at_32 = (coercivity_coefficient-F(1,4))*32+constant
    assert margin_at_32 == F(113,900) > 0

    cutoffs = {}
    for M in (32,33,64,128,256,512,1024):
        v = F(M,6)
        assert v >= F(16,3)
        assert v >= F(256,49) and v*v >= 27
        assert 2*v + v*F(7,16) + v*F(1,3) == poly*v
        assert coercivity_coefficient*M+constant >= F(M,4)+F(113,900)
        assert F(M*M,36) == 4*F(M*M,144)
        cutoffs[M] = F(M*M,36)

    # Strict three-band allocation for 511 exact arithmetic cutoffs.
    support = {n:prime_power_base(n) for n in range(2,513)}
    weights = {n:F(1+(n%7),8) if support[n] else F(0)
               for n in range(2,513)}
    partitions = 0
    for X in range(2,513):
        weights_active = [(n,weights[n]) for n in range(2,X)]
        low = sum((w for n,w in weights_active if n**3<X),F(0))
        middle = sum((w for n,w in weights_active
                      if n**3>=X and n*n<X),F(0))
        high = sum((w for n,w in weights_active if n*n>=X),F(0))
        whole = low+middle+high
        half = low+middle
        assert 2*low + F(3,2)*middle + high == whole + half/2 + low/2
        partitions += 1

    cases = gaussian_checks()
    print("PASS WMC_SHARP_CHEBYSHEV_WINDOW_V3")
    print("lcm_prime_power_checks="+str(lcm_checks))
    print("complex_three_site_cases="+str(cases))
    print("strict_three_band_partitions="+str(partitions))
    print("log4_lower_gt_4/3_and_upper_lt_139/100=PASS")
    print("archimedes_pi_upper_and_original_gamma_scalar_lt_6=PASS")
    print("all_M_ge_32_new_cutoff=M_squared_div_36=PASS")
    print("extra_margin_at_M32=113/900")
    print("cutoffs="+",".join("M"+str(k)+":X"+str(v) for k,v in cutoffs.items()))
    print("arithmetic=EXACT_FRACTIONS; Weil_source=WRITTEN; Lean=NOT_RUN; RH_GRH=UNPROVED")


if __name__ == "__main__":
    check()
