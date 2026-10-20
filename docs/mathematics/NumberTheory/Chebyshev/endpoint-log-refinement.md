# Atanh logarithms and outward rounding for the endpoint candidate

Owner #194; local-zeta consumers #134/#139; canonical consumer #261.
Additive source extension of #274 at parent
`6a10820cb7311255e3ed7dd97d7497f27509ee63`, tree
`5af4fe6b9fe5e199722e6a5f7c939c20b0fb4a26`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** All new and inherited proof
scripts retain their elaboration and transitive-trust obligations. The original
literal candidate still requires `CenterEstimates center centerData`. This
increment does not construct that theorem or a new certified zero.

## 1. Replace one specific prototype premise

The preceding research prototype uses a 32-term atanh-series logarithm and
160-bit directed dyadic rounding. Those are NOT the reciprocal-grid logarithm
and exact-radius recurrence in the earlier evaluator. Reusing their names would
not identify different numerical formulas. This extension gives the new formulas
separate mathematical owners while reusing exact scale, coordinate, magnitude,
exponential-trace and analytic ray theorems from the existing source.

The classical identity is NIST DLMF 4.6.4, https://dlmf.nist.gov/4.6.E4 . No
novel logarithm representation or new distribution theorem is claimed. The
finite proof reuses the derivative already in the PINNED Mathlib file
`Mathlib/Analysis/SpecialFunctions/Log/Deriv.lean`:

    d/dy [log((1+y)/(1-y))/2 - sum_(j<n) y^(2j+1)/(2j+1)]
      = y^(2n)/(1-y^2),              -1<y<1.

For 0<=y<1, define the actual finite lower endpoint and full one-sided remainder

    A_n(y) = 2 sum_(j=0..n-1) y^(2j+1)/(2j+1),
    R_n(y) = 2 y^(2n+1)/((2n+1)(1-y^2)).

The new source proves candidates for

    0 <= log((1+y)/(1-y))-A_n(y) <= R_n(y).

The factor 1/(2n+1) is not dropped. For fixed y, compare the half-log residual
F(x) on [0,y] with P(x)=x^(2n+1)/((2n+1)(1-y^2)). The derivative of P-F is
nonnegative because 1-x^2>=1-y^2>0. Both vanish at zero, so monotonicity gives
F(y)<=P(y). The lower bound is the existing Mathlib lower-series theorem.
This derives the sharp finite allowance used by the prototype, rather than
assuming a remainder oracle or differentiating an error inequality.

For r>=1, y=(r-1)/(r+1) satisfies 0<=y<1 and
(1+y)/(1-y)=r EXACTLY. On the selected mantissa domain 1<=r<=2, y<=1/3.
The n=0 formula remains a valid coarse bound. It does not make log(2) zero.

The partial sum is a LOWER ENDPOINT, not the midpoint of an interval of radius
R_n/2. At r=2,n=1, it is 2/3 with full remainder 1/36. The n=2 lower sum alone
proves that radius 1/72 around 2/3 is false. This is an analytic source control,
not just a numerical disagreement.

## 2. Exact rational scale and all 81 literal bases

The new rational functions cast exactly to the preceding real formulas. They
reuse `RationalLogEnclosure.mantissa` and its exact power-inequality scale guard:

    t>=1, 2^k<=t<=2^(k+1), r=t/2^k.

The old grid counts are fixed to one only when reusing that guard; no reciprocal
grid value is used. Atanh term counts are independent nonnegative naturals.
The existing exact identity log(t)=k*log(2)+log(r) gives

    c = k*A_n2(1/3) + A_nr((r-1)/(r+1)),
    eta = k*R_n2(1/3) + R_nr((r-1)/(r+1)),
    0 <= log(t)-c <= eta.

One shared log(2) uncertainty is multiplied by k. It is not one copy of the
uncertainty, a quadrature sum, or an independent-random-error estimate.

`EndpointLogRefinement.candidateLog k` constructs this ball with `Nat.log2 k`,
32 terms for each series and 160-bit rounding, for every k in `Finset.Icc 1 81`.
The source derives actual-log containment from the complete finite scale guard.
A separate finite decision targets radius <=10^(-31) for every one of those
81 bases. Neither guard nor any large finite source decision has been executed
in Lean here; computational feasibility under the replay budget remains to be
checked. The source uses the literal interval of bases, not an unchecked list.
No values or truth claims are imported from a JSON report.

## 3. Coordinate flooring is not radius rounding

At precision b, D=2^b is always positive. Define exact rational operations

    down_b(x)=floor(D*x)/D,
    up_b(x)=ceil(D*x)/D.

The source derives down_b(x)<=x<=up_b(x), including negative x. For example,
down_3(-1/3)=-3/8, not -1/4. The latter would truncate toward zero.

A `Ball` is plain rational data (mid,rad). Its separate `Holds` predicate means
that the norm-distance of an exact complex number from mid is at most rad.
This predicate implies rad>=0; a negative-radius datum is not evidence.
For a midpoint rounded coordinatewise downward to mid', `roundBall` computes

    rad' = up_b(rad + mag(mid'-mid)),
    mag(u)=|Re u|+|Im u|.

The named complex arithmetic and this L1 norm majorant are reused from their
existing owners. The majorant is not asserted equal to the Euclidean norm.
The displacement is charged before the radius is rounded UP. Complex imaginary
movement is retained, including when the final displayed answer is real.

The new enclosure lemmas cover the actual rounded operations used by the
prototype: addition, multiplication and multiplication by an exact rational
complex scalar. In particular the pre-rounding product radius is

    mag(a)*e_b + mag(b)*e_a + e_a*e_b.

The cross term is necessary: two zero-centered unit balls contain products of
norm one. Canceling computed centers does not cancel their uncertainties.

The corrected full-radius lower-endpoint log ball at r=2,n=1,b=3 has midpoint
5/8 and radius 1/8 after rounding. It can certify tolerance 1/8, but not 1/16
using that sufficient allowance. A failed allowance comparison does not prove
that the true approximation error exceeds the requested tolerance.

## 4. Upward allowances and the original inverse power

The old exponential checker retains all literal-input, Taylor, complete-length,
seed and square-residual tests. Its exact rational allowance satisfies

    e_0=seedTail+seedResidual,
    e_(j+1)=2e_j+e_j^2+squareResidual_j.

The new outward allowance starts with E_0=up_b(e_0) and uses

    E_(j+1)=up_b(2E_j+E_j^2+squareResidual_j).

An induction proves e_j<=E_j for nonnegative seed and local allowances. This
is DOMINATION, not equality with the old recurrence. It transports the old
actual-exponential error theorem to the larger rounded radius, at the SAME
exponent, seed, ordered trace, and number of squares. Upward rounding after each
step matters: an early enlargement is amplified by later reconstruction.

`RationalAtanhPower.inverse_power_sound` then connects the rounded log to a
checked exponential trace at the DERIVED exponent -s*c_log. On Re(s)>=0 the
existing true-exponential ray theorem yields

    |exp(-s*log(t))-exp(-s*c_log)| <= mag(s)*E_log,

because both logarithm inputs are real and nonnegative. The final computed ball
uses up_b(E_exp+mag(s)*E_log), retaining the logarithm uncertainty ONCE. The
proof identifies the target with the original positive-base complex power
(t:C)^(-s), not the exponential at the approximate logarithm. There is no
critical-line projection or dropped horizontal condition.

A complete small nonconstant inverse-power trace is included. The log of two
uses midpoint 5/8, then T_3(-5/16)=377/512 and one square is 142129/262144.
The inherited exponential check and new outward arithmetic give final total
radius 1/2 for the actual inverse power of two. This is a deliberately coarse
primitive control, not a zeta-value certificate.

This generic result still requires the existing exponential trace to pass.
The source does NOT construct all 81 actual prototype traces, prove its Horner
loop refinement, or qualify the Python/generated implementation. Those tasks
must not be inferred from equality of finite diagnostic outputs.

## 5. Remaining exact candidate obligations

The old candidate, radii, value/derivative constants, analytic curvature source,
Newton criterion and conditional theorem are unchanged. These declarations now
have source-level suppliers for the atanh log formulas, directed arithmetic,
and their composition with an independently checked exponential trace.
All remain unelaborated proof candidates pending exact-head acceptance.

The following are still required to construct EXACTLY the old `CenterEstimates`:

- formalize the written periodic-Bernoulli integration-by-parts remainder;
- prove the corrected finite model and its first-derivative identity;
- construct/check every derived exponential trace, finite sum, correction and
  product in the complete 81-term value and derivative calculation;
- retain both analytic tail errors and final presented-center displacements.

A compiled parser or evaluator needs separate correctness, resource and
source-identity qualification. Exact rational expressions can still be too
expensive to evaluate. No operational worker, build authority, receipt or F06
change is represented by this source. Pinned elaboration and independent full
transitive type/import/axiom review are mandatory. Complete canonical counts,
divisor coverage and tails, all-interval prime margins, and RH remain separate.
