# Paying prime-logarithm rounding in the original source samples

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilPrimeLagSampling.lean](WeilPrimeLagSampling.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.PrimeLagSampling`.
Primary MSC2020: 11M06; supporting 42A38, 65G20.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Lean parsing, elaboration, exact types, builds, fresh kernel replay,
transitive axiom audit, certified numerical evaluation and independent review:
NOT_RUN. Novelty and prior-art completeness UNASSESSED; no novelty claimed.

## Exact target and dependency

The preceding signed-energy and residual-Gram consumers require samples of
`FiniteSineSpatialResidual.spatialColumn`. That expression contains genuine
`Real.log q` displacements. An approximate logarithm cannot be passed as if it
were that source value. This increment supplies explicit rational logarithm
centers/radii and a finite surcharge returning rounded-lag samples to exactly
that pre-existing spatial column. No new Weil form, test restriction, positive
replacement or RH predicate is introduced.

The original active inventory is

    range(ceil(exp(2T))) filtered by 2<=q and q<exp(2T).

It includes composite integers whose von Mangoldt weight is zero. The
nonzero terms are exactly the active prime powers. The actual source weights
remain w_q=vonMangoldt(q)/sqrt(q), with BOTH translation orientations. The
inventory is NOT selected using the rounded logarithms. In particular a
rounded threshold comparison must not cause a near-boundary term to vanish.

## PLS-1. A finite rational lag budget

Let ell_q,rho_q,U_q be the rational center, radius, and upper logarithm bound
from `WeilRationalLogarithms` at q and a chosen natural order N_q. Since
q>=2 throughout the original inventory,

    |log q-ell_q|<=rho_q, rho_q>=0, log q<=U_q.

Moreover sqrt(q)>=1 and the pinned Mathlib theorem
`ArithmeticFunction.vonMangoldt_le_log` gives

    0<=w_q<=vonMangoldt(q)<=log q<=U_q.                  (1)

This conservative bound is used ONLY in error allowances; it never replaces
w_q in the signed source. For a supplied finite inventory S define

    B(S)=2 sum_(q in S) U_q rho_q.                      (2)

This is exact finite rational arithmetic. It overpays zero-weight composite
terms, which is harmless for validity but may affect efficiency. The real
inventory itself is not a rational executable object until a finite list has
been admitted with an exact completeness proof. That obligation is unchanged.
For fixed S, each radius tends to zero and the finite budget tends to zero;
no uniform rate across growing windows, dimensions and inventory sizes is claimed.

## PLS-2. Original paired prime translations

For a globally K-Lipschitz real function f, every t,r,s satisfy

    |[f(t+r)+f(t-r)]-[f(t+s)+f(t-s)]|<=2K|r-s|.        (3)

The proof applies the global modulus independently to the forward and backward
shift, then the triangle inequality. It remains valid when a shifted point
crosses the support endpoint. It is not a differentiability assertion.

Define P f(t)=sum_q w_q[f(t+log q)+f(t-log q)] and the finite rounded-lag
expression Ptilde with ell_q in place of log q, using the SAME weights and
SAME inventory. Equations (1)--3 give, at EVERY real t,

    |P f(t)-Ptilde f(t)|<=K B(S).                       (4)

There is no independence assumption between errors for different prime powers.
All errors can align; the finite triangle inequality still covers them.

The whole-line physical L2 analogue, under the genuine translation slope
||tau_r f-f||<=|r|D, is

    ||(tau_r+tau_-r)f-(tau_s+tau_-s)f||<=2|r-s|D.      (5)

This is the public `paired_translation_error`. Finite summation and (1)
then give ||P f-Ptilde f||<=D B(S), and physical restriction is contractive.
The summed physical return is a written consequence, not a separate new Lean
endpoint in this increment. The public downstream endpoint is the exact-source
POINTWISE sample transfer (6) below, which is sufficient for the existing
spatial integration route. No operator-norm convergence on the full L2 unit
ball is asserted: translations are not norm-continuous there.

## PLS-3. Return to the unchanged signed energy and residual tables

For the original finite-sine input f_c and arbitrary retained head f_d, form a
rounded spatial column by replacing ONLY primeOutput in the existing formula
with Ptilde. Keep middleFunction, both gamma-cutoff terms, gammaConstant-beta,
the original minimizing pole port, and the subtracted head unchanged.
The pole parameter is still -2 integral f_c(t)sinh(t/2)dt. It is not set to zero.
For t in the physical window, elementary cancellation gives EXACTLY

    spatialColumn(t)-roundedSpatialColumn(t)=Ptilde f_c(t)-P f_c(t).

The sign here is important: the prime operator is subtracted in the source.
Suppose a scalar evaluator gives |roundedSpatialColumn(t)-p|<=e. Then (4)
and the original finite-sine Lipschitz constant K(c) give

    |spatialColumn(t)-p|<=e+K(c)B(S).                   (6)

This is `spatial_sample_transfer`; it returns the sample to the existing
source, not a merely nearby model. If Khat>=K(c) is a rational upper bound,
replace K(c)B(S) by Khat B(S) (B(S)>=0). Thus the next spatial table may use
rational prime displacements, provided its midpoint radius includes this
finite surcharge. The already-proved spatial source modulus supplies the
between-midpoint ranges exactly as before.

Feed those enlarged midpoint radii into BOTH
`residualGram_upper_of_rational_samples` and
`signedEnergy_lower_of_rational_samples`. The arbitrary head is still restored
in the signed energy and annihilated only against genuine high tests. The
separate gamma-row error remains required. The prime-lag surcharge is paid
in the spatial sample data, not silently erased or assumed covered by gamma
quadrature. Charging an additional physical-row allowance as well is safe
but not necessary for this particular pointwise-return route.

The enclosing data e for the rounded expression still need to cover every
other evaluated scalar: sine values (including pi), sqrt normalization,
prime WEIGHTS, gammaConstant, gamma panel/tail coefficients, pole moments,
and finite arithmetic/rounding. This increment supplies the displacement-logarithm
bounds but is NOT a complete numerical sample table or evaluator.

## PLS-4. Concrete arithmetic row control

The companion note gives the hand-checkable rational bounds

    |log 2-749/1080|<=1/1944,   log 2<=3373/4860<3/4.

From (3), the paired displacement error is at most K/972. Since
0<=w_2<=log 2<3/4, the actual weighted q=2 summand satisfies

    |w_2{f(t+log 2)+f(t-log 2)
       -f(t+749/1080)-f(t-749/1080)}|<=K/1296.         (7)

The candidate `prime_two_rounding_example` proves precisely (7).
The exact weight log(2)/sqrt(2) is retained; the rational 3/4 is only a
majorant for its rounding error. This is one source-term approximation
estimate. It certifies neither the sign of that term nor a full window.
No numerical certificate execution or kernel replay is claimed.

## Hostile checks and limitations

* With f(t)=|t| and t=0, the paired expression is 2|r|. On positive r,s
  its difference is 2|r-s|, attaining the factor 2 in (3). Dropping one
  orientation's charge gives a false bound. This is a scalar check, not
  an admissible compact Weil test or an independent review.
* A zero-extended indicator has squared translation difference 2|r| at
  small r, so a finite whole-line linear slope cannot be presumed for
  arbitrary L2 inputs. Equation (5) keeps that hypothesis explicit.
* Replacing the exact inventory by q with rounded log(q)<2T can omit a
  genuine term. No such replacement is made.
* K and the total prime inventory grow with source parameters. Fixed-family
  convergence of the scalar budget does not imply a vanishing all-scale
  spectral defect or a successful Schur certificate.
* Positive radii and positive bounds do not give positivity of the original
  SIGNED matrix. The high floor, low-coordinate identity, complete signed
  matrix sign and universal cofinal certificate supply remain OPEN.

## Individual declaration correspondence

Names are qualified by the namespace printed above.

| Declaration | Source, argument and precise consumer |
|---|---|
| `active_one_le` | Original `LowSchur.activePrimePowers` filter contains 2<=q; log-domain admission. |
| `primeWeight_le_log` | Original weight, sqrt monotonicity, pinned vonMangoldt bound; error budget only. |
| `lag_error` | Companion `center_error` with exact Nat-to-Rat-to-Real casts; original log q. |
| `budgetFor_nonneg` | Nonnegative radii, log q>=0 and upper enclosure; safe enlargement of sample radii. |
| `primeFunction_error` | Both global Lipschitz translations, exact source inventory/weights, (1)--4; pointwise return. |
| `spatial_difference` | Literal expansion of the ORIGINAL spatial and prime/pole definitions; signed identity before estimates. |
| `spatial_sample_transfer` | Previous identity, canonical finite-sine global modulus, and (4); both existing table consumers. |
| `paired_translation_error` | Canonical whole-line translation-slope difference and triangle inequality; written full-row extension. |
| `prime_two_rounding_example` | Companion exact rational log bracket, (3), original weight bound; concrete source-term control. |

`budgetFor` is rational data for a finite inventory; `lag` is its real
logarithm-center realization. `roundedPrimeFunction` and `roundedSpatialColumn`
are explicitly evaluated approximations, not changes to the canonical source.

## Source pins and prior-art comparison

Math inspection base `bbf9ed09f0e29d1fd2796f4c7a5317fdcecc7ff6`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

- `WeilLowSchurEnclosure.lean`, blob
  `6830835e869817c46c8499d383d7864f8ddbc600`: original inventory and weights.
- `WeilFiniteSineSpatialResidual.lean`, blob
  `f5cee6ab161db1e56e8d13e08483a9b42a694edd`: original spatialColumn and sample consumer.
- `WeilFiniteSineSignedEnergy.lean`, blob
  `85594d1f1ec90cbac39100517b89284631fb40be`: unchanged signed-energy return.
- `WeilGammaGeometricQuadrature.lean`, blob
  `027568cef624b657629f4474624e55c933aa04d2`: actual translation-difference norm.
- Mathlib `NumberTheory/ArithmeticFunction/VonMangoldt.lean`, blob
  `f0587555fbb762fc7283a1c22c7f1be07350c589`, especially
  `vonMangoldt_nonneg`, `vonMangoldt_le_log`; no external code copied.

The explicit-formula normalization is the same existing source adaptation
of Connes--Consani--Moscovici, arXiv:2511.22755v1, (3.19)--(3.20), not a new
formalization of that paper. The inequality in (3) is elementary Lipschitz
sensitivity, not a novelty claim. Rump's supplied 2010 review distinguishes
valid enclosures and finite/infinite-dimensional verification; no unseen
paper theorem or independent certification is invoked.

The in-progress gamma panel/tail scalar work in issue comment 6994234497 was
observed and not duplicated. This increment concerns logarithmic prime lags;
it neither edits that work nor treats its proposed coefficients as established.

Concurrent commit `7b447d16d84f2408104f15789f75918dc3479dda`
added four disjoint binomial/bump scalar-evaluation files. Its complete diff
was inspected, and the binomial logarithm supplier was compared as described
in the companion record. No concurrent file or historical evidence is changed.

Verification targets, NOT_RUN:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalLogarithms
    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeLagSampling

Current canonical Noe proof skill was inaccessible at
`5a61a05a43c4574466878657839f2488132e8d4c` (404 at the instructed path).
No verified local skill checkout or Lean/Lake executable was found. No
covered execution was dispatched. Ordinary source editing and publication
are separate under repository policy. Static text checks and blob readback
are not evidence of elaboration or mathematical acceptance.
