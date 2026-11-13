#!/usr/bin/env python3
"""Exact rational audit for four-translate near-collision zeta Weil source.

Inputs: externally certified first two zeta zero pairs (14<gamma1<15,
21<gamma2<22), full zeta zero verification to 3e12 and the WDT-2
unconditional dyadic high-zero weight bound. These are NOT proved here.
Only exact rational arithmetic and finite constant comparisons are checked.
"""
from fractions import Fraction as Q
from hashlib import sha256
from pathlib import Path
import sys

# Newton coalescence V0 at z=+/-i*gamma1,+/-i*gamma2, columns z^j/j!, j=0..3.
# Vandermonde determinant abs= gamma1*gamma2*(gamma2^2-gamma1^2)^2/3.
DET_LOWER = Q(14*21*(21**2-15**2)**2,3)
FROB2_UPPER = 4*(Q(1)+Q(22**2)+Q(22**4,4)+Q(22**6,36))
assert DET_LOWER == 4_572_288
assert FROB2_UPPER < 13_000_000
# Product top-three squared singular values <= (||V||_F^2/3)^3.
assert 27*DET_LOWER**2 / Q(13_000_000)**3 > Q(1,2000**2)

D = Q(1,10**9)
# Hermite--Genocchi: |E_j(z)-z^j/j!|<=D*|z|^(j+1)/j!.
ROW_ERROR2_COEFF = Q(22**4)+Q(22**6,4)+Q(22**8,36)
# Four complex rows, operator norm bounded by Frobenius norm 2D sqrt(coefficient).
assert 4*D**2*ROW_ERROR2_COEFF < Q(1,10_000**2)
assert Q(1,2000)-Q(1,10_000)==Q(1,2500)

MIN_LOW_WEIGHT=Q(1,20_000) # from certified first two actual zeta pairs
LOW_GRAM=MIN_LOW_WEIGHT*Q(1,2500)**2
assert LOW_GRAM==Q(1,125_000_000_000)

N=41
assert 2**N==2_199_023_255_552 < 3*10**12
# At |gamma| in [2^n,2^(n+1)), WDT gives summed |Phi(z)|^2
# < 2^(-n^2+5n+3). Newton degree <=3 has squared evaluation
# factor < exp(D)*sum_{j=0}^3 |z|^(2j)/(j!)^2 <2^(6n+12).
# Hence dyadic block <2^(-n^2+11n+15), successive ratios <=2^(10-2n).
FIRST_HIGH_EXP = -N**2+11*N+15
RATIO_EXP = 10-2*N
assert FIRST_HIGH_EXP == -1215
assert RATIO_EXP == -72
# Geometric infinite sum with first term 2^-1215 and ratio <=2^-72.
assert Q(1,2**1215)/(1-Q(1,2**72))<Q(1,2**1214)
assert LOW_GRAM-Q(1,2**1214)>Q(1,200_000_000_000)

print('WEIL_4_NEAR_COLLISION_RATIONAL: PASS')
print('Python:',sys.version.split()[0])
print('Newton diameter D:',D)
print('determinant lower:',DET_LOWER)
print('Frobenius^2 upper:',FROB2_UPPER)
print('sigma_min(V0)>1/2000; perturbation<1/10000; sigma_min(Vt)>1/2500')
print('low actual zero Gram >',LOW_GRAM)
print('all high zero contribution <2^-1214')
print('full Newton-coordinate Gram >1/200000000000')
print('SHA256:',sha256(Path(__file__).read_bytes()).hexdigest())
