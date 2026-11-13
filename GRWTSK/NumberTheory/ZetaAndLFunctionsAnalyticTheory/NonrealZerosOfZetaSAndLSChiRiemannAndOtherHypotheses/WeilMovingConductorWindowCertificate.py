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


if __name__ == "__main__":
    main()
