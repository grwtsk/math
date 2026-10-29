module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.CoefficientBlindPlan
import Mathlib.Tactic

/-!
# Local transverse square estimates

This file fixes the coefficient-specific square function used by every local
analytic branch of the hyperbolic surgery program.  The interval family and
matrix kernels come from a coefficient-blind `HyperbolicSurgeryPlan`; only
`EvaluatedSurgeryTree` supplies the two arithmetic vectors.

`LocalTransverseDiffuseSquareEstimate` is deliberately only a proposition.
It has no constructor or proof in this module.  A caller applies it to
an evaluation whose coefficient vectors are the diffuse components selected
by the canonical martingale decomposition.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- Finite square sum of one coefficient pair against a predetermined family
of product-interval matrices. -/
@[expose]
def coefficientIntervalSquareSum
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (left : B.Left → ℂ)
    (kernel : TypeIIProductDyadicInterval N q → Matrix B.Left B.Right ℂ)
    (right : B.Right → ℂ) : ℝ :=
  ∑ interval ∈ typeIIProductDyadicIntervals N q,
    ‖bilinearMatrixPairing left (kernel interval) right‖ ^ 2

/-- The exact interval square sum at one predetermined surgery-tree node. -/
@[expose]
def EvaluatedSurgeryTree.nodeIntervalSquareSum
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) : ℝ :=
  coefficientIntervalSquareSum
    (evaluated.nodeLeftCoefficient node)
    (plan.intervalKernel node)
    (evaluated.nodeRightCoefficient node)

/-- At the root, the square sum is exactly the literal shell-interval square
sum for the two supplied vectors. -/
@[surface_novel, surface_published]
theorem rootNodeIntervalSquareSum_eq_shell
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B)
    (left : B.Left → ℂ) (right : B.Right → ℂ) :
    (plan.evaluate left right).nodeIntervalSquareSum plan.tree.root =
      coefficientIntervalSquareSum left
        (typeIIShellIntervalMatrix B) right := by
  unfold EvaluatedSurgeryTree.nodeIntervalSquareSum
  unfold coefficientIntervalSquareSum
  apply Finset.sum_congr rfl
  intro interval _
  change ‖(plan.evaluate left right).nodeIntervalCorrelation
      plan.tree.root interval‖ ^ 2 = _
  rw [evaluatedRootIntervalCorrelation_eq_shellPairing]

/-- The local transverse/diffuse analytic endpoint.

The two arithmetic vectors are literal fields of `evaluated`; the tree,
intervals, and kernels are fixed by `plan`.  In the intended application,
`evaluated` is formed from diffuse martingale components.  This definition
does not assert that such a bound is available. -/
@[expose]
def LocalTransverseDiffuseSquareEstimate
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧
    evaluated.nodeIntervalSquareSum node ≤
      (C * (N + 1 : ℝ) ^ ε * evaluated.nodeMass node) ^ 2

end

end Surface.Core.TypeII

end
