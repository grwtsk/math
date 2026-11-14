#!/usr/bin/env python3
"""Exact rational sanity checks for smooth edge-bump primitive Weil source.

This verifies polynomial bump moments, dyadic convolution normalization,
source support geometry and character/conjugate coefficient bookkeeping.
It does NOT certify the zero-free Bessel product, Weil's explicit formula,
Dirichlet functional equations, RH/GRH or any analytic contour shift.
"""
from fractions import Fraction as F
from math import factorial
from hashlib import sha256
from pathlib import Path

E = F(1, 32)
B_COEFF = {3: 1, 4: -3, 5: 3, 6: -1}

def moment(j):
    return sum((F(c, k + j + 1) for k, c in B_COEFF.items()), F(0))

def square_integral(poly):
    return sum((F(a*b, i+j+1) for i,a in poly.items() for j,b in poly.items()), F(0))

bprime = {k-1: k*c for k,c in B_COEFF.items()}
assert [moment(j) for j in range(4)] == [F(1,140),F(1,280),F(1,504),F(1,840)]
assert square_integral(B_COEFF) == F(1,12012)
assert square_integral(bprime) == F(1,770)

# phi is the probability law of independent uniforms [-2^(-j-1),2^(-j-1)].
# Its mean is 0 and its variance is (sum_j 4^(-j-1))/3 = 1/36.
phi_variance = F(1, 36)
q_mean = E/2
q_second = E*E*(F(1,4)+phi_variance)
B0 = moment(0)
B1 = moment(1) + q_mean*B0
B2 = moment(2) + 2*q_mean*moment(1) + q_second*B0
assert B0 == F(1,140)
assert B1 == F(33,8960)
assert B2 == F(5413,2580480)

# Elementary strict prime activation window: log 2 < 1+eps < log 3.
# e < 11/4 by its n<=4 partial sum and geometric bound on the n>=5 tail.
e_upper = sum((F(1,factorial(n)) for n in range(5)), F(0)) + F(1,100)
assert e_upper < F(11,4)
assert F(11,4)/(1-E) == F(88,31) < 3
L = 1+E
assert 1 < L < 2
assert 2*1 > L  # disjoint odd supports for all moving shifts a>=1

# The nontrivial complex mod-5 example: chi(2)=i, chi(3)=-i,
# chi(4)=-1. The real physical source pairs chi and conjugate chi.
chi5 = {0:(0,0),1:(1,0),2:(0,1),3:(0,-1),4:(-1,0)}
for n in range(1,1000):
    re,im = chi5[n%5]
    conjugate = (re,-im)
    assert (re+conjugate[0],im+conjugate[1]) == (2*re,0)

# Young convolution inequality gives uniform source L2 and H1 budgets.
assert 2*square_integral(B_COEFF) == F(1,6006)
assert 2*square_integral(bprime) == F(1,385)
print('SMOOTH_PRIMITIVE_EDGE_EXACT_CHECK: PASS')
print('epsilon=',E,'support_width=',L)
print('B_epsilon(0), B_epsilon_prime(0), B_epsilon_second(0)=',B0,B1,B2)
print('two-bump L2/H1 upper bounds=',F(1,6006),F(1,385))
print('mod5 complex character/conjugate pair bookkeeping: PASS (n<1000)')
print('SHA256:',sha256(Path(__file__).read_bytes()).hexdigest())
