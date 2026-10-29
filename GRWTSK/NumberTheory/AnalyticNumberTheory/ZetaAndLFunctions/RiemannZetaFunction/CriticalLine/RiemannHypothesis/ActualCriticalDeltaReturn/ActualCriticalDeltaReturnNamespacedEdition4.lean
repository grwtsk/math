-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualRelativePsiTail.Variant2c1aa2af2b1b37b369c99b784af4c3a87faa836915b89fc1bd413bb48a79c8e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c1aa2af2b1b37b369c99b784af4c3a87faa836915b89fc1bd413bb48a79c8e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualRelativePsiTail.Variant2c1aa2af2b1b37b369c99b784af4c3a87faa836915b89fc1bd413bb48a79c8e5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2c1aa2af2b1b37b369c99b784af4c3a87faa836915b89fc1bd413bb48a79c8e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualCriticalDeltaReturn-attempt01/ActualCriticalDeltaReturn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMertensPntRate
import SourceActualCriticalCovarianceOrdinarySplit

/-!
The actual gamma-centered error is returned to its genuine relative Chebyshev
error. Finite absolutely continuous integration by parts retains the complete
signed tail at seven. No critical arithmetic bound or zero expansion is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualRelativePsiTail.Variant2c1aa2af2b1b37b369c99b784af4c3a87faa836915b89fc1bd413bb48a79c8e5

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ActualCriticalDeltaReturn

open MeasureTheory Set
open scoped Interval
open SourceActualPsiPntTimeDecay SourceActualMertensPntRate
open SourceActualXiErrorConvolution SourceActualCriticalCovarianceOrdinarySplit
open SourcePairing SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

noncomputable section

/-- The genuine signed relative Chebyshev tail, with its open real endpoint. -/
def actualRelativePsiTail (t : ℝ) : ℝ :=
  ∫ r in Ioi t, actualRelativePsiTimeError r

/-- The actual critical relative-error work, retaining the first and zeroth jets. -/
def actualDeltaCriticalReturn (A : ℝ) : ℝ :=
  (1 / 2 : ℝ) * ∫ t in Real.log 7..2 * A,
    actualRelativePsiTimeError t * Real.exp (t / 2) *
      (deriv (sourceCorrelation explicitSecondDerivative A) t -
        sourceCorrelation explicitSecondDerivative A t / 2)

/-- Genuine full positive-time integrability identifies the finite tail primitive. -/
theorem actualRelativePsiTail_eq_total_sub_primitive {t : ℝ} (ht : 0 ≤ t) :
    actualRelativePsiTail t = actualRelativePsiTail 0 -
      ∫ r in 0..t, actualRelativePsiTimeError r := by
  have hi := intervalIntegral.integral_Ioi_sub_Ioi
    (actualRelativePsiTimeError_integrableOn.mono_set Ioi_subset_Ici_self) ht
  unfold actualRelativePsiTail
  linarith

private theorem relative_primitive_ac {b : ℝ} (hb : 0 ≤ b) :
    AbsolutelyContinuousOnInterval
      (fun t => ∫ r in 0..t, actualRelativePsiTimeError r) 0 b :=
  (actualRelativePsiTimeError_intervalIntegrable hb).
    absolutelyContinuousOnInterval_intervalIntegral (by simp)

private theorem tail_representation_ac {b : ℝ} (hb : 0 ≤ b) :
    AbsolutelyContinuousOnInterval
      (fun t => actualRelativePsiTail 0 - ∫ r in 0..t, actualRelativePsiTimeError r) 0 b :=
  (contDiff_const : ContDiff ℝ 1 (fun _ : ℝ => actualRelativePsiTail 0)).
    contDiffOn.absolutelyContinuousOnInterval.sub (relative_primitive_ac hb)

/-- The actual signed tail is genuinely integrable on each closed positive-time interval. -/
theorem actualRelativePsiTail_intervalIntegrable {l b : ℝ}
    (hl : 0 ≤ l) (hlb : l ≤ b) :
    IntervalIntegrable actualRelativePsiTail volume l b := by
  have hs : uIcc l b ⊆ uIcc (0 : ℝ) b := by
    rw [uIcc_of_le hlb, uIcc_of_le (show 0 ≤ b by linarith)]
    exact Icc_subset_Icc hl le_rfl
  have hc := (tail_representation_ac (show 0 ≤ b by linarith)).mono hs
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hlb]
  apply hc.continuousOn.integrableOn_Icc.congr_fun
  · intro t ht
    exact (actualRelativePsiTail_eq_total_sub_primitive (hl.trans ht.1)).symm
  · exact measurableSet_Icc

/-- The actual relative error is L1 before multiplication by either original source jet. -/
theorem actualDeltaCriticalReturn_intervalIntegrable {A : ℝ} (hA : 91 ≤ A) :
    IntervalIntegrable (fun t => actualRelativePsiTimeError t * Real.exp (t / 2) *
      (deriv (sourceCorrelation explicitSecondDerivative A) t -
        sourceCorrelation explicitSecondDerivative A t / 2))
      volume (Real.log 7) (2 * A) := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hab : Real.log (7 : ℝ) ≤ 2 * A := by
    have := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hi := (actualRelativePsiTimeError_intervalIntegrable
    (show 0 ≤ 2 * A by linarith)).mono_set (by
    rw [uIcc_of_le hab, uIcc_of_le (show 0 ≤ 2 * A by linarith)]
    exact Icc_subset_Icc ha le_rfl)
  have hc := sourceCorrelation_contDiff A (show 0 < A by linarith)
  exact (hi.mul_continuousOn (by fun_prop)).mul_continuousOn
    (hc.continuous_deriv_one.sub (hc.continuous.div_const 2)).continuousOn

/-- Actual finite Abel return keeps the complete lower-seven tail with its true sign. -/
theorem actualCriticalErrorCovariance_eq_delta_return {A : ℝ} (hA : 91 ≤ A) :
    actualCriticalErrorCovariance A = actualDeltaCriticalReturn A +
      (1 / 2 : ℝ) * criticalPrimeTest A (Real.log 7) *
        actualRelativePsiTail (Real.log 7) := by
  let a : ℝ := Real.log 7
  let b : ℝ := 2 * A
  let R : ℝ → ℝ := fun t => actualRelativePsiTail 0 -
    ∫ r in 0..t, actualRelativePsiTimeError r
  let F : ℝ → ℝ := criticalPrimeTest A
  have hp : 0 < A := by linarith
  have ha : 0 ≤ a := Real.log_nonneg (by norm_num)
  have hab : a ≤ b := by
    have := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    dsimp [a, b]
    linarith
  have hb : 0 ≤ b := by dsimp [b]; linarith
  have hs : uIcc a b ⊆ uIcc (0 : ℝ) b := by
    rw [uIcc_of_le hab, uIcc_of_le hb]
    exact Icc_subset_Icc ha le_rfl
  have hR : AbsolutelyContinuousOnInterval R a b := (tail_representation_ac hb).mono hs
  have hF : AbsolutelyContinuousOnInterval F a b :=
    (criticalPrimeTest_contDiff A hp).contDiffOn.absolutelyContinuousOnInterval
  have hRd : ∀ᵐ t : ℝ, t ∈ uIcc 0 b →
      HasDerivAt R (-actualRelativePsiTimeError t) t := by
    filter_upwards [(actualRelativePsiTimeError_intervalIntegrable hb).
      ae_hasDerivAt_integral] with t ht hmem
    exact ((hasDerivAt_const t (actualRelativePsiTail 0)).sub
      (ht hmem 0 (by simp))).congr_deriv (by simp)
  have hparts := hR.integral_mul_deriv_eq_deriv_mul hF
  have hFd (t : ℝ) : deriv F t = Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) t) :=
    criticalPrimeTest_deriv A t hp
  have hRb (t : ℝ) (ht : t ∈ uIcc a b) : R t = actualRelativePsiTail t :=
    (actualRelativePsiTail_eq_total_sub_primitive (ha.trans
      ((uIcc_of_le hab) ▸ ht).1)).symm
  have hiδ : IntervalIntegrable actualRelativePsiTimeError volume a b :=
    (actualRelativePsiTimeError_intervalIntegrable hb).mono_set hs
  have hiF : IntervalIntegrable (fun t => actualRelativePsiTimeError t * F t)
      volume a b := hiδ.mul_continuousOn hF.continuousOn
  have hiFd : IntervalIntegrable (fun t => actualRelativePsiTimeError t * deriv F t)
      volume a b := hiδ.mul_continuousOn
    (criticalPrimeTest_contDiff A hp).continuous_deriv_one.continuousOn
  have hderiv : (∫ t in a..b, deriv R t * F t) =
      -(∫ t in a..b, actualRelativePsiTimeError t * F t) := by
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [hRd] with t ht hm
    rw [(ht (hs (uIoc_subset_uIcc hm))).deriv]
    ring
  have hcov : actualCriticalErrorCovariance A =
      (1 / 2 : ℝ) * ((∫ t in a..b, actualRelativePsiTimeError t * deriv F t) -
        ∫ t in a..b, R t * deriv F t) := by
    rw [← intervalIntegral.integral_sub hiFd
      (hR.continuousOn.mul (criticalPrimeTest_contDiff A hp).
        continuous_deriv_one.continuousOn).intervalIntegrable,
      ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro t ht
    have ht0 := ha.trans (((uIcc_of_le hab) ▸ (uIoc_subset_uIcc ht)).1)
    rw [actualCenteredMangoldtLogError_eq_delta_sub_tail ht0,
      hFd, hRb t (uIoc_subset_uIcc ht)]
    unfold actualCriticalErrorDensity
    ring
  have hret : actualDeltaCriticalReturn A =
      (1 / 2 : ℝ) * ((∫ t in a..b, actualRelativePsiTimeError t * deriv F t) -
        ∫ t in a..b, actualRelativePsiTimeError t * F t) := by
    rw [← intervalIntegral.integral_sub hiFd hiF,
      ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro t _
    rw [hFd]
    dsimp [actualDeltaCriticalReturn, F, criticalPrimeTest, a, b]
    ring
  have hFb : F b = 0 := criticalPrimeTest_at_upper A hp
  rw [hFb, mul_zero, zero_sub, hderiv] at hparts
  rw [hcov, hret, hRb a (by simp), hparts]
  ring

/-- The true lower head is uniformly bounded; it is neither discarded nor given a sign. -/
theorem actualCriticalDeltaReturn_lower_head_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |(1 / 2 : ℝ) * criticalPrimeTest A (Real.log 7) *
      actualRelativePsiTail (Real.log 7)| ≤
        (1 / 2 : ℝ) * Real.sqrt 7 * |actualRelativePsiTail (Real.log 7)| := by
  have hc := actual_correlation_abs_le_one A (Real.log 7) hA
  have he : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 7)]
    congr 1
    ring
  rw [criticalPrimeTest, abs_mul, abs_mul, Real.abs_exp, he]
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left (by nlinarith [hc]) (by positivity)) (abs_nonneg _)

end
end FormalResearch.RiemannHypothesis.ActualCriticalDeltaReturn
