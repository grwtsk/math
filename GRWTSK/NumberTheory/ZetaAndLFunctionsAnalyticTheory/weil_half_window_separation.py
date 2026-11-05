"""Paid full-source Schur separation at T=1/2 (not cofinal separation).

Copyright (c) 2026 grwtsk contributors. MIT license.
Local attribution: grwtsk contributors. AI-assisted mathematical source.

Pure integer/rational interval evaluation. Reuses the byte-pinned interval
implementation and four-mode trial in weil_endpoint_sign.py. No I/O, network,
subprocess, scheduling, repository mutation or Lean execution. The analytical
reduction and the unformalized operator obligations are in the associated note.
"""
from __future__ import annotations

from fractions import Fraction as Q
from weil_endpoint_sign import (
    BITS, SCALE, Interval as I, certificate as endpoint_certificate,
    pi_interval, log_rational, exp_small, trig,
)

HEAD = 64
REMOTE = 512
SERIES = 1024
STORE_BITS = 40
STORE = 1 << STORE_BITS
BETA = Q(1, 10000)
ZERO = I.point(0)
ONE = I.point(1)


def upward(x: I | Q) -> Q:
    """Round an upper bound upwards to the fixed stored rational grid."""
    q = Q(x.hi, SCALE) if isinstance(x, I) else x
    return Q(-((-q.numerator * STORE) // q.denominator), STORE)


def midpoint(x: I) -> Q:
    """One exact rational proposed observation, not a true-source assertion."""
    return Q(((x.lo + x.hi) * STORE) // (2 * SCALE), STORE)


def error(x: I, center: Q) -> Q:
    return max(abs(Q(x.lo, SCALE) - center), abs(Q(x.hi, SCALE) - center))


def atan_interval(x: I) -> I:
    """Monotone half-angle identity, then an alternating series on [0,1/5]."""
    if x.lo < 0 or x.hi > 2 * SCALE:
        raise ValueError("arctangent argument outside [0,2]")
    y, factor = x, 1
    while y.hi > SCALE // 5:
        y = y / (1 + (1 + y * y).sqrt())
        factor *= 2
        if factor > 16:
            raise ArithmeticError("unresolved arctangent range")
    y2 = y * y
    term, total = y, y
    for k in range(1, 64):
        term = -(term * y2)
        total += term / (2 * k + 1)
    tail = Q(y.hi, SCALE) ** 129 / 129
    return factor * (total + I.bounds(-tail, tail))


def log1p_small(x: I) -> I:
    """Positive atanh series for log(1+x), 0<=x<=1/4."""
    if x.lo < 0 or x.hi > SCALE // 4:
        raise ValueError("log1p argument outside [0,1/4]")
    z = x / (2 + x)
    z2 = z * z
    term, total = z, z
    for k in range(1, 64):
        term *= z2
        total += term / (2 * k + 1)
    zmax = Q(z.hi, SCALE)
    tail = 2 * zmax ** 129 / (129 * (1 - zmax * zmax))
    return 2 * total + I.bounds(Q(0), tail)


def signals(old: dict[str, object]) -> dict[str, object]:
    """Complete boundary, diagonal, prime and pole coefficients at T=1/2.

    Tails use the convex trapezoid enclosure at spacing two. The exponentially
    weighted subtraction beyond alpha_J is paid by 2^-2000. Convexity and
    elementary-function ranges are checked, not inferred from floats.
    """
    pi = pi_interval()
    log2 = log_rational(Q(2))
    root2 = I.point(2).sqrt()
    rootT = root2 / 2
    ehalf = exp_small(Q(1, 2))
    eneg = 1 / ehalf
    equarter = exp_small(Q(1, 4))
    sh = (equarter - 1 / equarter) / 2
    mass = log2 / root2
    omega = [2 * pi * n for n in range(REMOTE + 1)]
    omega2 = [w * w for w in omega]
    a = I.point(Q(4 * SERIES + 1, 2))
    a2 = a * a
    if not (3 * a2 - omega2[-1]).strictly_above(Q(0)):
        raise ArithmeticError("boundary-tail convexity has not been established")
    if not exp_small(Q(1)).strictly_above(Q(2)):
        raise ArithmeticError("exponential remainder prerequisite failed")
    alpha = [I.point(Q(4 * j + 1, 2)) for j in range(SERIES)]
    alpha2 = [x * x for x in alpha]
    weights, e = [], eneg
    step = eneg ** 4
    for _ in range(SERIES):
        weights.append(1 - e)
        e *= step
    g, h, diagonal = [], [], []
    exp_loss = I.bounds(-Q(1, 1 << 2000), Q(0))
    for n, w2 in enumerate(omega2):
        gn, hn, mn = ZERO, ZERO, ZERO
        for j in range(SERIES):
            inv = 1 / (alpha2[j] + w2)
            gn += weights[j] * inv
            if n <= HEAD:
                hn += weights[j] * inv * inv
            if n <= HEAD + 1:
                mn += 2 * w2 * inv / alpha[j]
        den = a2 + w2
        if n == 0:
            int_g, int_h = 1 / a, 1 / (3 * a ** 3)
        else:
            at = atan_interval(omega[n] / a)
            int_g = at / omega[n]
            int_h = at / (2 * omega[n] ** 3) - a / (2 * w2 * den)
        # sum f(a+2k) lies in integral(f)/2+f(a)/2+[0,-f'(a)/4].
        gn += int_g / 2 + 1 / (2 * den)
        gn += I(0, (a / (2 * den * den)).hi) + exp_loss
        g.append(gn)
        if n <= HEAD:
            hn += int_h / 2 + 1 / (2 * den * den)
            hn += I(0, (a / den ** 3).hi) + exp_loss
            h.append(hn)
        if n <= HEAD + 1:
            mn += log1p_small(w2 / a2) / 2 + w2 / (a * den)
            remainder = w2 * (3 * a2 + w2) / (2 * a2 * den * den)
            mn += I(0, remainder.hi)
            diagonal.append(old["c_infty"] + mn)
    prime, cosprime, cosh, sinh = [], [], [], []
    for n, w in enumerate(omega):
        nr = n * log2
        k = nr.lo // SCALE
        angle = 2 * pi * (nr - k)
        prime.append(mass * trig(angle))
        cosprime.append(2 * mass * (1 - log2) * trig(angle, True))
        sg = (-1) ** n
        cosh.append(4 * sh if n == 0 else sg * sh / (rootT * (Q(1, 4) + omega2[n])))
        sinh.append(-2 * sg * w * sh / (rootT * (Q(1, 4) + omega2[n])))
    return dict(pi=pi, log2=log2, root2=root2, rootT=rootT,
                eneg=eneg, sh=sh, mass=mass, omega=omega, omega2=omega2,
                g=g, h=h, diagonal=diagonal, prime=prime, cosprime=cosprime,
                cosh=cosh, sinh=sinh)


def entry(data: dict[str, object], m: int, n: int, odd: bool) -> I:
    """Literal full source entry: diagonal + boundary - prime + signed pole."""
    g, h, w2 = data["g"], data["h"], data["omega2"]
    p, pi, sg = data["prime"], data["pi"], (-1) ** (m + n)
    if odd and (m == 0 or n == 0):
        raise ValueError("odd indices start at one")
    if m == n:
        boundary = -4 * w2[n] * h[n] if odd else 4 * (g[n] - w2[n] * h[n])
        if n == 0:
            boundary /= 2
        prime = data["cosprime"][n]
        if n:
            prime += (1 if odd else -1) * p[n] / (pi * n)
        diagonal = data["diagonal"][n]
    else:
        if odd:
            boundary = -4 * sg * m * n * (g[n] - g[m]) / (m * m - n * n)
            prime = 2 * sg * (m * p[n] - n * p[m]) / (pi * (m * m - n * n))
        else:
            boundary = 4 * sg * (m * m * g[m] - n * n * g[n]) / (m * m - n * n)
            if m == 0 or n == 0:
                boundary /= data["root2"]
                k = max(m, n)
                prime = -data["root2"] * (-1) ** k * p[k] / (pi * k)
            else:
                prime = -2 * sg * (m * p[m] - n * p[n]) / (pi * (m * m - n * n))
        diagonal = ZERO
    pole_row = data["sinh"] if odd else data["cosh"]
    pole = (-2 if odd else 2) * pole_row[m] * pole_row[n]
    return diagonal + boundary - prime + pole


def safe_vector(v: list[I]) -> tuple[list[Q], Q]:
    centers = [midpoint(x) for x in v]
    error2 = upward(sum((error(x, c) ** 2 for x, c in zip(v, centers)), Q(0)))
    return centers, error2


def tail_matrix(data: dict[str, object], odd: bool) -> tuple[list[list[Q]], dict[str, object]]:
    """Whole-head safe form, with all endpoint/output directions retained."""
    N, L = HEAD, REMOTE
    pi, K = data["pi"], 2 * data["mass"]  # K is signal mass, NOT improved prime norm.
    theta = 1 - Q(N, L + 1)
    theta2 = 1 - Q(N * N, (L + 1) ** 2)
    kap = upward(Q(1, 2) + K / pi)
    if odd:
        d = [(-1) ** n * n for n in range(1, N + 1)]
        sv, se2 = safe_vector(data["sinh"][1:N + 1])
        bout = [(-4 * n * (-1) ** n * data["g"][n]
                 - 2 * (-1) ** n * data["prime"][n] / pi
                 + 4 * data["rootT"] * data["sh"] * data["sinh"][n] / pi)
                for n in range(1, N + 1)]
        bv, be2 = safe_vector(bout)
        a1 = upward(1 / (pi ** 2 * theta2))
        a2 = upward(K / (pi * theta) + 1 / (2 * theta2))
        ad = upward((1 + data["eneg"] / (1 - data["eneg"] ** 4)) / pi ** 2)
        ap = upward(data["rootT"] * data["sh"] / (4 * pi ** 3))
        nu = [a1 * n + a2 * n * n for n in range(1, N + 1)]
        snu = sum(nu, Q(0))
        mat = []
        for i in range(N):
            row = []
            for j in range(N):
                J = 3 * ad * ad * d[i] * d[j] + 6 * ap * ap * sv[i] * sv[j]
                if i == j:
                    J += 3 * snu * nu[i] + 6 * ap * ap * se2
                value = Q(6, L) * bv[i] * bv[j] + kap * kap * d[i] * d[j] / L ** 3 + Q(3, 5 * L ** 5) * J
                if i == j:
                    value += Q(6, L) * be2
                row.append(value)
            mat.append(row)
        return mat, dict(theta=theta, theta2=theta2, b=bv, epsilon_b_squared=be2,
                         derivative=d, pole=sv, epsilon_pole_squared=se2,
                         kappa=kap, a1=a1, a2=a2, ad=ad, ap=ap)
    cv, ce2 = safe_vector(data["cosh"][:N + 1])
    tau, te2 = safe_vector([1 / data["root2"]] + [I.point((-1) ** n) for n in range(1, N + 1)])
    h0 = upward(1 / pi ** 2)
    h1 = upward(K / (pi * theta) + Q(1, 2))
    hp = upward(data["rootT"] * data["sh"] / pi ** 2)
    nu = [Q(0)] + [h0 + h1 * n for n in range(1, N + 1)]
    snu = sum(nu, Q(0))
    traceprice = 2 * kap * kap / L + Q(4, 3 * L ** 3) * h0 * h0
    mat = []
    for i in range(N + 1):
        row = []
        for j in range(N + 1):
            J = 4 * hp * hp * cv[i] * cv[j]
            if i == j:
                J += 2 * snu * nu[i] + 4 * hp * hp * ce2
            value = 2 * traceprice * tau[i] * tau[j] + Q(4, 3 * L ** 3) * J
            if i == j:
                value += 2 * traceprice * te2
            row.append(value)
        mat.append(row)
    return mat, dict(theta=theta, endpoint=tau, epsilon_endpoint_squared=te2,
                     pole=cv, epsilon_pole_squared=ce2, kappa=kap, h0=h0, h1=h1, hp=hp)


def ldl_pivots(matrix: list[list[I]]) -> list[I]:
    """Outward symmetric Gaussian elimination; positive pivots certify SPD."""
    a = [row[:] for row in matrix]
    pivots = []
    for k in range(len(a)):
        pivot = a[k][k]
        if pivot.lo <= 0:
            raise ArithmeticError(f"pivot {k} not certified positive: {pivot}")
        pivots.append(pivot)
        col = [a[i][k] for i in range(k + 1, len(a))]
        divided = [x / pivot for x in col]
        for ii, i in enumerate(range(k + 1, len(a))):
            for jj, j in enumerate(range(k + 1, i + 1)):
                value = a[i][j] - divided[ii] * col[jj]
                a[i][j] = value
                a[j][i] = value
    return pivots


def sector(data: dict[str, object], old: dict[str, object], odd: bool) -> dict[str, object]:
    indices = list(range(1, HEAD + 1)) if odd else list(range(HEAD + 1))
    dim = len(indices)
    head = [[ZERO for _ in indices] for _ in indices]
    for i, m in enumerate(indices):
        for j in range(i + 1):
            value = entry(data, m, indices[j], odd)
            head[i][j] = value
            head[j][i] = value
    ahat = [[midpoint(x) for x in row] for row in head]
    eps_u = upward(max(sum((error(head[i][j], ahat[i][j]) for j in range(dim)), Q(0))
                       for i in range(dim)))
    residual, residual_error2 = [], Q(0)
    max_f_entry_error = Q(0)
    for m in range(HEAD + 1, REMOTE + 1):
        row = []
        for n in indices:
            value = entry(data, m, n, odd)
            center = midpoint(value)
            err = error(value, center)
            max_f_entry_error = max(max_f_entry_error, err)
            residual_error2 += err * err
            row.append(center)
        residual.append(row)
    eps_f2 = upward(residual_error2)
    omega, taildata = tail_matrix(data, odd)
    delta = Q(3, 2) if odd else Q(3)
    gram = [[Q(0) for _ in indices] for _ in indices]
    # Stored entries share the denominator STORE; use exact integer accumulation.
    fi = [[int(x * STORE) for x in row] for row in residual]
    for i in range(dim):
        for j in range(i + 1):
            gram[i][j] = Q(sum(row[i] * row[j] for row in fi), STORE * STORE)
            gram[j][i] = gram[i][j]
    lower, upper = [], []
    for i in range(dim):
        lr, ur = [], []
        for j in range(dim):
            diag = Q(1) if i == j else Q(0)
            low = ahat[i][j] - (BETA + eps_u) * diag
            low -= (Q(101, 100) * gram[i][j] + 101 * eps_f2 * diag + omega[i][j]) / delta
            lr.append(low)
            ur.append(ahat[i][j] + (eps_u - BETA) * diag)
        lower.append(lr)
        upper.append(ur)
    margin = Q(1, 100000) if odd else Q(1, 1000)
    if odd:
        tested = [[I.point(lower[i][j] - (margin if i == j else 0)) for j in range(dim)]
                  for i in range(dim)]
        complement = None
    else:
        a0, a1, a2, a3 = old["coefficients"]
        a = [a1, a2, a3] + [Q(0)] * (HEAD - 3)
        # W_i=e_i-a_i/(sqrt(2)*a0)e_0; this spans f_ep^perp EXACTLY.
        w0 = [-I.point(x) / (data["root2"] * a0) for x in a]
        tested = []
        for i in range(HEAD):
            row = []
            for j in range(HEAD):
                val = I.point(lower[i + 1][j + 1])
                val += w0[i] * lower[0][j + 1] + w0[j] * lower[i + 1][0]
                val += w0[i] * w0[j] * lower[0][0]
                val -= margin * ((1 if i == j else 0) + w0[i] * w0[j])
                row.append(val)
            tested.append(row)
        complement = w0
    pivots = ldl_pivots(tested)
    floor = data["diagonal"][HEAD + 1] - data["mass"]
    if odd:
        floor -= data["pi"] / 2 + 1 - data["eneg"]
        floor -= 4 * data["sh"] ** 2 / (data["pi"] ** 2 * HEAD)
    checks = dict(positive_pivots=all(p.lo > 0 for p in pivots),
                  high_floor=floor.strictly_above(BETA + delta),
                  complete_residual_rows=len(residual) == REMOTE - HEAD,
                  correct_head_dimension=dim == (HEAD if odd else HEAD + 1))
    return dict(odd=odd, indices=indices, residual_indices=list(range(HEAD + 1, REMOTE + 1)),
                Ahat=ahat, Fhat=residual, epsilon_U=eps_u, epsilon_F_squared=eps_f2,
                max_residual_entry_error=max_f_entry_error, Omega_safe=omega,
                tail_data=taildata, lower=lower, upper=upper, delta=delta,
                high_floor=floor, tested_margin=margin, complement_w0=complement,
                pivots=pivots, checks=checks)


def certificate() -> dict[str, object]:
    old = endpoint_certificate()
    if not all(old["checks"].values()):
        raise ArithmeticError("existing complete source trial failed")
    data = signals(old)
    odd = sector(data, old, True)
    even = sector(data, old, False)
    checks = dict(existing_trial=all(old["checks"].values()),
                  active_shift_longer_than_half_window=data["log2"].strictly_above(Q(1, 2)),
                  odd=all(odd["checks"].values()), even=all(even["checks"].values()),
                  gap_margin=BETA - Q(1, 200000) == Q(19, 200000))
    return dict(bits=BITS, stored_bits=STORE_BITS, T=Q(1, 2), beta=BETA,
                N=HEAD, M=HEAD, L=REMOTE, Y="exact zero map", J=SERIES,
                old_trial=old, odd=odd, even=even, gap=Q(19, 200000), checks=checks)
