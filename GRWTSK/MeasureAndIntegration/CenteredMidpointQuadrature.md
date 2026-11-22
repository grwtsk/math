# Centered second-order midpoint enclosures

Local attribution: grwtsk contributors.
MSC2020: 65D30 (primary), 65G20.
Coordination: grwtsk/math#1801, iteration 13, 2026-11-18 America/Los_Angeles.
Inspection source: `aaa93f568210e34ba542a70196b6037783df9b07`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Parsing, elaboration, exact-type validation, builds, fresh kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN.
Novelty and completeness of prior-art comparison: UNASSESSED.
This is classical midpoint quadrature, not a claim to a new numerical method.

## Target and mathematical consumer

The previous original-bump evaluator used a Lipschitz bound on each cell
before integration. At T=1 it paid at least 20/N for uniform physical cells,
even with exact samples. This module retains the affine Taylor term until
integration. Its linear part integrates to zero, producing a geometric cost
quadratic rather than linear in the mesh size. The actual consumer is
[WeilModThreeMidpointEvaluation.lean](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilModThreeMidpointEvaluation.lean),
BMQ-5. The sampled function is the original signed correlation integrand,
not a new Weil test, positive surrogate, or ordinate-only pairing.

## Complete argument

Let f:R->R be C2. Fix a<=b, c=(a+b)/2, h=b-a, and a bound
|f''(t)|<=H throughout the closed cell. Taylor's theorem gives, for every
t in the cell,

    |f(t)-f(c)-(t-c)f'(c)| <= (H/2)(t-c)^2.

The midpoint and t coincide in the degenerate case. Otherwise the real
Lagrange theorem supplies an intermediate point between them. The entire
joining interval is inside [a,b], so the same curvature bound applies.
The use of a REAL-valued function is explicit; no complex Lagrange
intermediate-value theorem is assumed.

Now integrate before taking the absolute value. The exact identities are

    integral_a^b (t-c)d dt = 0,
    integral_a^b (H/2)(t-c)^2 dt = H*h^3/24.

Continuity provides integrability of the original function and each residual.
The integral norm inequality therefore gives

    |integral_a^b f(t)dt - h*f(c)| <= H*h^3/24.

If |f(c)-v|<=e, the additional sample contribution is at most h*e, since
h>=0. Thus

    |integral_a^b f(t)dt - h*v| <= H*h^3/24 + h*e.

For N adjacent ordered cells [x_j,x_(j+1)], sum the exact interval integrals
and use the finite triangle inequality. Every cell is present. The result is

    |integral_(x_0)^(x_N) f - sum_j h_j v_j|
       <= sum_j (H_j*h_j^3/24 + e_j*h_j).

The constant H_j and sample error e_j can depend on the cell. There is no
fixed tolerance, no unproved uniformity in an expanding support, and no
assumption that a finite set of samples controls the derivatives between them.
For a uniform partition of [-T,T], a constant H gives H*(2T)^3/(24*N^2).
This final specialization is written algebra, not an additional declaration.

## Individual declaration correspondence

Owning namespace: `GRWTSK.MeasureAndIntegration.CenteredMidpointQuadrature`.

### CMQ-1 — `quadratic_remainder`

Statement: for f globally C2, c,t in a closed cell, and the bound on
`iteratedDeriv 2 f` throughout that cell, the actual affine remainder has
absolute value at most H*(t-c)^2/2. Consumer: CMQ-3.
Primary library locator: Moritz Doll, Mathlib `Analysis/Calculus/Taylor.lean`,
`taylor_mean_remainder_lagrange_iteratedDeriv`, at the pin above, blob
`088700ed9f2d0b74a86d1238b938bb0070c7f297`.
Within-set and ordinary first derivatives are identified using
`DifferentiableAt.derivWithin` and `uniqueDiffOn_uIcc`; no derivative is
silently evaluated outside its admitted set. Degenerate c=t is separate.

### CMQ-2 — `error_of_quadratic_remainder`

Statement: a continuous real function and a whole-cell quadratic remainder
around the true midpoint imply the integrated h^3/24 bound. The slope d is
arbitrary and cancels. Consumer: CMQ-3. The two private polynomial integral
identities use the pinned interval fundamental theorem of calculus, not
numerical quadrature. Primary library locator: Mathlib interval integration,
`integral_eq_sub_of_hasDerivAt` and `norm_integral_le_of_norm_le`.
The latter was inspected in `MeasureTheory/Integral/IntervalIntegral/Basic.lean`,
blob `2504147e2230a26eb804b0898004d0186c4e36a1`.

### CMQ-3 — `midpoint_error`

Statement: C2, the original second-derivative bound, and an actual midpoint
sample enclosure yield curvature plus sample error. Consumer: CMQ-4.
This is a local consequence of CMQ-1/2 and the triangle inequality, not an
independently imported paper theorem. Cell ordering is retained before
multiplying the sample error by its width.

### CMQ-4 — `sum_midpoint_error`

Statement: for every N, adjacent ordered cells, per-cell curvature bounds,
and per-cell sample enclosures, the complete finite sum encloses the original
interval integral with all error contributions. Consumer: BMQ-5 in the
linked source. Primary library locator: pinned
`intervalIntegral.sum_integral_adjacent_intervals` in the same Basic module;
`Finset.abs_sum_le_sum_abs`. The sum covers x_0 through x_N without gaps.

All four records remain SOURCE_PROOF_CANDIDATE. No paper or formal-source
provenance is supplied by a file extension or publication hash alone.

## Prior comparison and hostile checks

The centered midpoint rule is standard; NIST DLMF Section 3.5 describes the
classical quadrature setting: https://dlmf.nist.gov/3.5 . The precise formal
supplier here is the pinned Mathlib Lagrange theorem, not a claim that DLMF
contains these local declarations or their arithmetic consumer.
The new part of this increment is the explicit return and error accounting
for the maintained bump correlation. Repository keyword search returned no
results, which is incomplete evidence and does not establish absence of an
existing equivalent result.

For f(t)=t^2 on [0,1], H=2 and the midpoint error is exactly 1/12=H/24.
The factor 24 cannot be replaced by a larger denominator in this general
statement. For f(t)=t, a left-endpoint sample has error 1/2 despite H=0;
therefore cancellation cannot be transferred to an uncentered sample.
Dropping sample errors is invalid even for a constant function. Adjacent
coverage is essential: the omitted interval contributes its actual integral.
These are exact written controls, not independent analytic review.

## Reproduction and open obligations

From the published commit, inspect the four theorem signatures and their
consumer. An authorized environment at the exact pins must elaborate both
modules, inspect exact types, replay their dependency closure, and audit
transitive axioms. No such execution occurred in this increment.
The canonical Noe skill lookup returned 404 at
`e1d0280f3c126613d36a16427db5746e894b44bb`; no dependent proof execution was
used. Source authoring and connector publication are separate from that
blocked execution. No root import or dependency pin is promoted.
