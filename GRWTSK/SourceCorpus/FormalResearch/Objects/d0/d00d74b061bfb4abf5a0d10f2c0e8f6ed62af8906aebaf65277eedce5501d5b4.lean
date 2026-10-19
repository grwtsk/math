import SourceGrowingXiHead

/-! Exact return from the moving primitive split to the physical arithmetic source.
The nonzero interior trace is retained jointly, with the original seven anchor.
Direction and conceptual origin: grwtsk contributors.
Source adapter construction and formalization: OpenAI Codex assistance. -/
set_option autoImplicit false
noncomputable section
namespace RH16GrowingXiPhysicalBoundary
open MeasureTheory Set
open RH16ActualF7 RH16CompleteXiTail RH16GrowingXiHead RH16ActualXiPositiveBlock
open FormalResearch.RiemannHypothesis SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

def physicalGrowingXiHead (A : ℝ) : ℝ :=
  ∫ y in 7..(⌊A ^ 2⌋₊ : ℝ), actualTransformedXiBlockDensity A y

def physicalGrowingXiTail (A : ℝ) : ℝ :=
  ∫ y in (⌊A ^ 2⌋₊ : ℝ)..Real.exp (2 * A), actualTransformedXiBlockDensity A y

def growingXiInteriorTrace (A : ℝ) : ℝ :=
  actualF7 (Real.log (⌊A ^ 2⌋₊ : ℝ)) *
    minusCorrelationWeight A (Real.log (⌊A ^ 2⌋₊ : ℝ))

/-- The exact finite-endpoint identity includes its surviving upper trace. -/
theorem physicalXiHead_eq_trace_sub_primitive {A H : ℝ} (hA : 0 < A)
    (hH : Real.log 7 ≤ H) :
    (∫ y in 7..Real.exp H, actualTransformedXiBlockDensity A y) =
      actualF7 H * minusCorrelationWeight A H -
        ∫ t in Real.log 7..H, actualF7 t * actualXiCurvature A t := by
  have hF := actualF7_absolutelyContinuous H hH
  have hparts := hF.integral_mul_deriv_eq_deriv_mul
    (minusCorrelationWeight_contDiff A hA).contDiffOn.absolutelyContinuousOnInterval
  rw [actualF7_at_log_seven] at hparts
  simp only [zero_mul, sub_zero] at hparts
  have he : (∫ t in Real.log 7..H, deriv actualF7 t * minusCorrelationWeight A t) =
      ∫ t in Real.log 7..H, timeXiDensity t * minusCorrelationWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualF7_ae_hasDerivAt H hH] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
  rw [he] at hparts
  have hd : (∫ t in Real.log 7..H, actualF7 t * deriv (minusCorrelationWeight A) t) =
      ∫ t in Real.log 7..H, actualF7 t * actualXiCurvature A t := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [(minusCorrelationWeight_hasDerivAt A t hA).deriv]
    rfl
  rw [hd] at hparts
  have hx := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := Real.log 7) (b := H) (f := Real.exp) (f' := Real.exp)
    (g := actualTransformedXiBlockDensity A) Real.continuous_exp.continuousOn
    (fun t _ => Real.hasDerivAt_exp t) (fun t _ => (Real.exp_pos t).le)
  simp only [Function.comp_apply, actual_transformed_density_exp_mul,
    Real.exp_log (by norm_num : (0 : ℝ) < 7)] at hx
  rw [← hx]
  linarith only [hparts]

private theorem floor_orders {A : ℝ} (hA : 91 ≤ A) :
    (7 : ℝ) ≤ (⌊A ^ 2⌋₊ : ℝ) ∧ (⌊A ^ 2⌋₊ : ℝ) ≤ Real.exp (2 * A) := by
  have hp : 0 < A := by linarith
  have hU : 7 ≤ ⌊A ^ 2⌋₊ := Nat.le_floor (by nlinarith : (7 : ℝ) ≤ A ^ 2)
  have hlog := Real.log_le_sub_one_of_pos hp
  have he : A ^ 2 ≤ Real.exp (2 * A) := by
    rw [← Real.exp_log (sq_pos_of_pos hp), Real.log_pow]
    exact Real.exp_le_exp.mpr (by norm_num only [Nat.cast_ofNat]; linarith)
  exact ⟨by exact_mod_cast hU, (Nat.floor_le (sq_nonneg A)).trans he⟩

/-- The physical head and primitive head differ by this exact invariant trace. -/
theorem physicalGrowingXiHead_eq_head_add_trace {A : ℝ} (hA : 91 ≤ A) :
    physicalGrowingXiHead A = growingXiHead A + growingXiInteriorTrace A := by
  obtain ⟨hU, _⟩ := floor_orders hA
  have hp : 0 < (⌊A ^ 2⌋₊ : ℝ) := by linarith
  have hH := Real.log_le_log (by norm_num : (0 : ℝ) < 7) hU
  have he := physicalXiHead_eq_trace_sub_primitive (by linarith : 0 < A) hH
  rw [Real.exp_log hp] at he
  unfold physicalGrowingXiHead growingXiHead growingXiInteriorTrace
  linarith only [he]

/-- Exact physical additivity at the original floor-square cutoff. -/
theorem completeXiTail_eq_physical_head_add_tail {A : ℝ} (hA : 91 ≤ A) :
    completeXiTail A = physicalGrowingXiHead A + physicalGrowingXiTail A := by
  obtain ⟨hU, hUX⟩ := floor_orders hA
  have hi := completeXiTail_intervalIntegrable A (by linarith : 40 ≤ A)
  have hleft := hi.mono_set (by
    rw [uIcc_of_le hU, uIcc_of_le (hU.trans hUX)]
    exact Icc_subset_Icc le_rfl hUX)
  have hright := hi.mono_set (by
    rw [uIcc_of_le hUX, uIcc_of_le (hU.trans hUX)]
    exact Icc_subset_Icc hU le_rfl)
  exact (intervalIntegral.integral_add_adjacent_intervals hleft hright).symm

/-- The trace remains inside the signed remaining source, with its actual plus sign. -/
theorem growingXiTail_eq_physical_tail_add_trace {A : ℝ} (hA : 91 ≤ A) :
    growingXiTail A = physicalGrowingXiTail A + growingXiInteriorTrace A := by
  have hp := completeXiTail_eq_physical_head_add_tail hA
  have hg := completeXiTail_eq_growing_head_add_tail hA
  have hh := physicalGrowingXiHead_eq_head_add_trace hA
  linarith only [hp, hg, hh]

/-- Only the paired physical tail and trace supplies the remaining-tail consumer. -/
theorem completeXiTail_lower_of_paired_physical_tail {Q A K : ℝ}
    (hQ : 91 ≤ Q) (hQA : Q ≤ A)
    (hpair : -K ≤ physicalGrowingXiTail A + growingXiInteriorTrace A) :
    -(K + growingXiHeadCost Q) ≤ completeXiTail A := by
  apply completeXiTail_lower_of_growing_tail hQ hQA
  rwa [growingXiTail_eq_physical_tail_add_trace (by linarith : 91 ≤ A)]

end RH16GrowingXiPhysicalBoundary
