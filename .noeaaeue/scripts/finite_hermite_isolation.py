#!/usr/bin/env python3
"""Exact finite conjugate-pair isolation and moment-error certificates.

Direction: grwtsk contributors. Implementation: OpenAI ChatGPT. MIT.
Mathematical source: Nathanson, arXiv:1911.01745v2 and 2003.13008v3.
These are finite algebra certificates, not zeta-zero data or Lean acceptance.
"""
from __future__ import annotations
from collections import Counter
from dataclasses import dataclass
from fractions import Fraction as Q
from pathlib import Path
from typing import Iterable, Sequence
import argparse
import json


def rational(x: object) -> Q:
    if type(x) is int or type(x) is Q:
        return Q(x)
    raise TypeError('only exact int/Fraction values; no bool, float, or strings')


@dataclass(frozen=True)
class Gaussian:
    re: Q = Q(0)
    im: Q = Q(0)

    def __post_init__(self) -> None:
        object.__setattr__(self, 're', rational(self.re))
        object.__setattr__(self, 'im', rational(self.im))

    @staticmethod
    def of(x: object) -> Gaussian:
        return x if type(x) is Gaussian else Gaussian(rational(x))

    def __add__(self, x: object) -> Gaussian:
        z = self.of(x)
        return Gaussian(self.re + z.re, self.im + z.im)

    __radd__ = __add__

    def __neg__(self) -> Gaussian:
        return Gaussian(-self.re, -self.im)

    def __sub__(self, x: object) -> Gaussian:
        return self + -self.of(x)

    def __rsub__(self, x: object) -> Gaussian:
        return self.of(x) + -self

    def __mul__(self, x: object) -> Gaussian:
        z = self.of(x)
        return Gaussian(self.re*z.re - self.im*z.im, self.re*z.im + self.im*z.re)

    __rmul__ = __mul__

    def inv(self) -> Gaussian:
        d = self.re*self.re + self.im*self.im
        if not d:
            raise ZeroDivisionError('coincident interpolation nodes')
        return Gaussian(self.re/d, -self.im/d)

    def __truediv__(self, x: object) -> Gaussian:
        return self * self.of(x).inv()

    def __pow__(self, n: int) -> Gaussian:
        if type(n) is not int or n < 0:
            raise ValueError('nonnegative integer exponent required')
        a, b = Gaussian(1), self
        while n:
            if n & 1:
                a = a*b
            b = b*b
            n //= 2
        return a

    def conj(self) -> Gaussian:
        return Gaussian(self.re, -self.im)

    def json(self) -> list[str]:
        return [str(self.re), str(self.im)]


ZERO = Gaussian()
ONE = Gaussian(1)
I = Gaussian(0, 1)
Poly = tuple[Gaussian, ...]


def trim(p: Sequence[Gaussian]) -> Poly:
    q = list(p)
    while q and q[-1] == ZERO:
        q.pop()
    return tuple(q)


def add(p: Poly, q: Poly) -> Poly:
    return trim(tuple((p[k] if k < len(p) else ZERO) +
                      (q[k] if k < len(q) else ZERO) for k in range(max(len(p), len(q)))))


def mul(p: Poly, q: Poly) -> Poly:
    if not p or not q:
        return ()
    out = [ZERO]*(len(p)+len(q)-1)
    for i, a in enumerate(p):
        for j, b in enumerate(q):
            out[i+j] = out[i+j] + a*b
    return trim(out)


def scale(p: Poly, a: Gaussian) -> Poly:
    return trim(tuple(a*x for x in p))


def ppow(p: Poly, n: int) -> Poly:
    if type(n) is not int or not 0 <= n <= 16:
        raise ValueError('polynomial exponent outside finite profile')
    out = (ONE,)
    for _ in range(n):
        out = mul(out, p)
    return out


def evaluate(p: Poly, z: Gaussian) -> Gaussian:
    out = ZERO
    for a in reversed(p):
        out = out*z + a
    return out


def divisor(points: Iterable[Gaussian]) -> dict[Gaussian, int]:
    points = tuple(points)
    if not points or len(points) > 128 or any(type(z) is not Gaussian for z in points):
        raise ValueError('finite nonempty Gaussian-rational divisor of length <=128 required')
    counts = Counter(points)
    if len(counts) > 32:
        raise ValueError('distinct-support resource limit exceeded')
    if any(counts.get(z.conj(), 0) != m for z, m in counts.items()):
        raise ValueError('the full divisor, including multiplicities, must be conjugate-stable')
    return dict(sorted(counts.items(), key=lambda item: (item[0].re, item[0].im)))


def basis(nodes: Sequence[Gaussian], z: Gaussian) -> Poly:
    if len(set(nodes)) != len(nodes) or z not in nodes:
        raise ValueError('distinct interpolation support and contained target required')
    p = (ONE,)
    for other in nodes:
        if other != z:
            p = mul(p, scale((-other, ONE), (z-other).inv()))
    return p


def isolate(points: Sequence[Gaussian], z: Gaussian, eta: Gaussian = I) -> Poly:
    counts = divisor(points)
    if z not in counts or not z.im:
        raise ValueError('target must be a nonreal member of the actual finite divisor')
    if type(eta) is not Gaussian:
        raise TypeError('exact interpolation value required')
    nodes = tuple(counts)
    p = add(scale(basis(nodes, z), eta), scale(basis(nodes, z.conj()), eta.conj()))
    if any(a.im for a in p):
        raise ArithmeticError('failed exact real-coefficient descent')
    if len(p) > len(nodes):
        raise ArithmeticError('interpolation degree bound violated')
    for x in nodes:
        expected = eta if x == z else eta.conj() if x == z.conj() else ZERO
        if evaluate(p, x) != expected:
            raise ArithmeticError('incomplete interpolation or missing root')
    return p


def trace(points: Sequence[Gaussian], p: Poly, power: int = 2) -> Q:
    if type(power) is not int or not 1 <= power <= 16:
        raise ValueError('invalid power')
    counts = divisor(points)
    if any(a.im for a in p):
        raise ValueError('the test polynomial must have real coefficients')
    value = sum((m*evaluate(p, z)**power for z, m in counts.items()), ZERO)
    if value.im:
        raise ArithmeticError('signed trace should be exactly real')
    return value.re


def moments(points: Sequence[Gaussian], upto: int) -> tuple[Q, ...]:
    if type(upto) is not int or not 0 <= upto <= 500:
        raise ValueError('moment range outside bounded profile')
    counts = divisor(points)
    out = []
    for k in range(upto+1):
        value = sum((m*z**k for z, m in counts.items()), ZERO)
        if value.im:
            raise ArithmeticError('lost conjugation or multiplicity')
        out.append(value.re)
    return tuple(out)


def from_moments(p: Poly, power: int, m: Sequence[Q]) -> Q:
    q = ppow(p, power)
    if any(a.im for a in q) or len(m) < len(q):
        raise ValueError('real coefficients and complete moment prefix required')
    return sum((a.re*rational(m[k]) for k, a in enumerate(q)), Q(0))


def coefficient_mass(p: Poly) -> Q:
    if any(a.im for a in p):
        raise ValueError('real test required')
    return sum((abs(a.re) for a in p), Q(0))


def moment_error(p: Poly, power: int, errors: Sequence[Q]) -> Q:
    q = ppow(p, power)
    if any(a.im for a in q) or len(errors) < len(q):
        raise ValueError('incomplete real moment budget')
    es = [rational(x) for x in errors]
    if any(e < 0 for e in es):
        raise ValueError('negative error allowance')
    return sum((abs(a.re)*es[k] for k, a in enumerate(q)), Q(0))


def conditioning(points: Sequence[Gaussian], eta: Gaussian) -> dict[str, Q | int]:
    nodes = tuple(divisor(points))
    if len(nodes) < 2:
        raise ValueError('at least two distinct nodes required')
    radius = max(abs(z.re)+abs(z.im) for z in nodes)
    sep = min(max(abs(a.re-b.re), abs(a.im-b.im))
              for i, a in enumerate(nodes) for b in nodes[i+1:])
    # radius is an upper bound on Euclidean radius; sep is a lower bound on
    # Euclidean separation. No square-root rounding enters this allowance.
    bound = 2*(abs(eta.re)+abs(eta.im))*((1+radius)/sep)**(len(nodes)-1)
    return {'distinct_nodes': len(nodes), 'radius_upper': radius,
            'separation_lower': sep, 'coefficient_l1_upper': bound}


def certificate(points: Sequence[Gaussian], z: Gaussian, power: int) -> dict:
    if power not in (2, 4) or type(power) is not int:
        raise ValueError('selected square/fourth-power profiles only')
    eta = I if power == 2 else ONE+I
    p = isolate(points, z, eta)
    count = divisor(points)
    m = moments(points, power*(len(p)-1))
    t = trace(points, p, power)
    bymom = from_moments(p, power, m)
    expected = (count[z]+count[z.conj()])*(eta**power).re
    if t != expected or bymom != t or not t < 0:
        raise ArithmeticError('negative trace identity failed')
    l1 = coefficient_mass(p)
    cond = conditioning(points, eta)
    if not l1 <= cond['coefficient_l1_upper']:
        raise ArithmeticError('conditioning allowance violated')
    # Demonstrate a paid finite uncertainty margin; this is not an actual
    # zeta-source remainder. Every synthetic error is identified as such.
    epsilon = (-t)/(4*l1**power)
    budget = moment_error(p, power, [epsilon]*len(m))
    if not t + budget < 0:
        raise ArithmeticError('synthetic negative margin failed')
    return {'source_kind':'synthetic_exact_finite_divisor_NOT_zeta_data',
            'power':power, 'target':z.json(), 'target_pair_mass':count[z]+count[z.conj()],
            'nodes':[{'point':x.json(),'multiplicity':v} for x,v in count.items()],
            'degree':len(p)-1, 'real_coefficients':[str(a.re) for a in p],
            'moments':[str(x) for x in m], 'signed_trace':str(t),
            'moment_contraction':str(bymom), 'coefficient_l1':str(l1),
            'conditioning':{k:str(v) if type(v) is Q else v for k,v in cond.items()},
            'synthetic_uniform_moment_error':str(epsilon),
            'propagated_error':str(budget), 'strict_negative_margin':str(-t-budget),
            'kernel_checked':False, 'RH':False}


def run() -> dict:
    base = [Gaussian(2,Q(1,4)),Gaussian(2,-Q(1,4)),
            Gaussian(-2,Q(1,4)),Gaussian(-2,-Q(1,4)),Gaussian(10),Gaussian(-10)]
    records = [certificate(base,base[0],k) for k in (2,4)]
    for a in (Q(1,16),Q(1,256),Q(1,4096)):
        points = [Gaussian(2,a),Gaussian(2,-a),Gaussian(0),Gaussian(4)]
        records.append(certificate(points,points[0],2))
    repeated = base + [base[0],base[1]]*2
    records.append(certificate(repeated,base[0],2))
    old_test = (Gaussian(Q(1,16)-4),ZERO,ONE)
    hidden = trace(base,old_test,2)
    if not hidden > 0:
        raise ArithmeticError('expected exact masking control failed')
    return {'schema':'finite-hermite-isolation-results-v1',
            'outcome':'EXACT_FINITE_ALGEBRA_ONLY',
            'records':records, 'fixed_quadratic_masked_trace':str(hidden),
            'old_I_test_fourth_trace':str(trace(base,isolate(base,base[0],I),4)),
            'native_Lean':'NOT_RUN', 'global_source_supplier':'OPEN',
            'nonclaims':{'zeta_zero_data':False,'RH':False,'all_height_coverage':False}}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path)
    args = parser.parse_args()
    text = json.dumps(run(),indent=2,sort_keys=True)+'\n'
    if args.output:
        with args.output.open('x',encoding='utf8') as out:
            out.write(text)
    else:
        print(text,end='')


if __name__ == '__main__':
    main()
