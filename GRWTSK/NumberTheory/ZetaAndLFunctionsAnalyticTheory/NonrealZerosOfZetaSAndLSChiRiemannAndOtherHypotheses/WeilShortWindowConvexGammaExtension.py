#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Standalone exact-rational constants for the source-exact short-window gamma argument.

It certifies only scalar inequalities consumed by the *written* analytical proof.
It does not run Lean, certify the entire Weil explicit formula, or imply RH/GRH.
All sign decisions are made with fractions; no binary floating point is used.
"""
from fractions import Fraction as F

NLOG = 36


def positive_log_ratio(y, terms=NLOG):
    """Rigorous bounds on log((1+y)/(1-y)) for rational 0<=y<1."""
    assert 0 <= y < 1 and terms >= 1
    partial = sum((2 * y ** (2*j+1) / (2*j+1) for j in range(terms)), F(0))
    next_power = y ** (2*terms+1)
    tail = 2 * next_power / ((2*terms+1)*(1-y*y))
    return partial, partial+tail


def log2_bounds():
    return positive_log_ratio(F(1,3))


def ln_bounds(x):
    """Rescale x to [1,2] and use exact atanh series with a tail bound."""
    assert x > 0
    exponent = 0
    while x >= 2:
        x /= 2
        exponent += 1
    while x < 1:
        x *= 2
        exponent -= 1
    y = (x-1)/(x+1)
    p_lo, p_hi = positive_log_ratio(y)
    l2_lo, l2_hi = log2_bounds()
    if exponent >= 0:
        return p_lo+exponent*l2_lo, p_hi+exponent*l2_hi
    return p_lo+exponent*l2_hi, p_hi+exponent*l2_lo


def atan_bounds(x, n):
    """Alternating Taylor interval, rational 0<x<=1."""
    assert 0 <= x <= 1 and n > 0
    partial = sum(((-1)**k * x**(2*k+1)/F(2*k+1) for k in range(n)), F(0))
    remainder = x**(2*n+1)/F(2*n+1)
    if n % 2 == 0:
        return partial, partial+remainder
    return partial-remainder, partial


def pi_bounds():
    a_lo,a_hi=atan_bounds(F(1,5),20)
    b_lo,b_hi=atan_bounds(F(1,239),6)
    # Exact Machin identity pi=16atan(1/5)-4atan(1/239).
    return 16*a_lo-4*b_hi, 16*a_hi-4*b_lo


def gamma_bounds():
    """Euler's constant interval from H_100 and the classical harmonic remainder."""
    harmonic = sum((F(1,k) for k in range(1,101)),F(0))
    ln100_lo,ln100_hi=ln_bounds(F(100))
    # H_n-ln n-1/(2n) <= gamma <= same +1/(12n^2);
    # 1/80000 > 1/(12*100^2) is a safe, slightly looser upper bound.
    return (harmonic-ln100_hi-F(1,200),
            harmonic-ln100_lo-F(1,200)+F(1,80000))


def main():
    if not __debug__:
        raise RuntimeError('exact certificate requires Python assertions enabled')
    pi_lo,pi_hi=pi_bounds()
    assert F(3) < pi_lo < pi_hi < F(4)
    lnpi_lo,_ = ln_bounds(pi_lo)
    _,lnpi_hi = ln_bounds(pi_hi)
    l2_lo,l2_hi=log2_bounds()
    gamma_lo,gamma_hi=gamma_bounds()
    assert gamma_lo<gamma_hi
    ln31_lo,_=ln_bounds(F(31))
    ln47_lo,_=ln_bounds(F(47))

    # Parity-free lower bound for q>=2 at L<=1/4:
    # log31-log(pi)-gamma-2log2-2/31 > 1/4.
    nonprincipal_lower=ln31_lo-lnpi_hi-gamma_hi-2*l2_hi-F(2,31)
    if not nonprincipal_lower>F(1,4):
        raise AssertionError('nonprincipal bound NOT certified')

    # Original WSWB-v1-1 rational lower bound at L=1/12, independently rechecked:
    old_zeta_lower=ln47_lo-lnpi_hi-gamma_hi-3*l2_hi-F(2,47)-F(1,34560)
    if not old_zeta_lower>F(1,200):
        raise AssertionError('original short-window zeta scalar bound NOT certified')

    # Convex boundary upgrade at L<=1/6; actual pole budget L^3/20<=1/4320:
    new_zeta_lower=ln47_lo-lnpi_hi-gamma_hi-3*l2_hi-F(2,47)-F(1,4320)
    if not new_zeta_lower>F(1,200):
        raise AssertionError('new full-test zeta bound NOT certified')
    # Even without the new transcendental check, the old WSWB result alone
    # implies the weaker rational margin 1/210 over this doubled interval.
    if not F(1,200)+F(1,34560)-F(1,4320)>F(1,210):
        raise AssertionError('rational implication from original bound failed')

    # A primitive nonprincipal Dirichlet character cannot have conductor 2:
    # (Z/2Z)^x has only one element, and its principal character is induced
    # from modulus one. Thus q>1 primitive implies q>=3.
    # On 0<L<=1/3, exp(-L/4)>=11/12 and the parity comparison
    # pi - 4 atan(exp(-L/4)) >=0 reduces both gamma parities to b=1/2.
    ln69_lo,_=ln_bounds(F(69))
    nonprincipal_long_lower=ln69_lo-lnpi_hi-gamma_hi-3*l2_hi-F(2,23)
    if not nonprincipal_long_lower>F(1,3):
        raise AssertionError('all-primitive nonprincipal L<=1/3 bound NOT certified')

    # Fixed-point decimal display is DIAGNOSTIC ONLY, not used for sign decisions.
    def millionths(x):
        return (x.numerator*1000000)//x.denominator
    print('PASS WSWB_CONVEX_GAMMA_RATIONAL_V1')
    print('nonprincipal_all_test_L_le_1/3_bound_gt_1/3=PASS')
    print('nonprincipal_all_q_ge_2_L_le_1/4_bound_gt_1/4=PASS')
    print('zeta_all_test_L_le_1/6_bound_gt_1/200=PASS')
    print('old_zeta_scalar_L_le_1/12_bound_gt_1/200=PASS')
    print('nonprincipal_long_lower_millionths_floor='+str(millionths(nonprincipal_long_lower)))
    print('nonprincipal_short_lower_millionths_floor='+str(millionths(nonprincipal_lower)))
    print('zeta_lower_millionths_floor='+str(millionths(new_zeta_lower)))
    print('arithmetic=EXACT_FRACTIONS; full_Weil_identity=WRITTEN; lean=NOT_RUN; RH_GRH=UNPROVED')


if __name__ == '__main__':
    main()
