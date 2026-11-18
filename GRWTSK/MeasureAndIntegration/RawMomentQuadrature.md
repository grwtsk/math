# Finite cell quadrature for raw moments of the original test

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 65D30; secondary 65G20, 42A38.
Owner: [RawMomentQuadrature.lean](RawMomentQuadrature.lean).
Consumer: [WeilZeroQuadratureEvaluation](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilZeroQuadratureEvaluation.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6986179500).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. This is an elementary local consequence of pinned integral
calculus, not a new paper theorem, executed numerical certificate, or RH/GRH proof.

## RMQ-1: all raw moments from one finite cell table

Let f:R->C be Lebesgue integrable and zero for |t|>T, with T>=0. Let N be a
natural number and x_0,...,x_N an adjacent ordered partition with x_0=-T and
x_N=T. Each cell has -T<=x_j<=x_{j+1}<=T. Zero-length cells are permitted.
Endpoint conventions do not lose mass: Lebesgue singleton sets have measure zero.
The source explicitly returns the closed support integral to an interval integral
and uses the pinned finite adjacent-interval identity. It does not assume that
an arbitrary list of cells covers the support.

For each j<N, suppose a complex value v_j and epsilon_j>=0 satisfy

    |f(t)-v_j| <= epsilon_j, for EVERY t in [x_j,x_{j+1}].

Write h_j=x_{j+1}-x_j and define the exact finite algebraic quantities

    mu_k = sum_{j<N} v_j (x_{j+1}^{k+1}-x_j^{k+1})/(k+1),
    E = sum_{j<N} epsilon_j h_j,
    B_cells = sum_{j<N} (|v_j|+epsilon_j) h_j.

Then, for every natural k, with m_k the EXISTING rawMoment f k,

    |m_k-mu_k| <= T^k E,                                      (RMQ-1)
    integral_R |f(t)| dt <= B_cells.                           (RMQ-2)

All moment integrals are genuinely integrable by the preceding module's
`integrable_monomial`. The test function is unchanged: the piecewise constant
approximation is only a numerical device, never an admissible Weil test.

### Complete primary analytical argument

The constant-monomial integral on one cell is exactly
v_j*(x_{j+1}^{k+1}-x_j^{k+1})/(k+1). This is obtained from mathlib's integral_pow,
complex real-cast integration and constant multiplication. The denominator k+1
is positive; no division by an endpoint, sample value or zero location occurs.
The difference between the actual cell moment and this value is the integral
of (f(t)-v_j)t^k. Its norm is at most epsilon_j*T^k*h_j. Sum over the adjacent
cells and apply the finite triangle inequality. This proves RMQ-1.

For RMQ-2, |f(t)|<=|v_j|+epsilon_j on each cell. Integrate and sum the actual
norm integrals over the same covering partition. The source does not assume a
separate global L1 enclosure. The algebraic formula for mu_k is rational in
rational endpoints and rational real/imaginary sample components. This describes
an exact evaluation option, not a formalized rational interpreter or an executed
floating-point certification. Complex norms in B_cells still need outward bounds.

A second view is the step function g(t)=v_j on each half-open cell. Then
||f-g||_1<=E and ||t^k(f-g)||_1<=T^k E. This gives the same estimate, but is not
an independent proof review and is not a replacement definition in the Lean file.

## RMQ-3: actual midpoint samples supply the uniform cell hypotheses

Let q_j=(x_j+x_{j+1})/2. Assume certified L_j,r_j>=0 with

    |f(t)-f(q_j)| <= L_j |t-q_j|,  t in [x_j,x_{j+1}],
    |f(q_j)-v_j| <= r_j.

The first condition is a WITHIN-CELL analytic variation bound, not something
inferred from neighboring samples. A proved derivative bound can justify it;
this increment does not construct that derivative certificate from a formula.
Since |t-q_j|<=h_j/2, the triangle inequality proves the cell enclosure with

    epsilon_j = L_j h_j/2 + r_j.

`moment_and_l1_bounds_of_midpoint` supplies RMQ-1 and RMQ-2 together.
If mu_k is itself evaluated with |mu_k-muHat_k|<=tau_k, the total moment error
is T^k E+tau_k. No finite-arithmetic rounding is silently declared zero.

## RMQ-4: mesh and precision; fixed-frequency amplification

If h_j<=h, L_j<=K, K>=0, and r_j<=e, then

    E <= 2T(Kh/2+e) = TK h+2T e.                             (RMQ-4)

Indeed epsilon_j<=Kh/2+e, each h_j>=0, and sum h_j=x_N-x_0=2T.
`cellVariationBudget_le_of_mesh` proves this finite telescoping estimate.
For an equal partition h=2T/N with N>0, it reads E<=2KT^2/N+2Te.
The equal-grid specialization is an algebraic consequence, not a separately
implemented grid generator. Keeping e fixed does not prove E tends to zero.

The preceding Fourier moment data budget satisfies, for C>=0 and E>=0,

    sum_{k<n} C^k (T^k E)/k! <= E exp(TC).                    (RMQ-5)

This is `momentDataBudget_cell_error_le`, using the nonnegative exponential
partial-sum bound. It is uniform in n for a FIXED frequency ball |c|<=C, but
it grows with TC. With exact finite moment arithmetic, combining the preceding
Fourier theorem gives the written corollary

    |F_f(c)-P_n(c;mu)| <= 2B_cells(TC)^n/n! + E exp(TC),
    provided TC/(n+1)<=1/2.

With moment rounding, add sum C^k tau_k/k!. Polynomial-evaluation rounding is
still separate. This corollary is a composition of the recorded statements,
not a new public declaration. The code proves the budget comparison itself.
No uniform all-height/all-support accuracy or arithmetic sign follows from it.

## Individual declaration provenance

All local public declarations have prefix
`GRWTSK.MeasureAndIntegration.RawMomentQuadrature`.
Primary upstream: leanprover-community/mathlib4 at
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

| Declaration | Exact source, role and retained conditions |
|---|---|
| `integral_const_mul_monomial` | RMQ-1 cell identity; root `integral_pow` in Analysis/SpecialFunctions/Integrals/Basic.lean, plus `intervalIntegral.integral_const_mul` and `integral_ofReal`. Arbitrary real endpoints, complex constant, natural exponent. |
| `norm_sub_sample_le_midpoint` | RMQ-3; elementary triangle inequality and interval geometry. Retains analytic variation and actual midpoint error. |
| `norm_rawMoment_sub_quadratureMoment_le` | RMQ-1; `integrable_monomial`, exact adjacent integral splitting, and `intervalIntegral.norm_integral_le_of_norm_le_const`. Retains full covering geometry, all cell bounds, actual support and every k. |
| `cellVariationBudget_nonneg` | Finite sum of nonnegative errors times nonnegative lengths. Supplies validity of the next budget comparison. |
| `momentDataBudget_cell_error_le` | RMQ-5; `Real.sum_le_exp_of_nonneg` in Analysis/Complex/Exponential.lean. Retains T,C,E>=0 and all natural n. |
| `integral_norm_le_cellL1Budget` | RMQ-2; finite adjacent splitting, triangle inequality and interval integral bound. No separate global L1 premise. |
| `moment_and_l1_bounds_of_midpoint` | RMQ-3 composed with RMQ-1/2 on the same original test. Neither samples nor variation certificates are generated. |
| `norm_rawMoment_sub_roundedQuadrature_le` | Finite arithmetic transitivity via dist_triangle. Requires a bound for the exact algebraic quadrature value, not an assumed raw-moment oracle. |
| `cellVariationBudget_le_of_mesh` | RMQ-4; nonnegative finite summation and telescoping of adjacent lengths. Does not assert certified data or mesh generation exists. |

Source locators: [interval calculus](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean),
[monomial integration](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Integrals/Basic.lean),
[set integrals](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Bochner/Set.lean),
[exponential partial sums](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Exponential.lean).
Inspected interval-calculus blob: `2504147e2230a26eb804b0898004d0186c4e36a1`;
monomial-integration blob: `efe8fff89fbf1782b4a42a89038f51f9d862c562`.
Private support reduction uses `integral_Icc_eq_integral_Ioc` and
`setIntegral_eq_integral_of_forall_compl_eq_zero`; no endpoint zero value is assumed.

Dated comparison, 2026-11-18: FourierMomentEnclosure at the inspected base took
raw-moment enclosures and B as inputs. This module derives those inputs by an
elementary product-integration rule. It neither claims the rule is new nor
adapts a specific paper theorem. No complete duplicate or prior-art audit was run.
Its downstream source return is the arithmetic endpoint in the linked consumer.

## Falsification and verification boundary

Finite samples alone fail: on [-1,1], the integrable test t^2 has midpoint value
zero but zeroth moment 2/3. A smooth compact test t^2 exp(-1/(1-t^2)) for |t|<1,
zero elsewhere, also has zero midpoint and strictly positive integral. Neither
example satisfies a zero variation certificate. These refute an omitted-error
rule, not this theorem and not RH. Constant cell functions with zero enclosure
error give exact moments, including vanishing odd monomial weights on symmetric
cells. Zero-length cells contribute zero. N=0 with both endpoint equalities
forces T=0; no positive-support empty grid is admitted. These are written checks,
not executed tests, certified numerical results, or independent review.

Base: `grwtsk/math@3b56f8e26f3d39baa3df8b1fda882dc2f03ae690`;
complete tree `45277e7e02eaf79af41ff5c199bcccaa3deaafa9`.
Lean `leanprover/lean4:v4.34.1`; mathlib as above. Existing sources, root imports
and pins are unchanged. The owning issue records exact publication/digest checks.
Elaboration, exact-type checks, builds, kernel replay, transitive axiom audit,
certified computation and independent review: NOT_RUN. Source inspection is not
Lean parsing; hashes and publication do not certify the mathematics.

Canonical proof-execution skill returned 404 at Noe
`2a253a7ab656de19cf73d5b0d886e109150a898d`. No verified local skill checkout or
Lean/lake executable was available. Dependent execution was not dispatched.
After satisfying the current execution policy, the intended command is
`lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZeroQuadratureEvaluation`.
Then inspect exact signatures, replay dependencies and audit transitive axioms.
This command and these checks are NOT_RUN; preserve any future observed failure.
