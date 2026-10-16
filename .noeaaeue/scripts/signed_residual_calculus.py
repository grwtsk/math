#!/usr/bin/env python3
"""Exact signed correction, regular primitives, and finite residual ledgers.

Human mathematical direction: grwtsk contributors.
New derivations/implementation: OpenAI ChatGPT. MIT.
Method references: OpenAI NavierStokesAndEuler, pinned f9e8bc5b38b6e212696e8a30e3e91517af887bbd,
SignedCovariance, NilpotentVolterra, GenericSupportLocalSummation (Apache-2.0).
No upstream Lean code is copied or imported. This is independent finite
rational arithmetic, not a native proof or a supplier of arithmetic decay.
"""
from __future__ import annotations

from dataclasses import dataclass
from fractions import Fraction as Q
from typing import Sequence


def rational(x: int | Q) -> Q:
    if type(x) is not int and not isinstance(x, Q):
        raise TypeError('exact integer or Fraction required')
    return Q(x)


def vector(v: Sequence[int | Q]) -> tuple[Q, ...]:
    if not v:
        raise ValueError('nonempty vector required')
    return tuple(rational(x) for x in v)


def matrix(a: Sequence[Sequence[int | Q]]) -> tuple[tuple[Q, ...], ...]:
    out = tuple(vector(row) for row in a)
    if not out or len(out) > 32 or any(len(row) != len(out) for row in out):
        raise ValueError('square matrix of size 1..32 required')
    return out


def matvec(a: Sequence[Sequence[int | Q]], x: Sequence[int | Q]) -> tuple[Q, ...]:
    a, x = matrix(a), vector(x)
    if len(a) != len(x):
        raise ValueError('dimension mismatch')
    return tuple(sum((q*r for q, r in zip(row, x)), Q(0)) for row in a)


def inverse(a: Sequence[Sequence[int | Q]]) -> tuple[tuple[Q, ...], ...]:
    a = matrix(a)
    size = len(a)
    rows = [list(row) + [Q(i == j) for j in range(size)] for i, row in enumerate(a)]
    for j in range(size):
        pivot = next((i for i in range(j, size) if rows[i][j]), None)
        if pivot is None:
            raise ValueError('singular matrix; no correction admitted')
        rows[j], rows[pivot] = rows[pivot], rows[j]
        scale = rows[j][j]
        rows[j] = [x/scale for x in rows[j]]
        for i in range(size):
            if i != j:
                scale = rows[i][j]
                rows[i] = [x-scale*y for x, y in zip(rows[i], rows[j])]
    return tuple(tuple(row[size:]) for row in rows)


def norm_sq(x: Sequence[int | Q]) -> Q:
    return sum((v*v for v in vector(x)), Q(0))


def frobenius_sq(a: Sequence[Sequence[int | Q]]) -> Q:
    return sum((x*x for row in matrix(a) for x in row), Q(0))


@dataclass(frozen=True)
class CovarianceStep:
    increment: tuple[Q, ...]
    cross: tuple[Q, ...]
    quadratic: tuple[Q, ...]
    new_residual: tuple[Q, ...]
    squared_norm_budget: Q


def covariance_step(a: Sequence[Sequence[int | Q]], amplitudes: Sequence[int | Q],
                    residual: Sequence[int | Q]) -> CovarianceStep:
    """Cancel the cross term, keeping the entire correction square.

    The certified rational budget uses Frobenius norms, not a computed
    spectral norm. It may be large and is NOT presumed contractive.
    """
    a, u, r = matrix(a), vector(amplitudes), vector(residual)
    if len(u) != len(a) or len(r) != len(a) or min(u) <= 0:
        raise ValueError('matching dimensions and positive amplitudes required')
    ai = inverse(a)
    delta = tuple(-v/(2*x) for v, x in zip(matvec(ai, r), u))
    cross = matvec(a, tuple(2*x*d for x, d in zip(u, delta)))
    quad = matvec(a, tuple(d*d for d in delta))
    change = matvec(a, tuple((x+d)**2-x*x for x, d in zip(u, delta)))
    new = tuple(x+y for x, y in zip(r, change))
    budget = frobenius_sq(a)*frobenius_sq(ai)**2*norm_sq(r)**2/(16*min(u)**4)
    if cross != tuple(-x for x in r) or new != quad or norm_sq(new) > budget:
        raise ArithmeticError('signed covariance identity/budget failed')
    return CovarianceStep(delta, cross, quad, new, budget)


def weighted_mean_polynomial(c: int | Q, coefficients: Sequence[int | Q]) -> tuple[Q, ...]:
    """Integral_0^1 t^c f(t*x) dt for a polynomial; c>-1, including c=1/6."""
    c, p = rational(c), vector(coefficients)
    if c <= -1:
        raise ValueError('integrable axis exponent c>-1 required')
    return tuple(a/(c+j+1) for j, a in enumerate(p))


def regular_primitive_polynomial(c: int | Q, coefficients: Sequence[int | Q]) -> tuple[Q, ...]:
    """x times the weighted mean; no division by x, including at x=0."""
    return (Q(0),) + weighted_mean_polynomial(c, coefficients)


def derivative(p: Sequence[int | Q]) -> tuple[Q, ...]:
    p = vector(p)
    return tuple(j*p[j] for j in range(1, len(p))) or (Q(0),)


def evaluate(p: Sequence[int | Q], x: int | Q) -> Q:
    p, x = vector(p), rational(x)
    out = Q(0)
    for a in reversed(p):
        out = out*x+a
    return out


def source(a: Sequence[int | Q]) -> tuple[Q, ...]:
    out = vector(a)
    if len(out) < 2 or out[0] != 0 or len(out) > 100001:
        raise ValueError('indices 0..K, 1<=K<=100000, with index zero zero required')
    return out


def convolution(a: Sequence[int | Q], b: Sequence[int | Q]) -> tuple[Q, ...]:
    a, b = source(a), source(b)
    if len(a) != len(b):
        raise ValueError('different arithmetic cutoffs')
    K = len(a)-1
    out = [Q(0)]*(K+1)
    for i in range(1, K+1):
        if a[i]:
            for j in range(1, K//i+1):
                out[i*j] += a[i]*b[j]
    return tuple(out)


def identity(K: int) -> tuple[Q, ...]:
    if type(K) is not int or not 1 <= K <= 100000:
        raise ValueError('integer arithmetic cutoff in 1..100000 required')
    return (Q(0), Q(1))+(Q(0),)*(K-1)


def arithmetic_defect(a: Sequence[int | Q]) -> tuple[Q, ...]:
    a = source(a)
    K = len(a)-1
    h = convolution(a, (0,)+(1,)*K)
    return tuple(x-y for x, y in zip(h, identity(K)))


def newton_inverse_step(a: Sequence[int | Q]) -> tuple[Q, ...]:
    """A_new=A*(2 epsilon-A*1); defect_new=-(defect_old)^2.

    This exact ring identity gives no uniform bound on a Bessel norm.
    """
    a = source(a)
    eta = arithmetic_defect(a)
    ae = convolution(a, eta)
    new = tuple(x-y for x, y in zip(a, ae))
    if arithmetic_defect(new) != tuple(-x for x in convolution(eta, eta)):
        raise ArithmeticError('Newton residual identity failed')
    return new


def weighted_l1(a: Sequence[int | Q], exponent: int = 2) -> Q:
    a = source(a)
    if type(exponent) is not int or exponent < 0:
        raise ValueError('nonnegative integer exponent required')
    return sum((abs(a[k])/k**exponent for k in range(1, len(a))), Q(0))


def norm_return_sq(prefix_sq: int | Q, main_norm: int | Q,
                   error_norms: Sequence[int | Q]) -> Q:
    """Finite budget composition; all input norm bounds are explicit hypotheses."""
    q, main = rational(prefix_sq), rational(main_norm)
    errors = tuple(rational(v) for v in error_norms)
    if q < 0 or main < 0 or any(x < 0 for x in errors):
        raise ValueError('nonnegative norm bounds required')
    return q+(main+sum(errors, Q(0)))**2
