-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualCorrelationUpperStripIntegral.Variant45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualCorrelationUpperStripIntegral.Variant45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de","mathematical_subject":"Analysis.Integration","original_sha256":"45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T172033Z-1791307233899293000/ActualBoundaryCorrelation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualBoundaryStrip

/-!
Actual correlation lower bound in the last unit strip before its upper support.
The complete overlap interval and true normalization are retained. This is a
kernel estimate, not an arithmetic witness or substitute Chebyshev sequence.
AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualCorrelationUpperStripIntegral.Variant45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- The actual compact overlap is exactly the short right-edge interval. -/
theorem actual_correlation_upper_strip_integral (A h : ℝ) (hA : 4 ≤ A)
    (hh0 : 0 ≤ h) (_hh1 : h ≤ 1) :
    sourceCorrelation explicitSecondDerivative A (2 * A - h) =
      ∫ x in (A - h)..A, normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - h)) := by
  have hp : 0 < A := by linarith
  have he : (fun x : ℝ => normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - h))) =
      (Icc (A - h) A).indicator (fun x => normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - h))) := by
    funext x
    by_cases hx : x ∈ Icc (A - h) A
    · rw [indicator_of_mem hx]
    · rw [indicator_of_notMem hx]
      have ho : x < A - h ∨ A < x := by
        simpa only [mem_Icc, not_and_or, not_le] using hx
      rcases ho with hx | hx
      · have hb : A ≤ |x - (2 * A - h)| := by
          linarith [neg_le_abs (x - (2 * A - h))]
        rw [normalizedTest_zero_of_le_abs A _ hp hb, mul_zero]
      · rw [normalizedTest_zero_of_le_abs A x hp (hx.le.trans (le_abs_self x)), zero_mul]
  change (∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
    normalizedTest explicitSecondDerivative A (x - (2 * A - h))) = _
  calc
    _ = ∫ x : ℝ, (Icc (A - h) A).indicator
        (fun y => normalizedTest explicitSecondDerivative A y *
          normalizedTest explicitSecondDerivative A (y - (2 * A - h))) x :=
      congrArg (fun f : ℝ → ℝ => ∫ x : ℝ, f x) he
    _ = _ := zeroExtension_integral _ _ _ (by linarith)

/-- The actual correlation has a positive, quantitatively nonzero support-edge strip. -/
theorem actual_correlation_upper_strip_lower (A h : ℝ) (hA : 4 ≤ A)
    (hh0 : 0 ≤ h) (hh1 : h ≤ 1) :
    h ^ 5 / (30 * A ^ 9) ≤ sourceCorrelation explicitSecondDerivative A (2 * A - h) := by
  have hp : 0 < A := by linarith
  let L := fun x : ℝ => (A - x) ^ 2 * (h - A + x) ^ 2 / A ^ 9
  have hLI : IntervalIntegrable L volume (A - h) A := by
    apply Continuous.intervalIntegrable
    dsimp [L]
    fun_prop
  have hqI : IntervalIntegrable (fun x => normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - h))) volume (A - h) A :=
    ((normalizedTest_contDiff A hp).continuous.mul
      ((normalizedTest_contDiff A hp).continuous.comp
        (continuous_id.sub continuous_const))).intervalIntegrable _ _
  have hb : (∫ x in (A - h)..A, L x) ≤
      sourceCorrelation explicitSecondDerivative A (2 * A - h) := by
    rw [actual_correlation_upper_strip_integral A h hA hh0 hh1]
    apply intervalIntegral.integral_mono_on (by linarith) hLI hqI
    intro x hx
    have hδ0 : 0 ≤ A - x := by linarith [hx.2]
    have hδ1 : A - x ≤ 1 := by linarith [hx.1]
    have hε0 : 0 ≤ h - A + x := by linarith [hx.1]
    have hε1 : h - A + x ≤ 1 := by linarith [hx.2]
    have hq0 := actual_normalized_test_right_edge_lower A (A - x) hA hδ0 hδ1
    have hq1 := actual_normalized_test_left_edge_lower A (h - A + x) hA hε0 hε1
    rw [show A - (A - x) = x by ring] at hq0
    rw [show -A + (h - A + x) = x - (2 * A - h) by ring] at hq1
    have hm := mul_le_mul hq0 hq1 (by positivity)
      ((by positivity : 0 ≤ (A - x) ^ 2 / (A ^ 4 * Real.sqrt A)).trans hq0)
    have he : (A - x) ^ 2 / (A ^ 4 * Real.sqrt A) *
        ((h - A + x) ^ 2 / (A ^ 4 * Real.sqrt A)) = L x := by
      rw [← mul_div_mul_comm, ← pow_two, mul_pow, Real.sq_sqrt hp.le]
      dsimp [L]
      ring
    rw [he] at hm
    exact hm
  have hL : (∫ x in (A - h)..A, L x) = h ^ 5 / (30 * A ^ 9) := by
    have he : (fun x : ℝ => (A - x) ^ 2 * (h - A + x) ^ 2) =
        fun x => x ^ 4 + (2 * h - 4 * A) * x ^ 3 +
          (h ^ 2 - 6 * A * h + 6 * A ^ 2) * x ^ 2 +
          (-2 * A * h ^ 2 + 6 * A ^ 2 * h - 4 * A ^ 3) * x ^ 1 +
          (A ^ 2 * h ^ 2 - 2 * A ^ 3 * h + A ^ 4) := by
      funext x
      ring
    dsimp [L]
    rw [intervalIntegral.integral_div, he]
    simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
      [intervalIntegral.integral_add, intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const, integral_pow]
    ring
  rw [hL] at hb
  exact hb

end
end RH16IndependentChallengeNext
