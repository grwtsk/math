-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HyperbolicSurgeryPlanCrossIntervalKernel.Variant1fb62ae1a99be6d25200146bf9860c1a3c471d7f1391ef0397a46cc9d18d93a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1fb62ae1a99be6d25200146bf9860c1a3c471d7f1391ef0397a46cc9d18d93a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HyperbolicSurgeryPlanCrossIntervalKernel.Variant1fb62ae1a99be6d25200146bf9860c1a3c471d7f1391ef0397a46cc9d18d93a6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1fb62ae1a99be6d25200146bf9860c1a3c471d7f1391ef0397a46cc9d18d93a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/CrossCutSquare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.BlockCut
public import Surface.Core.TypeII.TransverseSquare
import Mathlib.Tactic

/-!
# Local cross-cut square estimates

An algebraic `TypeIIBlockCut` derives its cross matrix from an exact block
decomposition.  This file applies that derived cross operation to every fixed
product interval and states the coefficient-specific local square bound.

The bound is not a field of the cut, and no proof is provided.  Consequently
an unrestricted residual or a coefficient-adapted cut cannot inhabit the
analytic endpoint merely by construction.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HyperbolicSurgeryPlanCrossIntervalKernel.Variant1fb62ae1a99be6d25200146bf9860c1a3c471d7f1391ef0397a46cc9d18d93a6

public section

namespace Surface.Core.TypeII

noncomputable section

/-- Cross part of one predetermined node/interval kernel. -/
@[expose]
def HyperbolicSurgeryPlan.crossIntervalKernel
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) (node : plan.tree.Node)
    (cut : TypeIIBlockCut B.Left B.Right)
    (interval : TypeIIProductDyadicInterval N q) : Matrix B.Left B.Right ℂ :=
  cut.crossMatrix (plan.intervalKernel node interval)

/-- Exact square sum of cross-cut correlations at one evaluated node. -/
@[expose]
def EvaluatedSurgeryTree.nodeCrossCutIntervalSquareSum
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (cut : TypeIIBlockCut B.Left B.Right) : ℝ :=
  coefficientIntervalSquareSum
    (evaluated.nodeLeftCoefficient node)
    (plan.crossIntervalKernel node cut)
    (evaluated.nodeRightCoefficient node)

/-- Coefficient-specific cross-correlation square endpoint for one exact
algebraic cut. -/
@[expose]
def LocalCrossCutSquareEstimateAtCut
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (cut : TypeIIBlockCut B.Left B.Right) (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧
    evaluated.nodeCrossCutIntervalSquareSum node cut ≤
      (C * (N + 1 : ℝ) ^ ε * evaluated.nodeMass node) ^ 2

/-- Compatibility spelling emphasizing that this is the cross branch of the
common local square-function interface. -/
@[expose]
def LocalCrossSquareEstimateAtCut
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (cut : TypeIIBlockCut B.Left B.Right) (ε C : ℝ) : Prop :=
  LocalCrossCutSquareEstimateAtCut evaluated node cut ε C

end

end Surface.Core.TypeII

end
