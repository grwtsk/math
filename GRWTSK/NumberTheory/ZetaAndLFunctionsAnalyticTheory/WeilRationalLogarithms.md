# Rational logarithms for the literal prime shifts

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilRationalLogarithms.lean](WeilRationalLogarithms.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.RationalLogarithms`.
Primary MSC2020: 11M06; supporting 26D15, 65G20.
Consumer: [WeilPrimeLagSampling.lean](WeilPrimeLagSampling.lean).
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty and completeness of prior-art search: UNASSESSED. No novelty claimed.
Lean parsing, elaboration, exact types, kernel replay, transitive axiom audit,
execution of the rational expressions and independent review: NOT_RUN.

## RLOG-1. An enclosure for the existing Real.log

For a rational q>=1 set z=(q-1)/(q+1). Then 0<=z<1 and
(1+z)/(1-z)=q exactly. For every natural N, including zero, define

    L_N(q) = 2 sum_(k<N) z^(2k+1)/(2k+1),
    W_N(q) = 2 z^(2N+1)/(1-z^2),
    U_N(q) = L_N(q)+W_N(q).

These expressions use ONLY finite rational arithmetic and natural powers.
They contain no call to Real.log, Real.exp, an improper integral, or a
floating-point evaluator. Denominator positivity follows from q>=1, not from
an unverified numerical floor. The target is the genuine real logarithm:

    L_N(q) <= log q <= U_N(q).                         (1)

The proof reuses the pinned Mathlib results
`Real.sum_range_le_log_div` and `Real.log_div_le_sum_range_add`. Those results
state the lower bound for half the logarithm of (1+z)/(1-z), and bound its
remainder by z^(2N+1)/(1-z^2). Multiplication by two and the EXACT argument
identity prove (1). This is an application of existing analysis, not a new
logarithm or a claimed new series theorem.

For clarity, a primary analytical derivation of the same bounds is short.
The finite geometric identity gives, for 0<=t<=z<1,

    1/(1-t^2) = sum_(k<N) t^(2k) + t^(2N)/(1-t^2).

The last term is nonnegative, and is at most z^(2N)/(1-z^2).
The derivative of half log((1+t)/(1-t)) is 1/(1-t^2) on this interval.
Integrating from 0 to z gives (1). All integrations are over a compact
interval on which the denominators stay strictly positive. There is no
exchange with an infinite sum. Integrating t^(2N) instead of bounding it by
z^(2N) gives an additional factor 1/(2N+1), but that stronger version is NOT
asserted by this source: it deliberately reuses the inspected Mathlib bound.

The rational center and radius are

    c_N(q)=(L_N(q)+U_N(q))/2, rho_N(q)=W_N(q)/2.

Since W_N>=0, (1) gives

    |log q-c_N(q)| <= rho_N(q).                         (2)

For each FIXED q, rho_N tends to zero geometrically because z<1. This is not
uniform as q tends to infinity. The direct source consumer below uses (2)
for each member of a finite active inventory. It does not replace the
inventory itself or omit integers whose exact von Mangoldt weight is zero.

## RLOG-2. Efficient dyadic reduction with exact rational admission

For an exact rational factorization q=2^j r with j natural and 1<=r<=2,

    log q = j log 2 + log r.

The identity follows from positivity and the ordinary log product/power
identities. It is not obtained by rounding log q or an approximate exponent.
Thus j L_N(2)+L_N(r) and j U_N(2)+U_N(r) are lower/upper bounds.
The factorization and range conditions are finite rational checks.

On [1,2], z<=1/3 and 1-z^2>=8/9, hence

    W_N(r) <= (3/4) (1/9)^N,
    dyadicUpper-dyadicLower <= (j+1)(3/4)(1/9)^N.        (3)

This supplies an explicit precision rate for one factorized scalar argument.
The number j, the requested accuracy, and the source inventory size must
remain in any total computational-cost claim. No complexity claim for a
cofinal family is made. Selecting/implementing the dyadic factorization is
not automated by this module. The source sampling module currently uses the
direct centers; its sensitivity proof also applies mathematically to the
dyadic centers once their corresponding bounds are substituted.

## RLOG-3. A concrete exact rational enclosure

At q=2, z=1/3 and N=3,

    L_3(2)=2(1/3+1/81+1/1215)=842/1215,
    W_3(2)=2/(3^7)/(1-1/9)=1/972,
    U_3(2)=3373/4860.

Therefore

    842/1215 <= log 2 <= 3373/4860,
    |log 2-749/1080| <= 1/1944.                         (4)

These fractions are a hand-checkable written arithmetic consequence of (1).
The Lean source includes candidate `norm_num` proof terms, but they have NOT
been executed. Equation (4) is not a complete Weil sample table, certified
computer-assisted sign proof, or numerical evidence for RH.

## Individual declaration correspondence

Each declaration is a local consequence or adaptation of the specified
pinned Mathlib result, not a formalization of an entire external paper.

| Declaration | Argument, source and consumer |
|---|---|
| `ratio_bounds` | Ordered field division, q>=1; ensures the source logarithm and series domain. |
| `ratio_identity` | Exact rational change of variable; source argument in (1). |
| `log_enclosure` | Pinned `Real.sum_range_le_log_div`, `Real.log_div_le_sum_range_add`, and the preceding identity; all finite log data. |
| `radius_nonneg` | z in [0,1), nonnegative odd power, positive denominator; no negative error radii. |
| `center_error` | Midpoint of the two-sided enclosure (1); exact prime lag supplier. |
| `dyadic_enclosure` | Pinned `Real.log_mul`, `Real.log_pow`, (1) twice and nonnegative j; checked factorization. |
| `width_le_geometric` | z<=1/3 and denominator>=8/9, natural-power monotonicity; (3). |
| `dyadic_width_le` | Exact widths add with factor j; no independence assumption. |
| `log_two_rational_example` | (1) at q=2,N=3 and exact finite fraction arithmetic; (4). |
| `log_two_center_error` | Midpoint/radius from (4); source paired-shift example. |

`lower`, `width`, `upper`, `center`, `radius`, `dyadicLower`, `dyadicUpper`
are explicitly rational-valued data, not new real analytic functions.

## Falsification and limits

* q=1 gives z=0, both endpoints zero, and log 1=0. No strict q>1
  assumption is needed. q<=0 is outside the theorem; the totalized behavior
  of Real.log is not used as analytic continuation or numerical admission.
* N=0 gives lower zero and a valid wide upper bound. It is not treated as
  accurate merely because the bound is finite.
* Replacing q by an approximate dyadic product without paying its error
  invalidates the source identity. An exact rational equality is required.
* The written sharper 1/(2N+1) remainder cannot be substituted for the
  implemented width without a new proof. All consumers use the actual width.
* A series center is not the logarithm. The source sampling consumer pays
  its radius in BOTH prime-shift orientations.

## Provenance, pins and evidence

Inspected math base: `bbf9ed09f0e29d1fd2796f4c7a5317fdcecc7ff6`.
Lean pin: `leanprover/lean4:v4.34.1`.
Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Primary library source:
`Mathlib/Analysis/SpecialFunctions/Log/Deriv.lean`, blob
`56c2032d5fbaf0982487b6eff864a4f04bea9fa3`, especially
`sum_range_le_log_div`, `log_div_le_sum_range_add` (inspected lines 315--345).
The preceding derivative/remainder argument in that file explains their
hypotheses. Imported dependency remains Apache-2.0; no upstream code copied.

During preparation, main advanced to
`7b447d16d84f2408104f15789f75918dc3479dda`. Its new
[WeilBinomialScalarBounds.lean](WeilBinomialScalarBounds.lean), blob
`1155a28d6615167332d71dfdbcd1090daa818680`, was inspected: the declarations
`BinomialScalars.log_enclosure_of_binomial_checks` and
`log_midpoint_error_of_binomial_checks` prove enclosures from supplied
endpoints satisfying two finite binomial inequalities. They remain unchanged.
The present supplier is complementary: it GENERATES rational endpoints
from q and N directly, with the explicit geometric width (3); it does not
replace the preceding checker or claim that the two routes are independent
formal verification. Its immediate consumer is the real odd finite-sine
spatial source, not the primitive-nonprincipal bump evaluation route.

Searches are incomplete and establish no novelty or absence of prior work.
The classical geometric expansion and logarithm identity are fully acknowledged.
Verification target, NOT_RUN:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalLogarithms

An elaboration repair may be required. Publication, exact file identities,
and static source-text checks do not promote this candidate to kernel evidence.
