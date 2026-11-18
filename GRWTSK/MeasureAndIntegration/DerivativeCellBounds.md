# Derivative-cell suppliers for the original compact test

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 26D10; secondary 65D30, 42A38.
Source: [DerivativeCellBounds.lean](DerivativeCellBounds.lean).
Consumer: [WeilFiniteNormEvaluation](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilFiniteNormEvaluation.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration 5 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6987078199).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty: UNASSESSED. These are elementary local consequences of the classical
mean-value inequality and existing quadrature, not newly claimed paper theorems.
Every formal execution and independent review listed below is NOT_RUN.

## DCB-1: the whole-cell derivative bound supplies variation

Let g:R->C be differentiable at EVERY point of a closed cell [a,b], a<=b.
If ||g'(t)||<=K everywhere on the cell and q=(a+b)/2, then

    ||g(t)-g(q)|| <= K |t-q|,  for every t in [a,b].

The real-variable, normed-vector-space mean-value inequality applies because
[a,b] is convex and both q and t belong to it. This is not the generally false
claim that a complex-valued difference quotient equals one derivative value.
The exact pinned provider is `Convex.norm_image_sub_le_of_norm_deriv_le`.
For a zero-length cell t=q and the conclusion is zero; no division by b-a occurs.

If ||g(q)-w||<=s and K>=0, triangle inequality and |t-q|<=(b-a)/2 give

    ||g(t)-w|| <= K(b-a)/2+s.

Thus the previous within-cell-variation hypothesis is now DERIVED from a
certified whole-cell derivative range. Sample values cannot certify that range.
The derivative bound is still an input for the actual g, not a new oracle claim.

## DCB-2 and DCB-3: one table supplies moments and both L1 bounds

Let g be C1 with compact support, zero for |t|>T, T>=0. Let an adjacent ordered
partition have x_0=-T, x_N=T and -T<=x_j<=x_{j+1}<=T for every j<N.
Use nonnegative K_j,s_j and finite sample values w_j satisfying

    ||g'(t)|| <= K_j for EVERY t in [x_j,x_{j+1}],
    ||g((x_j+x_{j+1})/2)-w_j|| <= s_j.

Set h_j=x_{j+1}-x_j and use the EXISTING definitions

    epsilon_j = midpointCellError(x,K,s,j) = K_j h_j/2+s_j,
    E = cellVariationBudget(x,epsilon,N) = sum_j epsilon_j h_j,
    B0 = cellL1Budget(x,w,epsilon,N) = sum_j (||w_j||+epsilon_j) h_j,
    B1 = cellVariationBudget(x,K,N) = sum_j K_j h_j.

The candidate supplies, for ALL natural k,

    ||rawMoment(g,k)-quadratureMoment(x,w,N,k)|| <= T^k E,
    integral ||g|| <= B0,
    integral ||g'|| <= B1.

The first two conclusions use DCB-1 and the unchanged RMQ midpoint supplier.
For the third, the closed support of g' is contained in the closed support of g.
This is the pinned `tsupport_deriv_subset` theorem. Since g' is continuous and
compactly supported, its integral is genuine, not a totalized undefined value.
Apply the old cell L1 theorem to g', using constant approximation zero on each
cell and error K_j. Its budget is exactly sum K_j h_j. No second derivative is
required for this argument. Endpoint values cannot create extra Lebesgue mass.

The combined theorem uses C1 only. Its RH/GRH consumer STILL uses the original
smooth admissible test and its canonical real lift; the arithmetic test class
is not enlarged to arbitrary C1 or piecewise-constant functions.

## DCB-4 and DCB-5: return to the canonical derivative costs

The existing FourierDerivativeDecay definition is

    d_k(g) = 2^k (integral ||g|| + integral ||deriv^[k] g||).

Consequently d_0(g)=2||g||_1, NOT ||g||_1, while
 d_1(g)=2(||g||_1+||g'||_1). From genuine bounds B0,B1 we therefore obtain

    d_0(g)<=2B0,       d_1(g)<=2(B0+B1).

The arithmetic consumer substitutes these bounds before squaring. This retains
the factor four in the zeroth-order squared cost and the mixed term in the
first-order squared cost. The two comparison lemmas themselves are algebraic;
the combined supplier and consumer establish integrability on their domains.

## Individual declaration/provenance records

All five declarations have prefix
`GRWTSK.MeasureAndIntegration.DerivativeCellBounds`.
Classification for each: local consequence, not direct paper formalization.

### norm_sub_midpoint_le_of_deriv_bound (DCB-1)

Exact quantifiers: every complex-valued real-variable g, real a,b,K with a<=b,
differentiability and derivative bound at every cell point, and every t in the
cell. Source: `Convex.norm_image_sub_le_of_norm_deriv_le` in mathlib
`Mathlib/Analysis/Calculus/MeanValue.lean`, inspected declaration, blob
`de2f76a7db82e1d758e5e4fda851f7f474e5a38a`, revision below.
Upstream file authors: Sébastien Gouëzel and Yury Kudryashov. Adaptation: choose the
midpoint, specialize the real domain and complex codomain, rewrite the real
norm as absolute value. Consumer: DCB-3 and the arithmetic WFN-5 endpoint.

### integral_norm_deriv_le_cell_budget (DCB-2)

Exact quantifiers: every C1 compactly supported g, T>=0, covering ordered
finite partition, and whole-cell derivative bound K. Source: mathlib
`tsupport_deriv_subset` and `HasCompactSupport.deriv` in
`Mathlib/Analysis/Calculus/Deriv/Support.lean`, inspected blob
`66edd1ab65fc183e5179a11bcb611363a38ea8fb8`; `ContDiff.continuous_deriv`,
continuous compact-support integrability, and the canonical RMQ theorem
`integral_norm_le_cellL1Budget`. The support argument uses closure minimality,
not an assumed zero-derivative integral. Consumer: DCB-3 and tail-cost substitution.

### moment_l1_deriv_bounds_of_deriv_cells (DCB-3)

Exact quantifiers: DCB-2 with nonnegative derivative/sample errors and midpoint
sample enclosures, concluding every raw-moment enclosure and both norms.
Sources: DCB-1, DCB-2 and `moment_and_l1_bounds_of_midpoint` in
[RawMomentQuadrature.lean](RawMomentQuadrature.lean), inspected blob
`a79225cb702533f94f5b5c705d960b90ad8d93f5` at the base below.
Consumer: WFN-5. The RMQ source remains at its existing candidate evidence status.

### derivativeL1Cost_zero_le_of_l1 (DCB-4)

Exact quantifiers: every g and B0 with integral ||g||<=B0. Source: the definition
`derivativeL1Cost` at k=0 in
[FourierDerivativeDecay.lean](FourierDerivativeDecay.lean), inspected blob
`e12fde0c3e8d44cfa0470bbe17ade7544979eda6`. No new analytic theorem is imported.
Consumer: finiteNormMissingBudget comparison WFN-2.

### derivativeL1Cost_one_le_of_l1 (DCB-5)

Exact quantifiers: every g and B0,B1 bounding the two literal norm integrals.
Source: the same canonical definition at k=1. Consumer: WFN-1 infinite-tail
comparison. No decay rate, zero count or arithmetic sign is asserted here.

## Hostile checks and analytical limitations

Differentiability cannot be erased from DCB-1. A step function on [-1,1] has
zero derivative away from the jump; a totalized derivative may also be zero
at the jump. Its derivative-value bound alone does not imply it is constant.
The hypotheses demand actual differentiability, and the combined theorem uses C1.

Finite sampling alone cannot bound variation: g(t)=t^2 on [-1,1] has midpoint
value zero but integral 2/3. The source requires a derivative bound throughout
the cell. Shrinking h without shrinking sample errors leaves a precision floor.
Zero-length cells contribute zero; an empty covering grid forces T=0 and the
supported integrals vanish. No invertibility, nonzero test norm, or simple-root
hypothesis is introduced.

As a second analytical check, integrating g' along the segment from q to t
also gives DCB-1 for C1 g. This shares the fundamental calculus input and is
not independent review. Whole-cell derivative certification from the actual
test formula, sample certification, and interval arithmetic remain separate.
No source positive lower bound or universal Weil certificate is supplied.

## Pins, policy and verification

Inspected main base: `bc1e1b34506f54ccdb46de9138e906044def5a55`.
Complete root: `8f99ccffd05e511bc86bb7b124166d2b2c4b35ac`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
[Exact mean-value source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/MeanValue.lean).
[Exact derivative-support source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/Deriv/Support.lean).
These are pinned library-source provenance, not claimed paper-to-Lean provenance.
The repository search returned no useful matches; this does not prove absence
of prior declarations or establish novelty. No repository-wide novelty audit.

Root AGENTS, CONTRIBUTING, .github, root imports and build-pin identities are
unchanged from their fully read preceding versions. Applicable scoped AGENTS
reads returned 404. No root imports, dependencies or existing sources are changed.
Canonical Noe execution skill access returned 404 at revision
`2a253a7ab656de19cf73d5b0d886e109150a898d`; no verified local skill checkout or
Lean/lake executable was present. No dependent execution was dispatched.

Lean parsing, elaboration, exact types, targeted/full builds, fresh kernel
replay, transitive axiom audit, certified numerical computation and independent
mathematical review: NOT_RUN. Text/hash/publication checks do not change that.
After current execution policy is satisfied, the intended target is
`lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteNormEvaluation`.
This command is NOT_RUN. Ordinary publication readback and digests go in #1801;
operational proof-execution receipts belong to Noe, not these sources.
