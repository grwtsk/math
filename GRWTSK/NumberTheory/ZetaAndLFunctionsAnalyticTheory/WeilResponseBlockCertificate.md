# Simultaneous signed-response block certificate

Local attribution: grwtsk contributors.

Source: [WeilResponseBlockCertificate.lean](WeilResponseBlockCertificate.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.ResponseBlockCertificate`.
MSC2020 primary: 11M06; dependencies in 47A12, 65G20 and 15A48.
Status: **SOURCE_PROOF_CANDIDATE**. Novelty and exhaustive prior-art comparison:
**UNASSESSED**. No new general dual-weighted-residual method is claimed.

## Exact objects and consumer

Fix T>0 and the existing real odd zeta source q on the complete gamma graph
domain V=`FormDomain T`. H=`WindowPhysical T` is the original physical L2
space, J:V->H its contractive injection, b=q+lambda<J-,J-> the original
coercive regularization, W the exact weak solver, R=JW. Set c=lambda-epsilon.
The target is the unchanged `ResponseSignReturn.responseDefect`:

    D(h)=<h,Rh>-c||Rh||^2.

Use a finite index type I, actual physical loads h_i, finite-sine primal
lifts v_i, and finite-sine dual lifts w_i. Their COMPLETE physical residuals
are r_i=h_i-(A_beta+lambda)Jv_i and
s_i=h_i-2cJv_i-(A_beta+lambda)Jw_i. These are constructed with the canonical
`physicalResidual`; no independent output or arithmetic identification is
assumed. The minimizing negative pole port and beta-lambda output parameter
are inherited unchanged.

For every real coefficient vector x, put h_x=sum x_i h_i, v_x=sum x_i v_i,
w_x=sum x_i w_i, r_x=sum x_i r_i, and s_x=sum x_i s_i. The same x is used
in all five combinations. Independent scalar certificates for the columns
do NOT imply a certificate for their span.

The immediate consumer is `checked_block_nonnegative`. Its conclusion can
supply the existing finite-response sign criterion for any covered load.
All blocks required to cover every finite sine-load support, and all
cofinal windows, remain separate universally quantified obligations.

## Complete analytical argument

1. Linearity of b, J and the physical load pairing gives the primal
   residual of (h_x,v_x) as z |-> <r_x,Jz>. The derivative load is linear
   in (h,v), so the dual residual of (h_x-2cJv_x,w_x) is z |-> <s_x,Jz>.
   Contractivity of J bounds their V-dual norms by ||r_x|| and ||s_x||.

2. The corrected scalar is

       m_x=<h_x,Jv_x>-c||Jv_x||^2+<r_x,Jw_x>.

   Its exact symmetric matrix is M=sym(C), where

       C_ij=<h_i,Jv_j>-c<Jv_i,Jv_j>+<r_i,Jw_j>.

   Finite bilinearity and symmetrization give m_x=x^T M x. All off-diagonal
   entries are retained; there is no assumption of orthogonal residuals.

3. The existing exact remainder identity and coercivity give

       D(h_x)>=x^T M x-||r_x||||s_x||-max(c,0)||r_x||^2.

   Suppose the full residual Gram matrices are bounded in quadratic order
   by P and Q. Then ||r_x||^2<=x^T P x and ||s_x||^2<=x^T Q x. For t>0,

       uv <= (t/2)u^2+(1/(2t))v^2

   follows by expanding (tu-v)^2. With k>=max(c,0), this pays the entire
   residual charge by (k+t/2)x^T P x+(1/(2t))x^T Q x. No square-root
   evaluation or compactness assumption is needed.

4. If |M_ij-O_ij|<=E_ij, E>=0 entrywise and E is symmetric, the existing
   spatial-enclosure theorem proves

       |x^T(M-O)x| <= x^T Delta(E)x,
       Delta(E)=diag_i(sum_j E_ij).

   This is a matrix-order estimate, not entrywise positivity. Thus

       L=O-Delta(E)-(k+t/2)P-(1/(2t))Q
       x^T L x <= D(h_x)                                  (B)

   for EVERY real coefficient vector. Poor enclosures can make L negative;
   that is an inconclusive certificate, not a negative source direction.

5. `rationalPaidMatrix` performs only finite rational matrix arithmetic.
   Its real-cast theorem identifies it with L. The existing
   `QuadraticCertificates.checked_realizeRat_nonneg` transports a passing
   exact rational checker identity to every real vector. Empty equality
   and inequality families prevent a hidden restriction on admissible
   coefficients. Combining that nonnegativity with (B) proves D(h_x)>=0.
   The checker is not reimplemented and no passing source input is supplied.

## Individual declaration correspondence

- `pairMatrix_quadratic`: mixed physical pairing equals its full double
  coefficient sum. Proof expands finite inner products; used in step 2.
- `symmetrize_symmetric`: exact exchange of the two entries. Used to keep
  the source comparison matrix in the real symmetric setting.
- `symmetrize_quadratic`: swapping both finite indices leaves the quadratic
  unchanged. Antisymmetric parts are not estimated as if they were signs.
- `primal_pairing`: step 1 for the canonical primal finite-sine residual.
- `dual_pairing`: step 1 for the ACTUAL derivative load and dual trial.
- `correctionMatrix_quadratic`: step 2, returning the complete matrix to
  the pre-existing `correctedTrial` on combined source-domain inputs.
- `weighted_product_le`: the explicit square proof in step 3; t>0 is required.
- `paidMatrix_quadratic`: exact algebraic expansion of L, with all four costs.
- `responseDefect_ge_paidMatrix`: steps 1--4, with original complete residual
  Gram bounds, symmetric entry errors, positive t and k>=max(c,0) explicit.
- `rationalPaidMatrix_cast`: entrywise cast of the ENTIRE rational matrix,
  including division and diagonal row sums, not an empirical real extension.
- `checked_block_nonnegative`: step 5; only the existing exact checker
  supplies finite PSD evidence, and only on the stated finite load block.

Definitions `primalRows`, `dualLoads`, `dualRows`, `correctionMatrix`,
`paidMatrix`, `pairMatrix`, `symmetrize` and `rationalPaidMatrix` denote the
quantities above. Private linearity and norm lemmas are proof support.

## Source provenance and comparison

Inspected `grwtsk/math@87538d799fe27620ef06524defc2bfb732193328`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

Primary local sources:

- [WeilResponseResidualCorrection.lean](WeilResponseResidualCorrection.lean),
  blob `8d644799c85b091424ae872e39264848f3068ed2`: exact remainder and signed
  bounds. Its adjacent note records established Becker--Rannacher
  dual-weighted-residual prior art, without claiming an uninspected paper
  theorem. This increment is a finite-block local consequence, not a direct
  formalization of a new external theorem.
- [SpatialGramEnclosure.lean](../../FunctionalAnalysis/SpatialGramEnclosure.lean),
  blob `276552428c4870314ae3748f954df9a8e2869abc`: canonical quadratic,
  Gram identity and symmetric entry-error allowance.
- [QuadraticCertificateCore.lean](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticCertificateCore.lean),
  blob `7cc294a4516885fde53e4ad6de0b73ed9a0f2002`: existing rational checker,
  exact matrix realization and all-real-vector soundness.
- [WeilResponseBlockQuadrature.lean](WeilResponseBlockQuadrature.lean):
  concrete suppliers for full residual Grams and correction-entry errors.

No independent copy of the source operator, RH target, or test domain is
introduced. No external paper result is imported or assumed as an axiom.
The source identity and arithmetic premises shared by both derivations
remain shared; two algebraic checks are not independent mathematical review.

## Falsification, evidence and remaining obligations

Positive diagonals do not suffice. For R=[[9/20,1/4],[1/4,9/20]],
lambda-epsilon=3/2, the exact defect matrix has diagonal 21/400 and
value -7/100 on (1,1). Likewise two identical residual columns have Gram
[[1,1],[1,1]]; replacing it by its diagonal understates the squared norm on
(1,1) as 2 instead of 4. These are synthetic controls, not Weil counterexamples.

Exact rational 2-by-2 matrix-order diagnostics and Gram-inflation controls
are recorded in math#1837. They check whole synthetic matrix inequalities
via principal minors, not just a sample of vectors. They do not certify
source arithmetic, validate Lean, or provide a cofinal certificate family.

Parsing, elaboration, exact theorem types, dependency replay, fresh kernel
checking, transitive axiom audit, certified source evaluation and independent
review: **NOT_RUN**. Source may require elaboration repairs. Existing
candidate statuses and historical evidence are unchanged. Missing canonical
execution tooling does not turn publication or hashing into proof acceptance.

The open inputs are actual source-bound scalar/slope/rounding tables, rational
upper matrices for the two complete residual Grams, a passing paid matrix
for each needed finite block, all-block/all-window coverage, and the original
primitive-character and completed-zeta transfers. This source supplies
soundness and input transport; it supplies none of those universal signs.
