# Generated rational enclosures of the literal prime weights

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilRationalPrimeWeights.lean](WeilRationalPrimeWeights.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.RationalPrimeWeights`.
MSC2020: 11M06 (primary); 11A25, 65G20 (supporting).
Consumer: [WeilPrimeWeightSampling.lean](WeilPrimeWeightSampling.lean).
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty and prior-art completeness: UNASSESSED; no novelty claimed.
Lean parsing, elaboration, exact types, builds, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
The finite rational table below WAS evaluated using Python integer/Fraction
arithmetic. That is not execution of Lean, a complete source sample, or a Weil
positivity certificate. Historical verification statuses are unchanged.

## RPW-1. Exact target and integer root admission

The target is the existing coefficient

    w_q = LowSchur.primeWeight q = vonMangoldt(q) / sqrt(q).

No replacement prime weight is introduced. Fix integers q>=1 and D>0, and put

    s = Nat.sqrt(q D^2),  a = D/(s+1),  b = D/s.

The integer square-root theorems at the pinned Mathlib revision give

    s^2 <= q D^2 < (s+1)^2.

Also D<=s, since D^2<=q D^2 and `Nat.le_sqrt'`. In particular all denominators
used below are positive. For x=sqrt(q)>0, square comparison on nonnegative
numbers gives s<=Dx<s+1. Inversion of these POSITIVE numbers then gives

    0 <= a <= 1/sqrt(q) <= b <= 1.                    (RPW-1)

This proves `reciprocal_enclosure`; the only numerical root computation in
the definitions is the computable NATURAL sqrt. `rootIndex_eq_of_checks`
alternatively admits any proposed integer s by its two exact square checks.
No floating-point sqrt or assumed transcendental enclosure is an input.

Subtracting the rational endpoints gives

    b-a = D/[s(s+1)] <= 1/D,                           (RPW-2)

because D^2<=s^2<=s(s+1). This is an explicit precision bound, independent of
q>=1. The method conservatively uses s+1 even for a perfect square. Exact
square recognition could tighten it, but is not required for validity.
The definitions are total at q=0 or D=0; the interpretation (RPW-1)--2 is
NOT asserted there. Positivity hypotheses must not be deleted.

## RPW-2. Preserve the actual von Mangoldt coefficient

The pinned `ArithmeticFunction.vonMangoldt_apply` says

    vonMangoldt(q) = if IsPrimePow(q) then log(minFac(q)) else 0.

The natural-number predicate has a computable decidable instance at the
inspected pin. Thus the branch used by the new rational definitions is finite
arithmetic. It is not a test using rounded logarithms or numerical primality.

For a prime power q=p^k with k>=1, minFac(q)=p. Apply the EXISTING
`RationalLogarithms.log_enclosure` at p, obtaining rational l_N,u_N with

    0 <= l_N <= log p <= u_N,
    u_N-l_N = W_N(p).

Here z=(p-1)/(p+1),

    l_N=2 sum_(j<N) z^(2j+1)/(2j+1),
    W_N=2 z^(2N+1)/(1-z^2).

The nonnegativity of l_N follows term by term, not from the unknown sign of
the Weil form. Multiply these logarithm inequalities by (RPW-1):

    l_N a <= log p / sqrt(q) <= u_N b.                (RPW-3)

For a non-prime-power set BOTH endpoints to zero. The original weight is then
zero by the von Mangoldt identity. Such labels are not removed from the source
inventory. `weight_enclosure` proves (RPW-3) or exact zero for every q>=1.

With lower L and upper U, define center=(L+U)/2 and radius=(U-L)/2. Their
rational arithmetic has no Real.log or Real.sqrt call. The source return is

    radius>=0,  |primeWeight(q)-center|<=radius.        (RPW-4)

The normalization at higher powers is essential: at q=4 the numerator is
log 2, not log 4. Replacing it by log q doubles this coefficient.

## RPW-3. Precision and its scope

For a prime power, the exact width is

    U-L = (u_N-l_N)b + l_N(b-a).

Since b<=1 and (RPW-2) holds,

    U-L <= W_N(p) + u_N(p)/D.                         (RPW-5)

This is `weight_width_le`. For each fixed q, increasing N and D can reduce
the coefficient error arbitrarily: z<1 gives geometric decay of W_N, and
u_N remains bounded by its explicit expression as N increases. For a fixed
FINITE inventory one can choose precision for each entry and sum the errors.
This is not a uniform success theorem for growing windows, numbers of modes,
or a collapsing signed Schur margin. No spectral sign follows from (RPW-5).
The logarithm generator's separately available dyadic reduction may improve
cost; this module deliberately uses its already inspected direct endpoints.

## RPW-4. Executed rational coefficient table

Inputs: N=64, D=10^12, decimal endpoint denominator 10^12. The following
entries were computed using Python `fractions.Fraction` and `math.isqrt`.
Every root was checked by s^2<=qD^2<(s+1)^2. Each printed decimal is an EXACT
rational number with denominator 10^12, outward-rounded from (RPW-3).
There is no float, logarithm, exponential, or real square-root evaluation.

| q | prime base (or zero) | integer s | lower weight | upper weight |
|---|---|---|---|---|
| 2 | 2 | 1414213562373 | 0.490129071733 | 0.490129071735 |
| 3 | 3 | 1732050807568 | 0.634284100597 | 0.634284100598 |
| 4 | 2 | 2000000000000 | 0.346573590279 | 0.346573590280 |
| 5 | 5 | 2236067977499 | 0.719762515553 | 0.719762515554 |
| 6 | zero | 2449489742783 | 0 | 0 |
| 7 | 7 | 2645751311064 | 0.735484904010 | 0.735484904012 |
| 8 | 2 | 2828427124746 | 0.245064535867 | 0.245064535868 |
| 9 | 3 | 3000000000000 | 0.366204096222 | 0.366204096223 |
| 25 | 5 | 5000000000000 | 0.321887582486 | 0.321887582487 |
| 64 | 2 | 8000000000000 | 0.086643397569 | 0.086643397570 |

The table contains scalar examples, not an asserted active inventory for a
particular support radius. Inventory admission remains separate. The analytic
identification of these numbers with w_q is (RPW-1)--4; it has a written proof
and an uncompiled Lean candidate, not a kernel-checked numerical receipt.

Minimal reproduction, Python standard library only:

```python
from fractions import Fraction as F
from math import isqrt

def prime_base(q):
    if q < 2: return None
    p = 2
    while p*p <= q and q % p: p += 1
    if q % p: p = q
    r = q
    while r % p == 0: r //= p
    return p if r == 1 else None

def log_bounds(q, n):
    z = (F(q)-1)/(F(q)+1)
    l = 2*sum((z**(2*k+1)/(2*k+1) for k in range(n)), F(0))
    return l, l+2*z**(2*n+1)/(1-z*z)

def weight_bounds(q, n, d):
    assert q >= 1 and d > 0
    s = isqrt(q*d*d)
    assert s*s <= q*d*d < (s+1)*(s+1) and s >= d
    a,b = F(d,s+1),F(d,s)
    assert 0 <= b-a <= F(1,d) and b <= 1
    p = prime_base(q)
    if p is None: return F(0),F(0),s
    l,u = log_bounds(p,n)
    assert u*b-l*a <= u-l+u/d
    return l*a,u*b,s

scale = 10**12
for q in (2,3,4,5,6,7,8,9,25,64):
    lo,hi,s = weight_bounds(q,64,scale)
    l = lo.numerator*scale//lo.denominator
    u = -((-hi.numerator*scale)//hi.denominator)
    assert F(l,scale) <= lo <= hi <= F(u,scale)
    print(q,s,l,u)  # divide the last two integers by scale
```

Additional executed exact-arithmetic controls checked 4096 combinations:
q=1,...,256; D in {1,2,10,1000}; N in {0,1,4,16}. They checked root admission,
reciprocal width, nonnegative ordered weight endpoints, (RPW-5) for prime
powers, and outward rational conversion. All passed. They do not test Lean
elaboration or establish independent review of the analytic theorem.

## Individual declaration correspondence

All public names below belong to the namespace printed above.

| Declaration | Primary argument / immediate source / consumer |
|---|---|
| `rootIndex_bounds` | Pinned `Nat.sqrt_le'`, `Nat.lt_succ_sqrt'`; integer certificate for RPW-1. |
| `rootIndex_eq_of_checks` | Pinned `Nat.eq_sqrt'`; admission of a proposed root by two integer inequalities. |
| `resolution_le_rootIndex` | D^2<=qD^2 and pinned `Nat.le_sqrt'`; positive denominator and width consumer. |
| `reciprocal_enclosure` | RPW-1, nonnegative square comparison with `Real.sq_sqrt`, positive division; genuine reciprocal source. |
| `reciprocal_width_le` | Exact rational subtraction and D<=s, RPW-2; precision and integer-window normalization. |
| `nonPrimePow_zero` | Original `vonMangoldt_apply`, decidable non-prime-power branch; preserves zero-weight labels. |
| `weight_enclosure` | RPW-3 with canonical `primeWeight`, existing log enclosure and reciprocal result; no log(q) substitution. |
| `radius_nonneg` | Order of the endpoints through the genuine source coefficient; finite error budget. |
| `center_error` | Midpoint consequence RPW-4; direct consumer in prime sample rounding. |
| `weight_width_le` | Exact width decomposition RPW-5; separate precision parameters. |

`rootIndex`, reciprocal endpoint definitions, conditional weight endpoints,
center and radius implement exactly the expressions above. The private
`logLower_nonneg` proves termwise nonnegativity of the existing finite sum.

## Sources, prior-art comparison and evidence

Inspected 2026-11-18. Math source base:
`00f5367de2fff82799f87dc68a00fdee4aea49ba`.
Lean pin: `leanprover/lean4:v4.34.1`.
Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

* [Mathlib Data/Nat/Sqrt](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Nat/Sqrt.lean),
  blob `6e0e55b225761cc0112e2b1c8d1d394ef867bfec`, exact named lemmas above.
  This is direct use of the established integer-root properties, not new root theory.
* [Mathlib Algebra/IsPrimePow](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Algebra/IsPrimePow.lean),
  blob `e173af2f72b7cd607eb18990d901b71aeba28875`, natural decidability via
  `isPrimePow_nat_iff_bounded_log_minFac`; permits actual finite generation.
* [Mathlib VonMangoldt](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean),
  blob `f0587555fbb762fc7283a1c22c7f1be07350c589`, `vonMangoldt_apply`,
  `vonMangoldt_apply_pow`, `vonMangoldt_apply_prime`; exact source semantics.
* [WeilRationalLogarithms.lean](WeilRationalLogarithms.lean), blob
  `776022a3cf679384fd2fb31404a90fc1178562c7`, `log_enclosure`, `radius_nonneg`;
  reused unchanged, including its candidate verification status.
* [WeilLowSchurEnclosure.lean](WeilLowSchurEnclosure.lean), blob
  `6830835e869817c46c8499d383d7864f8ddbc600`, original `primeWeight`.

These are elementary interval-composition consequences, not a claimed new
number-theoretic cancellation estimate. Repository search found no matching
supplier name; that does not establish literature or repository-wide absence.
The direct square-check derivation and hostile checks share the same source
identities; they are NOT independent proofs or independent review.

The local Lean/Lake executables and verified local Noe skill checkout were
absent. Canonical `noe-proof-automation/SKILL.md` returned 404 at Noe main
`acba1af65c9de90fdc095dc7db53dafc93230245`. No dependent proof execution was
dispatched. Ordinary source publication does not imply mathematical acceptance.

## Falsification and remaining boundary

* At q=4 the incorrect log(q) numerator is twice the correct weight. Exact
  rational intervals from N=64 distinguish these two values strictly.
* At q=6 the correct weight and both generated endpoints are zero. Bounding
  it by log(6)/sqrt(6) is only a majorant, not an evaluation of the source.
* D=0 makes an inverse endpoint totalized; theorems exclude it. q=0 is likewise
  excluded from reciprocal interpretations.
* A fixed coefficient table is not a signed form certificate. Gamma and pole
  evaluation, sine/pi data, source inventory completeness, actual source
  sample enclosures, high-floor and low-coordinate premises, matrix signs,
  and universal cofinal certificate supply remain separate obligations.
* No primitive-character transfer, new RH endpoint, or unconditional RH/GRH
  conclusion is supplied. No root imports, pins or existing statuses change.
