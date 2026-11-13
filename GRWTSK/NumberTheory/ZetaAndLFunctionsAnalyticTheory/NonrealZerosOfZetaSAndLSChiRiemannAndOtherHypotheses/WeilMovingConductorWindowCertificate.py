#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact-integer hostile checks for the elementary Chebyshev/Weil moving-window lemma.

The mathematical induction and its full original-Weil source return are WRITTEN
in WeilMovingConductorWindow.md. Finite checks alone do not prove any universal
bound, Lean theorem, or RH/GRH.
"""
from fractions import Fraction as F
from math import comb, gcd


def prime_power_base(n):
    """Return prime p if n=p^k for k>=1, else 0 (exact trial division)."""
    if n < 2:
        return 0
    p = next((p for p in range(2, n + 1) if n % p == 0), n)
    m = n
    while m % p == 0:
        m //= p
    return p if m == 1 else 0


def main():
    if not __debug__:
        raise RuntimeError("self-test requires assertions enabled (no Python -O)")
    # The infinite written proof uses binomial prime-power valuations; the
    # finite hostile check verifies its literal divisibility, including powers.
    lcms = [1]
    prime_power_product = 1
    checked = 0
    for n in range(1, 4097):
        lcms.append(lcms[-1] * n // gcd(lcms[-1], n))
        base = prime_power_base(n)
        if base:
            prime_power_product *= base
        assert prime_power_product == lcms[n], ("Mangoldt/lcm source", n)
        assert lcms[n] <= 4**n, ("Chebyshev lcm", n)
        if n > 1:
            smaller = (n + 1) // 2
            assert (lcms[smaller] * comb(n, n//2)) % lcms[n] == 0, ("recurrence", n)
        checked += 1
    # Each arithmetic comparison in the source proof is an exact inequality.
    # exp(3/4) >= 1+3/4+(3/4)^2/2 > 2, hence log(2)<3/4.
    assert 1 + F(3,4) + F(3,4)**2 / 2 > 2
    assert 2*F(3,4) + 1 + 2 + 3*F(3,4) < 7
    assert F(32,2) - 7 >= F(32,4)
    # At the moving cutoff e^L <= (log q)^2/256, writing M=log q:
    # 8 sqrt(e^L) <= M/2, for every M>=32.
    cutoffs = {}
    for M in (32, 64, 128, 256, 512, 1024):
        X = M*M//256
        assert X*256 == M*M
        assert X == (M//16)**2
        assert 8*(M//16) == M//2
        assert F(M,2) - 7 >= F(M,4)
        cutoffs[M] = X
    # Last certified range includes n=2,3,4,5,7 at q where logq=64,
    # plus additional powers when the log-window increases. At strict n<X:
    assert {n for n in range(2,8) if prime_power_base(n)} == {2,3,4,5,7}
    assert prime_power_base(6) == 0 and prime_power_base(8) == 2
    print("PASS WEIL_MOVING_CONDUCTOR_INTEGER_V1")
    print(f"lcm_and_prime_power_source_checks={checked}")
    print(f"central_binomial_divisibility_checks={checked-1}")
    print("moving_X_cutoffs=" + ",".join(f"M{m}:X{x}" for m,x in cutoffs.items()))
    print("all_inequalities=EXACT_INTEGERS_AND_FRACTIONS; Chebyshev_induction=WRITTEN")
    print("Weil_source_return=WRITTEN; Lean=NOT_RUN; RH_GRH=UNPROVED")




def three_band_checks():
    """Exact finite checks of the sharper all-support signed-source budget.

    The mathematical three-site L2 fiber inequality is a WRITTEN theorem.
    The 511 cutoff partitions below use independent positive rational
    *synthetic* weights with the TRUE prime-power support, not a claim
    to evaluate the irrational Lambda(n)/sqrt(n) coefficients exactly.
    """
    from itertools import product

    def conj_product(x, y):
        return (x[0]*y[0]+x[1]*y[1], x[0]*y[1]-x[1]*y[0])

    complex_checked = 0
    for a in product((-1, 0, 1), repeat=6):
        z0, z1, z2 = (a[0:2], a[2:4], a[4:6])
        x, y = conj_product(z0, z1), conj_product(z1, z2)
        cre, cim = x[0]+y[0], x[1]+y[1]
        totalmass = sum(t*t for t in a)
        # Sharp 3-site |C|<=||a||²/sqrt2, hence <=3||a||²/4.
        assert 2*(cre*cre+cim*cim) <= totalmass*totalmass
        assert 16*(cre*cre+cim*cim) <= 9*totalmass*totalmass
        # The independent 2-site physical Cauchy bound.
        mass2 = sum(t*t for t in a[:4])
        assert 4*(x[0]*x[0]+x[1]*x[1]) <= mass2*mass2
        complex_checked += 1

    # The two-site constant is false for a three-site active chain;
    # the three-site constant becomes false for a four-site chain.
    assert F(12,17) > F(1,2)
    assert 2*3*3 > 4*4
    assert F(3,4)**2 > F(1,2)

    support = {n: prime_power_base(n) for n in range(2,513)}
    weights = {n: F((n%7)+1,8) if support[n] else F(0)
               for n in range(2,513)}
    partitions_checked = 0
    for X in range(2,513):
        # For L=log X, the EXACT strict activation comparisons are
        # log n<L/k iff n^k<X, no rounded floating-point logarithms.
        active = range(2,X)
        low = sum((weights[n] for n in active if n**3 < X), F(0))
        mid = sum((weights[n] for n in active
                   if n**3 >= X and n*n < X), F(0))
        high = sum((weights[n] for n in active if n*n >= X), F(0))
        whole = sum((weights[n] for n in active), F(0))
        half = sum((weights[n] for n in active if n*n < X), F(0))
        third = low
        assert 2*low+F(3,2)*mid+high == whole+half/2+third/2
        partitions_checked += 1
    assert support[4] == 2 and support[6] == 0 and support[8] == 2

    # Universal scalar argument: for v=M/12>=8/3, sqrt(v)<=5v/8
    # and cubert(v)<=9v/16. The written proof squares/cubes
    # NONNEGATIVE terms; sampled rational assertions only test its
    # constants and exact moving-window thresholds.
    assert F(8,3) >= F(64,25) and F(8,3) >= F(64,27)
    assert 4+2*F(5,8)+2*F(9,16) == F(51,8)
    assert F(51,8)/12 == F(17,32)
    assert F(15,32)-F(1,4) == F(7,32)
    cutoffs={}
    for M in (32,33,64,128,256,512,1024):
        v=F(M,12)
        assert v >= F(8,3)
        assert F(15,32)*M-7 >= F(M,4)
        assert F(M*M,144) > F(M*M,256)
        cutoffs[M] = F(M*M,144)

    print("PASS WEIL_MOVING_CONDUCTOR_THREE_BAND_V2")
    print("complex_three_site_checks="+str(complex_checked))
    print("strict_prime_power_band_partition_checks="+str(partitions_checked))
    print("new_moving_X_cutoffs="+",".join(
        "M"+str(m)+":X"+str(x) for m,x in cutoffs.items()))
    print("rational_bound=17M/32; lower_margin=15M/32-7; M_ge_32=PASS")
    print("original_full_Weil_source=WRITTEN; Lean=NOT_RUN; RH_GRH=UNPROVED")


if __name__ == "__main__":
    main()
    three_band_checks()
