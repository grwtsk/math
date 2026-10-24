-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.FullMangoldtWork.Variantf0484b2df896ff03990e52bfa4d39e5b951ce34b7ec55db5a2b0f07eae8baf5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0484b2df896ff03990e52bfa4d39e5b951ce34b7ec55db5a2b0f07eae8baf5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.FullMangoldtWork.Variantf0484b2df896ff03990e52bfa4d39e5b951ce34b7ec55db5a2b0f07eae8baf5d","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"f0484b2df896ff03990e52bfa4d39e5b951ce34b7ec55db5a2b0f07eae8baf5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass5/full_real_mangoldt_review/SourceFullRealMangoldt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import «scratch».«continuous-research-01a109fc».pass4.common_mean_review.SourceFirstPoleMoment
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
Scratch continuation of grwtsk contributors's actual-source boundary research.
OpenAI Codex construction. Actual full-real Mangoldt work, its negative-axis
correction, and the literal boundary pairing are source adapters only.
No arithmetic rate witness or source mutation is supplied.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.FullMangoldtWork.Variantf0484b2df896ff03990e52bfa4d39e5b951ce34b7ec55db5a2b0f07eae8baf5d

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourceFullRealMangoldt

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment EstimateMertensResidual
open EstimatePrimeSmoothDefect
open ContinuousResearch.SourceFirstPoleMoment

/-- The new full-real work remains independently defined from the actual prefix error. -/
def fullMangoldtWork (A : ℝ) : ℝ :=
  ∫ t : ℝ, mangoldtLogError t * deriv (criticalPrimeTest A) t

theorem criticalTest_support {A : ℝ} (hA : 1 ≤ A) :
    tsupport (criticalPrimeTest A) ⊆ Icc (-(2*A)) (2*A) := by
  apply closure_minimal _ isClosed_Icc
  intro t ht
  have hc : sourceCorrelation explicitSecondDerivative A t ≠ 0 := by
    intro hn
    exact ht (by simp [criticalPrimeTest, hn])
  have ht' : |t| < 2*A := by
    by_contra hn
    exact hc (sourceCorrelation_eq_zero_of_two_mul_le_abs A t
      (by linarith) (le_of_not_gt hn))
  exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans ht'.le⟩

theorem criticalTest_deriv_zero_outside {A : ℝ} (hA : 1 ≤ A) (t : ℝ)
    (ht : t ∉ Icc (-(2*A)) (2*A)) : deriv (criticalPrimeTest A) t = 0 := by
  by_contra hn
  exact ht (criticalTest_support hA (support_deriv_subset hn))

/-- Integrability of the literal full-real arithmetic pairing is proved before reconstruction. -/
theorem fullMangoldtWork_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun t : ℝ => mangoldtLogError t * deriv (criticalPrimeTest A) t) := by
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (-(2*A)) (2*A)
    (by linarith) (criticalPrimeTest A) (criticalPrimeTest_contDiff A (by linarith))
  have hion := (intervalIntegrable_iff_integrableOn_Icc_of_le (by linarith : -(2*A) ≤ 2*A)).mp hi
  have hind := (integrable_indicator_iff measurableSet_Icc).mpr hion
  have he : (Icc (-(2*A)) (2*A)).indicator
      (fun t : ℝ => mangoldtLogError t * deriv (criticalPrimeTest A) t) =
      (fun t : ℝ => mangoldtLogError t * deriv (criticalPrimeTest A) t) := by
    funext t
    by_cases ht : t ∈ Icc (-(2*A)) (2*A)
    · rw [indicator_of_mem ht]
    · rw [indicator_of_notMem ht, criticalTest_deriv_zero_outside hA t ht, mul_zero]
  rwa [he] at hind

theorem fullMangoldtWork_eq_interval {A : ℝ} (hA : 1 ≤ A) :
    fullMangoldtWork A = ∫ t in -(2*A)..2*A,
      mangoldtLogError t * deriv (criticalPrimeTest A) t := by
  unfold fullMangoldtWork
  calc
    _ = ∫ t : ℝ, (Icc (-(2*A)) (2*A)).indicator
        (fun t => mangoldtLogError t * deriv (criticalPrimeTest A) t) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      by_cases ht : t ∈ Icc (-(2*A)) (2*A)
      · rw [indicator_of_mem ht]
      · rw [indicator_of_notMem ht, criticalTest_deriv_zero_outside hA t ht, mul_zero]
    _ = _ := zeroExtension_integral _ _ _ (by linarith)

theorem criticalTest_full_integral_eq_interval {A : ℝ} (hA : 1 ≤ A) :
    (∫ t : ℝ, criticalPrimeTest A t) = ∫ t in -(2*A)..2*A, criticalPrimeTest A t := by
  calc
    _ = ∫ t : ℝ, (Icc (-(2*A)) (2*A)).indicator (criticalPrimeTest A) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      by_cases ht : t ∈ Icc (-(2*A)) (2*A)
      · rw [indicator_of_mem ht]
      · rw [indicator_of_notMem ht]
        by_contra hn
        exact ht (criticalTest_support hA (subset_closure hn))
    _ = _ := zeroExtension_integral _ _ _ (by linarith)

/-- The actual error equals -t on the entire negative interval, including its upper endpoint. -/
theorem negative_axis_work_eq_neg_continuous {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in -(2*A)..0, mangoldtLogError t * deriv (criticalPrimeTest A) t) =
      -criticalContinuousMoment A := by
  have hp : 0 < A := by linarith
  have hg := criticalPrimeTest_contDiff A hp
  have he : (∫ t in -(2*A)..0, mangoldtLogError t * deriv (criticalPrimeTest A) t) =
      ∫ t in -(2*A)..0, (-t) * deriv (criticalPrimeTest A) t := by
    apply intervalIntegral.integral_congr
    intro t ht
    have ht0 : t ≤ 0 := (uIcc_of_le (by linarith : -(2*A) ≤ 0) ▸ ht).2
    dsimp only
    rw [mangoldtLogError_below_first_atom (lt_of_le_of_lt ht0 (Real.log_pos (by norm_num)))]
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => -t) (u' := fun _ : ℝ => (-1 : ℝ))
    (v := criticalPrimeTest A) (v' := deriv (criticalPrimeTest A))
    (a := -(2*A)) (b := 0)
    (fun t _ => (hasDerivAt_id t).neg)
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable _ _) (hg.continuous_deriv_one.intervalIntegrable _ _)
  have hend : criticalPrimeTest A (-(2*A)) = 0 := by
    unfold criticalPrimeTest
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (-(2*A)) hp
      (by rw [abs_neg, abs_of_pos (by linarith : 0 < 2*A)]), mul_zero]
  simp only [neg_zero, zero_mul, hend, mul_zero, sub_zero, neg_one_mul,
    intervalIntegral.integral_neg, neg_neg, zero_sub] at hparts
  have hzero : (∫ t : ℝ, criticalPrimeTest A t) = 0 := by
    have hz := full_correlation_moment_zero A hA
    have hs (t : ℝ) : (1/2 : ℝ)*t=t/2 := by ring
    simpa only [criticalPrimeTest, hs] using hz
  rw [criticalTest_full_integral_eq_interval hA] at hzero
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (hg.continuous.intervalIntegrable (μ := volume) (-(2*A)) 0)
    (hg.continuous.intervalIntegrable (μ := volume) 0 (2*A))
  change (∫ t in -(2*A)..0, criticalPrimeTest A t) + criticalContinuousMoment A =
    (∫ t in -(2*A)..2*A, criticalPrimeTest A t) at hsplit
  rw [he, hparts]
  linarith

/-- Positive work and the essential negative-axis correction reassemble the full-real work. -/
theorem fullMangoldtWork_eq_positive_sub_continuous {A : ℝ} (hA : 1 ≤ A) :
    fullMangoldtWork A = criticalMangoldtWork A - criticalContinuousMoment A := by
  have hg := criticalPrimeTest_contDiff A (show 0 < A by linarith)
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (mangoldtLogError_mul_deriv_intervalIntegrable (-(2*A)) 0 (by linarith) _ hg)
    (criticalMangoldtWork_intervalIntegrable A (by linarith))
  rw [negative_axis_work_eq_neg_continuous hA] at hsplit
  rw [fullMangoldtWork_eq_interval hA]
  change -criticalContinuousMoment A + criticalMangoldtWork A = _ at hsplit
  linarith

/-- Actual closed prime-power inventory, with unchanged Mangoldt coefficients and endpoints. -/
theorem closedPrimeMoment_eq_neg_fullMangoldtWork {A : ℝ} (hA : 1 ≤ A) :
    closedPrimeMoment A = -fullMangoldtWork A := by
  rw [closedPrimeMoment_eq_continuous_sub_Mangoldt_work A hA,
    fullMangoldtWork_eq_positive_sub_continuous hA]
  ring

theorem mertensResidual_eq_neg_fullMangoldtWork {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = -fullMangoldtWork A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_neg_fullMangoldtWork hA]

/-- Every coefficient is independently chosen; this definition retains the actual error. -/
def boundarySignedMangoldtWork (A a b c : ℝ) : ℝ :=
  ∫ y in 0..4*A, boundaryWorkKernel A y *
    (mangoldtLogError (2*A-y) - (a+b*y+c*y^2))

theorem boundary_mangoldt_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun y => boundaryWorkKernel A y * mangoldtLogError (2*A-y))
      volume 0 (4*A) := by
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (-(2*A)) (2*A)
    (by linarith) (criticalPrimeTest A) (criticalPrimeTest_contDiff A (by linarith))
  have hs := (hi.comp_sub_left (2*A)).symm
  have hc : IntervalIntegrable
      (fun y => mangoldtLogError (2*A-y) * deriv (criticalPrimeTest A) (2*A-y))
      volume 0 (4*A) := by
    simpa only [sub_self, show 2*A-(-(2*A))=4*A by ring] using hs
  have he (y : ℝ) : boundaryWorkKernel A y * mangoldtLogError (2*A-y) =
      (A^9*Real.exp (-A)) *
        (mangoldtLogError (2*A-y) * deriv (criticalPrimeTest A) (2*A-y)) := by
    unfold boundaryWorkKernel
    ring
  simpa only [he] using hc.const_mul (A^9*Real.exp (-A))

theorem boundary_polynomial_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (a b c : ℝ) :
    IntervalIntegrable (fun y => boundaryWorkKernel A y * (a+b*y+c*y^2)) volume 0 (4*A) := by
  have hg := criticalPrimeTest_contDiff A (show 0 < A by linarith)
  have hw : Continuous (boundaryWorkKernel A) :=
    continuous_const.mul (hg.continuous_deriv_one.comp (continuous_const.sub continuous_id))
  have hp : Continuous (fun y : ℝ => a+b*y+c*y^2) := by fun_prop
  exact (hw.mul hp).intervalIntegrable 0 (4*A)

theorem boundarySignedMangoldtWork_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (a b c : ℝ) :
    IntervalIntegrable (fun y => boundaryWorkKernel A y *
      (mangoldtLogError (2*A-y) - (a+b*y+c*y^2))) volume 0 (4*A) := by
  simp_rw [mul_sub]
  exact (boundary_mangoldt_intervalIntegrable hA).sub
    (boundary_polynomial_intervalIntegrable hA a b c)

/-- The complete reflected interval and arbitrary quadratic subtraction retain the signed work. -/
theorem boundarySignedMangoldtWork_eq_scaled_full {A : ℝ} (hA : 1 ≤ A) (a b c : ℝ) :
    boundarySignedMangoldtWork A a b c = A^9*Real.exp (-A)*fullMangoldtWork A := by
  have he (y : ℝ) : boundaryWorkKernel A y * mangoldtLogError (2*A-y) =
      (A^9*Real.exp (-A)) *
        (mangoldtLogError (2*A-y) * deriv (criticalPrimeTest A) (2*A-y)) := by
    unfold boundaryWorkKernel
    ring
  have hbase : (∫ y in 0..4*A, boundaryWorkKernel A y * mangoldtLogError (2*A-y)) =
      A^9*Real.exp (-A)*fullMangoldtWork A := by
    simp_rw [he]
    rw [intervalIntegral.integral_const_mul]
    have hr := intervalIntegral.integral_comp_sub_left
      (fun t => mangoldtLogError t * deriv (criticalPrimeTest A) t)
      (a := 0) (b := 4*A) (2*A)
    have hr' : (∫ y in 0..4*A,
        mangoldtLogError (2*A-y)*deriv (criticalPrimeTest A) (2*A-y)) =
        ∫ t in -(2*A)..2*A, mangoldtLogError t*deriv (criticalPrimeTest A) t := by
      simpa only [show 2*A-4*A=-(2*A) by ring, sub_zero] using hr
    rw [hr', ← fullMangoldtWork_eq_interval hA]
  have hpoly : (∫ y in 0..4*A, boundaryWorkKernel A y * (a+b*y+c*y^2)) = 0 := by
    simpa only [mul_comm] using boundary_quadratic_background_zero hA a b c
  unfold boundarySignedMangoldtWork
  simp_rw [mul_sub]
  rw [intervalIntegral.integral_sub (boundary_mangoldt_intervalIntegrable hA)
    (boundary_polynomial_intervalIntegrable hA a b c), hpoly, sub_zero, hbase]

/-- The residual identity retains the original closed inventory; no estimate is substituted. -/
theorem normalized_closedPrimeMoment_eq_neg_boundary {A : ℝ} (hA : 1 ≤ A) (a b c : ℝ) :
    A^9*Real.exp (-A)*closedPrimeMoment A = -boundarySignedMangoldtWork A a b c := by
  rw [closedPrimeMoment_eq_neg_fullMangoldtWork hA, boundarySignedMangoldtWork_eq_scaled_full hA]
  ring

theorem normalized_mertensResidual_eq_neg_boundary {A : ℝ} (hA : 1 ≤ A) (a b c : ℝ) :
    A^9*Real.exp (-A)*mertensResidual A = -boundarySignedMangoldtWork A a b c := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, normalized_closedPrimeMoment_eq_neg_boundary hA]

/-- Exact one-scale inequality transfer, supplying neither bound witness. -/
theorem residual_upper_iff_boundary_lower {A : ℝ} (hA : 1 ≤ A) (D a b c : ℝ) :
    mertensResidual A ≤ D ↔
      -(D*(A^9*Real.exp (-A))) ≤ boundarySignedMangoldtWork A a b c := by
  have hs : 0 < A^9*Real.exp (-A) :=
    mul_pos (pow_pos (by linarith : 0 < A) _) (Real.exp_pos _)
  have he := normalized_mertensResidual_eq_neg_boundary hA a b c
  constructor
  · intro h
    have hm := mul_le_mul_of_nonneg_left h hs.le
    linarith
  · intro h
    have hm : (A^9*Real.exp (-A))*mertensResidual A ≤ (A^9*Real.exp (-A))*D := by
      linarith
    exact (mul_le_mul_iff_right₀ hs).mp (by simpa only [mul_comm] using hm)

#check criticalTest_support
#check criticalTest_deriv_zero_outside
#check fullMangoldtWork_integrable
#check fullMangoldtWork_eq_interval
#check criticalTest_full_integral_eq_interval
#check negative_axis_work_eq_neg_continuous
#check fullMangoldtWork_eq_positive_sub_continuous
#check closedPrimeMoment_eq_neg_fullMangoldtWork
#check mertensResidual_eq_neg_fullMangoldtWork
#check boundary_mangoldt_intervalIntegrable
#check boundary_polynomial_intervalIntegrable
#check boundarySignedMangoldtWork_intervalIntegrable
#check boundarySignedMangoldtWork_eq_scaled_full
#check normalized_closedPrimeMoment_eq_neg_boundary
#check normalized_mertensResidual_eq_neg_boundary
#check residual_upper_iff_boundary_lower
#print axioms criticalTest_support
#print axioms criticalTest_deriv_zero_outside
#print axioms fullMangoldtWork_integrable
#print axioms fullMangoldtWork_eq_interval
#print axioms criticalTest_full_integral_eq_interval
#print axioms negative_axis_work_eq_neg_continuous
#print axioms fullMangoldtWork_eq_positive_sub_continuous
#print axioms closedPrimeMoment_eq_neg_fullMangoldtWork
#print axioms mertensResidual_eq_neg_fullMangoldtWork
#print axioms boundary_mangoldt_intervalIntegrable
#print axioms boundary_polynomial_intervalIntegrable
#print axioms boundarySignedMangoldtWork_intervalIntegrable
#print axioms boundarySignedMangoldtWork_eq_scaled_full
#print axioms normalized_closedPrimeMoment_eq_neg_boundary
#print axioms normalized_mertensResidual_eq_neg_boundary
#print axioms residual_upper_iff_boundary_lower
#print criticalTest_support
#print criticalTest_deriv_zero_outside
#print fullMangoldtWork_integrable
#print fullMangoldtWork_eq_interval
#print criticalTest_full_integral_eq_interval
#print negative_axis_work_eq_neg_continuous
#print fullMangoldtWork_eq_positive_sub_continuous
#print closedPrimeMoment_eq_neg_fullMangoldtWork
#print mertensResidual_eq_neg_fullMangoldtWork
#print boundary_mangoldt_intervalIntegrable
#print boundary_polynomial_intervalIntegrable
#print boundarySignedMangoldtWork_intervalIntegrable
#print boundarySignedMangoldtWork_eq_scaled_full
#print normalized_closedPrimeMoment_eq_neg_boundary
#print normalized_mertensResidual_eq_neg_boundary
#print residual_upper_iff_boundary_lower

end ContinuousResearch.SourceFullRealMangoldt
