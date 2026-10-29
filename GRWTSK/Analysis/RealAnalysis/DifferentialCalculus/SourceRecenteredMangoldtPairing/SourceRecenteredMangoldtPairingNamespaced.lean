-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CenteredLogPairing.Variant3b098825a20f9e6ace0a90514b10397946d69a248607cf1385b1bc1d9f4435a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b098825a20f9e6ace0a90514b10397946d69a248607cf1385b1bc1d9f4435a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CenteredLogPairing.Variant3b098825a20f9e6ace0a90514b10397946d69a248607cf1385b1bc1d9f4435a2","mathematical_subject":"Analysis.Calculus","original_sha256":"3b098825a20f9e6ace0a90514b10397946d69a248607cf1385b1bc1d9f4435a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/dependencies/strict-audit-captures/SourceRecenteredMangoldtPairing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualShiftedXiDerivativeAdapter

/-!
Exact recentering of the complete actual Xi pairing in logarithmic Mangoldt
coordinates. Both the original gamma boundary and the moving closed prefix
remain explicit. No uniform arithmetic witness is supplied.
Direction and evaluation: grwtsk contributors. Local construction: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CenteredLogPairing.Variant3b098825a20f9e6ace0a90514b10397946d69a248607cf1385b1bc1d9f4435a2

set_option autoImplicit false
noncomputable section

namespace RH16RecenteredMangoldt

open MeasureTheory
open FormalResearch.RiemannHypothesis
open SourceFirstPrimeAbel SourceFirstAtomSignedWork SourceMangoldtAbel
open SourceMangoldtNorm SourceCorrelationEnergy SourcePairing SourcePositiveSampling
open RH16CesaroPrimitive RH16CesaroSignedPairing RH16ResumeApplication RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

/-- The complete centered Mangoldt pairing, with the original fixed gamma. -/
def centeredLogPairing (A : ℝ) : ℝ :=
  ∫ t in Real.log 2..2 * A,
    (mangoldtLogError t + Real.eulerMascheroniConstant) * deriv (criticalPrimeTest A) t

/-- The complete signed pairing after subtracting its actual moving prefix value. -/
def compensatedLogPairing (A : ℝ) : ℝ :=
  ∫ t in Real.log 2..2 * A,
    (mangoldtLogError t - mangoldtLogError (2 * A)) * deriv (criticalPrimeTest A) t

/-- Exact full derivative mass; the actual upper source trace vanishes. -/
theorem actual_derivative_mass (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log 2..2 * A, deriv (criticalPrimeTest A) t) =
      -criticalPrimeTest A (Real.log 2) := by
  have hf := criticalPrimeTest_contDiff A (by linarith : 0 < A)
  have hi : IntervalIntegrable (deriv (criticalPrimeTest A)) volume (Real.log 2) (2 * A) :=
    hf.continuous_deriv_one.intervalIntegrable _ _
  have he := intervalIntegral.integral_deriv_eq_sub
    (fun t _ => hf.differentiable_one.differentiableAt) hi
  rw [criticalPrimeTest_at_upper A (by linarith)] at he
  simpa only [zero_sub] using he

/-- Native identity for the full Xi pairing, retaining all original signed terms. -/
theorem centeredLogPairing_eq_signedCesaroPairing (A : ℝ) (hA : 1 ≤ A) :
    centeredLogPairing A = signedCesaroPairing A := by
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hf := criticalPrimeTest_contDiff A (by linarith : 0 < A)
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A)
    hL (criticalPrimeTest A) hf
  have hd : IntervalIntegrable (deriv (criticalPrimeTest A)) volume (Real.log 2) (2 * A) :=
    hf.continuous_deriv_one.intervalIntegrable _ _
  unfold centeredLogPairing
  simp only [add_mul]
  rw [intervalIntegral.integral_add hi (hd.const_mul _),
    intervalIntegral.integral_const_mul, actual_derivative_mass A hA]
  change remainingAtomWork A + Real.eulerMascheroniConstant *
    (-criticalPrimeTest A (Real.log 2)) = signedCesaroPairing A
  have he := remainingAtomWork_eq_cesaro_integral A hA
  change remainingAtomWork A = Real.eulerMascheroniConstant *
    criticalPrimeTest A (Real.log 2) + signedCesaroPairing A at he
  linarith only [he]

/-- Exact moving-value recentering pays a single fixed first-atom trace. -/
theorem centeredLogPairing_eq_compensated (A : ℝ) (hA : 1 ≤ A) :
    centeredLogPairing A = compensatedLogPairing A -
      (mangoldtLogError (2 * A) + Real.eulerMascheroniConstant) *
        criticalPrimeTest A (Real.log 2) := by
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hf := criticalPrimeTest_contDiff A (by linarith : 0 < A)
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A)
    hL (criticalPrimeTest A) hf
  have hd : IntervalIntegrable (deriv (criticalPrimeTest A)) volume (Real.log 2) (2 * A) :=
    hf.continuous_deriv_one.intervalIntegrable _ _
  unfold centeredLogPairing compensatedLogPairing
  simp only [add_mul, sub_mul]
  rw [intervalIntegral.integral_add hi (hd.const_mul _),
    intervalIntegral.integral_sub hi (hd.const_mul _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    actual_derivative_mass A hA]
  ring

/-- A scalar boundary budget fixed before any scale is quantified. -/
def boundaryBudget : ℝ := Real.exp (Real.log 2 / 2) *
  (Real.log 4 + 4 + Real.log 2 + 2 / 3)

/-- The original actual source bound controls only the retained boundary term. -/
theorem actual_centered_boundary_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |(mangoldtLogError (2 * A) + Real.eulerMascheroniConstant) *
      criticalPrimeTest A (Real.log 2)| ≤ boundaryBudget := by
  have he := mangoldtLogError_abs_le (2 * A) (by linarith)
  have hc := actual_correlation_abs_le_one A (Real.log 2) hA
  have hgamma : |Real.eulerMascheroniConstant| ≤ (2 / 3 : ℝ) := by
    rw [abs_of_nonneg (by linarith [Real.one_half_lt_eulerMascheroniConstant])]
    exact Real.eulerMascheroniConstant_lt_two_thirds.le
  have hb := (abs_add_le (mangoldtLogError (2 * A)) Real.eulerMascheroniConstant).trans
    (add_le_add he hgamma)
  have htest : |criticalPrimeTest A (Real.log 2)| ≤ Real.exp (Real.log 2 / 2) := by
    unfold criticalPrimeTest
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    simpa only [mul_one] using mul_le_mul_of_nonneg_left hc (Real.exp_pos _).le
  unfold boundaryBudget
  rw [abs_mul]
  have hp : 0 ≤ Real.log 4 + 4 + Real.log 2 + 2 / 3 := by
    have hl4 := Real.log_nonneg (show (1 : ℝ) ≤ 4 by norm_num)
    have hl2 := Real.log_nonneg (show (1 : ℝ) ≤ 2 by norm_num)
    linarith
  calc
    _ ≤ (Real.log 4 + 4 + Real.log 2 + 2 / 3) * Real.exp (Real.log 2 / 2) :=
      mul_le_mul hb htest (abs_nonneg _) hp
    _ = _ := by ring

/-- A future COMPLETE compensated signed bound retains only this fixed boundary loss. -/
theorem signed_pairing_lower_of_compensated (K A : ℝ) (hA : 1 ≤ A)
    (hcomp : -K ≤ compensatedLogPairing A) :
    -(K + boundaryBudget) ≤ signedCesaroPairing A := by
  rw [← centeredLogPairing_eq_signedCesaroPairing A hA,
    centeredLogPairing_eq_compensated A hA]
  have hb := (abs_le.mp (actual_centered_boundary_abs_le A hA)).2
  linarith only [hb, hcomp]

/-- The original all-real source consumer uses its complete prefix through max(91,R). -/
theorem estimate_of_compensated_tail (K R : ℝ)
    (hcomp : ∀ A : ℝ, R ≤ A → -K ≤ compensatedLogPairing A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_remaining_signed_tail (K + boundaryBudget) (max 91 R) (by
    have hr := le_max_left (91 : ℝ) R
    linarith)
  intro A hA
  have h91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
  exact remainingAtomWork_lower_of_signed_pairing _ A h91
    (signed_pairing_lower_of_compensated K A (by linarith)
      (hcomp A ((le_max_right _ _).trans hA)))

end RH16RecenteredMangoldt
