# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StructuredMartingaleSquare.Variant3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e61e68bb421f23d529128747a7835e11f5b6ef8` · SHA-256 `3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.DyadicConditionalExpectation
public import Surface.Core.TypeII.TransverseSquare
import Mathlib.Tactic

/-!
# Local structured martingale square estimates

Structured modes are fixed dyadic conditional expectations, not arbitrary
finite-rank projections selected after seeing the conductor-three vectors.
The cell codes below are derived from the block's numeric half-open shells at
exactly the depths fixed by the surgery plan; they are not selectable data.

The resulting square estimate is an explicit proposition about the projected
arithmetic vectors.  No estimate is stored in the plan and no inhabitant is
provided here.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

/-- Canonical left martingale cells at the plan-selected depth. -/
@[expose]
def HyperbolicSurgeryPlan.leftMartingaleCellCode
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) :
    DyadicCellCode B.Left plan.structuredLeftDepth :=
  B.leftDyadicCellCode plan.structuredLeftDepth

/-- Canonical right martingale cells at the plan-selected depth. -/
@[expose]
def HyperbolicSurgeryPlan.rightMartingaleCellCode
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) :
    DyadicCellCode B.Right plan.structuredRightDepth :=
  B.rightDyadicCellCode plan.structuredRightDepth

/-- The canonical left structured range has at most the plan-selected number
of dyadic cells. -/
@[surface_novel, surface_published]
theorem HyperbolicSurgeryPlan.leftMartingale_rank_le
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) :
    Module.finrank ℂ
        (dyadicConditionalExpectation
          plan.leftMartingaleCellCode).range ≤
      2 ^ plan.structuredLeftDepth :=
  rank_dyadicConditionalExpectation_le plan.leftMartingaleCellCode

/-- The canonical right structured range has at most the plan-selected
number of dyadic cells. -/
@[surface_novel, surface_published]
theorem HyperbolicSurgeryPlan.rightMartingale_rank_le
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) :
    Module.finrank ℂ
        (dyadicConditionalExpectation
          plan.rightMartingaleCellCode).range ≤
      2 ^ plan.structuredRightDepth :=
  rank_dyadicConditionalExpectation_le plan.rightMartingaleCellCode

/-- Structured left coefficient vector at one evaluated node. -/
@[expose]
def EvaluatedSurgeryTree.nodeStructuredLeftVector
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) :
    EuclideanSpace ℂ B.Left :=
  dyadicConditionalExpectation plan.leftMartingaleCellCode
    (evaluated.nodeLeftVector node)

/-- Structured right coefficient vector at one evaluated node. -/
@[expose]
def EvaluatedSurgeryTree.nodeStructuredRightVector
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) :
    EuclideanSpace ℂ B.Right :=
  dyadicConditionalExpectation plan.rightMartingaleCellCode
    (evaluated.nodeRightVector node)

/-- Product mass of the two structured martingale components. -/
@[expose]
def EvaluatedSurgeryTree.nodeStructuredMass
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) : ℝ :=
  ‖evaluated.nodeStructuredLeftVector node‖ *
    ‖evaluated.nodeStructuredRightVector node‖

/-- Square sum of the structured--structured interval correlations. -/
@[expose]
def EvaluatedSurgeryTree.nodeStructuredIntervalSquareSum
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) : ℝ :=
  coefficientIntervalSquareSum
    (evaluated.nodeStructuredLeftVector node)
    (plan.intervalKernel node)
    (evaluated.nodeStructuredRightVector node)

/-- Coefficient-specific endpoint for the canonical structured martingale
modes at one node. -/
@[expose]
def LocalStructuredMartingaleSquareEstimate
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧
    evaluated.nodeStructuredIntervalSquareSum node ≤
      (C * (N + 1 : ℝ) ^ ε *
        evaluated.nodeMass node) ^ 2

end

end Surface.Core.TypeII

end
```
