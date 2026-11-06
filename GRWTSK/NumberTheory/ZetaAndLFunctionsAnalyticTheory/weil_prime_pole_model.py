"""Pure numerical model of the finite prime-pole cancellation.

Copyright (c) 2026 grwtsk contributors. MIT license.
Local attribution: grwtsk contributors. AI-assisted source.

Primary arithmetic source: Connes--Consani--Moscovici, arXiv:2511.22755v1,
equations (3.7), (3.10)--(3.20). See weil-prime-pole-research-methods.md.

Every function returns mathematical data. There is no file, network, scheduler,
credential, subprocess, repository or proof-runner behavior. The optional
mpmath dependency is a diagnostic evaluator, not an interval certifier. Results
at any precision are exploratory and never constitute a spectral certificate.
No dependency version, build configuration or global mpmath precision is changed.
"""
from __future__ import annotations

from dataclasses import dataclass
from typing import Any


@dataclass(frozen=True)
class Cell:
    """psi is constant on the open cell (left, right)."""
    left: Any
    right: Any
    psi_plus_one: Any


def prime_powers(limit: int) -> list[tuple[int, int]]:
    """All (p**k, p) with p prime, k >= 1 and p**k <= limit.

    Integer sieve and integer multiplication avoid a logarithmic test for prime
    powers. This enumerates only a finite input domain; no asymptotic inference.
    """
    if not isinstance(limit, int) or isinstance(limit, bool) or limit < 0:
        raise ValueError("limit must be a nonnegative integer")
    sieve = bytearray(b"\x01") * (limit + 1)
    if limit >= 0:
        sieve[0] = 0
    if limit >= 1:
        sieve[1] = 0
    p = 2
    while p * p <= limit:
        if sieve[p]:
            for composite in range(p * p, limit + 1, p):
                sieve[composite] = 0
        p += 1
    result: list[tuple[int, int]] = []
    for p in range(2, limit + 1):
        if not sieve[p]:
            continue
        q = p
        while q <= limit:
            result.append((q, p))
            q *= p
    return sorted(result)


def context(dps: int) -> Any:
    """An isolated precision context; the caller's global context is untouched."""
    if not isinstance(dps, int) or isinstance(dps, bool) or dps < 20:
        raise ValueError("dps must be an integer at least 20")
    from mpmath import mp
    ctx = mp.clone()
    ctx.dps = dps
    return ctx


def prepare(T: str, dps: int = 50, max_integer: int = 100000) -> tuple[Any, Any, list, list[Cell]]:
    """Finite source cells. Near-integer exp(2T) needs certified rounding for proof.

    The explicit cap prevents accidental allocation of an enormous sieve.
    Endpoint equality is harmless analytically because the correlation is zero;
    this floating evaluator does not certify equality or floor decisions.
    """
    if not isinstance(max_integer, int) or isinstance(max_integer, bool) or max_integer < 2:
        raise ValueError("max_integer must be an integer at least two")
    ctx = context(dps)
    t = ctx.mpf(T)
    if not ctx.isfinite(t) or t <= 0:
        raise ValueError("T must be finite and positive")
    X = ctx.exp(2 * t)
    if X > max_integer:
        raise ValueError("exp(2T) exceeds the explicit finite-model cap")
    atoms = [(ctx.mpf(q), ctx.log(p)) for q, p in prime_powers(int(ctx.floor(X))) if q < X]
    cells: list[Cell] = []
    left, total = ctx.mpf(1), ctx.mpf(0)
    for q, weight in atoms:
        cells.append(Cell(left, q, total + 1))
        total += weight
        left = q
    cells.append(Cell(left, X, total + 1))
    return ctx, t, atoms, cells


def shift_entry(ctx: Any, T: Any, m: int, n: int, r: Any) -> Any:
    """<e_m,(S_r+S_r*)e_n> with ZERO extension, not periodic translation."""
    L = 2 * T
    wm, wn = ctx.pi * m / T, ctx.pi * n / T
    if m == n:
        return 2 * (1 - r / L) * ctx.cos(wn * r)
    sign = 1 if (n - m) % 2 == 0 else -1
    return sign * (ctx.sin(wm * r) - ctx.sin(wn * r)) / (ctx.pi * (n - m))


def shift_derivative(ctx: Any, T: Any, m: int, n: int, r: Any) -> Any:
    L = 2 * T
    wm, wn = ctx.pi * m / T, ctx.pi * n / T
    if m == n:
        return -2 / L * ctx.cos(wn * r) - 2 * wn * (1 - r / L) * ctx.sin(wn * r)
    sign = 1 if (n - m) % 2 == 0 else -1
    return sign * (wm * ctx.cos(wm * r) - wn * ctx.cos(wn * r)) / (ctx.pi * (n - m))


def cancellation_diagnostic(T: str, m: int, n: int, dps: int = 50) -> dict[str, str]:
    """Compare literal prime/pole evaluation with independent cell quadrature.

    This is not an interval bound. A small difference is evidence about this
    finite calculation only. The archimedean term is NOT included in these entries.
    """
    if any(not isinstance(k, int) or isinstance(k, bool) for k in (m, n)):
        raise TypeError("Fourier indices must be integers")
    ctx, t, atoms, cells = prepare(T, dps)
    L = 2 * t
    b = lambda r: shift_entry(ctx, t, m, n, r)
    derivative = lambda r: shift_derivative(ctx, t, m, n, r)
    pole = ctx.quad(lambda r: (ctx.exp(r / 2) + ctx.exp(-r / 2)) * b(r), [0, L])
    prime = ctx.fsum(weight / ctx.sqrt(q) * b(ctx.log(q)) for q, weight in atoms)
    positive = ctx.quad(lambda r: ctx.exp(-r / 2) * b(r), [0, L])
    correction = ctx.fsum(
        ctx.quad(lambda r, A=cell.psi_plus_one:
                 (A - ctx.exp(r)) * ctx.exp(-r / 2) * (derivative(r) - b(r) / 2),
                 [ctx.log(cell.left), ctx.log(cell.right)])
        for cell in cells if cell.left < cell.right
    )
    return {"T": T, "m": str(m), "n": str(n), "dps": str(dps),
            "direct": ctx.nstr(pole - prime, dps - 5),
            "cell_return": ctx.nstr(positive + correction, dps - 5),
            "absolute_disagreement": ctx.nstr(abs(pole - prime - positive - correction), 8),
            "status": "EXPLORATORY_NOT_INTERVAL_CERTIFIED"}


def low_budget_diagnostic(T: str, M: int, dps: int = 50) -> dict[str, str]:
    """Evaluate the complete discrepancy integral using its cell primitive.

    Splitting each cell at A=psi+1, when it lies inside, accounts for the absolute
    value exactly at the formula level. Numerical logs/square roots remain rounded.
    """
    if not isinstance(M, int) or isinstance(M, bool) or M < 0:
        raise ValueError("M must be a nonnegative integer")
    ctx, t, atoms, cells = prepare(T, dps)
    pieces = []
    for cell in cells:
        A = cell.psi_plus_one
        primitive = lambda x: -2 * A / ctx.sqrt(x) - 2 * ctx.sqrt(x)
        cuts = [cell.left, cell.right]
        if cell.left < A < cell.right:
            cuts.insert(1, A)
        pieces.extend(abs(primitive(hi) - primitive(lo)) for lo, hi in zip(cuts, cuts[1:]))
    I = ctx.fsum(pieces)
    full_price = 1 + (2 * M + 1) / t + 2 * ctx.pi * M / t
    endpoint_price = 1 + 2 * ctx.pi * M / t
    K = 2 * ctx.fsum(weight / ctx.sqrt(q) for q, weight in atoms)
    values = {"I": I, "all_mode_budget": full_price * I,
              "zero_endpoint_budget": endpoint_price * I, "crude_prime_norm": K,
              "crude_full_pole_norm": 2 * (t + ctx.sinh(t))}
    return {"T": T, "M": str(M), "dps": str(dps), "prime_powers": str(len(atoms)),
            **{key: ctx.nstr(value, dps - 5) for key, value in values.items()},
            "status": "EXPLORATORY_NOT_INTERVAL_CERTIFIED"}
