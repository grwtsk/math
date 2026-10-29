-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.WholeHeadHeight.Variantaaf956ceefcd5f96748fac41df6d50be406059483a98bdb16aa72c5ea12230ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aaf956ceefcd5f96748fac41df6d50be406059483a98bdb16aa72c5ea12230ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.WholeHeadHeight.Variantaaf956ceefcd5f96748fac41df6d50be406059483a98bdb16aa72c5ea12230ae","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"aaf956ceefcd5f96748fac41df6d50be406059483a98bdb16aa72c5ea12230ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/late-owner-delta/source-captures/SourceActualXiWholeHeadBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCompleteXiTailConsumer
import SourceActualXiFixedFront

/-!
Uniform budgets for the whole closed finite Xi head and the original PLUS gamma
trace, using only the original F7 source closure. All prime powers and the closed
seven value are retained. No uniform arithmetic tail/overlap witness is supplied.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused scratch verification: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.WholeHeadHeight.Variantaaf956ceefcd5f96748fac41df6d50be406059483a98bdb16aa72c5ea12230ae

set_option autoImplicit false
noncomputable section
namespace RH16ActualXiWholeHead
open MeasureTheory Set
open RH16ActualXiPositiveBlock RH16ActualXiFixedFront RH16ActualPsiNegativeBlock
open RH16CompleteXiComplement
open FormalResearch.RiemannHypothesis
open SourcePairing SourceMangoldtNorm SourceFirstPrimeAbel SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

/-- Closed-seven arithmetic height for the entire physical head. -/
def wholeHeadHeight : ℝ :=
  Real.log 420 + 7 + |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)|

/-- Literal head length five times its uniform height. -/
def wholeHeadBudget : ℝ := 5 * wholeHeadHeight

/-- Entire finite head, without deleting the favorable positive block. -/
def actualWholeXiHead (A : ℝ) : ℝ :=
  ∫ y in 2..7, actualTransformedXiBlockDensity A y

/-- A fixed budget for the original gamma-weighted first-prime trace. -/
def gammaTraceBudget : ℝ :=
  |Real.eulerMascheroniConstant| * Real.exp (Real.log 2 / 2)

theorem wholeHeadHeight_nonneg : 0 ≤ wholeHeadHeight := by
  have hl : 0 ≤ Real.log (420 : ℝ) := Real.log_nonneg (by norm_num)
  unfold wholeHeadHeight
  positivity

theorem wholeHeadBudget_nonneg : 0 ≤ wholeHeadBudget :=
  mul_nonneg (by norm_num) wholeHeadHeight_nonneg

theorem gammaTraceBudget_nonneg : 0 ≤ gammaTraceBudget :=
  mul_nonneg (abs_nonneg _) (Real.exp_pos _).le

/-- The actual prime-power prefix, including four and closed seven, bounds Xi. -/
theorem shiftedActualChebyshev_abs_le_wholeHeadHeight (y : ℝ)
    (hy : 2 ≤ y) (hyu : y ≤ 7) :
    |shiftedActualChebyshev y| ≤ wholeHeadHeight := by
  have hpsi0 := Chebyshev.psi_nonneg y
  have hpsi7 := Chebyshev.psi_mono hyu
  rw [actual_psi_at_closed_seven] at hpsi7
  unfold shiftedActualChebyshev
  have hs : |Chebyshev.psi y - y| ≤ |Chebyshev.psi y| + |y| := by
    simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le (Chebyshev.psi y) 0 y
  have hb := (abs_add_le (Chebyshev.psi y - y)
    (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))).trans
      (add_le_add hs (le_rfl :
        |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)| ≤
          |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)|))
  rw [abs_of_nonneg hpsi0, abs_of_nonneg (show 0 ≤ y by linarith)] at hb
  unfold wholeHeadHeight
  linarith

/-- The complete actual transformed density has a constant finite-head height. -/
theorem actual_whole_head_density_abs_le (A y : ℝ) (hA : 40 ≤ A)
    (hy : 2 ≤ y) (hyu : y ≤ 7) :
    |actualTransformedXiBlockDensity A y| ≤ wholeHeadHeight := by
  have hyp : 0 < y := by linarith
  have hp : 1 ≤ y ^ (3 / 2 : ℝ) :=
    Real.one_le_rpow (by linarith : 1 ≤ y) (by norm_num)
  have hk := actual_transformed_kernel_abs_le_one A y hA
  have hx := shiftedActualChebyshev_abs_le_wholeHeadHeight y hy hyu
  unfold actualTransformedXiBlockDensity
  rw [abs_div, abs_mul, abs_of_pos (Real.rpow_pos_of_pos hyp _)]
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hyp _)).mpr
  calc
    _ ≤ wholeHeadHeight * 1 := mul_le_mul hx hk (abs_nonneg _) wholeHeadHeight_nonneg
    _ ≤ wholeHeadHeight * y ^ (3 / 2 : ℝ) :=
      mul_le_mul_of_nonneg_left hp wholeHeadHeight_nonneg

/-- The actual entire-support integrability restricts to the literal finite head. -/
theorem actual_whole_head_intervalIntegrable (A : ℝ) (hA : 40 ≤ A) :
    IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 7 := by
  have hX : (7 : ℝ) ≤ Real.exp (2 * A) := by
    have hL : Real.log (7 : ℝ) ≤ 2 * A := by
      linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr hL
  have hw := actual_transformed_whole_intervalIntegrable A hA
  apply hw.mono_set
  rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7),
    uIcc_of_le (show (2 : ℝ) ≤ Real.exp (2 * A) by linarith)]
  exact Icc_subset_Icc le_rfl hX

/-- Both signs of the complete head are bounded; no positive block is subtracted. -/
theorem actualWholeXiHead_abs_le (A : ℝ) (hA : 40 ≤ A) :
    |actualWholeXiHead A| ≤ wholeHeadBudget := by
  have hi := actual_whole_head_intervalIntegrable A hA
  have hu : (∫ y in 2..7, actualTransformedXiBlockDensity A y) ≤
      ∫ y in (2 : ℝ)..7, wholeHeadHeight := by
    apply intervalIntegral.integral_mono_on (by norm_num) hi
      (continuous_const.intervalIntegrable _ _)
    intro y hy
    exact (abs_le.mp (actual_whole_head_density_abs_le A y hA hy.1 hy.2)).2
  have hl : (∫ y in (2 : ℝ)..7, -wholeHeadHeight) ≤
      ∫ y in 2..7, actualTransformedXiBlockDensity A y := by
    apply intervalIntegral.integral_mono_on (by norm_num)
      (continuous_const.intervalIntegrable _ _) hi
    intro y hy
    exact (abs_le.mp (actual_whole_head_density_abs_le A y hA hy.1 hy.2)).1
  rw [intervalIntegral.integral_const] at hu hl
  unfold actualWholeXiHead wholeHeadBudget
  simp only [smul_eq_mul] at hu hl
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Uniform upper budget discharges the whole-head premise of the reverse tail return. -/
theorem actualWholeXiHead_upper (A : ℝ) (hA : 40 ≤ A) :
    actualWholeXiHead A ≤ wholeHeadBudget :=
  (le_abs_self _).trans (actualWholeXiHead_abs_le A hA)

/-- Norm-one actual correlation supplies the original gamma trace cost at every real scale. -/
theorem actual_gamma_trace_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2)| ≤
      gammaTraceBudget := by
  have hc := actual_correlation_abs_le_one A (Real.log 2) hA
  rw [criticalPrimeTest, abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
  unfold gammaTraceBudget
  calc
    _ ≤ |Real.eulerMascheroniConstant| * (Real.exp (Real.log 2 / 2) * 1) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_left hc (Real.exp_pos _).le) (abs_nonneg _)
    _ = _ := by ring

/-- The PLUS gamma trace retains its original sign and receives only an upper cost. -/
theorem actual_gamma_trace_upper (A : ℝ) (hA : 1 ≤ A) :
    Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤
      gammaTraceBudget :=
  (le_abs_self _).trans (actual_gamma_trace_abs_le A hA)

end RH16ActualXiWholeHead
