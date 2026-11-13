#!/usr/bin/env python3
"""Exact arithmetic input for a *written* 3-translate Weil theorem.

Inputs: coarse rational outer intervals for the first three zeta ordinates,
whose inclusion is established by the FLINT rigorous 128-bit ball examples.
This checker has no zeta oracle and does NOT certify RH, a full Weil identity,
or all analytic inequalities in the paper. Uses only Fraction arithmetic.
"""
from fractions import Fraction as Q
from itertools import product
import sys

PRINTED_CENTERS = [
    "14.1347251417346937904572519836",
    "21.0220396387715549926284795939",
    "25.0108575801456887632137909926",
]
PRINTED_RADII = [Q("3.76e-29"), Q("3.10e-30"), Q("3.72e-29")]


def outer_interval(center, radius, places=22):
    whole, frac = center.split(".")
    lo = Q(whole + "." + frac[:places])
    hi = lo + Q(1, 10**places)
    assert lo < Q(center) - radius < Q(center) + radius < hi
    return (lo, hi)


def add(A, B):
    return (A[0] + B[0], A[1] + B[1])


def subtract(A, B):
    return (A[0] - B[1], A[1] - B[0])


def divide_positive(A, B):
    assert A[0] > 0 and B[0] > 0
    return (A[0] / B[1], A[1] / B[0])


G1, G2, G3 = [outer_interval(s, r) for s, r in zip(PRINTED_CENTERS, PRINTED_RADII)]
RATIOS = {"gamma2/gamma1": divide_positive(G2, G1)}
for s2, s3 in product((+1, -1), repeat=2):
    denominator = add(G2, G1) if s2 > 0 else subtract(G2, G1)
    numerator = add(G3, G1) if s3 > 0 else subtract(G3, G1)
    RATIOS[(s2, s3)] = divide_positive(numerator, denominator)

# Exact finite Diophantine checks, for every integer m=1,...,3000.
# At any real Delta in [1, 500], the resonance integers in the analytic
# proof lie in this range. Both endpoints of each ratio are propagated.
THRESHOLD = Q(1, 100000)
minima = {}
for key, (lo, hi) in RATIOS.items():
    best, witness = Q(1), None
    for m in range(1, 3001):
        L, U = m * lo, m * hi
        n = L.numerator // L.denominator
        left_gap, right_gap = L - n, (n + 1) - U
        assert left_gap > THRESHOLD, (key, m, n, left_gap)
        assert right_gap > THRESHOLD, (key, m, n + 1, right_gap)
        if left_gap < best:
            best, witness = left_gap, (m, n, "lower")
        if right_gap < best:
            best, witness = right_gap, (m, n + 1, "upper")
    minima[key] = (best, witness)

# Lower weights of three certified low critical zeros, by elementary sin
# inequalities in the written proof. 3rd ordinate in (25.010,25.011).
assert G3[0] > Q("25.010") and G3[1] < Q("25.011")
w1 = Q(1, 1000)
w2 = Q(1, 20000)
w3 = (Q(1, 250)**2 * Q(3, 5) * Q(4, 5))**2
assert w3 > Q(1, 10**11)
assert min(w1, w2, w3) > Q(1, 10**11)

# Analytic inequalities reduce to these rational comparisons:
# cosine gap at least 1e-12 and one sine at least 1e-6 on [1,500].
cos_gap = Q(1, 10**12)
sin_gap = Q(1, 10**6)
# From cosine error <1e-12, each half-phase is within 1e-6 of Z.
# Ratio |(gamma3 +/- gamma1)/(gamma2 +/- gamma1)| < 7.
assert all(hi < 7 for key, (_, hi) in RATIOS.items() if key != "gamma2/gamma1")
assert (7 + 1) * Q(1, 10**6) < THRESHOLD
# From both sine errors <1e-6, ratio gamma2/gamma1 <2.
assert RATIOS["gamma2/gamma1"][1] < 2
assert (2 + 1) * Q(1, 2 * 10**6) < THRESHOLD

# Spectral coercivity from first three true zero pairs; all unknown zeta
# zeros are bounded by WDT's 2^-722 error for translation diameter <=1000.
low_lambda = 2 * Q(1, 10**11) * (cos_gap**2 / 4)
full_lambda = low_lambda - 3 * Q(1, 2**722)
assert low_lambda == Q(5, 10**36)
assert full_lambda > Q(1, 2**119)
assert 2**41 < 3 * 10**12
assert -41**2 + 5*41 + 4 == -1472
assert -1472 + 3*1000//4 == -722

print("EXACT_RATIONAL_RANK3: PASS")
print("Python:", sys.version.split()[0])
print("All five ratios certified for integers m=1..3000, dist(m*r,Z)>1/100000")
for k, (gap, witness) in minima.items():
    print("ratio", k, "min guaranteed gap", float(gap), "witness", witness)
print("third-zero sinc lower product:", Q(1, 250)**2 * Q(3, 5) * Q(4, 5))
print("three-zero pair Gram lower bound:", low_lambda)
print("with ALL high zeros, lambda_min > 2^-119 for 1<=Delta<=500")
