#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact rational constants for the original Weil modulus/parity transfer.

Only rational scalar sign claims are executed. The source-return arguments
and the prior zeta L <= 3/4 theorem are mathematical dependencies, not
machine checked or re-executed here.
"""
from fractions import Fraction as F

if not __debug__:
    raise SystemExit('Unoptimized Python required: assertions are mandatory')


def log_interval(x, n):
    """Positive arctanh log series; complete positive geometric tail."""
    x = F(x)
    assert x > 1 and n >= 1
    y = (x - 1) / (x + 1)
    s = 2 * sum((y ** (2*j+1) / F(2*j+1) for j in range(n)), F(0))
    tail = 2 * y ** (2*n+1) / (F(2*n+1) * (1-y*y))
    return s, s + tail


L = F(3, 4)
t = L / 2
L2 = log_interval(2, 16)
L3 = log_interval(3, 26)
L4 = log_interval(4, 25)
L5 = log_interval(5, 30)
assert L2[1] < L < L3[0], 'first prime n=2 really active on source endpoint'
assert L4[0] > F(4, 3), 'conductor-four logarithm lower bound'
assert L5[0] > F(8, 5), 'conductor-five logarithm lower bound'

# Standard positive Taylor ratios. For t=3/8, the sinh tail ratios
# are <=t^2/6; for cosh after the constant term <=t^2/12.
sinh_upper = t / (1-t*t/F(6))
cosh_upper = 1 + t*t / (2*(1-t*t/F(12)))
assert sinh_upper < F(2, 5)
assert cosh_upper < F(13, 12)

# The actual two-orientation zeta pole operator has EXACT eigenvalues
# L +/- 2sinh(L/2), so upper norm <31/20 at this support endpoint.
R_norm_upper = L + 2*F(2, 5)
assert R_norm_upper == F(31, 20)

# Gamma parity correction is kernel T(x,y)=sech((x-y)/2)/2.
# For nonnegative g, the pointwise residual (R-T) kernel increases in
# t=|x-y|/2 and is <=2*cosh(3/8)-1/(2*cosh(3/8)).
RT_kernel_upper = 2*F(13, 12) - 1/(2*F(13,12))
assert RT_kernel_upper == F(133,78)
RT_norm_upper = L*RT_kernel_upper
assert RT_norm_upper == F(133,104)

# Prior published full-test zeta certificate supplies 1/6000 on L<=3/4.
zeta_floor = F(1, 6000)
even_floor = zeta_floor + F(8, 5) - R_norm_upper
odd_floor = zeta_floor + F(4, 3) - RT_norm_upper
assert even_floor > F(1,20)
assert odd_floor > F(1,20)
assert F(4,3) - RT_norm_upper == F(17,312)

print('PASS: exact q>=5 even source-transfer lower margin >1/20')
print('PASS: exact q>=4 odd parity-corrected source-transfer margin >1/20')
print('PASS: exact n=2 only source inventory at L=3/4')
print('R operator upper bound (rational):', R_norm_upper)
print('R-minus-parity positive-function upper bound:', RT_norm_upper)
print('coercivity lower bounds, even:', even_floor, 'odd:', odd_floor)
print('Analytical source transfer and published zeta premise: WRITTEN, not Lean-kernel checked')
