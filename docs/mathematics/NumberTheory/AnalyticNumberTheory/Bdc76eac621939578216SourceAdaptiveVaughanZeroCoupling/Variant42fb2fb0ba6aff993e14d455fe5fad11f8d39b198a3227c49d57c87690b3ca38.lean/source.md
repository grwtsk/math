# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.Bdc76eac621939578216SourceAdaptiveVaughanZeroCoupling.Variant42fb2fb0ba6aff993e14d455fe5fad11f8d39b198a3227c49d57c87690b3ca38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d87ca4c9e0a165e5cc4144a234b872e5147bacdf` · SHA-256 `1941606b5af6a88e48e27004422a9f3ef314e07d3649b4e84ff0a12f4d656199`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.AdaptiveCenteredJoint.Variantbdc76eac621939578216a2b5f3a7a60ee01be114dd77eb64c08ed5ad85694663","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bdc76eac621939578216a2b5f3a7a60ee01be114dd77eb64c08ed5ad85694663","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.AdaptiveCenteredJoint.Variantbdc76eac621939578216a2b5f3a7a60ee01be114dd77eb64c08ed5ad85694663","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"bdc76eac621939578216a2b5f3a7a60ee01be114dd77eb64c08ed5ad85694663","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/bdc76eac621939578216-SourceAdaptiveVaughanZeroCoupling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveVaughanSignedMain
import SourceActualSignedZeroHeadReduction

/-!
Actual arithmetic/zero coupling for the prescribed source family. The arithmetic
main and its signed error stay joint, and all actual zeros, multiplicities and
closed tail-height atoms stay in the zero carrier. The small coupling defect
does not supply a lower head witness or an upper arithmetic witness.
Direction, selection, corrections and evaluation: grwtsk contributors.
Quantitative source matching and focused scratch proof: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.AdaptiveCenteredJoint.Variantbdc76eac621939578216a2b5f3a7a60ee01be114dd77eb64c08ed5ad85694663

set_option autoImplicit false
noncomputable section
namespace RH16AdaptiveVaughanZeroCoupling
open RH16AdaptiveVaughan
open FormalResearch.RiemannHypothesis
open SourcePairing SourceActualSignedZeroHeadReduction SourceActualFullZeroContour
open SourceActualZeroTailBudget SourceActualZeroMovingTail SourceActualBumpMovingHeight
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

/-- A centered joint arithmetic block defined from the independent main and signed error. -/
def adaptiveCenteredJoint (A : ℝ) : ℝ :=
  adaptiveIndependentMain A + adaptiveSignedSamplingError A - archimedeanMultiplier 0 / 2

theorem adaptiveCenteredJoint_eq_residual (A : ℝ) (hA : 1 ≤ A) :
    adaptiveCenteredJoint A = mertensResidual A - archimedeanMultiplier 0 / 2 := by
  unfold adaptiveCenteredJoint
  rw [actual_residual_eq_adaptiveIndependentMain_add_signedError A hA]

/-- Exact original arithmetic/zero comparison; neither side has been estimated separately. -/
theorem actual_signed_head_add_twice_joint_eq (A : ℝ) (hA : 1 ≤ A) (T : ℝ) :
    (actualZeroHeightHead A T).re + 2 * adaptiveCenteredJoint A =
      archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0 -
        (actualZeroHeightTail A T).re := by
  have h := actualResidual_sub_signedHead_eq hA T
  rw [adaptiveCenteredJoint_eq_residual A hA]
  linarith

/-- A controlled defect between the true growing zero head and the joint arithmetic row. -/
theorem actual_moving_head_joint_two_sided :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      -actualZeroMovingEnvelope A0 c A ≤
        (actualZeroHeightHead A (actualBumpMovingHeight A c)).re +
          2 * adaptiveCenteredJoint A ∧
      (actualZeroHeightHead A (actualBumpMovingHeight A c)).re +
          2 * adaptiveCenteredJoint A ≤
        (18 * (162826 / 7623 : ℝ)) / A^2 + actualZeroMovingEnvelope A0 c A := by
  obtain ⟨A0, hA0, hb⟩ := actualResidual_movingHead_two_sided
  refine ⟨A0, hA0, fun c A hc hA => ?_⟩
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hh := hb c A hc hA
  rw [adaptiveCenteredJoint_eq_residual A hA1]
  have he : (18 * (162826 / 7623 : ℝ)) / (2*A^2) =
      ((18 * (162826 / 7623 : ℝ)) / A^2) / 2 := by ring
  rw [he] at hh
  constructor <;> linarith [hh.1, hh.2]

#print axioms adaptiveCenteredJoint
#print axioms adaptiveCenteredJoint_eq_residual
#print axioms actual_signed_head_add_twice_joint_eq
#print axioms actual_moving_head_joint_two_sided
end RH16AdaptiveVaughanZeroCoupling
```
