#!/usr/bin/env python3
"""Finite signed prime-shell energy enclosures using integer interval arithmetic.

T=log(N), b=log(3/2), and x=exp(u) lies in [2N/3,N]. This is finite
software evidence, not a Lean certificate or a uniform arithmetic theorem.
No floating-point arithmetic, external libraries, plots or document assets
are used. Output is JSON, to stdout unless --output is explicitly supplied.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from fractions import Fraction
from functools import lru_cache
import hashlib
from math import isqrt
from pathlib import Path
import json
import sys


def require(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(message)


def ceil_div(a: int, b: int) -> int:
    require(b > 0, "ceil_div requires a positive divisor")
    return -((-a)//b)


@dataclass(frozen=True)
class Interval:
    lo: int
    hi: int
    q: int

    def __post_init__(self):
        require(self.lo <= self.hi and self.q > 0, "invalid outward interval")

    @classmethod
    def rational(cls, value: Fraction | int, q: int) -> Interval:
        value = Fraction(value)
        return cls(value.numerator*q//value.denominator,
                   ceil_div(value.numerator*q, value.denominator), q)

    def __add__(self, other: Interval) -> Interval:
        require(self.q == other.q, "interval denominators differ")
        return Interval(self.lo+other.lo, self.hi+other.hi, self.q)

    def __neg__(self) -> Interval:
        return Interval(-self.hi, -self.lo, self.q)

    def __sub__(self, other: Interval) -> Interval:
        return self+-other

    def __mul__(self, other: Interval) -> Interval:
        require(self.q == other.q, "interval denominators differ")
        products = [a*b for a in (self.lo, self.hi) for b in (other.lo, other.hi)]
        return Interval(min(products)//self.q, ceil_div(max(products), self.q), self.q)

    def scale(self, n: int) -> Interval:
        a, b = self.lo*n, self.hi*n
        return Interval(min(a,b), max(a,b), self.q)

    def divide_int(self, n: int) -> Interval:
        require(n > 0, "interval division requires a positive integer")
        return Interval(self.lo//n, ceil_div(self.hi,n), self.q)

    def square(self) -> Interval:
        lower = 0 if self.lo <= 0 <= self.hi else min(self.lo**2, self.hi**2)
        return Interval(lower//self.q, ceil_div(max(self.lo**2,self.hi**2),self.q), self.q)

    def absolute(self) -> Interval:
        lower = 0 if self.lo <= 0 <= self.hi else min(abs(self.lo),abs(self.hi))
        return Interval(lower,max(abs(self.lo),abs(self.hi)),self.q)

    def reciprocal(self) -> Interval:
        require(self.lo > 0, "interval reciprocal requires a certified positive lower bound")
        return Interval(self.q**2//self.hi, ceil_div(self.q**2,self.lo), self.q)

    def nonnegative(self) -> Interval:
        # Intersect an already enclosed integral of a real square with [0,+∞).
        require(self.hi >= 0, "square-energy enclosure has a negative upper bound")
        return Interval(max(0,self.lo), self.hi, self.q)

    def contains_zero(self) -> bool:
        return self.lo <= 0 <= self.hi

    def record(self) -> dict:
        digits = len(str(self.q))-1
        def decimal(n):
            magnitude = str(abs(n)).zfill(digits+1)
            return ("-" if n < 0 else "")+magnitude[:-digits]+"."+magnitude[-digits:]
        return {"lower_units": str(self.lo), "upper_units": str(self.hi),
                "lower": decimal(self.lo), "upper": decimal(self.hi),
                "width": decimal(self.hi-self.lo), "width_units": str(self.hi-self.lo)}


class Arithmetic:
    def __init__(self, digits: int):
        self.digits, self.q = digits, 10**digits
        self.series_terms = 1
        # For 0≤t≤1/3 the omitted log series is at most
        # 9/[4(2J+1)3^(2J+1)]. Choose that ≤1/q exactly.
        while 9*self.q > 4*(2*self.series_terms+1)*3**(2*self.series_terms+1):
            self.series_terms += 1
        self.log_term_counts = {}

    def exact(self, value: Fraction | int) -> Interval:
        return Interval.rational(value,self.q)

    @lru_cache(maxsize=8192)
    def inverse_sqrt(self, value: Fraction | int) -> Interval:
        value = Fraction(value)
        require(value > 0, "inverse square root requires a positive value")
        numerator, denominator = self.q**2*value.denominator, value.numerator
        lower = isqrt(numerator//denominator)
        require(lower**2*denominator <= numerator < (lower+1)**2*denominator,
                "integer square-root bracket failed")
        upper = lower if lower**2*denominator == numerator else lower+1
        return Interval(lower,upper,self.q)

    @lru_cache(maxsize=2048)
    def logarithm(self, value: Fraction | int) -> Interval:
        value = Fraction(value)
        require(value >= 1, "logarithm enclosure requires a value at least one")
        if value == 1:
            return self.exact(0)
        n,d,k = value.numerator,value.denominator,0
        while n > 2*d:
            d *= 2
            k += 1
        t_exact = Fraction(n-d,n+d)
        require(0 <= t_exact <= Fraction(1,3), "logarithm range reduction left its certified interval")
        a,b = t_exact.numerator,t_exact.denominator
        J,apower,bpower = 1,a**3,b**3
        # Exact tail comparison for this rational t: no large denominator
        # sums or floating-point stopping criterion are involved.
        while 2*self.q*apower*b*b > (2*J+1)*bpower*(b*b-a*a):
            J += 1
            apower *= a*a
            bpower *= b*b
        require(J <= self.series_terms, "logarithm tail bound exceeded the global term limit")
        self.log_term_counts[J] = self.log_term_counts.get(J,0)+1
        t = self.exact(t_exact)
        t_squared, power, series = t.square(),t,self.exact(0)
        for j in range(J):
            series = series+power.divide_int(2*j+1)
            power = power*t_squared
        # The exact tail is nonnegative and ≤1/q. Partial sums themselves
        # have been rounded outward after every operation.
        base = series.scale(2)+Interval(0,1,self.q)
        return base+self.logarithm(2).scale(k) if k else base


def arithmetic_source(N: int) -> tuple[list[int],list[int],list[int]]:
    """Exact integer Möbius values and largest prime factors through N."""
    mu, largest, primes = [1]*(N+1),[0]*(N+1),[]
    mu[0] = 0
    for p in range(2,N+1):
        if largest[p] == 0:
            primes.append(p)
            for n in range(p,N+1,p):
                largest[n] = p
                mu[n] *= -1
            for n in range(p*p,N+1,p*p):
                mu[n] = 0
    return mu,largest,primes


def component_energy(A: Interval, D: int, log_ratio: Interval,
                     root_difference: Interval, reciprocal_difference: Interval) -> Interval:
    return (A.square()*log_ratio + (A*root_difference).scale(4*D)+
            reciprocal_difference.scale(D*D)).scale(4)


def cross_energy(A: Interval, D: int, B: Interval, E: int, log_ratio: Interval,
                 root_difference: Interval, reciprocal_difference: Interval) -> Interval:
    # Complete ordered cross term: ∫GH+∫HG = 2∫GH, with all signs retained.
    return (A*B*log_ratio + (A.scale(E)+B.scale(D))*root_difference.scale(2)+
            reciprocal_difference.scale(D*E)).scale(8)


def canonical_hash(value) -> str:
    return hashlib.sha256(json.dumps(value,separators=(",",":"),sort_keys=True).encode()).hexdigest()


def compact_examples(values: list) -> list:
    return values if len(values) <= 16 else values[:8]+values[-8:]


def coefficient_record(coefficients: list[int]) -> dict:
    values = coefficients[1:]
    nonzero = [{"n":n,"coefficient":c} for n,c in enumerate(coefficients) if n and c]
    return {"length":len(values),"nonzero_count":len(nonzero),
            "canonical_array_sha256":canonical_hash(values),
            "nonzero_examples":compact_examples(nonzero)}


def diagnose(N: int, arithmetic: Arithmetic, dense: dict | None = None) -> dict:
    mu,largest,primes = arithmetic_source(N)
    prime_set = set(primes)
    cutoff = 2*N//3
    shell = [p for p in primes if 3*p > 2*N]
    shell_set = set(shell)
    mature = [mu[n] if largest[n] <= cutoff else 0 for n in range(N+1)]
    horizon = [-1 if n in shell_set else 0 for n in range(N+1)]
    mature[0] = 0
    require(all(mature[n]+horizon[n] == mu[n] for n in range(1,N+1)),
            "prime-shell coefficient decomposition failed")
    old_truncated = [mu[n] if n <= cutoff else 0 for n in range(N+1)]
    omitted = [n for n in range(cutoff+1,N+1) if mature[n] != 0]
    require(all(n not in prime_set for n in omitted),
            "omitted mature comparison unexpectedly contains a prime")
    echo = [mature[n]-old_truncated[n] for n in range(N+1)]
    wrong = [old_truncated[n]+horizon[n] for n in range(N+1)]
    omitted_terms = [{"n":n,"mu":mu[n]} for n in omitted]
    if dense is not None:
        dense[str(N)] = {"mu":mu[1:],"mature_G":mature[1:],"horizon_H":horizon[1:],
                         "shell_primes":shell,"omitted_mature_terms":omitted_terms}
    names = {"G": mature, "H": horizon, "P": mu,
             "old_truncated": old_truncated, "echo": echo, "wrong_P": wrong}
    sums = {name:arithmetic.exact(0) for name in names}
    counts = {name:0 for name in names}
    energies = {name:arithmetic.exact(0) for name in names}
    signed_cross, wrong_cross = arithmetic.exact(0),arithmetic.exact(0)
    left = Fraction(2*N,3)
    endpoints = [left]+[Fraction(n) for n in range(cutoff+1,N) if n > left]+[Fraction(N)]
    active = 0
    for L,R in zip(endpoints,endpoints[1:]):
        require(L < R, "energy partition contains a nonpositive interval")
        while active+1 <= L:
            active += 1
            note = arithmetic.inverse_sqrt(active)
            for name,coefficients in names.items():
                coefficient = coefficients[active]
                sums[name] = sums[name]+note.scale(coefficient)
                counts[name] += coefficient
        log_ratio = arithmetic.logarithm(R/L)
        root_difference = arithmetic.inverse_sqrt(R)-arithmetic.inverse_sqrt(L)
        reciprocal_difference = arithmetic.exact(1/L-1/R)
        for name in names:
            energies[name] = energies[name]+component_energy(sums[name],counts[name],
                                log_ratio,root_difference,reciprocal_difference)
        signed_cross = signed_cross+cross_energy(sums["G"],counts["G"],sums["H"],counts["H"],
                                                log_ratio,root_difference,reciprocal_difference)
        wrong_cross = wrong_cross+cross_energy(sums["old_truncated"],counts["old_truncated"],
                                              sums["H"],counts["H"],log_ratio,
                                              root_difference,reciprocal_difference)
    energies = {name:energy.nonnegative() for name,energy in energies.items()}
    sector = energies["G"]+energies["H"]
    unsignedEnergy = sector+signed_cross.absolute()
    ledger = energies["P"]-sector-signed_cross
    require(ledger.contains_zero(), "completed signed energy ledger misses zero")
    naive_residual = energies["P"]-energies["old_truncated"]-energies["H"]-wrong_cross
    wrong_ledger = energies["wrong_P"]-energies["old_truncated"]-energies["H"]-wrong_cross
    require(wrong_ledger.contains_zero(), "naive-source signed energy ledger misses zero")
    ratios = ({"residual_fraction_P_over_sector_load": (energies["P"]*sector.reciprocal()).record(),
               "signed_settled_fraction_negative_C_over_sector_load": (-signed_cross*sector.reciprocal()).record(),
               "joint_residual_over_unsignedEnergy": (energies["P"]*unsignedEnergy.reciprocal()).record()}
              if sector.lo > 0 else {"status":"denominator_not_certified_positive"})
    ratios["joint_residual_U_over_one_plus_sector_load"] = (
        energies["P"]*(arithmetic.exact(1)+sector).reciprocal()).record()
    orientation = ("cancelling" if signed_cross.hi < 0 else
                   "amplifying" if signed_cross.lo > 0 else "unresolved_at_declared_precision")
    return {
        "N": N, "T": "log(N)", "b": "log(3/2)",
        "physical_window": {"left_numerator":2*N,"left_denominator":3,"right":N},
        "old_prime_cutoff_floor": cutoff,
        "prime_count_through_N":len(primes), "old_prime_count":len(primes)-len(shell),
        "shell_primes":{"count":len(shell),"canonical_array_sha256":canonical_hash(shell),
                        "examples":compact_examples(shell)},
        "coefficientwise_G_plus_H_equals_actual_mu": True,
        "joint_residual_U_equals_completed_P":True,
        "coefficient_certificates":{"actual_mu":coefficient_record(mu),
                                    "mature_G":coefficient_record(mature),
                                    "horizon_H":coefficient_record(horizon)},
        "interval_count":len(endpoints)-1,
        "energies": {"mature_G":energies["G"].record(), "horizon_H":energies["H"].record(),
                     "completed_P":energies["P"].record(), "joint_residual_U":energies["P"].record(),
                     "signed_ordered_cross_C":signed_cross.record(),
                     "sector_load_G_plus_H":sector.record(), "unsignedEnergy":unsignedEnergy.record()},
        "cross_orientation":orientation, "cancellation_ratios": ratios,
        "signed_ledger_residual": {**ledger.record(),"contains_zero":True},
        "missing_composite_comparison": {
            "omitted_mature_term_count":len(omitted),
            "omitted_mature_terms_sha256":canonical_hash(omitted_terms),
            "omitted_mature_term_examples":compact_examples(omitted_terms),
            "naive_coefficients_equal_actual_mu": not omitted,
            "naive_source_energy":energies["wrong_P"].record(),
            "naive_mature_energy":energies["old_truncated"].record(),
            "naive_ordered_cross":wrong_cross.record(), "maturity_echo_energy":energies["echo"].record(),
            "actual_minus_naive_energy":(energies["P"]-energies["wrong_P"]).record(),
            "actual_energy_in_naive_ledger_residual":{**naive_residual.record(),
                                                       "contains_zero":naive_residual.contains_zero()},
            "naive_source_own_ledger_contains_zero":wrong_ledger.contains_zero(),
        },
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--N",type=int,nargs="+",default=[8,16,64,256,1024,4096,16384,65536,262144])
    parser.add_argument("--digits",type=int,default=40)
    parser.add_argument("--output",type=Path)
    parser.add_argument("--dense-output",type=Path,help="Optional full coefficient arrays under ignored .local")
    args = parser.parse_args()
    if not 20 <= args.digits <= 200 or any(not 3 <= N <= 262144 for N in args.N):
        parser.error("Use 20..200 decimal digits and finite cutoffs 3..262144")
    if args.dense_output and ".local" not in args.dense_output.resolve().parts:
        parser.error("Dense arrays must remain under an ignored .local directory")
    if any(path and path.suffix.lower() in {".pdf",".tex"}
           for path in (args.output,args.dense_output)):
        parser.error("Diagnostic output must not use a PDF or TeX asset suffix")
    arithmetic = Arithmetic(args.digits)
    dense = {} if args.dense_output else None
    fixtures = [diagnose(N,arithmetic,dense) for N in args.N]
    result = {
        "schema_version":1, "status":"finite-software-interval-evidence",
        "script_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "precision_decimal_digits":args.digits,"common_denominator":str(arithmetic.q),
        "log_series_maximum_terms":arithmetic.series_terms,
        "log_series_term_count_histogram":dict(sorted(arithmetic.log_term_counts.items())),
        "arithmetic_certificate": {
            "rounding":"Every operation rounded outward to integer multiples of the common denominator.",
            "inverse_sqrt":"Integer isqrt with exact lower-square and upper-square comparisons.",
            "logarithm":"Binary range reduction; 2*atanh(t) positive series with 0<=t<=1/3 and exact tail upper bound <=1/denominator.",
            "waveform":"On each integer-delimited segment, 2*(A-D*x^(-1/2)); exact integer signed coefficients.",
            "energy_identity":"P_energy = G_energy + H_energy + C, where C=2*integral(G*H).",
        },
        "scope":"Actual finite Mobius prime-shell software interval diagnostics. No Lean certificate, all-T bound, reserve construction, P04 proof or RH proof is asserted.",
        "coefficient_hash_encoding":"SHA-256 of canonical compact JSON integer arrays indexed by n=1..N; omitted-term records use sorted JSON object keys.",
        "fixtures":fixtures,
    }
    output = json.dumps(result,indent=2)+"\n"
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(output,encoding="utf-8")
    else:
        sys.stdout.write(output)
    if args.dense_output:
        args.dense_output.parent.mkdir(parents=True,exist_ok=True)
        args.dense_output.write_text(json.dumps({"status":"finite-software-dense-coefficients",
            "script_sha256":result["script_sha256"],"fixtures":dense},separators=(",",":"))+"\n",encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
