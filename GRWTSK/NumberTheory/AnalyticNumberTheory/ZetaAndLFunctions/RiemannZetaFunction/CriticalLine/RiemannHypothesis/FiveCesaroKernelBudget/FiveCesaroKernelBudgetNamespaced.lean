-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDerivativeEnergyLeFive.Variant4fb2c2e7986f71c311b4cd88078ab44c6b8e4df2045444240a666d9ce2677d15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fb2c2e7986f71c311b4cd88078ab44c6b8e4df2045444240a666d9ce2677d15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualDerivativeEnergyLeFive.Variant4fb2c2e7986f71c311b4cd88078ab44c6b8e4df2045444240a666d9ce2677d15","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"4fb2c2e7986f71c311b4cd88078ab44c6b8e4df2045444240a666d9ce2677d15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259/independent-sharper-kernels-replay/FiveCesaroKernelBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCesaroPrimitiveConsumer
import SourceLeadingFullKappaReduction

/-!
Sharper actual Cesaro variation from the focused actual coefficient five and
both genuine zero traces of the third correlation derivative. The arithmetic
growth constant remains explicit. Direction and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex assistance; focused scratch status only.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDerivativeEnergyLeFive.Variant4fb2c2e7986f71c311b4cd88078ab44c6b8e4df2045444240a666d9ce2677d15

set_option autoImplicit false
noncomputable section

namespace RH16FiveCesaro

open MeasureTheory Set
open RH16CesaroKernel RH16CesaroPrimitive
open FormalResearch.RiemannHypothesis.SourceLeadingFullKappaReduction
open FormalResearch.RiemannHypothesis.SourceDerivativeEnergy
open FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- Maintained exact energy coefficients give five on the same real-scale tail. -/
theorem actualDerivativeEnergy_le_five {A : ℝ} (hA : 91 ≤ A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) ≤ 5 := by
  have hp : 0 < A := by linarith
  rw [actual_derivative_energy_eq hp]
  let r := (A ^ 2)⁻¹
  have hr0 : 0 ≤ r := by positivity
  have hr1 : r ≤ 1 / 8000 := by
    dsimp [r]
    rw [inv_eq_one_div]
    apply (div_le_div_iff₀ (by positivity : 0 < A ^ 2)
      (by norm_num : (0 : ℝ) < 8000)).2
    nlinarith
  apply (div_le_iff₀ (normPolynomial_pos r hr0)).2
  have hr2 : r ^ 2 ≤ r / 8000 := by nlinarith
  unfold derivativePolynomial normPolynomial
  nlinarith [sq_nonneg r]

/-- The actual curvature has coefficient five at all real separations. -/
theorem actualCorrelation_second_abs_le_five {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 5 / A ^ 2 := by
  apply (sourceCorrelation_second_deriv_abs_le_energy (by linarith : 0 < A) t).trans
  apply (le_div_iff₀ (by positivity : 0 < A ^ 2)).2
  simpa only [mul_comm] using actualDerivativeEnergy_le_five hA

theorem cesaroWeight_second_abs_le_upper (A t : ℝ) (hA : 91 ≤ A)
    (ht : t ≤ 2 * A) :
    |deriv (deriv (cesaroWeight A)) t| ≤ 67 / A ^ 4 * (2 * A - t) + 5 / (2 * A ^ 2) := by
  have h3 := actual_correlation_third_abs_le_upper_distance A t hA ht
  have h2 := actualCorrelation_second_abs_le_five hA t
  rw [cesaroWeight_second_deriv A t (by linarith : 0 < A)]
  have hb := abs_add_le
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t)
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hb
  have h2h : |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| / 2 ≤
      5 / (2 * A ^ 2) := by
    calc
      _ ≤ (5 / A ^ 2) / 2 := div_le_div_of_nonneg_right h2 (by norm_num)
      _ = _ := by ring
  exact hb.trans (add_le_add h3 h2h)

theorem cesaroWeight_second_abs_le_origin (A t : ℝ) (hA : 91 ≤ A)
    (ht : 0 ≤ t) :
    |deriv (deriv (cesaroWeight A)) t| ≤ 67 / A ^ 4 * t + 5 / (2 * A ^ 2) := by
  have h3 := actualCorrelation_third_abs_le hA t
  rw [abs_of_nonneg ht] at h3
  have h2 := actualCorrelation_second_abs_le_five hA t
  rw [cesaroWeight_second_deriv A t (by linarith : 0 < A)]
  have hb := abs_add_le
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t)
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hb
  have h2h : |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| / 2 ≤
      5 / (2 * A ^ 2) := by
    calc
      _ ≤ (5 / A ^ 2) / 2 := div_le_div_of_nonneg_right h2 (by norm_num)
      _ = _ := by ring
  exact hb.trans (add_le_add h3 h2h)

/-- Both actual zero traces give a triangular third-derivative envelope. -/
theorem cesaroWeight_second_abs_le_both_distances (A t : ℝ) (hA : 91 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ 2 * A) :
    |deriv (deriv (cesaroWeight A)) t| ≤
      67 / A ^ 4 * min t (2 * A - t) + 5 / (2 * A ^ 2) := by
  by_cases h : t ≤ A
  · rw [min_eq_left (by linarith : t ≤ 2 * A - t)]
    exact cesaroWeight_second_abs_le_origin A t hA ht0
  · rw [min_eq_right (by linarith : 2 * A - t ≤ t)]
    exact cesaroWeight_second_abs_le_upper A t hA ht

private theorem integral_quadratic (a b p q : ℝ) :
    (∫ t in a..b, t * (p * t + q)) =
      p / 3 * (b ^ 3 - a ^ 3) + q / 2 * (b ^ 2 - a ^ 2) := by
  have hd (t : ℝ) : HasDerivAt
      (fun u : ℝ => p / 3 * u ^ 3 + q / 2 * u ^ 2) (t * (p * t + q)) t := by
    exact ((((hasDerivAt_id t).pow 3).const_mul (p / 3)).add
      (((hasDerivAt_id t).pow 2).const_mul (q / 2))).congr_deriv
      (by dsimp only [id_eq]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => t * (p * t + q))).intervalIntegrable a b)
  linarith

/-- The exact upper-distance budget improves the main constant to five. -/
theorem cesaroWeight_weighted_budget_five (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
        5 + 268 / (3 * A) := by
  have hp : 0 < A := by linarith
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  let H := fun t : ℝ => 67 / A ^ 4 * (2 * A - t) + 5 / (2 * A ^ 2)
  have hc := cesaroWeight_second_deriv_continuous A hp
  have hH (t : ℝ) (ht : t ≤ 2 * A) : 0 ≤ H t := by
    dsimp [H]
    exact add_nonneg (mul_nonneg (by positivity) (by linarith)) (by positivity)
  have hmono : (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
      ∫ t in Real.log 2..2 * A, t * H t := by
    apply intervalIntegral.integral_mono_on hlA
      (((continuous_id.sub continuous_const).mul hc.abs).intervalIntegrable _ _)
      ((by fun_prop : Continuous (fun t : ℝ => t * H t)).intervalIntegrable _ _)
    intro t ht
    change (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t| ≤ t * H t
    exact (mul_le_mul_of_nonneg_left (cesaroWeight_second_abs_le_upper A t hA ht.2)
      (by linarith [ht.1])).trans
      (mul_le_mul_of_nonneg_right (by linarith) (hH t ht.2))
  have hsub : (∫ t in Real.log 2..2 * A, t * H t) ≤ ∫ t in 0..2 * A, t * H t := by
    apply intervalIntegral.integral_mono_interval hl0 hlA le_rfl _
      ((by fun_prop : Continuous (fun t : ℝ => t * H t)).intervalIntegrable _ _)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact mul_nonneg ht.1.le (hH t ht.2)
  have he : (∫ t in 0..2 * A, t * H t) = 5 + 268 / (3 * A) := by
    have hf : (fun t : ℝ => t * H t) =
        (fun t : ℝ => t * ((-67 / A ^ 4) * t + (134 / A ^ 3 + 5 / (2 * A ^ 2)))) := by
      ext t
      dsimp [H]
      field_simp
      ring
    rw [hf, integral_quadratic]
    field_simp
    ring
  exact hmono.trans (hsub.trans he.le)

theorem cesaroWeight_weighted_budget_five_uniform (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤ (1633 / 273 : ℝ) := by
  have h := cesaroWeight_weighted_budget_five A hA
  have he : 268 / (3 * A) ≤ (268 / 273 : ℝ) :=
    (div_le_iff₀ (by positivity : 0 < 3 * A)).mpr (by linarith)
  linarith

/-- Splitting at A integrates the triangular envelope without losing either zero trace. -/
theorem cesaroWeight_weighted_budget_both_distances (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤ 5 + 67 / A := by
  have hp : 0 < A := by linarith
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  have hc := (cesaroWeight_second_deriv_continuous A hp).abs
  let K := fun t : ℝ => t * |deriv (deriv (cesaroWeight A)) t|
  have hK : Continuous K := continuous_id.mul hc
  have hmono : (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
      ∫ t in Real.log 2..2 * A, K t := by
    apply intervalIntegral.integral_mono_on hlA
      (((continuous_id.sub continuous_const).mul hc).intervalIntegrable _ _)
      (hK.intervalIntegrable _ _)
    intro t _
    change (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t| ≤
      t * |deriv (deriv (cesaroWeight A)) t|
    exact mul_le_mul_of_nonneg_right (by linarith) (abs_nonneg _)
  have hsub : (∫ t in Real.log 2..2 * A, K t) ≤ ∫ t in 0..2 * A, K t := by
    apply intervalIntegral.integral_mono_interval hl0 hlA le_rfl _
      (hK.intervalIntegrable _ _)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact mul_nonneg ht.1.le (abs_nonneg _)
  have hleft : (∫ t in 0..A, K t) ≤
      ∫ t in 0..A, t * ((67 / A ^ 4) * t + 5 / (2 * A ^ 2)) := by
    apply intervalIntegral.integral_mono_on hp.le (hK.intervalIntegrable _ _)
      ((by fun_prop : Continuous
        (fun t : ℝ => t * ((67 / A ^ 4) * t + 5 / (2 * A ^ 2)))).intervalIntegrable _ _)
    intro t ht
    exact mul_le_mul_of_nonneg_left (cesaroWeight_second_abs_le_origin A t hA ht.1) ht.1
  have hright : (∫ t in A..2 * A, K t) ≤
      ∫ t in A..2 * A, t * ((-67 / A ^ 4) * t + (134 / A ^ 3 + 5 / (2 * A ^ 2))) := by
    apply intervalIntegral.integral_mono_on (by linarith : A ≤ 2 * A)
      (hK.intervalIntegrable _ _)
      ((by fun_prop : Continuous
        (fun t : ℝ => t * ((-67 / A ^ 4) * t +
          (134 / A ^ 3 + 5 / (2 * A ^ 2))))).intervalIntegrable _ _)
    intro t ht
    have hb := mul_le_mul_of_nonneg_left (cesaroWeight_second_abs_le_upper A t hA ht.2)
      (show 0 ≤ t by linarith [ht.1])
    change t * |deriv (deriv (cesaroWeight A)) t| ≤
      t * ((-67 / A ^ 4) * t + (134 / A ^ 3 + 5 / (2 * A ^ 2)))
    calc
      _ ≤ t * (67 / A ^ 4 * (2 * A - t) + 5 / (2 * A ^ 2)) := hb
      _ = _ := by field_simp; ring
  have hsum := add_le_add hleft hright
  rw [intervalIntegral.integral_add_adjacent_intervals
    (hK.intervalIntegrable 0 A) (hK.intervalIntegrable A (2 * A))] at hsum
  rw [integral_quadratic, integral_quadratic] at hsum
  have he : (67 / A ^ 4) / 3 * (A ^ 3 - 0 ^ 3) +
      (5 / (2 * A ^ 2)) / 2 * (A ^ 2 - 0 ^ 2) +
      ((-67 / A ^ 4) / 3 * ((2 * A) ^ 3 - A ^ 3) +
      (134 / A ^ 3 + 5 / (2 * A ^ 2)) / 2 * ((2 * A) ^ 2 - A ^ 2)) = 5 + 67 / A := by
    field_simp
    ring
  rw [he] at hsum
  exact hmono.trans (hsub.trans hsum)

theorem cesaroWeight_weighted_budget_both_distances_uniform (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤ (522 / 91 : ℝ) := by
  have h := cesaroWeight_weighted_budget_both_distances A hA
  have he : 67 / A ≤ (67 / 91 : ℝ) :=
    (div_le_iff₀ (by linarith : 0 < A)).mpr (by linarith)
  linarith

end RH16FiveCesaro
