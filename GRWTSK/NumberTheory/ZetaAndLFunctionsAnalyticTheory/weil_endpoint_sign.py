"""Exact-integer interval witness for an even low-Schur sign obstruction.

Copyright (c) 2026 grwtsk contributors. MIT license.
Local attribution: grwtsk contributors. AI-assisted mathematical source.

The functions are pure mathematical evaluators: no I/O, network, subprocess,
scheduler, repository mutation or proof execution. Only Python integers and
fractions are used in the certificate. No floating transcendental evaluation.
The source-form reduction, all analytic remainders and limitations are documented
in weil-endpoint-sign-obstruction.md. This is not a positive spectral certificate
or a Lean/kernel check. The finite witness is for T=1/2, not cofinal supports.
"""
from __future__ import annotations

from dataclasses import dataclass
from fractions import Fraction as Q
from math import factorial, isqrt

BITS = 160
SCALE = 1 << BITS


def floor_scaled(q: Q) -> int:
    return (q.numerator * SCALE) // q.denominator


def ceil_scaled(q: Q) -> int:
    return -((-q.numerator * SCALE) // q.denominator)


@dataclass(frozen=True)
class Interval:
    """Closed [lo/SCALE, hi/SCALE]; every operation rounds outward exactly."""
    lo: int
    hi: int

    def __post_init__(self) -> None:
        if self.lo > self.hi:
            raise ValueError("reversed interval")

    @staticmethod
    def point(x: int | Q) -> Interval:
        x = Q(x)
        return Interval(floor_scaled(x), ceil_scaled(x))

    @staticmethod
    def bounds(lo: Q, hi: Q) -> Interval:
        if lo > hi:
            raise ValueError("reversed rational bounds")
        return Interval(floor_scaled(lo), ceil_scaled(hi))

    def __add__(self, other: int | Q | Interval) -> Interval:
        o = coerce(other)
        return Interval(self.lo + o.lo, self.hi + o.hi)

    __radd__ = __add__

    def __neg__(self) -> Interval:
        return Interval(-self.hi, -self.lo)

    def __sub__(self, other: int | Q | Interval) -> Interval:
        return self + (-coerce(other))

    def __rsub__(self, other: int | Q | Interval) -> Interval:
        return coerce(other) + (-self)

    def __mul__(self, other: int | Q | Interval) -> Interval:
        o = coerce(other)
        products = (self.lo * o.lo, self.lo * o.hi,
                    self.hi * o.lo, self.hi * o.hi)
        return Interval(min(products) // SCALE,
                        -((-max(products)) // SCALE))

    __rmul__ = __mul__

    def reciprocal(self) -> Interval:
        if self.lo <= 0 <= self.hi:
            raise ZeroDivisionError("interval contains zero")
        return Interval.bounds(Q(SCALE, self.hi), Q(SCALE, self.lo))

    def __truediv__(self, other: int | Q | Interval) -> Interval:
        return self * coerce(other).reciprocal()

    def __rtruediv__(self, other: int | Q | Interval) -> Interval:
        return coerce(other) * self.reciprocal()

    def __pow__(self, n: int) -> Interval:
        if not isinstance(n, int) or n < 0:
            raise ValueError("only nonnegative integer powers")
        if n == 0:
            return Interval.point(1)
        # Tight interval for integer powers, including sign-crossing even powers.
        a, b = Q(self.lo, SCALE), Q(self.hi, SCALE)
        if n % 2:
            return Interval.bounds(a ** n, b ** n)
        lower = Q(0) if a <= 0 <= b else min(a ** n, b ** n)
        return Interval.bounds(lower, max(a ** n, b ** n))

    def abs(self) -> Interval:
        if self.lo >= 0:
            return self
        if self.hi <= 0:
            return -self
        return Interval(0, max(-self.lo, self.hi))

    def sqrt(self) -> Interval:
        if self.lo < 0:
            raise ValueError("negative square-root argument")
        a, b = isqrt(self.lo * SCALE), isqrt(self.hi * SCALE)
        if b * b < self.hi * SCALE:
            b += 1
        return Interval(a, b)

    def strictly_below(self, q: Q) -> bool:
        return Q(self.hi, SCALE) < q

    def strictly_above(self, q: Q) -> bool:
        return Q(self.lo, SCALE) > q

    def rational_bounds(self) -> tuple[Q, Q]:
        return Q(self.lo, SCALE), Q(self.hi, SCALE)


def coerce(x: int | Q | Interval) -> Interval:
    return x if isinstance(x, Interval) else Interval.point(x)


def arctan_small(x: Q, terms: int = 64) -> Interval:
    """Alternating arctan series; 0 <= x <= 1/5."""
    if not 0 <= x <= Q(1, 5) or terms < 1:
        raise ValueError("arctan series range")
    total = sum(((-1) ** j * x ** (2 * j + 1) / (2 * j + 1)
                 for j in range(terms)), Q(0))
    nxt = x ** (2 * terms + 1) / (2 * terms + 1)
    # The next term has sign (-1)^terms, and the tail has magnitude <= nxt.
    return Interval.bounds(total - (nxt if terms % 2 else 0),
                           total + (nxt if not terms % 2 else 0))


def pi_interval() -> Interval:
    """Machin: pi = 16 atan(1/5) - 4 atan(1/239)."""
    return 16 * arctan_small(Q(1, 5)) - 4 * arctan_small(Q(1, 239))


def log_unit(x: Q, terms: int = 96) -> Interval:
    """Log on [1,2], using the positive atanh series and its geometric tail."""
    if not 1 <= x <= 2:
        raise ValueError("log-unit range")
    z = (x - 1) / (x + 1)
    total = 2 * sum((z ** (2 * j + 1) / (2 * j + 1)
                     for j in range(terms)), Q(0))
    tail = 2 * z ** (2 * terms + 1) / ((2 * terms + 1) * (1 - z * z))
    return Interval.bounds(total, total + tail)


def log_rational(x: Q) -> Interval:
    if x <= 0:
        raise ValueError("positive logarithm argument required")
    if x < 1:
        return -log_rational(1 / x)
    k = x.numerator.bit_length() - x.denominator.bit_length()
    if x < (1 << k):
        k -= 1
    y = x / (1 << k)
    return k * log_unit(Q(2)) + log_unit(y)


def log_interval(x: Interval) -> Interval:
    a, b = x.rational_bounds()
    lo, hi = log_rational(a), log_rational(b)
    return Interval(lo.lo, hi.hi)


def exp_small(x: Q, terms: int = 80) -> Interval:
    """Positive Taylor series, 0 <= x <= 1, with a geometric ratio tail."""
    if not 0 <= x <= 1 or terms < 1:
        raise ValueError("exp-small range")
    total = sum((x ** j / factorial(j) for j in range(terms)), Q(0))
    first = x ** terms / factorial(terms)
    tail = first / (1 - x / (terms + 1))
    return Interval.bounds(total, total + tail)


def trig(x: Interval, cosine: bool = False, terms: int = 80) -> Interval:
    """Taylor polynomial with the real Lagrange remainder; no range guess."""
    bound = Q(max(abs(x.lo), abs(x.hi)), SCALE)
    if bound > 20 or terms < 1:
        raise ValueError("trigonometric evaluation range")
    term = Interval.point(1) if cosine else x
    total = term
    xx = x ** 2
    for j in range(1, terms):
        denominator = ((2 * j - 1) * (2 * j) if cosine
                       else (2 * j) * (2 * j + 1))
        term = -(term * xx) / denominator
        total += term
    degree = 2 * terms if cosine else 2 * terms + 1
    error = bound ** degree / factorial(degree)
    return total + Interval.bounds(-error, error)


def euler_gamma_interval(n: int = 1024) -> Interval:
    """a_n - 1/(18 n^2) <= gamma <= a_n, a_n=H_n-log(n+1/2).

    a_n decreases to gamma. Its kth decrement is
    2 atanh(1/(2k))-1/k <= 1/(9k^3); sum_{k>n} k^-3 <= 1/(2n^2).
    """
    if n < 1:
        raise ValueError("positive harmonic cutoff")
    harmonic = sum((Q(1, k) for k in range(1, n + 1)), Q(0))
    a = Interval.point(harmonic) - log_rational(Q(2 * n + 1, 2))
    return a + Interval.bounds(-Q(1, 18 * n * n), Q(0))


def certificate() -> dict[str, object]:
    """Return exact bounds and Boolean checks; failure is not hidden by assertions."""
    p = pi_interval()
    l2 = log_rational(Q(2))
    gamma = euler_gamma_interval()
    c = -gamma - p / 2 - 3 * l2 - log_interval(p)
    a0, a1, a2, a3 = Q(2801, 5000), Q(152151, 250000), Q(43729, 1000000), Q(-3991, 500000)
    aq = (a0, a1, a2, a3)
    a = tuple(Interval.point(v) for v in aq)
    normq = 2 * a0 * a0 + a1 * a1 + a2 * a2 + a3 * a3
    tauq = a0 - a1 + a2 - a3
    norm2, tau = Interval.point(normq), Interval.point(tauq)
    omega = tuple(2 * p * n for n in range(4))
    omega2 = tuple(v ** 2 for v in omega)
    jmax = 1024
    qpartial = c * norm2
    ehalf = exp_small(Q(1, 2))
    eneg = 1 / ehalf
    step = eneg ** 4
    wexp = eneg
    for j in range(jmax):
        alpha = Interval.point(Q(4 * j + 1, 2))
        alpha2 = alpha ** 2
        for n in range(1, 4):
            qpartial += a[n] ** 2 * 2 * omega2[n] / (alpha * (alpha2 + omega2[n]))
        bracket = a[0] + sum(((-1) ** n * a[n] * alpha2 / (alpha2 + omega2[n])
                              for n in range(1, 4)), Interval.point(0))
        qpartial += 4 * (1 - wexp) * bracket ** 2 / alpha2
        wexp *= step
    equarter = exp_small(Q(1, 4))
    sinhquarter = (equarter - 1 / equarter) / 2
    pole_bracket = 4 * a[0] + sum(((-1) ** n * a[n] / (Q(1, 4) + omega2[n])
                                   for n in range(1, 4)), Interval.point(0))
    qpartial += 4 * sinhquarter ** 2 * pole_bracket ** 2
    mass = l2 / Interval.point(2).sqrt()
    signal = tuple(mass * trig(omega[n] * l2) for n in range(4))
    prime = 4 * a[0] ** 2 * mass * (1 - l2)
    for n in range(1, 4):
        prime += a[n] ** 2 * (2 * mass * (1 - l2) * trig(omega[n] * l2, True)
                              - signal[n] / (p * n))
        prime -= 4 * a[0] * a[n] * (-1) ** n * signal[n] / (p * n)
        for m in range(n + 1, 4):
            prime += (-4 * (-1) ** (m + n) * a[m] * a[n] / p *
                      (m * signal[m] - n * signal[n]) / (m * m - n * n))
    qpartial -= prime
    alpha = Interval.point(Q(4 * jmax + 1, 2))
    weighted2 = sum((a[n] ** 2 * omega2[n] for n in range(1, 4)), Interval.point(0))
    weighted1 = sum((a[n].abs() * omega2[n] for n in range(1, 4)), Interval.point(0))
    diagonal_tail = 2 * weighted2 * (1 / alpha ** 3 + 1 / (4 * alpha ** 2))
    boundary_tail = 4 * (tau.abs() + weighted1 / alpha ** 2) ** 2 * (1 / alpha ** 2 + 1 / (2 * alpha))
    qupper = qpartial + diagonal_tail + boundary_tail
    cbd = p + 2 + 4 * eneg / (1 - step)
    sinhhalf = (ehalf - eneg) / 2
    bcal = cbd + 2 * mass + 1 + 2 * sinhhalf
    n0 = 100_000_000
    high_floor = c + log_interval(1 + 16 * p ** 2 * (n0 + 1) ** 2) / 2 - 2 * mass - cbd - 4 * sinhquarter ** 2 / (p ** 2 * n0)
    return {
        "bits": BITS, "source_series_cutoff": jmax, "gamma_cutoff": 1024,
        "coefficients": aq, "norm_squared": normq, "endpoint": tauq,
        "partial_form": qpartial, "diagonal_tail": diagonal_tail,
        "boundary_tail": boundary_tail, "form_upper": qupper,
        "c_infty": c, "bounded_perturbation": bcal, "odd_high_floor_at_n0": high_floor,
        "checks": {
            "one_lt_norm_squared_lt_four": 1 < normq < 4,
            "endpoint_between_zero_and_1_over_250": 0 < tauq < Q(1, 250),
            "trial_form_below_1_over_200000": qupper.strictly_below(Q(1, 200000)),
            "abs_c_infty_below_six": c.abs().strictly_below(Q(6)),
            "perturbation_below_thirteen": bcal.strictly_below(Q(13)),
            "both_high_floors_above_two": high_floor.strictly_above(Q(2)),
            "pi_below_four": p.strictly_below(Q(4)),
            "only_prime_power_two": (ehalf ** 2).strictly_above(Q(2)) and (ehalf ** 2).strictly_below(Q(3)),
        },
    }
