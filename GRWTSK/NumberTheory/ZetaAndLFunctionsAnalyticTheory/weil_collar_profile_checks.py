"""Pure exact diagnostics for the physical-collar profile construction.

Local attribution: grwtsk contributors. MIT license.
These finite SymPy/rational checks are not Lean, interval spectral certification,
or a proof of the infinite theta/source/asymptotic return. No I/O or effects are
performed by this module. Call diagnostics() and inspect its returned values.
"""
from __future__ import annotations

import sympy as sp


def theta_polynomials(order: int) -> list[sp.Expr]:
    """Dimensionless monic P_j(w) = 4**(-j) D**(2*j) P_0(w)."""
    if not isinstance(order, int) or order < 0:
        raise ValueError("order must be a nonnegative integer")
    w = sp.Symbol("w")

    def step(poly: sp.Expr) -> sp.Expr:
        return sp.expand(2 * w * sp.diff(poly, w) + (sp.Rational(5, 2) - 2 * w) * poly)

    polys = [w**2 - sp.Rational(15, 4) * w + sp.Rational(15, 8)]
    for _ in range(order):
        polys.append(sp.expand(step(step(polys[-1])) / 4))
    return polys


def exponential_moment(poly: sp.Expr, variable: sp.Symbol) -> sp.Expr:
    """Exactly integrate a polynomial against exp(-x) on [0,infinity)."""
    return sp.expand(sum(coefficient * sp.factorial(power[0])
                         for power, coefficient in sp.Poly(poly, variable).terms()))


def diagnostics() -> dict[str, object]:
    w, v = sp.symbols("w v")
    polys = theta_polynomials(8)
    expected_next = (w**4 - sp.Rational(45, 4) * w**3 + sp.Rational(529, 16) * w**2
                     - sp.Rational(1635, 64) * w + sp.Rational(375, 128))
    assert sp.expand(polys[1] - expected_next) == 0
    wronskian = sp.expand(polys[0] * sp.diff(polys[1], w)
                         - sp.diff(polys[0], w) * polys[1])
    shifted = sp.Poly(wronskian.subs(w, v + 8), v)
    assert shifted.all_coeffs() == [sp.Integer(2), sp.Rational(115, 2),
        sp.Rational(5215, 8), sp.Rational(116585, 32),
        sp.Rational(80405, 8), sp.Rational(1404683, 128)]
    assert all(c > 0 for c in shifted.all_coeffs())
    for j, poly in enumerate(polys):
        assert sp.degree(poly, w) == 2 * j + 2
        assert sp.Poly(poly, w).LC() == 1

    determinants = []
    for r in range(13):
        matrix = sp.Matrix([[sp.binomial(2 * j + 2, ell)
                             for j in range(r + 1)] for ell in range(r + 1)])
        determinant = matrix.det()
        assert determinant == 2 ** (r * (r + 1) // 2)
        determinants.append(str(determinant))

    jet_cases = 0
    for r in range(7):
        profile = sp.Poly(sp.laguerre(r, 2 * v), v)
        for center in (8, 16, 32):
            matrix = sp.Matrix([[sp.diff(polys[j], w, ell).subs(w, center)
                                  / sp.factorial(ell) for j in range(r + 1)]
                                for ell in range(r + 1)])
            assert matrix.det() != 0
            target = sp.Matrix([center**2 * profile.nth(ell) for ell in range(r + 1)])
            coefficients = matrix.inv() * target
            result = sp.expand(sum(coefficients[j] * polys[j] for j in range(r + 1)))
            for ell in range(r + 1):
                assert sp.diff(result, w, ell).subs(w, center) / sp.factorial(ell) == target[ell]
            jet_cases += 1

    laguerres = [sp.laguerre(n, w) for n in range(16)]
    moment_cases = 0
    for i in range(16):
        for j in range(i, 16):
            assert exponential_moment(laguerres[i] * laguerres[j], w) == (1 if i == j else 0)
            moment_cases += 1
    coefficient_cases = 0
    for n in range(31):
        negative = sp.Poly(sp.laguerre(n, -w), w)
        for j in range(n + 1):
            assert negative.nth(j) == sp.binomial(n, j) / sp.factorial(j)
            assert negative.nth(j) >= 0
            coefficient_cases += 1
        assert negative.nth(0) == 1
        if n:
            assert negative.nth(1) == n

    return {
        "sympy_version": sp.__version__,
        "theta_polynomials_checked": len(polys),
        "first_two_and_wronskian": "PASS",
        "confluent_determinants": determinants,
        "rational_jet_cases": jet_cases,
        "laguerre_cross_moment_cases": moment_cases,
        "laguerre_coefficient_cases": coefficient_cases,
        "result": "PASS",
        "scope": "finite exact symbolic/rational diagnostics only",
        "lean_elaboration": "NOT_RUN",
        "kernel_check": "NOT_RUN",
        "arithmetic_spectral_certificate": "NOT_CONSTRUCTED",
        "independent_analytical_review": "NOT_RUN",
    }
