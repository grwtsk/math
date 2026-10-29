-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCenteredKernelVariation.Variant9473700e1528a01b07e42553ee8c82e5f83bdd0d2304d1dddb047710c2cf5eaa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9473700e1528a01b07e42553ee8c82e5f83bdd0d2304d1dddb047710c2cf5eaa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCenteredKernelVariation.Variant9473700e1528a01b07e42553ee8c82e5f83bdd0d2304d1dddb047710c2cf5eaa","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9473700e1528a01b07e42553ee8c82e5f83bdd0d2304d1dddb047710c2cf5eaa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791352153504306000/SourceActualCenteredSmoothingCost.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualSmoothingArithmeticAttempt

/-!
Cost of the attempted elementary estimate after exact actual gamma centering.
The arithmetic discrepancy envelope is unconditional. The actual kernel
variation is unbounded, so this specific absolute estimate supplies no uniform
signed J. This is not divergence of the actual arithmetic moment.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCenteredKernelVariation.Variant9473700e1528a01b07e42553ee8c82e5f83bdd0d2304d1dddb047710c2cf5eaa

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualCenteredSmoothingCost
open MeasureTheory SourceActualSmoothingArithmeticAttempt SourceActualClosedXiSignedMoment
open SourceMangoldtAbel SourceFirstPrimeAbel SourceMangoldtNorm SourceCorrelationEnergy
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Genuine variation of the actual source kernel after gamma centering. -/
def actualCenteredKernelVariation (A : ℝ) : ℝ :=
  ∫ t in Real.log 2..2 * A, |deriv (criticalPrimeTest A) t|

/-- The actual elementary weighted-Mangoldt bound retains the independent gamma term. -/
theorem actual_centered_Mangoldt_error_abs_le (t : ℝ) (ht : 0 ≤ t) :
    |mangoldtLogError t + Real.eulerMascheroniConstant| ≤
      Real.log 4 + 4 + Real.log 2 + 2 / 3 := by
  have he := mangoldtLogError_abs_le t ht
  have hg0 : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  have hg := Real.eulerMascheroniConstant_lt_two_thirds
  have h := abs_add_le (mangoldtLogError t) Real.eulerMascheroniConstant
  rw [abs_of_nonneg hg0] at h
  linarith only [he, hg, h]

/-- Actual source normalization gives a positive early derivative on a growing log interval. -/
theorem actual_critical_derivative_early_lower {A t : ℝ} (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ A / 40) :
    (5 / 16 : ℝ) * Real.exp (t / 2) ≤ deriv (criticalPrimeTest A) t := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hc := sourceCorrelation_sub_one_abs_le hA1 t
  rw [abs_of_nonneg ht0] at hc
  have hs : 5 * t / A ≤ (1 / 8 : ℝ) :=
    (div_le_iff₀ hp).mpr (by linarith)
  have hcl : (7 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith only [(abs_le.mp hc).1, hs]
  have hd := sourceCorrelation_deriv_abs_le_five_div hA1 t
  have h5 : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  have hdl : -(1 / 8 : ℝ) ≤ deriv (sourceCorrelation explicitSecondDerivative A) t := by
    linarith only [(abs_le.mp hd).1, h5]
  have hw : (5 / 16 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t / 2 +
      deriv (sourceCorrelation explicitSecondDerivative A) t := by
    linarith only [hcl, hdl]
  rw [criticalPrimeTest_deriv A t hp]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left hw (Real.exp_pos (t / 2)).le

/-- The post-centering absolute kernel cost still grows exponentially. -/
theorem actual_centered_kernel_variation_exponential_lower (A : ℝ) (hA : 91 ≤ A) :
    (5 / 8 : ℝ) * (Real.exp (A / 80) - 2) ≤ actualCenteredKernelVariation A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hL0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hL1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hL : Real.log (2 : ℝ) ≤ A / 40 := by linarith
  have hU : A / 40 ≤ 2 * A := by linarith
  have hc := (criticalPrimeTest_contDiff A hp).continuous_deriv_one
  have he : (∫ t in Real.log 2..A / 40, Real.exp (t / 2)) =
      2 * (Real.exp (A / 80) - Real.exp (Real.log 2 / 2)) := by
    have hd (t : ℝ) : HasDerivAt (fun u : ℝ => 2 * Real.exp (u / 2))
        (Real.exp (t / 2)) t :=
      (((hasDerivAt_id t).div_const 2).exp.const_mul 2).congr_deriv
        (by dsimp only [id_eq]; ring)
    have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
      ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable
        (μ := volume) (Real.log 2) (A / 40))
    rw [show A / 40 / 2 = A / 80 by ring] at hi
    linarith only [hi]
  have hm : (∫ t in Real.log 2..A / 40, (5 / 16 : ℝ) * Real.exp (t / 2)) ≤
      ∫ t in Real.log 2..A / 40, |deriv (criticalPrimeTest A) t| := by
    have hk : Continuous (fun t : ℝ => (5 / 16 : ℝ) * Real.exp (t / 2)) := by
      fun_prop
    apply intervalIntegral.integral_mono_on hL
      (hk.intervalIntegrable _ _) (hc.abs.intervalIntegrable _ _)
    intro t ht
    exact (actual_critical_derivative_early_lower (by linarith : 40 ≤ A)
      (hL0.trans ht.1) ht.2).trans (le_abs_self _)
  have hr := intervalIntegral.integral_mono_interval (μ := volume) le_rfl hL hU
    (f := fun t => |deriv (criticalPrimeTest A) t|)
    (Filter.Eventually.of_forall (fun t => abs_nonneg (deriv (criticalPrimeTest A) t)))
    (hc.abs.intervalIntegrable _ _)
  have hb : Real.exp (Real.log 2 / 2) ≤ 2 := by
    calc
      _ ≤ Real.exp (Real.log 2) := Real.exp_le_exp.mpr (by linarith)
      _ = 2 := Real.exp_log (by norm_num)
  rw [intervalIntegral.integral_const_mul, he] at hm
  unfold actualCenteredKernelVariation
  linarith only [hm, hr, hb]

theorem actual_centered_kernel_variation_linear_lower (A : ℝ) (hA : 91 ≤ A) :
    A / 128 - 5 / 8 ≤ actualCenteredKernelVariation A := by
  have h := actual_centered_kernel_variation_exponential_lower A hA
  have he := Real.add_one_le_exp (A / 80)
  linarith only [h, he]

/-- Failure of this kernel budget is not failure of actual signed cancellation. -/
theorem actual_centered_kernel_variation_not_eventually_bounded :
    ¬ ∃ B R : ℝ, ∀ A : ℝ, 91 ≤ A → R ≤ A → actualCenteredKernelVariation A ≤ B := by
  rintro ⟨B, R, h⟩
  let A : ℝ := max 91 (max R (128 * (B + 5 / 8 + 1)))
  have h91 : 91 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hB : 128 * (B + 5 / 8 + 1) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hlo := actual_centered_kernel_variation_linear_lower A h91
  have hhi := h A h91 hR
  linarith only [hB, hlo, hhi]

end FormalResearch.RiemannHypothesis.SourceActualCenteredSmoothingCost
