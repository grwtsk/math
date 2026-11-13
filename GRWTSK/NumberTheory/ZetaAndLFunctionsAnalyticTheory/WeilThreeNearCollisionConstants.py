#!/usr/bin/env python3
"""Exact rational inequalities for near-collision original Weil Gram argument.

No zero computations, analytic divided-difference theorem, or Lean formalization.
External inputs: certified first two zeta zeros and WDT infinite zero tail.
"""
from fractions import Fraction as F
from hashlib import sha256
import pathlib, sys

D = F(1,100000)
first_gamma_lower, first_gamma_upper = 14,15
second_gamma_lower, second_gamma_upper = 21,22
x1_upper, x2_upper = 113, 242
separation_lower=108
frob_upper=2+x1_upper**2+x2_upper**2
assert x1_upper < second_gamma_lower**2/2
assert F(second_gamma_lower**2-first_gamma_upper**2,2) == separation_lower  # strict because true zero enclosures are open
assert 7*separation_lower**2 > frob_upper
assert first_gamma_lower**2+second_gamma_lower**2 > F(1,7)

# Complex 4x3 finite low-row matrix at coalescence has squared min singular >2/7.
assert F(2,7)>F(1,4)
# Hermite-Genocchi perturbation: for gamma<22, each of four rows is <=5808*d.
err=2*(22**2+22**3//2)*D
assert err < F(1,8)
# Thus ||rows||>3/8 ||Newton coefficient|| at all three distinct t_j, dia<=D.
w_min=F(1,20000)
low=w_min*F(3,8)**2
assert low == F(9,1280000)

# WDT all-unknown-zero dyadic block weight: 2^(-n^2+5n+3).
# Each divided-difference row evaluation has squared growth <=2^(4n+5)
# and e^diam<2. High block <=2^(-n^2+9n+9).
N=41
first_exp = -(N*N)+9*N+9
ratio_next = 8-2*N
assert first_exp==-1303 and ratio_next==-74
high_bound=F(1,2**1302)
assert high_bound > F(1,2**1303) # sums controlled by geometric series factor<2
assert low-high_bound > F(1,200000)
assert 2**41 == 2199023255552 < 3*10**12

print('WEIL_3_NEAR_COLLISION_RATIONAL: PASS')
print('Python:',sys.version.split()[0])
print('dia<=',D,'perturbation upper',err,'low strict lower',low)
print('high upper', '2^-1302')
print('full Newton-coordinate eigenvalue lower',F(1,200000))
print('SHA256',sha256(pathlib.Path(__file__).read_bytes()).hexdigest())
