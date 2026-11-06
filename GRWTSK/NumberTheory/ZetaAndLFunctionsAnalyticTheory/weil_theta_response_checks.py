"""Exact finite diagnostics for fixed-degree theta-response optimization.

Copyright (c) 2026 grwtsk contributors. MIT license.
Local attribution: grwtsk contributors. AI-assisted mathematical source.

This module is pure: diagnostics() returns a result; it performs no I/O,
network access, subprocess invocation, repository mutation or proof dispatch.
The rational jet fixtures use p=1 or p=3, NOT a certified value of pi.
They test finite identities, not theta asymptotics, operator signs or Lean.
"""
from __future__ import annotations

import sympy as sp


def exponential_moment(poly: sp.Expr, variable: sp.Symbol,
                       rate: sp.Expr) -> sp.Expr:
    """Integrate a polynomial against exp(-rate*v) by exact factorial moments.

    The caller's analytic interpretation requires a positive real rate.
    The calculation itself is symbolic/rational.
    """
    return sp.expand(sum(coefficient * sp.factorial(power[0]) /
                         rate ** (power[0] + 1)
                         for power, coefficient in sp.Poly(poly, variable).terms()))


def theta_polynomials(count: int, p: sp.Expr, u: sp.Symbol) -> list[sp.Expr]:
    """First-theta monic polynomials of normalized even derivatives."""
    if count < 1:
        raise ValueError("count must be positive")
    result = [u ** 2 - sp.Rational(15, 4) * u / p + sp.Rational(15, 8) / p ** 2]

    def derivative(poly: sp.Expr) -> sp.Expr:
        return sp.expand(2 * u * sp.diff(poly, u) + (sp.Rational(5, 2) - 2 * p * u) * poly)

    for _ in range(1, count):
        result.append(sp.expand(derivative(derivative(result[-1])) / (4 * p ** 2)))
    return result


def diagnostics() -> dict[str, object]:
    """Recompute exact finite algebra and explicitly report its limited scope."""
    u, v, w = sp.symbols("u v w", real=True)
    p = sp.symbols("p", positive=True)
    a, b = sp.symbols("a b", real=True)
    counts: dict[str, int] = {}

    e1 = exponential_moment((a - 2 * v) ** 2, v, 2 * p)
    e2 = exponential_moment((a + b * v + 4 * v ** 2) ** 2, v, 2 * p)
    complete1 = (a - 1 / p) ** 2 / (2 * p) + 1 / (2 * p ** 3)
    complete2 = 2 / p ** 5 + ((a + b / (2 * p) + 2 / p ** 2) ** 2 +
                             (b / (2 * p) + 4 / p ** 2) ** 2) / (2 * p)
    assert sp.cancel(e1 - complete1) == 0
    assert sp.cancel(e2 - complete2) == 0
    assert sp.cancel(e1.subs(a, 0) - 2 * e1.subs(a, 1 / p)) == 0
    assert sp.cancel(e2.subs({a: 0, b: 0}) -
                     6 * e2.subs({a: 2 / p ** 2, b: -8 / p})) == 0
    counts["profile_completions_and_endpoint_costs"] = 4

    polynomials = theta_polynomials(8, sp.Integer(1), w)
    for j, polynomial in enumerate(polynomials):
        assert sp.degree(polynomial, w) == 2 * j + 2
        assert sp.Poly(polynomial, w).LC() == 1
    counts["monic_theta_polynomials"] = len(polynomials)
    base, nxt = polynomials[:2]
    numerator = sp.expand(sp.diff(nxt, w) + 2 * nxt - (2 * base + sp.diff(base, w)) / 16)
    expected = 2 * w ** 4 - sp.Rational(37, 2) * w ** 3 + sp.Rational(129, 4) * w ** 2 + sp.Rational(123, 8) * w - sp.Rational(315, 16)
    assert numerator == expected
    shifted = sp.Poly(numerator.subs(w, v + 8).expand(), v)
    assert shifted.all_coeffs() == [2, sp.Rational(91, 2), sp.Rational(1425, 4), sp.Rational(8603, 8), sp.Rational(14197, 16)]
    assert all(coefficient > 0 for coefficient in shifted.all_coeffs())
    counts["literal_moment_numerator_identities"] = 2

    for r in range(13):
        matrix = sp.Matrix([[sp.binomial(2 * j + 2, ell) for j in range(r + 1)]
                            for ell in range(r + 1)])
        assert matrix.det() == 2 ** (r * (r + 1) // 2)
        assert matrix.inv()[0, r] == sp.Rational((-1) ** r, 2 ** r)
    counts["limiting_jet_determinants"] = 13
    counts["limiting_inverse_entries"] = 13

    laguerre = [sp.laguerre(j, 2 * v).expand() for j in range(16)]
    cross_count = 0
    for i in range(16):
        for j in range(i, 16):
            moment = exponential_moment(laguerre[i] * laguerre[j], v, sp.Integer(2))
            assert moment == (sp.Rational(1, 2) if i == j else 0)
            cross_count += 1
    counts["laguerre_cross_moments"] = cross_count
    for r in range(13):
        optimum = sp.factorial(r) * laguerre[r]
        optimum_energy = exponential_moment(optimum ** 2, v, sp.Integer(2))
        endpoint_energy = exponential_moment(((-2) ** r * v ** r) ** 2, v, sp.Integer(2))
        assert optimum_energy == sp.factorial(r) ** 2 / 2
        assert endpoint_energy / optimum_energy == sp.binomial(2 * r, r)
    counts["optimized_norms_and_endpoint_ratios"] = 13

    # Exact jet solves at finite rational scale parameters. Not a theta or pi evaluation.
    jet_count = 0
    for scale in (sp.Integer(1), sp.Integer(3)):
        rows = theta_polynomials(6, scale, u)
        for r in range(6):
            target = sp.factorial(r) / scale ** r * sp.laguerre(r, 2 * scale * v)
            for center in (16, 32, 64, 128):
                jet = sp.Matrix([[sp.diff(rows[j], u, ell).subs(u, center) / sp.factorial(ell)
                                  for j in range(r + 1)] for ell in range(r + 1)])
                rhs = sp.Matrix([center ** 2 * sp.expand(target).coeff(v, ell)
                                 for ell in range(r + 1)])
                coefficients = jet.inv() * rhs
                assert jet * coefficients == rhs
                moment = sum(coefficients[j] / (16 * scale ** 2) ** j for j in range(r + 1))
                assert moment != 0
                normalized = coefficients / moment
                assert sum(normalized[j] / (16 * scale ** 2) ** j for j in range(r + 1)) == 1
                jet_count += 1
    counts["rational_jet_and_exact_moment_fixtures"] = jet_count

    # A different finite check of the moment nondegeneracy in the Stieltjes argument.
    for r in range(11):
        hankel = sp.Matrix([[sp.factorial(i + j) for j in range(r + 1)] for i in range(r + 1)])
        assert hankel.det() == sp.prod(sp.factorial(j) ** 2 for j in range(r + 1)) > 0
    counts["moment_hankel_determinants"] = 11

    # Omitting cross terms destroys the claimed optimal value.
    mutated = a ** 2 / (2 * p) + b ** 2 / (4 * p ** 3) + 12 / p ** 5
    assert sp.cancel(mutated.subs({a: 2 / p ** 2, b: -8 / p}) - 2 / p ** 5) != 0
    inside, outside, core = sp.symbols("inside outside core", real=True)
    deficit = sp.Rational(1, 2) - (2 * inside - (core - 2 * outside ** 2 + 2 * inside ** 2))
    assert sp.expand(deficit.subs(inside, sp.Rational(1, 2) - outside) - core) == 0
    counts["cross_term_mutation_rejected"] = 1
    counts["exact_pole_deficit_cancellation"] = 1
    return {"status": "PASS", "sympy_version": sp.__version__, "counts": counts,
            "scope": "exact finite symbolic/rational diagnostics only",
            "lean_elaboration": "NOT_RUN", "kernel_check": "NOT_RUN",
            "arithmetic_spectral_certificate": "NOT_CONSTRUCTED"}
