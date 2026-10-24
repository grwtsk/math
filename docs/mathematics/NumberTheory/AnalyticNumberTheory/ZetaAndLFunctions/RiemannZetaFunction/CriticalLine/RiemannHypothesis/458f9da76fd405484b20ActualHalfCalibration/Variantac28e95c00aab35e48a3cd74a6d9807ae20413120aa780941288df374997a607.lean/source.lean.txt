-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HalfErrorExact.Variant458f9da76fd405484b20b9457d616f4c5e8734460514def107c8b8e846a06c65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"458f9da76fd405484b20b9457d616f4c5e8734460514def107c8b8e846a06c65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.HalfErrorExact.Variant458f9da76fd405484b20b9457d616f4c5e8734460514def107c8b8e846a06c65","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"458f9da76fd405484b20b9457d616f4c5e8734460514def107c8b8e846a06c65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/458f9da76fd405484b20-ActualHalfCalibration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import Mathlib.Analysis.SpecificLimits.Basic

/-!
The actual continuous half in optional issue #327 has an exact rational value.
This packet calibrates that value without a new improper-integral premise.
It supplies no centered Mangoldt or signed-work witness.
Mathematical direction: grwtsk contributors. Lean construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HalfErrorExact.Variant458f9da76fd405484b20b9457d616f4c5e8734460514def107c8b8e846a06c65

set_option autoImplicit false
namespace ContinuousResearch.ActualHalfCalibration
open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
noncomputable section

theorem half_error_exact {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A + 2 =
      (272 * A ^ 2 + 14688) / (7 * A ^ 4 + 272 * A ^ 2 + 7344) := by
  rw [criticalContinuousMoment_eq_rational hA]
  have hd : 7 * A ^ 4 + 272 * A ^ 2 + 7344 ≠ 0 := by positivity
  field_simp
  ring

theorem half_error_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < criticalContinuousMoment A + 2 := by
  rw [half_error_exact hA]
  positivity

theorem half_scaled_error_lt {A : ℝ} (hA : 1 ≤ A) :
    A ^ 2 * (criticalContinuousMoment A + 2) < 81 / 2 := by
  rw [half_error_exact hA]
  have hd : 0 < 7 * A ^ 4 + 272 * A ^ 2 + 7344 := by positivity
  rw [← mul_div_assoc, div_lt_iff₀ hd]
  have hs := sq_nonneg (23 * A ^ 2 - 3672)
  nlinarith [sq_nonneg A]

theorem half_error_lt {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A + 2 < (81 / 2) / A ^ 2 := by
  have hp : 0 < A := by linarith
  apply (lt_div_iff₀ (sq_pos_of_pos hp)).2
  simpa only [mul_comm] using half_scaled_error_lt hA

theorem half_error_abs_lt {A : ℝ} (hA : 1 ≤ A) :
    |criticalContinuousMoment A + 2| < (81 / 2) / A ^ 2 := by
  rw [abs_of_pos (half_error_pos hA)]
  exact half_error_lt hA

#check half_error_exact
#print axioms half_error_exact
#check half_error_pos
#print axioms half_error_pos
#check half_scaled_error_lt
#print axioms half_scaled_error_lt
#check half_error_lt
#print axioms half_error_lt
#check half_error_abs_lt
#print axioms half_error_abs_lt
end
end ContinuousResearch.ActualHalfCalibration
