-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualXiHeadJ.Variant99b6b922ea6cf37eb09d2206e0c9530b1b31e16357e3f634f0b3fae19a870b73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99b6b922ea6cf37eb09d2206e0c9530b1b31e16357e3f634f0b3fae19a870b73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualXiHeadJ.Variant99b6b922ea6cf37eb09d2206e0c9530b1b31e16357e3f634f0b3fae19a870b73","mathematical_subject":"Analysis.Integration","original_sha256":"99b6b922ea6cf37eb09d2206e0c9530b1b31e16357e3f634f0b3fae19a870b73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/xi-analysis/finite-head-formal/attempt02/SourceExactXiHead.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFiniteHeadMinusWeight
import SourceActualXiWholeHeadBounds

/-!
Exact actual finite-head balance, with its full closed shifted Chebyshev source.
The literal finite J is preserved; no decimal or prime-only readout is substituted.
Direction and conceptual origin: grwtsk contributors.
Actual source formal construction: OpenAI Codex assistance.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualXiHeadJ.Variant99b6b922ea6cf37eb09d2206e0c9530b1b31e16357e3f634f0b3fae19a870b73

set_option autoImplicit false
noncomputable section
namespace RH16ExactXiHead

open MeasureTheory Set
open RH16ActualF7 RH16FiniteHeadMinusWeight RH16ActualXiWholeHead
open RH16ActualXiPositiveBlock RH16ActualPsiNegativeBlock RH16CompleteXiTail
open RH16CompleteXiComplement RH16ShiftedXiAdapter RH16CesaroSignedPairing
open FormalResearch.RiemannHypothesis.SourceActualPsiInverseSquare
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Literal closed-source inverse-three-halves integral through the real endpoint seven. -/
def actualXiHeadJ : ℝ := ∫ y in 2..7, physicalXiDensity y

/-- The complete actual head, including the favorable block and every endpoint convention. -/
def actualXiHead (A : ℝ) : ℝ := ∫ y in 2..7, actualTransformedXiBlockDensity A y

/-- Radius-calibrated cost of the actual finite-head source transport error. -/
def exactHeadErrorBudget (Q : ℝ) : ℝ :=
  30 * wholeHeadHeight * (1 / Real.sqrt 2 - 1 / Real.sqrt 7) / Q ^ 2

theorem inverse_power_head_continuous :
    ContinuousOn (fun y : ℝ => 1 / y ^ (3 / 2 : ℝ)) (Icc 2 7) := by
  intro y hy
  have hyp : 0 < y := by linarith [hy.1]
  exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hyp.ne'))
    (Real.rpow_pos_of_pos hyp _).ne').continuousWithinAt

theorem physicalXiDensity_head_intervalIntegrable :
    IntervalIntegrable physicalXiDensity volume 2 7 := by
  have h := shiftedActualChebyshev_mul_intervalIntegrable 7 (by norm_num)
    (fun y : ℝ => 1 / y ^ (3 / 2 : ℝ)) inverse_power_head_continuous
  change IntervalIntegrable
    (fun y : ℝ => shiftedActualChebyshev y / y ^ (3 / 2 : ℝ)) volume 2 7
  simpa only [mul_one_div] using h

theorem inverse_power_head_integral :
    (∫ y in (2 : ℝ)..7, 1 / y ^ (3 / 2 : ℝ)) =
      2 * (1 / Real.sqrt 2 - 1 / Real.sqrt 7) := by
  have hz : (0 : ℝ) ∉ uIcc (2 : ℝ) 7 := by norm_num [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)]
  have h := integral_rpow (a := (2 : ℝ)) (b := 7) (r := (-3 / 2 : ℝ))
    (Or.inr ⟨by norm_num, hz⟩)
  have he : (∫ y in (2 : ℝ)..7, 1 / y ^ (3 / 2 : ℝ)) =
      ∫ y in (2 : ℝ)..7, y ^ (-3 / 2 : ℝ) := by
    apply intervalIntegral.integral_congr
    intro y hy
    have hy0 : 0 ≤ y := by
      rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)] at hy
      linarith [hy.1]
    change 1 / y ^ (3 / 2 : ℝ) = y ^ (-3 / 2 : ℝ)
    rw [show (-3 / 2 : ℝ) = -(3 / 2 : ℝ) by ring, Real.rpow_neg hy0, one_div]
  rw [he, h]
  norm_num only [show (-3 / 2 : ℝ) + 1 = -(1 / 2 : ℝ) by ring]
  rw [Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 7),
    Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 2), ← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow]
  ring

theorem actual_head_intervalIntegrable (A : ℝ) (hA : 91 ≤ A) :
    IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 7 :=
  actual_whole_head_intervalIntegrable A (by linarith)

theorem actual_head_error_intervalIntegrable (A : ℝ) (hA : 91 ≤ A) :
    IntervalIntegrable (fun y => actualTransformedXiBlockDensity A y +
      physicalXiDensity y / 2) volume 2 7 :=
  (actual_head_intervalIntegrable A hA).add (physicalXiDensity_head_intervalIntegrable.div_const 2)

/-- Exact recovery of the actual source observable before assigning an error budget. -/
theorem head_recovery (A : ℝ) (hA : 91 ≤ A) :
    actualXiHead A + actualXiHeadJ / 2 =
      ∫ y in 2..7, physicalXiDensity y * (minusCorrelationWeight A (Real.log y) + 1 / 2) := by
  unfold actualXiHead actualXiHeadJ
  rw [← intervalIntegral.integral_div,
    ← intervalIntegral.integral_add (actual_head_intervalIntegrable A hA)
      (physicalXiDensity_head_intervalIntegrable.div_const 2)]
  apply intervalIntegral.integral_congr
  intro y _
  unfold actualTransformedXiBlockDensity physicalXiDensity minusCorrelationWeight
  ring

theorem actual_head_abs_error_bound (A : ℝ) (hA : 91 ≤ A) :
    |actualXiHead A + actualXiHeadJ / 2| ≤ exactHeadErrorBudget A := by
  rw [head_recovery A hA]
  have hbound : IntervalIntegrable (fun y : ℝ =>
      wholeHeadHeight * (15 / A ^ 2) * (1 / y ^ (3 / 2 : ℝ))) volume 2 7 :=
    (inverse_power_head_continuous.intervalIntegrable_of_Icc (by norm_num)).const_mul _
  have hb := intervalIntegral.norm_integral_le_of_norm_le (by norm_num : (2 : ℝ) ≤ 7)
    (f := fun y => physicalXiDensity y * (minusCorrelationWeight A (Real.log y) + 1 / 2))
    (g := fun y : ℝ => wholeHeadHeight * (15 / A ^ 2) * (1 / y ^ (3 / 2 : ℝ)))
    (Filter.Eventually.of_forall (fun y hy => by
      have hy2 : 2 ≤ y := hy.1.le
      have hyp : 0 < y := by linarith
      have ht0 : 0 ≤ Real.log y := Real.log_nonneg (by linarith)
      have ht7 : Real.log y ≤ Real.log 7 := Real.log_le_log hyp hy.2
      have hx := shiftedActualChebyshev_abs_le_wholeHeadHeight y hy2 hy.2
      have hw := actual_minus_kernel_error_fixed_head A (Real.log y) hA ht0 ht7
      change |physicalXiDensity y * (minusCorrelationWeight A (Real.log y) + 1 / 2)| ≤ _
      unfold physicalXiDensity
      rw [abs_mul, abs_div, abs_of_pos (Real.rpow_pos_of_pos hyp _)]
      change |shiftedActualChebyshev y| / y ^ (3 / 2 : ℝ) *
        |minusCorrelationWeight A (Real.log y) + 1 / 2| ≤ _
      have hp := Real.rpow_pos_of_pos hyp (3 / 2 : ℝ)
      have hmul := mul_le_mul
        (div_le_div_of_nonneg_right hx hp.le) hw
        (abs_nonneg _) (div_nonneg wholeHeadHeight_nonneg hp.le)
      calc
        _ ≤ wholeHeadHeight / y ^ (3 / 2 : ℝ) * (15 / A ^ 2) := hmul
        _ = _ := by ring)) hbound
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, inverse_power_head_integral] at hb
  unfold exactHeadErrorBudget
  convert hb using 1 <;> ring

theorem exactHeadErrorBudget_nonneg (Q : ℝ) : 0 ≤ exactHeadErrorBudget Q := by
  have hs : Real.sqrt (2 : ℝ) ≤ Real.sqrt 7 := Real.sqrt_le_sqrt (by norm_num)
  have h2 : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have h7 : 0 < Real.sqrt (7 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hd : 0 ≤ 1 / Real.sqrt 2 - 1 / Real.sqrt 7 := by
    exact sub_nonneg.mpr (one_div_le_one_div_of_le h2 hs)
  unfold exactHeadErrorBudget
  exact div_nonneg (mul_nonneg (mul_nonneg (by norm_num) wholeHeadHeight_nonneg) hd) (sq_nonneg Q)

theorem exactHeadErrorBudget_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    exactHeadErrorBudget A ≤ exactHeadErrorBudget Q := by
  have hQ0 : 0 < Q := by linarith
  have hA0 : 0 < A := by linarith
  have hs : Q ^ 2 ≤ A ^ 2 := by nlinarith
  have hn : 0 ≤ 30 * wholeHeadHeight * (1 / Real.sqrt 2 - 1 / Real.sqrt 7) := by
    have hd : 0 ≤ 1 / Real.sqrt 2 - 1 / Real.sqrt 7 := by
      apply sub_nonneg.mpr
      exact one_div_le_one_div_of_le (Real.sqrt_pos.mpr (by norm_num))
        (Real.sqrt_le_sqrt (by norm_num))
    exact mul_nonneg (mul_nonneg (by norm_num) wholeHeadHeight_nonneg) hd
  unfold exactHeadErrorBudget
  exact div_le_div_of_nonneg_left hn (sq_pos_of_pos hQ0) hs

theorem head_upper_at_radius (A Q : ℝ) (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    actualXiHead A ≤ -actualXiHeadJ / 2 + exactHeadErrorBudget Q := by
  have hb := (abs_le.mp (actual_head_abs_error_bound A (hQ.trans hQA))).2
  have he := exactHeadErrorBudget_antitone hQ hQA
  linarith

theorem head_lower_at_radius (A Q : ℝ) (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    -actualXiHeadJ / 2 - exactHeadErrorBudget Q ≤ actualXiHead A := by
  have hb := (abs_le.mp (actual_head_abs_error_bound A (hQ.trans hQA))).1
  have he := exactHeadErrorBudget_antitone hQ hQA
  linarith

/-- Full arithmetic source split: no favorable block, endpoint, or prime power is deleted. -/
theorem signedCesaroPairing_eq_head_add_tail (A : ℝ) (hA : 91 ≤ A) :
    signedCesaroPairing A = actualXiHead A + completeXiTail A := by
  have hA40 : 40 ≤ A := by linarith
  have hX : 7 ≤ Real.exp (2 * A) := by
    have hl : Real.log (7 : ℝ) ≤ 2 * A := by
      linarith [RH16InvariantBoundary.log_seven_lt_two]
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr hl
  have hwhole := actual_transformed_whole_intervalIntegrable A hA40
  have htail : IntervalIntegrable (actualTransformedXiBlockDensity A)
      volume 7 (Real.exp (2 * A)) := by
    apply hwhole.mono_set
    rw [uIcc_of_le hX, uIcc_of_le (show (2 : ℝ) ≤ Real.exp (2 * A) by linarith)]
    exact Icc_subset_Icc (by norm_num) le_rfl
  have he := signedCesaroPairing_eq_explicit_shiftedXi A (by linarith : 1 ≤ A)
  change signedCesaroPairing A =
    ∫ y in 2..Real.exp (2 * A), actualTransformedXiBlockDensity A y at he
  rw [he]
  unfold actualXiHead completeXiTail
  exact (intervalIntegral.integral_add_adjacent_intervals
    (actual_head_intervalIntegrable A hA) htail).symm

end RH16ExactXiHead
