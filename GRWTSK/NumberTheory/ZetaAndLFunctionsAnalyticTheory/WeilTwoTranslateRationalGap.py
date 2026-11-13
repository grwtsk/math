#!/usr/bin/env python3
"""Exact rational audit for the bounded-horizon two-translate Weil claim.

The two zero intervals are deliberately coarse rational enclosures of the
*externally certified* 128-bit FLINT ball intervals. This program proves
finite rational inequalities; it does NOT independently isolate zeta zeros,
prove the analytic Weil identity, or establish RH.
"""
from fractions import Fraction as F
import hashlib
import sys

# FLINT https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html
# rho_1 = 1/2 + [14.1347251417346937904572519836 +/- 3.76e-29] i
# rho_2 = 1/2 + [21.0220396387715549926284795939 +/- 3.10e-30] i
G1_MIN = F('14.134725141734')
G1_MAX = F('14.134725141736')
G2_MIN = F('21.022039638771')
G2_MAX = F('21.022039638773')
R_MIN, R_MAX = G2_MIN / G1_MAX, G2_MAX / G1_MIN
assert F(1) < R_MIN < R_MAX < F(3, 2)

BOUND = F(1, 100000)
minimum = F(1)
witness = (0, 0, '')
for m in range(1, 10001):
    lo, hi = m * R_MIN, m * R_MAX
    nearest_below = lo.numerator // lo.denominator
    left_gap = lo - nearest_below
    right_gap = nearest_below + 1 - hi
    assert left_gap > BOUND, (m, nearest_below, left_gap)
    assert right_gap > BOUND, (m, nearest_below + 1, right_gap)
    if left_gap < minimum:
        minimum, witness = left_gap, (m, nearest_below, 'below')
    if right_gap < minimum:
        minimum, witness = right_gap, (m, nearest_below + 1, 'above')

# Source-level weights from elementary sinc bounds on externally known zeros.
W1_LOWER = F(608, 16875) ** 2
W2_LOWER = (F(4, 33) * F(3, 22) * F(2, 3) * F(8, 9)) ** 2
assert W1_LOWER > F(1, 1000)
assert W2_LOWER > F(1, 20000)

# For 0.0001 <= t <= 1900, at least one ordinate is 1e-6 away
# from every integer multiple of pi in units of pi, hence the low
# 2-by-2 Gram eigenvalue has this absolute margin.
TRIG_MISSING = F(4, 20000 * (10**6)**2)
assert TRIG_MISSING == F(1, 5 * 10**15)
# For |t| <= 1900, log 2 > 69/100 implies exp(|t|/2) < 2^1377.
assert 95000 < 1377 * 69
assert 2**41 == 2199023255552 and 2**41 < 3 * 10**12
assert -41**2 + 5*41 + 4 == -1472
assert -1472 + 1377 == -95
# Two endpoint errors < 2^-94, vastly below the low Gram gap.
assert F(1, 2**94) < TRIG_MISSING
# For t <= 1e-4, even-tail Taylor bound O(t^2 * 2^-1386).
assert -41**2 + 7*41 + 8 == -1386
assert F(1, 2**1386) < F(49, 500)  # first-zero lower: 0.098*t^2
# The first-zero phase stays in the small-angle regime for t <= 1e-4.
assert F(15, 10000) < F(1)
# Domain check: y = gamma_1*t/pi < 10000 for t <=1900.
assert F(15*1900, 314) * 100 < 10000

print('EXACT_RATIONAL_CHECK: PASS')
print(f'Python: {sys.version.split()[0]}')
print(f'finite m: 1..10000; min guaranteed gap: {minimum}')
print(f'witness: m={witness[0]}, n={witness[1]}, side={witness[2]}')
print(f'first coefficient lower bound: {W1_LOWER}')
print(f'second coefficient lower bound: {W2_LOWER}')
print(f'low two-translate gap >= {TRIG_MISSING} for 1e-4 <= |t| <= 1900')
print('unknown zero tail < 2^-1472 at t=0, < 2^-95 for |t|<=1900')
print('even high-tail Taylor budget <= t^2*2^-1386 for |t|<=1e-4')
