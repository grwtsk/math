import FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget
import Mathlib.Analysis.SpecialFunctions.Sqrt

/-! An explicit unconditional diagonal for the two complete endpoint tails. -/
set_option autoImplicit false
namespace SourceTailScheduleScratch
open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusEndpointBudget MobiusPoleNumerator
noncomputable section

/-- The exact elementary logarithmic budget of the original finite Möbius coefficients. -/
def logScale (X : ℕ) : ℝ := 1 + Real.log (X : ℝ)

/-- The positive inward offset chosen solely to shrink the corrected endpoint tail. -/
def epsilonSchedule (X : ℕ) : ℝ := 1 / (4 * logScale X ^ 3)

/-- The expanding source cutoff chosen to shrink the complete positive logarithmic tail. -/
def cutoffSchedule (X : ℕ) : ℝ := (X : ℝ) ^ 3 * logScale X ^ 2

/-- The explicit finite diagonal retains every required positive-offset and expanding-cutoff guard. -/
theorem schedule_admissible (X : ℕ) (hX : 2 ≤ X) :
    0 < epsilonSchedule X ∧ epsilonSchedule X ≤ 1 / 4 ∧ 1 ≤ cutoffSchedule X := by
  have hX1 : (1 : ℝ) ≤ X := by exact_mod_cast (show 1 ≤ X by omega)
  have hL : 1 ≤ logScale X := by
    dsimp only [logScale]
    linarith [Real.log_nonneg hX1]
  have hL0 : 0 < logScale X := lt_of_lt_of_le zero_lt_one hL
  have hL2 : 1 ≤ logScale X ^ 2 := one_le_pow₀ hL
  have hL3 : 1 ≤ logScale X ^ 3 := one_le_pow₀ hL
  refine ⟨by unfold epsilonSchedule; positivity, ?_, ?_⟩
  · unfold epsilonSchedule
    exact one_div_le_one_div_of_le (by norm_num) (by nlinarith : (4 : ℝ) ≤ 4 * logScale X ^ 3)
  · unfold cutoffSchedule
    exact one_le_mul_of_one_le_of_one_le (one_le_pow₀ hX1) hL2

/-- Both exact original endpoint tails have the claimed explicit shrinking diagonal budgets. -/
theorem scheduled_endpoint_bounds (X : ℕ) (hX : 2 ≤ X) :
    ‖correctedNumerator X (1 / 2 + (epsilonSchedule X : ℂ))‖ ≤ 1 / (4 * logScale X) ∧
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (epsilonSchedule X) d|) /
        Real.sqrt (cutoffSchedule X) ≤ 3 / Real.sqrt (X : ℝ) := by
  have hXn : 1 ≤ X := by omega
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hXn
  have hX0 : 0 < (X : ℝ) := lt_of_lt_of_le zero_lt_one hXr
  have hL : 1 ≤ logScale X := by
    dsimp only [logScale]
    linarith [Real.log_nonneg hXr]
  have hL0 : 0 < logScale X := lt_of_lt_of_le zero_lt_one hL
  obtain ⟨hepos, _, _⟩ := schedule_admissible X hX
  constructor
  · have hb := correctedNumerator_half_add_norm_le X (epsilonSchedule X) hXn hepos.le
    change ‖correctedNumerator X (1 / 2 + (epsilonSchedule X : ℂ))‖ ≤
      epsilonSchedule X * logScale X ^ 2 at hb
    have he : epsilonSchedule X * logScale X ^ 2 = 1 / (4 * logScale X) := by
      unfold epsilonSchedule
      field_simp
    exact hb.trans_eq he
  · have hb := dampedCoefficient_abs_sum_le X (epsilonSchedule X) hXn hepos.le
    change (∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (epsilonSchedule X) d|) ≤
      2 * (X : ℝ) * logScale X at hb
    have hsqrt : Real.sqrt (cutoffSchedule X) = (X : ℝ) * logScale X * Real.sqrt (X : ℝ) := by
      unfold cutoffSchedule
      rw [show (X : ℝ) ^ 3 * logScale X ^ 2 =
        ((X : ℝ) * logScale X) ^ 2 * (X : ℝ) by ring,
        Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (by positivity)]
    rw [hsqrt]
    have hXL : 1 ≤ (X : ℝ) * logScale X := one_le_mul_of_one_le_of_one_le hXr hL
    apply (div_le_div_iff₀ (by positivity) (Real.sqrt_pos.mpr hX0)).mpr
    nlinarith [Real.sqrt_nonneg (X : ℝ)]

/-- Both explicit tail budgets vanish along the complete natural-number diagonal. -/
theorem explicit_tail_bounds_tendsto :
    Tendsto (fun X : ℕ => 1 / (4 * logScale X)) atTop (nhds 0) ∧
      Tendsto (fun X : ℕ => 3 / Real.sqrt (X : ℝ)) atTop (nhds 0) := by
  have hL : Tendsto logScale atTop atTop :=
    tendsto_const_nhds.add_atTop (Real.tendsto_log_atTop.comp tendsto_natCast_atTop_atTop)
  constructor
  · exact tendsto_const_nhds.div_atTop (hL.const_mul_atTop (by norm_num : (0 : ℝ) < 4))
  · exact tendsto_const_nhds.div_atTop
      (Real.tendsto_sqrt_atTop.comp tendsto_natCast_atTop_atTop)

/-- The actual complete endpoint tails vanish on this diagonal, without a core-estimate premise. -/
theorem scheduled_actual_tails_tendsto :
    Tendsto (fun X : ℕ => ‖correctedNumerator X (1 / 2 + (epsilonSchedule X : ℂ))‖)
      atTop (nhds 0) ∧
    Tendsto (fun X : ℕ =>
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (epsilonSchedule X) d|) /
        Real.sqrt (cutoffSchedule X)) atTop (nhds 0) := by
  constructor
  · exact squeeze_zero' (Eventually.of_forall (fun X => norm_nonneg _))
      (eventually_atTop.mpr ⟨2, fun X hX => (scheduled_endpoint_bounds X hX).1⟩)
      explicit_tail_bounds_tendsto.1
  · exact squeeze_zero' (Eventually.of_forall (fun X => by positivity))
      (eventually_atTop.mpr ⟨2, fun X hX => (scheduled_endpoint_bounds X hX).2⟩)
      explicit_tail_bounds_tendsto.2

/-- The same actual inward-offset schedule tends to zero along all natural cutoffs. -/
theorem epsilonSchedule_tendsto_zero : Tendsto epsilonSchedule atTop (nhds 0) := by
  have hL : Tendsto logScale atTop atTop :=
    tendsto_const_nhds.add_atTop (Real.tendsto_log_atTop.comp tendsto_natCast_atTop_atTop)
  exact tendsto_const_nhds.div_atTop
    (((tendsto_pow_atTop (by norm_num : (3 : ℕ) ≠ 0)).comp hL).const_mul_atTop
      (by norm_num : (0 : ℝ) < 4))

/-- The exact positive-tail cutoff expands to infinity on the same complete natural diagonal. -/
theorem cutoffSchedule_tendsto_atTop : Tendsto cutoffSchedule atTop atTop := by
  have hL : Tendsto logScale atTop atTop :=
    tendsto_const_nhds.add_atTop (Real.tendsto_log_atTop.comp tendsto_natCast_atTop_atTop)
  exact ((tendsto_pow_atTop (by norm_num : (3 : ℕ) ≠ 0)).comp
    tendsto_natCast_atTop_atTop).atTop_mul_atTop₀
      ((tendsto_pow_atTop (by norm_num : (2 : ℕ) ≠ 0)).comp hL)

end
end SourceTailScheduleScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceTailScheduleScratch.logScale
#print SourceTailScheduleScratch.logScale
#print axioms SourceTailScheduleScratch.logScale
#check @SourceTailScheduleScratch.epsilonSchedule
#print SourceTailScheduleScratch.epsilonSchedule
#print axioms SourceTailScheduleScratch.epsilonSchedule
#check @SourceTailScheduleScratch.cutoffSchedule
#print SourceTailScheduleScratch.cutoffSchedule
#print axioms SourceTailScheduleScratch.cutoffSchedule
#check @SourceTailScheduleScratch.schedule_admissible
#print SourceTailScheduleScratch.schedule_admissible
#print axioms SourceTailScheduleScratch.schedule_admissible
#check @SourceTailScheduleScratch.scheduled_endpoint_bounds
#print SourceTailScheduleScratch.scheduled_endpoint_bounds
#print axioms SourceTailScheduleScratch.scheduled_endpoint_bounds
#check @SourceTailScheduleScratch.explicit_tail_bounds_tendsto
#print SourceTailScheduleScratch.explicit_tail_bounds_tendsto
#print axioms SourceTailScheduleScratch.explicit_tail_bounds_tendsto
#check @SourceTailScheduleScratch.scheduled_actual_tails_tendsto
#print SourceTailScheduleScratch.scheduled_actual_tails_tendsto
#print axioms SourceTailScheduleScratch.scheduled_actual_tails_tendsto
#check @SourceTailScheduleScratch.epsilonSchedule_tendsto_zero
#print SourceTailScheduleScratch.epsilonSchedule_tendsto_zero
#print axioms SourceTailScheduleScratch.epsilonSchedule_tendsto_zero
#check @SourceTailScheduleScratch.cutoffSchedule_tendsto_atTop
#print SourceTailScheduleScratch.cutoffSchedule_tendsto_atTop
#print axioms SourceTailScheduleScratch.cutoffSchedule_tendsto_atTop
