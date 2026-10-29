-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalBaselineCorrection.Variant5db7b7ef1836e6b6fa857600fcce9292a6a169f057d5b73d8fd44b0c83d83684","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5db7b7ef1836e6b6fa857600fcce9292a6a169f057d5b73d8fd44b0c83d83684","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CriticalBaselineCorrection.Variant5db7b7ef1836e6b6fa857600fcce9292a6a169f057d5b73d8fd44b0c83d83684","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5db7b7ef1836e6b6fa857600fcce9292a6a169f057d5b73d8fd44b0c83d83684","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/5db7b7ef1836e6b6fa85-SourceCriticalDirectBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceResidualBudget
import SourceCriticalRelativeCompensation

/-!
An actual signed compensation-sector estimate and its direct source consumer.
The independently defined critical arithmetic pairing retains an open upper-bound
premise. Only its actual continuous baseline is estimated here.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalBaselineCorrection.Variant5db7b7ef1836e6b6fa857600fcce9292a6a169f057d5b73d8fd44b0c83d83684

set_option autoImplicit false

namespace RH16ResumeBudget

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
open FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

/-- The actual unit-plus-half-source correction, independent of the arithmetic target. -/
def criticalBaselineCorrection (A : ℝ) : ℝ :=
  (7344 - 7 * A ^ 4) / (7 * A ^ 4 + 272 * A ^ 2 + 7344)

theorem criticalBaselineCorrection_eq_actual (A : ℝ) (hA : 1 ≤ A) :
    criticalBaselineCorrection A = 1 + criticalContinuousMoment A := by
  rw [criticalContinuousMoment_eq_rational hA]
  unfold criticalBaselineCorrection
  have hd : (7 * A ^ 4 + 272 * A ^ 2 + 7344 : ℝ) ≠ 0 := by positivity
  field_simp
  ring

/-- A genuine one-sided estimate on the unchanged source compensation sector. -/
theorem criticalBaselineCorrection_antitone (R A : ℝ) (hR : 0 ≤ R) (hRA : R ≤ A) :
    criticalBaselineCorrection A ≤ criticalBaselineCorrection R := by
  have hA : 0 ≤ A := hR.trans hRA
  have hs : R ^ 2 ≤ A ^ 2 := by nlinarith
  have hp : 0 ≤ (A ^ 2 - R ^ 2) *
      (102816 * (A ^ 2 + R ^ 2) + 1997568 + 1904 * A ^ 2 * R ^ 2) := by positivity
  have he : (7344 - 7 * R ^ 4) * (7 * A ^ 4 + 272 * A ^ 2 + 7344) -
      (7344 - 7 * A ^ 4) * (7 * R ^ 4 + 272 * R ^ 2 + 7344) =
      (A ^ 2 - R ^ 2) *
        (102816 * (A ^ 2 + R ^ 2) + 1997568 + 1904 * A ^ 2 * R ^ 2) := by ring
  unfold criticalBaselineCorrection
  apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
  linarith

theorem criticalBaselineCorrection_negative_of_six_le (R : ℝ) (hR : 6 ≤ R) :
    criticalBaselineCorrection R < 0 := by
  have hR0 : 0 ≤ R := by linarith
  have h4 : (6 : ℝ) ^ 4 ≤ R ^ 4 := by gcongr
  unfold criticalBaselineCorrection
  apply div_neg_of_neg_of_pos
  · nlinarith
  · positivity

theorem residual_upper_of_criticalRelative_tail (K R A : ℝ) (hR : 1 ≤ R)
    (hRA : R ≤ A) (hQ : criticalRelativePairing A ≤ K) :
    mertensResidual A ≤ K + criticalBaselineCorrection R := by
  have hA : 1 ≤ A := hR.trans hRA
  rw [mertensResidual_eq_criticalRelative_add_baseline hA]
  have hb := criticalBaselineCorrection_antitone R A (by linarith) hRA
  rw [criticalBaselineCorrection_eq_actual A hA] at hb
  linarith

/-- The baseline cost is signed, decreases at later radii, and is negative from radius six. -/
theorem all_real_source_lower_of_criticalRelative_tail (K R : ℝ) (hR : 1 ≤ R)
    (hcritical : ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (K + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail (K + criticalBaselineCorrection R) R hR
  intro A hRA
  exact residual_upper_of_criticalRelative_tail K R A hR hRA (hcritical A hRA)

end
end RH16ResumeBudget
