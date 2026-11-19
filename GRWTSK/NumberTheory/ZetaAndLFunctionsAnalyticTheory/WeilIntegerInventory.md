# Integer admission for the literal Weil prime inventory

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilIntegerInventory.lean](WeilIntegerInventory.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.IntegerInventory`.
Primary MSC2020: 11M06; supporting 11A25, 65G20.
Consumer: [WeilSineInventoryPadding.lean](WeilSineInventoryPadding.lean), then
original signed-energy and complete residual-Gram source samples.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty and completeness of prior-art comparison: UNASSESSED; no novelty claimed.
Lean parsing, elaboration, exact types, builds, fresh kernel replay, transitive
axiom audit, and independent review: NOT_RUN. Exact finite rational boundary
calculations below were executed separately; they are not Lean verification.

## II-1. Exact target, source convention, and first missing input

The maintained `LowSchur.activePrimePowers T` is the finite set

    range(ceil(exp(2*T))) filtered by 2 <= q and q < exp(2*T).

It contains every integer label in this range, including composites of zero
von Mangoldt weight. The name is not a license to retain only primes. The
arithmetic output uses `primeWeight q = vonMangoldt(q)/sqrt(q)` and BOTH
translation orientations. The existing numerical suppliers operate on these
labels, but deciding the real-valued cutoff is not an executable integer test.

The present increment discharges that admission for three explicit windows
and supplies a different, support-safe upper inventory at every integer window.
Neither construction proves a lower sign of the Weil form. No character phases
or primitive Dirichlet transfer are added.

`Nat.lt_ceil` at the fixed mathlib pin is the exact equivalence

    q < ceil(x)  iff  (q : Real) < x.

Hence the ceiling test is redundant after the same real strict inequality is
retained. This proves, for EVERY real T and natural q,

    q in activePrimePowers T  iff  2 <= q and q < exp(2*T).        (II-1)

There is no approximation, positivity inference, or boundary relaxation.

## II-2. Exact integer inventory from two boundary comparisons

If a natural B satisfies

    B < exp(2*T) <= B+1,

then (II-1) gives `activePrimePowers T = Icc 2 B`. Forward: an active q is
strictly less than B+1, so q<=B by integrality. Reverse: q<=B<exp(2*T).
The first comparison is STRICT and the second NONSTRICT. In particular, when
exp(2*T)=B+1 exactly, B+1 is excluded. This argument does not presume any
transcendence theorem for the cutoff or exclude such an equality.

For B>=1, strict monotonicity of exp and exp(log x)=x on positive x give the
sufficient source-log conditions

    log B < 2*T <= log(B+1).                              (II-2)

To make these conditions finite, take rational T and EXACT factorizations
B=2^j*r, B+1=2^k*s with rational r,s>=1. Reuse the existing rational
`dyadicLower` and `dyadicUpper`. It suffices to verify

    dyadicUpper(j,r,N) < 2*T,
    2*T <= dyadicLower(k,s,N),                            (II-3)

together with the factorization/range checks. All these premises are rational
or integer comparisons. The actual source uses no rounded-log selection.
`active_eq_Icc_of_dyadic_checks` returns (II-3) to the ORIGINAL active set.
No numerical floor of exp is an input.

## II-3. Executed boundary examples, not signed form certificates

At series order N=8 the following exact rational checks passed. The printed
bounds are outward rational bounds with denominator 100000000 on the generated
logarithm endpoints; each was checked by integer cross multiplication.

| Radius T | B | Exact B factorization | Exact (B+1) factorization | Upper(log B) <= | Lower(log(B+1)) >= |
|---|---:|---|---|---:|---:|
| 1 | 7 | 2^2*(7/4) | 2^3*1 | 1.94591019 | 2.07944153 |
| 2 | 54 | 2^5*(27/16) | 2^5*(55/32) | 3.98898413 | 4.00733318 |
| 3 | 403 | 2^8*(403/256) | 2^8*(101/64) | 5.99893670 | 6.00141486 |

Consequently the exact integer-label inventories are respectively 2..7,
2..54, and 2..403. Their sizes are 6, 53, and 402. The counts of nonzero
prime-power labels are 5, 24, and 98, obtained by exact finite integer
classification, not by interpreting every label as nonzero.

At T=1 the nonzero labels are {2,3,4,5,7}. At T=2 they are

    {2,3,4,5,7,8,9,11,13,16,17,19,23,25,27,29,31,32,37,41,43,47,49,53}.

The Lean `active_one`, `active_two`, `active_three` candidates use the generated
eight-term checks directly through `norm_num`; those proof scripts have NOT
been executed. The lists of nonzero labels are descriptive finite calculations,
not additional new Lean theorems. Zero-weight labels can be retained without
changing the source; removing them requires the original exact von Mangoldt
zero identity, not an approximate weight threshold.

Minimal reproduction of the boundary certificate (Python standard library):

```python
from fractions import Fraction as F

def bounds(q, N):
    q = F(q)
    assert q >= 1
    z = (q-1)/(q+1)
    lo = 2*sum((z**(2*k+1)/(2*k+1) for k in range(N)), F(0))
    return lo, lo+2*z**(2*N+1)/(1-z*z)

def dyadic(q, N):
    j = q.bit_length()-1
    r = F(q, 2**j)
    assert q == 2**j*r and 1 <= r <= 2
    l2,u2 = bounds(2,N)
    lr,ur = bounds(r,N)
    return j*l2+lr, j*u2+ur

for T,B in ((1,7),(2,54),(3,403)):
    lowB,upB = dyadic(B,8)
    lowNext,upNext = dyadic(B+1,8)
    assert upB < 2*T <= lowNext
    S = 10**8
    upper = -((-upB.numerator*S)//upB.denominator)
    lower = lowNext.numerator*S//lowNext.denominator
    assert upB <= F(upper,S) < 2*T <= F(lower,S) <= lowNext
    print(T,B,upper,lower)
```

No floating-point exp/log value is used. The analytic identification of these
rational bounds with the original logarithms is the pre-existing written
argument and source candidate, not an executed kernel receipt.

A second scalar check used a DIFFERENT expansion of the exponential. With
x=2T, N=40, let S=sum_(k<=N) x^k/k! and
R=[x^(N+1)/(N+1)!]/[1-x/(N+2)]. For these positive x<N+2, the first omitted
term is positive and every following term ratio is <=x/(N+2). The convergent
positive exponential series therefore gives S<=exp(x)<=S+R. Exact rational
calculations independently of the logarithm code enclosed exp(2), exp(4),
and exp(6) respectively in

    [7.38905609,7.38905610],
    [54.59815003,54.59815004],
    [403.42879349,403.42879350].

These again separate the same integer boundaries. This is a distinct scalar
expansion and an arithmetic cross-check, not independent human review or a
second kernel proof. It is not used as an extra unproved Lean assumption.
Reproduction after importing Fraction and factorial:

```python
from math import factorial
for T,B in ((1,7),(2,54),(3,403)):
    x,N = F(2*T),40
    S = sum((x**k/factorial(k) for k in range(N+1)), F(0))
    R = (x**(N+1)/factorial(N+1))/(1-x/F(N+2))
    assert B < S <= S+R < B+1
```

## II-4. One upper inventory for every integer radius

The same positive log series at q=3, order 2 gives

    13/12 <= log 3.

Therefore log 9=2 log 3>=2 and, for EVERY n>=0,

    2*n <= n*log 9 = log(9^n),
    exp(2*n) <= 9^n.                                    (II-4)

This is an unconditional all-n statement with no scalar oracle. Equation
(II-1) implies `activePrimePowers n` is contained in `Icc 2 (9^n)`.
It is usually a STRICT containment. The companion proves equality of the
SUPPORTED SOURCE OUTPUTS, not equality of these sets. At n=j+1, (II-4)
supplies an explicitly finite list for each canonical dyadic stage.

The list grows exponentially. This is an existence and source-admission
construction, not an efficient prime enumeration theorem or a claim that
cofinal signed certificates exist. It does not make the high core coercive
or its Schur complement positive.

## Individual declaration correspondence

All names are qualified by the namespace above. Each is a local consequence,
not a newly claimed theorem from an external paper.

| Declaration | Complete argument / pinned supplier / consumer |
|---|---|
| `mem_active_iff` | II-1; source definition and mathlib `Nat.lt_ceil`; all admission and support returns. |
| `active_subset_Icc` | Active q<exp(2T)<=B gives integer q<=B; padding consumer. |
| `active_eq_Icc` | Both implications in II-2, retaining strict and nonstrict endpoints; exact finite inventory. |
| `active_eq_Icc_of_log` | Positive B,B+1, exp monotonicity and exp-log; source boundary conversion. |
| `active_eq_Icc_of_dyadic_checks` | Existing genuine-log enclosure plus exact rational factorizations and II-3; explicit examples. |
| `log_three_lower` | Existing log supplier at q=3,N=2, finite value 13/12; II-4. |
| `integer_exp_le_nine_pow` | II-4, log power and monotone exp; uniform upper inventory. |
| `integer_active_subset` | II-1 and II-4; padded all-integer source output. |
| `active_one` | II-3 at B=7,N=8; exact radius-one list. |
| `active_two` | II-3 at B=54,N=8; exact radius-two list, prime powers retained. |
| `active_three` | II-3 at B=403,N=8; exact radius-three list. |

## Falsification, provenance and evidence

A list ending at 6 is NOT the exact T=1 inventory: 7 is still active. The
above rational endpoint comparisons detect it. Conversely 8 is not active
at T=1, even though including it can be source-safe for the companion's exact
supported translations. The set statement and output statement differ.

Executed controls: 272 exact rational boundary examples B=2..69 with
exp-cutoff variable E=B+1/d, d in {1,2,3,7}, verifying the strict integer set
rule. These are algebra controls with a rational E, not claims that the chosen
E equals any particular exponential. Prime-power classification through 403
was cross-checked against exact generation of prime powers from trial-divided
primes. These two calculations share elementary arithmetic dependencies; they
are not independent mathematical review.

Inspected math revision: `83b37724b351e1fb04abbad1cf45b746160517ee`.
Root Lean: `leanprover/lean4:v4.34.1`; mathlib:
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

* [WeilLowSchurEnclosure.lean](WeilLowSchurEnclosure.lean), blob
  `6830835e869817c46c8499d383d7864f8ddbc600`: original active set and weights.
* [WeilRationalLogarithms.lean](WeilRationalLogarithms.lean), blob
  `776022a3cf679384fd2fb31404a90fc1178562c7`: direct and dyadic real-log return.
* mathlib `Mathlib/Algebra/Order/Floor/Defs.lean`, pinned blob
  `da2aa8862d21edb82d5ab6a0efacceca63572a4`, `Nat.lt_ceil`:
  https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Algebra/Order/Floor/Defs.lean
* The rational log proof is itself an adaptation of the pinned `Real.sum_range_le_log_div`
  and `Real.log_div_le_sum_range_add`; no new series principle is asserted.

No new paper theorem is claimed to be formalized. This is an elementary
finite-inventory consequence with an explicit arithmetic consumer. Source
search had incomplete indexing; no repository-wide absence or novelty follows.

Canonical proof-automation skill access returned 404 at Noe revision
`b0be41adc8b0bf76f9735b3c2793faf7f80862c3`; no dependent proof execution was
attempted. Ordinary exact-fraction scalar calculations and source-text checks
are separate evidence. They do not elaborate Lean or certify a Weil sign.
Publication paths/hashes and exact commands are recorded in the issue receipt.

Build target, NOT_RUN:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilIntegerInventory
