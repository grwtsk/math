#!/usr/bin/env python3
"""Exact rational audit of the Sobolev high-zero tail constants.

Mathematical inputs: all zeta zeros with |gamma|<2**41 lie on the critical
line (Platt--Trudgian 2021); zero counts N(T)<T*log(T) for T>=64,
and N(T)<T*T for T>=64 (published effective zero counting). The
script only audits dyadic series sums and elementary numerical comparisons.
No zeta zeros, transcendental bounds, operator theory or RH are certified
by executing this script.
"""
from fractions import Fraction as Q
import sys

N = 41
H = 2 ** N
assert H == 2199023255552
assert H < 3 * 10 ** 12

# N(T)<T log(T), including both ordinate signs; log 2<7/10.
# C1=8 (N+2) log(2) 2^-N is bounded by the exact rational below.
C1_up = Q(8 * (N + 2), 2 ** N) * Q(7, 10)

def Ck(k):
    assert k >= 2
    p = 2 * (k - 1)
    return Q(8, 2 ** (p * N)) / (1 - Q(1, 2 ** p))

# Source bound: eps=2*A*exp(A)*Ck. Strict elementary upper bounds:
# exp(1)<3; exp(10)<2^15, using log(2)>2/3.
assert 2 * 1 * 3 * C1_up < Q(1, 2 ** 30)
assert 2 * 1 * 3 * Ck(2) <= Q(1, 2 ** 76) # strict eps since exp(1)<3
assert 2 * 1 * 3 * Ck(3) < Q(1, 2 ** 158)
assert 2 * 10 * 2**15 * Ck(3) < Q(1, 2 ** 141)
assert Ck(3) == Q(128, 15 * 2 ** 164)
assert Ck(2) == Q(32, 3 * 2 ** 82)

# Trace mass bound implies this rank-independent negative-level count:
# if eps<2^-158 then NO eigenvalue <= -2^-100 for A=1, k=3.
assert Q(1, 2 ** 158) < Q(1, 2 ** 100)

print('SOB_TRACETAIL_RATIONAL_AUDIT: PASS')
print('Python:', sys.version.split()[0])
print('H:', H)
print('C1_up:', C1_up)
for k in (2, 3, 4):
    print('Ck', k, ':', Ck(k))
print('A=1 k=1 negative trace < 2^-30')
print('A=1 k=3 negative trace < 2^-158')
print('A=10 k=3 negative trace < 2^-141')
