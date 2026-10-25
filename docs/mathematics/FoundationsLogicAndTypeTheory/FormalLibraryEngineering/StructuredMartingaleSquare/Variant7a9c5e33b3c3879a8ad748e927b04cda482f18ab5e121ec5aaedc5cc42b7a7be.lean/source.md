# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StructuredMartingaleSquare.Variant7a9c5e33b3c3879a8ad748e927b04cda482f18ab5e121ec5aaedc5cc42b7a7be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b7e3d6004e90f79ab934d282c9b32691c751ef8` · SHA-256 `5feeea1c3aa7f6bc8b06371cba98ad1ba14848b9785a9a6cae8e1b4a938f93e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HyperbolicSurgeryPlanLeftMartingaleCellCode.Variant3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HyperbolicSurgeryPlanLeftMartingaleCellCode.Variant3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/StructuredMartingaleSquare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HyperbolicSurgeryPlanLeftMartingaleCellCode.Variant3e642cbbb270acadba109978fd1525c1fbe54856650ea26e380ece2e33b81233

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
