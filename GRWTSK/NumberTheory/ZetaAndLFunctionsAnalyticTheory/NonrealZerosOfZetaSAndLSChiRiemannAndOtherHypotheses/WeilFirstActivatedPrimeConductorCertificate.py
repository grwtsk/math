#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact rational scalar certification for full-source first-prime Weil bounds.

The original gamma/source transfer and finite-chain correlation estimates
are WRITTEN in the sibling mathematical note. This checker certifies their
explicit scalar consequences only. It does not execute Lean or prove RH/GRH.
"""
from fractions import Fraction as F
from itertools import product

NLOG = 40


def positive_log_ratio(y, terms=NLOG):
    """0<=y<1: exact rational interval for log((1+y)/(1-y))."""
    assert 0 <= y < 1 and terms > 0
    lower = sum((2 * y ** (2 * j + 1) / F(2*j+1) for j in range(terms)), F(0))
    upper = lower + 2 * y ** (2*terms+1) / (F(2*terms+1) * (1-y*y))
    return lower, upper


def log_bounds(x):
    """Exact rational log bounds for every positive rational argument."""
    x = F(x)
    assert x > 0
    exponent = 0
    while x >= 2:
        x /= 2
        exponent += 1
    while x < 1:
        x *= 2
        exponent -= 1
    lo, hi = positive_log_ratio((x-1)/(x+1))
    l2, u2 = positive_log_ratio(F(1,3))
    if exponent >= 0:
        return lo + exponent*l2, hi + exponent*u2
    return lo + exponent*u2, hi + exponent*l2


def atan_bounds(x, terms):
    """Alternating arctangent with a signed rigorous next-term remainder."""
    x = F(x)
    assert 0 <= x <= 1 and terms >= 1
    part = sum(((-1)**j * x**(2*j+1)/F(2*j+1) for j in range(terms)), F(0))
    term = x**(2*terms+1) / F(2*terms+1)
    return (part, part+term) if terms%2==0 else (part-term, part)


def pi_bounds():
    # Machin: pi = 16 atan(1/5)-4 atan(1/239).
    a, b = atan_bounds(F(1,5), 20)
    c, d = atan_bounds(F(1,239), 6)
    return 16*a-4*d, 16*b-4*c


def gamma_bounds():
    # Harmonic-number trapezoidal/Euler--Maclaurin interval, n=100:
    # H_n-log(n)-1/(2n) < gamma < that + 1/(12 n^2).
    # The used allowance 1/80000 is deliberately larger at n=100.
    H100 = sum((F(1,k) for k in range(1,101)), F(0))
    l100, u100 = log_bounds(F(100))
    return H100-u100-F(1,200), H100-l100-F(1,200)+F(1,80000)


def prime_power_base(n):
    """Return the unique prime base if n is a prime power, otherwise None."""
    def prime(p):
        return p >= 2 and all(p % d for d in range(2, p))
    for p in range(2, n + 1):
        if not prime(p):
            continue
        v = p
        while v < n:
            v *= p
        if v == n:
            return p
    return None


def finite_three_site_regression():
    """Hostile exact Gaussian-integer checks; the source proves the inequality."""
    checks = 0
    values = [-1, 0, 1]
    def conjmul(a, b):
        return (a[0]*b[0] + a[1]*b[1], a[0]*b[1] - a[1]*b[0])
    for scalars in product(values, repeat=6):
        a = scalars[:2]
        b = scalars[2:4]
        c = scalars[4:]
        c01 = conjmul(a, b)
        c12 = conjmul(b, c)
        total = (c01[0]+c12[0], c01[1]+c12[1])
        norm = sum(t*t for t in scalars)
        # |conj(a)b + conj(b)c| <= norm/sqrt(2), not norm/2.
        assert 2*(total[0]**2 + total[1]**2) <= norm*norm
        # Two-site bound |conj(a)b| <= (|a|^2+|b|^2)/2.
        mass2 = sum(t*t for t in scalars[:4])
        assert 4*(c01[0]**2+c01[1]**2) <= mass2*mass2
        checks += 1
    return checks


def check():
    if not __debug__:
        raise RuntimeError("certificate requires assertions enabled (no Python -O)")

    # The three window comparisons require no numerical exponentials.
    # L<=log3 => z=exp(-L/4)>=3^(-1/4)>3/4, etc.
    assert F(3,4)**4 < F(1,3)
    assert F(7,10)**4 < F(1,4)
    assert F(7,12)**4 < F(1,8)
    assert 3 < 4 and 8 < 9
    assert {n:prime_power_base(n) for n in range(2,3) if prime_power_base(n)} == {2:2}
    assert {n:prime_power_base(n) for n in range(2,4) if prime_power_base(n)} == {2:2,3:3}
    assert {n:prime_power_base(n) for n in range(2,8) if prime_power_base(n)} == {
        2:2,3:3,4:2,5:5,7:7
    }
    assert prime_power_base(6) is None and prime_power_base(8) == 2
    three_site_checks = finite_three_site_regression()

    # Rigorous algebraic upper bounds on reciprocal square roots.
    # e.g. 71/100 > 1/sqrt(2) because its square is >1/2.
    assert F(71,100)**2 > F(1,2)
    assert F(29,50)**2 > F(1,3)
    assert F(9,20)**2 > F(1,5)
    assert F(19,50)**2 > F(1,7)

    # A three-site correlation can exceed the two-site 1/2 bound:
    # take the positive real profile (1, 3/2, 1).
    C3 = F(3)
    mass3 = F(1) + F(9,4) + F(1)
    assert C3/mass3 == F(12,17) > F(1,2)
    assert 2 * C3*C3 <= mass3*mass3  # exact cos(pi/4)^2=1/2
    # A fourth populated site already breaks the three-site bound:
    # (1,1,1,1) has C=3, mass=4, and 2*C^2>mass^2.
    assert 2 * 3*3 > 4*4

    pi_lo, pi_hi = pi_bounds()
    assert F(3) < pi_lo <= pi_hi < F(22,7)
    gamma_lo, gamma_hi = gamma_bounds()
    assert F(1,2) < gamma_lo <= gamma_hi < F(3,5)
    l2_lo, l2_hi = log_bounds(2)
    l3_lo, l3_hi = log_bounds(3)
    l5_lo, l5_hi = log_bounds(5)
    l7_lo, l7_hi = log_bounds(7)

    # True minimum of c(q,even)+Gamma(lower) on the stated windows,
    # before subtracting the original signed finite-prime response.
    # For odd parity c(q,odd)+Gamma_3/2 >= c(q,even)+Gamma_1/2,
    # because their difference is pi-4atan(z) >= 0 for z<=1.
    def lower_log_ratio(num, den):
        return log_bounds(F(num,den)/pi_hi)[0]

    # L<=log3: the only possible n>=2 with positive von Mangoldt weight
    # and lag < L is n=2. r=log2>=L/2, so |C_f(r)|<=||f||²/2.
    m16 = lower_log_ratio(7*16,8)-gamma_hi-F(2,7)-F(71,100)*l2_hi
    assert m16 > F(1,10), "q>=16, L<=log3 proof failed"

    # L<=log4: only n=2,3; both have r>=L/2 and obey 2-site bound.
    m64 = lower_log_ratio(17*64,24)-gamma_hi-F(6,17) \
          -F(71,100)*l2_hi-F(29,50)*l3_hi
    assert m64 > F(1,2), "q>=64, L<=log4 proof failed"

    # L<=log8: full active inventory n=2,3,4,5,7 (6 has Lambda=0,
    # n=8 is exactly at the strict cutoff and has zero overlap).
    # n=2 can have a three-site chain: |C_f(log2)|<=||f||²/sqrt2.
    # Combined with the exact n=2 coefficient log2/sqrt2, this
    # contributes at most log2; n>=3 are two-site shifts.
    m1024 = lower_log_ratio(19*1024,40)-gamma_hi-F(10,19) \
            -F(3,2)*l2_hi-F(29,50)*l3_hi \
            -F(9,20)*l5_hi-F(19,50)*l7_hi
    assert m1024 > F(3,4), "q>=1024, L<=log8 proof failed"

    # Lower millions are diagnostics only; signs above use exact fractions.
    floor_million = lambda x: 1000000*x.numerator//x.denominator
    print("PASS WAPC_PRIMITIVE_FIRST_ACTIVE_PRIME_V1")
    print("all_primitive_q_ge_16_L_le_log3_margin_ge_1/10=PASS")
    print("all_primitive_q_ge_64_L_le_log4_margin_ge_1/2=PASS")
    print("all_primitive_q_ge_1024_L_le_log8_margin_ge_3/4=PASS")
    print("strict_von_mangoldt_inventory_log8=2,3,4,5,7; Lambda(6)=0; n8_endpoint=ZERO")
    print("finite_complex_three_site_regressions="+str(three_site_checks))
    print("q16_lower_millionths_floor="+str(floor_million(m16)))
    print("q64_lower_millionths_floor="+str(floor_million(m64)))
    print("q1024_lower_millionths_floor="+str(floor_million(m1024)))
    print("exact_rationals=PASS; original_Weil_source=WRITTEN; lean=NOT_RUN; RH_GRH=UNPROVED")


if __name__ == "__main__":
    check()
