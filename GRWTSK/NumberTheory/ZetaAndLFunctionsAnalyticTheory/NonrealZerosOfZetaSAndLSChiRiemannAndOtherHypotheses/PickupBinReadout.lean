/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported arithmetic and integration retain upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupBinProjection

/-!
# Exact arithmetic evaluation of every pickup bin

This is a literal finite formula, not a cancellation bound. All indices in
the original final closed inventory are retained. At birth and at a
zero-width cell the response integral is zero. No numerical quadrature or
unproved replacement of a floor cutoff is used.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupBinReadout
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.Integration.UniformBinProjection
open GRWTSK.NumberTheory.Moebius.PickupBinProjection

def atomReadout (n : ℕ) (a b : ℝ) : ℝ :=
  let s := max a (Real.log (n : ℝ))
  if b ≤ s then 0 else
    2 * (b - s) * (Real.sqrt n)⁻¹ + 4 * (Real.exp (-b / 2) - Real.exp (-s / 2))

private theorem integral_response_before {n : ℕ} {a b : ℝ}
    (hab : a ≤ b) (hb : b ≤ Real.log (n : ℝ)) :
    (∫ u in a..b, pickupResponse n u) = 0 := by
  calc
    _ = ∫ _u in a..b, (0 : ℝ) := by
      apply intervalIntegral.integral_congr_Ioo_of_le hab
      intro u hu
      simp only [pickupResponse, if_neg (not_le.mpr (hu.2.trans_le hb))]
    _ = 0 := intervalIntegral.integral_zero

private theorem integral_response_after {n : ℕ} (hn : 1 ≤ n) {a b : ℝ}
    (hab : a ≤ b) (ha : Real.log (n : ℝ) ≤ a) :
    (∫ u in a..b, pickupResponse n u) =
      2 * (b - a) * (Real.sqrt n)⁻¹ + 4 * (Real.exp (-b / 2) - Real.exp (-a / 2)) := by
  have hi : (∫ u in a..b, pickupResponse n u) =
      ∫ u in a..b, 2 * ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) := by
    apply intervalIntegral.integral_congr
    intro u hu
    rw [uIcc_of_le hab] at hu
    simp only [pickupResponse, if_pos (ha.trans hu.1)]
  rw [hi, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_sub (intervalIntegrable_const _)
      ((Real.continuous_exp.comp (continuous_id.neg.div_const 2)).intervalIntegrable _ _),
    intervalIntegral.integral_const, pickup_negative_half_integral]
  simp only [smul_eq_mul]
  ring

/-- Exact integration of the unchanged atom, including both birth conventions. -/
theorem atomReadout_eq_integral {n : ℕ} (hn : 1 ≤ n) {a b : ℝ} (hab : a ≤ b) :
    atomReadout n a b = ∫ u in a..b, pickupResponse n u := by
  by_cases hba : b = a
  · subst b
    simp [atomReadout, le_max_left]
  have hab' : a < b := lt_of_le_of_ne hab (Ne.symm hba)
  by_cases hb : b ≤ Real.log (n : ℝ)
  · rw [integral_response_before hab hb]
    simp [atomReadout, hb.trans (le_max_right _ _)]
  · have hbl : Real.log (n : ℝ) < b := not_le.mp hb
    by_cases ha : Real.log (n : ℝ) ≤ a
    · rw [integral_response_after hn hab ha]
      simp only [atomReadout, max_eq_left ha, if_neg (not_le.mpr hab')]
    · have hal : a ≤ Real.log (n : ℝ) := (not_le.mp ha).le
      have hs := intervalIntegral.integral_add_adjacent_intervals
        ((pickupResponse_continuous hn).intervalIntegrable a (Real.log n))
        ((pickupResponse_continuous hn).intervalIntegrable (Real.log n) b)
      rw [integral_response_before hal le_rfl,
        integral_response_after hn hbl.le le_rfl, zero_add] at hs
      rw [← hs]
      simp only [atomReadout, max_eq_right hal, if_neg hb]

/-- Final inventory and coefficients are fixed by the source, not fitted per bin. -/
def signedReadout (T a b : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n * atomReadout n a b

theorem signedReadout_eq_integral {T a b : ℝ} (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ T) :
    signedReadout T a b = ∫ u in a..b, wholePickup u := by
  have he : (∫ u in a..b, wholePickup u) =
      ∫ u in a..b, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        moebiusReal n * pickupResponse n u := by
    apply intervalIntegral.integral_congr
    intro u hu
    rw [uIcc_of_le hab] at hu
    exact wholePickup_fixed_inventory (ha.trans hu.1) (hu.2.trans hb)
  rw [he, intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro n hn
    rw [intervalIntegral.integral_const_mul, atomReadout_eq_integral (Finset.mem_Icc.mp hn).1 hab]
  · intro n hn
    exact ((pickupResponse_continuous (Finset.mem_Icc.mp hn).1).const_mul _).intervalIntegrable _ _

theorem binIntegral_eq_signedReadout {T : ℝ} {m j : ℕ}
    (hT : 0 < T) (hm : 0 < m) (hj : j < m) :
    binIntegral wholePickup T m j = signedReadout T (cut T m j) (cut T m (j + 1)) :=
  (signedReadout_eq_integral (cut_mem hT.le hm (by omega : j ≤ m)).1
    (cut_lt hT hm j).le (cut_mem hT.le hm (by omega : j + 1 ≤ m)).2).symm

/-- Every feature is now a literal finite arithmetic expression. -/
theorem signedBinEnergy_eq_arithmetic {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    signedBinEnergy T m = ∑ j ∈ Finset.range m,
      signedReadout T (cut T m j) (cut T m (j + 1)) ^ 2 / width T m := by
  apply Finset.sum_congr rfl
  intro j hj
  rw [binIntegral_eq_signedReadout hT hm (Finset.mem_range.mp hj)]

end GRWTSK.NumberTheory.Moebius.PickupBinReadout
