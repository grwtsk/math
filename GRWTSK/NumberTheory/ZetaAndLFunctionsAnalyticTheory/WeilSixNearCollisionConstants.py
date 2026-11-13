#!/usr/bin/env python3
"""Exact rational checks for the six near-coincident Weil translates.

Analytic/external premises NOT checked here:
- the full, pole-inclusive Weil explicit formula (WFDG source);
- critical-line zero verification below 3e12 (Platt--Trudgian);
- first three zeta-zero enclosures (FLINT) and nonzero dyadic weights;
- the entire infinite high-zero dyadic tail (WDT-2);
- Hermite--Genocchi representation of divided differences (de Boor).

The script uses exact fractions, not floating point, in its assertions.
"""
from fractions import Fraction as Q
from math import factorial
from hashlib import sha256
from pathlib import Path
import sys

# Lower bounds 14<g1<15, 21<g2<22, 25<g3<26.
# The 6x6 coalescent Vandermonde has columns z^j/j!, j=0,...,5,
# and rows z=+/-i*g1,+/-i*g2,+/-i*g3.
DET_LOWER = Q(14*21*25 * (21**2-15**2)**2
              * (25**2-15**2)**2 * (25**2-22**2)**2, 4320)
FROB2 = 6 * sum((Q(26**(2*j), factorial(j)**2) for j in range(6)), Q(0))
FROB2_UPPER = 61_100_000_000
assert DET_LOWER == 252_504_604_800_000
assert FROB2 < FROB2_UPPER
# sigma_min^2 >= 5^5*det^2/(Frob^2)^5.
assert 5**5 * DET_LOWER**2 > Q(FROB2_UPPER**5, 10**22)

# Each of the six Hermite--Genocchi rows changes by at most
# d*sqrt(sum_{j=1..5} 26^(2*j+2)/(j!)^2) in Euclidean norm.
D = Q(1,10**19)
PERTURB_SQ_FACTOR = 6 * sum((Q(26**(2*j+2),factorial(j)**2)
                            for j in range(1,6)), Q(0))
assert PERTURB_SQ_FACTOR < 10**14
assert PERTURB_SQ_FACTOR * D**2 < Q(1, 10**24)
SIGMA_AFTER = Q(1,10**11) - Q(1,10**12)  # > 9e-12
assert SIGMA_AFTER == Q(9,10**12)

# The third dyadic-bump critical zero pair has weight >(3/390625)^2,
# while first and second weights are >1/1000 and >1/20000.
W3_LOWER = Q(3,390_625)**2
assert W3_LOWER > Q(1,10**11)
LOW_GRAM = Q(1,10**11) * SIGMA_AFTER**2
assert LOW_GRAM == Q(81,10**35)

# WDT dyadic block total m_rho*|Phi(z_rho)|^2 < 2^(-n^2+5n+3).
# For j<=5, sum |z|^(2*j)/(j!)^2 < 2^(10*n+18), and e^D<2.
# Hence block total < 2^(-n^2+15*n+22).
N=41
assert 2**N == 2_199_023_255_552 < 3*10**12
BLOCK_EXP = -N**2 + 15*N + 22
RATIO_EXP = 14 - 2*N
assert BLOCK_EXP == -1044 and RATIO_EXP == -68
HIGH_BOUND = Q(1,2**1044) / (1-Q(1,2**68))
assert HIGH_BOUND < Q(1,2**1043)
assert LOW_GRAM - Q(1,2**1043) > Q(1,2*10**33)

print('WEIL_6_NEAR_COLLISION_RATIONAL: PASS')
print('Python',sys.version.split()[0])
print('determinant lower:', DET_LOWER)
print('Frobenius-squared upper:', FROB2_UPPER)
print('sigma_min(V0)>1e-11; perturbation<1e-12 at diameter<=1e-19')
print('minimum certified low weight>1e-11, low Gram>', LOW_GRAM)
print('all unverified high zeros, signed: <2^-1043')
print('original Weil Q in Newton coordinates > 1/(2*10^33)')
print('SHA256:', sha256(Path(__file__).read_bytes()).hexdigest())
