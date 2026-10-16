#!/usr/bin/env python3
"""Rational diagnostics for a written source-exact Jacobi--Bessel transfer.

Human mathematical direction: R.A. Jacob Martone.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.

The written theorem gives a summable difference between the actual d_n and
finite-source Bessel coefficients using sqrt(n)<=x<=n^2. It does NOT bound
those Bessel coefficients uniformly in the target norm. No Lean admission.
This executable encloses kernels and checks finite exact algebra only; it
neither evaluates the infinite arithmetic sequence nor certifies its norm.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from fractions import Fraction as Q
import json
from typing import Sequence


def rational(value: int | Q, name: str = 'value') -> Q:
    if type(value) is not int and not isinstance(value, Q):
        raise TypeError(f'{name} must be an exact int or Fraction')
    return Q(value)


def precision(bits: int) -> int:
    if type(bits) is not int or not 16 <= bits <= 512:
        raise ValueError('bits must be an integer in [16,512]')
    return bits


def degree(n: int, minimum: int = 0) -> int:
    if type(n) is not int or n < minimum:
        raise ValueError(f'degree must be an integer >= {minimum}')
    return n


@dataclass(frozen=True)
class Interval:
    lo: Q
    hi: Q

    def __post_init__(self) -> None:
        object.__setattr__(self, 'lo', rational(self.lo))
        object.__setattr__(self, 'hi', rational(self.hi))
        if self.lo > self.hi:
            raise ValueError('reversed interval')

    @staticmethod
    def point(x: int | Q) -> Interval:
        return Interval(rational(x), rational(x))

    @staticmethod
    def coerce(x: Interval | int | Q) -> Interval:
        return x if isinstance(x, Interval) else Interval.point(x)

    def __add__(self, other: Interval | int | Q) -> Interval:
        b = self.coerce(other)
        return Interval(self.lo + b.lo, self.hi + b.hi)

    __radd__ = __add__

    def __neg__(self) -> Interval:
        return Interval(-self.hi, -self.lo)

    def __sub__(self, other: Interval | int | Q) -> Interval:
        return self + -self.coerce(other)

    def __rsub__(self, other: Interval | int | Q) -> Interval:
        return self.coerce(other) + -self

    def __mul__(self, other: Interval | int | Q) -> Interval:
        b = self.coerce(other)
        products = [a*c for a in (self.lo,self.hi) for c in (b.lo,b.hi)]
        return Interval(min(products),max(products))

    __rmul__ = __mul__

    def inverse(self) -> Interval:
        if self.lo <= 0 <= self.hi:
            raise ZeroDivisionError('interval not separated from zero')
        return Interval(1/self.hi,1/self.lo)

    def __truediv__(self, other: Interval | int | Q) -> Interval:
        return self * self.coerce(other).inverse()

    def __rtruediv__(self, other: Interval | int | Q) -> Interval:
        return self.coerce(other) * self.inverse()

    def __pow__(self, n: int) -> Interval:
        if type(n) is not int:
            raise TypeError('integer power required')
        if n < 0:
            return self.inverse() ** (-n)
        if n == 0:
            return self.point(1)
        ends = self.lo**n,self.hi**n
        if n % 2:
            return Interval(*ends)
        return Interval(Q(0) if self.lo <= 0 <= self.hi else min(ends),max(ends))

    def outward(self, bits: int) -> Interval:
        if type(bits) is not int or bits < 1:
            raise ValueError('positive integer rounding precision required')
        scale = 1 << bits
        lower = self.lo.numerator*scale//self.lo.denominator
        upper = -((-self.hi.numerator*scale)//self.hi.denominator)
        return Interval(Q(lower,scale),Q(upper,scale))

    def contains_zero(self) -> bool:
        return self.lo <= 0 <= self.hi

    def max_abs(self) -> Q:
        return max(abs(self.lo),abs(self.hi))

    def json(self) -> dict[str,str]:
        return {'lower':str(self.lo),'upper':str(self.hi)}


def positive_root(x: Q, order: int, bits: int) -> Interval:
    """Bracket a positive rational root by exact integer power inequalities."""
    x = rational(x)
    if x <= 0 or type(order) is not int or order < 2:
        raise ValueError('positive value and integer root order >=2 required')
    if type(bits) is not int or bits < 1:
        raise ValueError('positive integer root precision required')
    scale = 1 << bits
    target = x.numerator*scale**order//x.denominator
    low, high = 0,1 << ((target.bit_length()+order-1)//order)
    while high-low > 1:
        middle = (low+high)//2
        if middle**order <= target:
            low = middle
        else:
            high = middle
    left = Q(low,scale)
    right = left if left**order == x else Q(low+1,scale)
    if not left**order <= x <= right**order:
        raise ArithmeticError('root bracket failed')
    return Interval(left,right)


def root_interval(x: Interval, order: int, bits: int) -> Interval:
    if x.lo <= 0:
        raise ArithmeticError('root input not separated; increase precision')
    return Interval(positive_root(x.lo,order,bits).lo,
                    positive_root(x.hi,order,bits).hi)


def _power_series(x: Q, odd: bool, bits: int) -> Interval:
    """Sine/cosine with an explicit geometric allowance after the last term."""
    term = x if odd else Q(1)
    total = Q(0)
    target = Q(1,1 << bits)
    for k in range(10000):
        total += term
        denominator = (2*k+2)*(2*k+3) if odd else (2*k+1)*(2*k+2)
        nxt = -term*x*x/denominator
        next_den = (2*k+4)*(2*k+5) if odd else (2*k+3)*(2*k+4)
        ratio = x*x/next_den
        if ratio <= Q(1,2) and 2*abs(nxt) <= target:
            radius = 2*abs(nxt)
            return Interval(total-radius,total+radius)
        term = nxt
    raise ArithmeticError('trigonometric series budget exhausted')


def sin_cos(theta: int | Q, bits: int = 80) -> tuple[Interval,Interval]:
    precision(bits)
    x = rational(theta,'theta')
    if not 0 <= x <= Q(3,2):
        raise ValueError('diagnostic angle must be in [0,3/2]')
    return _power_series(x,True,bits),_power_series(x,False,bits)


def bessel_normalized(order: int | Q, z: int | Q, bits: int = 80) -> Interval:
    """F_order(z)=sum (-z^2/4)^k/(k!*(order+1)_k), with a proved tail radius.

    Only order>-1/2 is exposed: this is also the Poisson-bound domain used
    in the written comparison. Exact summation retains all internal signs.
    """
    precision(bits)
    gamma,z = rational(order,'order'),rational(z,'argument')
    if gamma <= -Q(1,2):
        raise ValueError('Poisson-bound order must be greater than -1/2')
    term,total = Q(1),Q(0)
    target = Q(1,1 << bits)
    for k in range(10000):
        total += term
        nxt = -term*z*z/(4*(k+1)*(gamma+k+1))
        ratio_after = z*z/(4*(k+2)*(gamma+k+2))
        if ratio_after <= Q(1,2) and 2*abs(nxt) <= target:
            radius = 2*abs(nxt)
            return Interval(total-radius,total+radius)
        term = nxt
    raise ArithmeticError('Bessel series budget exhausted')


def endpoint_normalization(n: int) -> Q:
    degree(n)
    out = Q(1)
    for k in range(1,n+1):
        out *= Q(6*k+1,6*k)
    return out


def jacobi_coefficients(n: int) -> list[Q]:
    degree(n)
    p = [(-1)**n*endpoint_normalization(n)]
    for j in range(n):
        p.append(p[-1]*(-n+j)*(n+Q(7,6)+j)/((Q(7,6)+j)*(j+1)))
    return p


def derivative(p: Sequence[Q]) -> list[Q]:
    return [k*p[k] for k in range(1,len(p))] or [Q(0)]


def evaluate(p: Sequence[Q], x: Interval) -> Interval:
    out = Interval.point(0)
    for a in reversed(p):
        out = out*x+a
    return out


def kernel_record(n: int, theta: int | Q, bits: int = 64) -> dict:
    """Enclose Jacobi/Bessel values and y-derivatives at y=sin(theta/2)^2.

    This finite diagnostic does NOT integrate the Mobius source. The physical
    coordinate is x=1/sqrt(y), not the degree n. Both error claims refer to
    the written theorem, not to a fit to this grid.
    """
    degree(n,2)
    precision(bits)
    theta = rational(theta,'theta')
    if not 0 < theta <= Q(3,2):
        raise ValueError('require 0<theta<=3/2')
    work = bits+6*n+64
    if work > 512:
        raise ValueError('work precision exceeds 512; reduce diagnostic degree or output bits')
    st,ct = sin_cos(theta,work)
    y = (1-ct)/2
    if y.lo <= 0 or y.hi > Q(1,n):
        raise ValueError('angle not certified in 0<y<=1/n')
    ytheta = st/2
    nu = n+Q(7,12)
    bn = endpoint_normalization(n)
    ratio = theta**8/(256*y**4*(1-y)**3)
    prefactor = bn*root_interval(ratio,12,work)
    f = bessel_normalized(Q(1,6),nu*theta,work)
    fp = -(nu*theta)/(2*Q(7,6))*bessel_normalized(Q(7,6),nu*theta,work)
    geometric_derivative = Q(2,3)/(theta*ytheta)-1/(3*y)+1/(4*(1-y))
    approx = (-1)**n*prefactor*f
    approx_prime = (-1)**n*prefactor*(nu*fp/ytheta+f*geometric_derivative)
    p = jacobi_coefficients(n)
    exact_value = evaluate(p,y)
    exact_prime = evaluate(derivative(p),y)
    difference,difference_prime = exact_value-approx,exact_prime-approx_prime
    value_allowance = 19*bn*y.lo
    derivative_allowance = 100*bn*(1+nu**2*y.lo)
    potential = 1/(18*y)-Q(2,9)/theta**2+1/(16*(1-y))
    checks = {
        'value_error_within_written_bound':difference.max_abs() <= value_allowance,
        'derivative_error_within_written_bound':difference_prime.max_abs() <= derivative_allowance,
        'potential_between_zero_and_one_sixth':potential.lo >= 0 and potential.hi <= Q(1,6),
    }
    if not all(checks.values()):
        raise ArithmeticError('kernel check unresolved or failed; no theorem acceptance')
    vals = {'y':y,'jacobi':exact_value,'bessel_kernel':approx,
            'value_difference':difference,'jacobi_derivative':exact_prime,
            'bessel_derivative':approx_prime,'derivative_difference':difference_prime,
            'bounded_potential':potential,
            'value_allowance':Interval.point(value_allowance),
            'derivative_allowance':Interval.point(derivative_allowance)}
    return {'degree':n,'angle':str(theta),'endpoint_normalization':str(bn),
            'frequency':str(nu),'work_bits':work,'output_bits':bits,
            'intervals':{k:v.outward(bits).json() for k,v in vals.items()},
            'checks':checks}


def finite_source_tail(n: int, cutoff: int | Q) -> Q:
    """Written scalar Bessel-coefficient tail bound beyond physical cutoff X.

    Requires X>=sqrt(n). Coefficients are those of the full source; a scalar
    tail bound is not an upper bound for the unbounded sequence's energy.
    """
    degree(n,2)
    X = rational(cutoff,'physical cutoff')
    if X <= 0 or X*X < n:
        raise ValueError('require positive X with X^2>=n')
    lam,nu = n*(n+Q(7,6)),n+Q(7,12)
    return 4*endpoint_normalization(n)/(3*lam)*((Q(6,7)*lam+100)/X+100*nu**2/(3*X**3))


def exact_certificates() -> dict:
    """Finite rational accounting; analytic inputs remain written-only."""
    checks = {
        'potential':Q(1,36)+Q(1,8) < Q(1,6),
        'green_derivative_constant':3*Q(36,35) < 4,
        'root_constant_5_3':3**5 < 7**3,
        'root_constant_8_3':3**8 < 19**3,
        'derivative_constant':Q(4,3)*7+19 < 100 and 4*7*3 < 100,
        'coefficient_error':Q(160,2)+Q(320,3) < 200,
        'finite_source_tail':Q(6,5)*(Q(8,7)+Q(100,3)+Q(50,9)) < 50,
        'bulk_budget_sqrt':4725 < 69**2,
        'bessel_budget_sqrt':420000 < 649**2,
        'cutoff_budget_sqrt':10500 < 103**2,
        'complete_distance':69+649+103 == 821,
        'first_two_coefficients':Q(1183,2187) < 1,
        'endpoint_derivative_mismatch':Q(13,36)-Q(6,7)*Q(49,144) == Q(5,72),
    }
    if not all(checks.values()):
        raise ArithmeticError('rational budget certificate failed')
    return {'checks':checks,'squared_budgets':{'bulk':4725,'bessel_comparison':420000,
            'physical_tail':10500},'norm_distance_less_than':821,
            'uniform_bessel_energy_proved':False,'uniform_jacobi_energy_proved':False,
            'scope':'finite exact constant checks; general comparison has a written proof only'}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--degree',type=int,default=8)
    parser.add_argument('--angle',type=Q,default=Q(1,2))
    parser.add_argument('--bits',type=int,default=64)
    args = parser.parse_args()
    try:
        record = kernel_record(args.degree,args.angle,args.bits)
        output = {'schema':'jacobi-bessel-endpoint-finite-v1','record':record,
                  'certificates':exact_certificates(),'lean_replay':'NOT_RUN',
                  'source_integrals_evaluated':False,'uniform_energy_bound_proved':False}
    except (ValueError,TypeError,ArithmeticError) as exc:
        parser.exit(2,f'error: {exc}\n')
    print(json.dumps(output,indent=2))


if __name__ == '__main__':
    main()
