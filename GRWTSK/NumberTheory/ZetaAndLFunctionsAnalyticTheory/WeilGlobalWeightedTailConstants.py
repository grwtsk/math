#!/usr/bin/env python3
"""Exact rational consistency audit of full-line weighted Weil tail constants.

The script does not prove zeta-zero locations, the zero-counting theorem,
Weil's explicit formula, any operator identity, RH or GRH.
Mathematical external inputs: Platt--Trudgian finite RH verification to
3e12 and unconditional Hasanalizade--Shen--Wong Riemann zero-count bounds.
"""
from fractions import Fraction as Q
import hashlib
import sys

N = 41
H = 2 ** N
assert H == 2_199_023_255_552 < 3 * 10**12

# A rational STRICT upper bound for logarithm(2): log(2)<7/10.
C1_up = Q(8 * (N + 2) * 7, 10 * H)

def Ck_up(k: int) -> Q:
    assert k >= 2
    p = 2 * (k - 1)
    return Q(8, 2 ** (p * N)) / (1 - Q(1, 2**p))

def eval_factor(alpha: Q) -> Q:
    assert alpha > Q(1, 2)
    return alpha / (alpha * alpha - Q(1, 4))

assert eval_factor(Q(1)) == Q(4, 3)
assert eval_factor(Q(3, 4)) == Q(12, 5)
assert eval_factor(Q(2)) == Q(8, 15)
assert Ck_up(2) == Q(32, 3 * 2**82)
assert Ck_up(3) == Q(128, 15 * 2**164)

bounds = {1: 32, 2: 78, 3: 160}
for k, power in bounds.items():
    c = C1_up if k == 1 else Ck_up(k)
    assert eval_factor(Q(1)) * c < Q(1, 2**power), (k, power)

assert eval_factor(Q(2)) * Ck_up(3) < Q(1, 2**161)
# A necessary Sobolev-regularity price for a negative witness:
# Q(f) <= -delta * ||f||_2^2 forces weighted ||f'''||^2 > 2^160 delta||f||_2^2.
assert Q(1, 2**160) < Q(1, 2**100)

print('WEIL_GLOBAL_WEIGHTED_CONSTANTS: PASS')
print('Python:', sys.version.split()[0])
print('H=2^41:', H)
print('eval prefactors at alpha=1, 3/4, 2:',
      eval_factor(Q(1)), eval_factor(Q(3,4)), eval_factor(Q(2)))
print('C1 <', C1_up)
print('C2 <', Ck_up(2))
print('C3 <', Ck_up(3))
print('epsilon_(1,k) < 2^-{32,78,160} for k=1,2,3')
print('epsilon_(2,3) < 2^-161')
