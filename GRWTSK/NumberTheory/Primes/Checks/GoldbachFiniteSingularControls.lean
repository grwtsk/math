/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for the finite Goldbach singular evaluation

These source controls retain the exact ordered-pair source, the separation of
zero and nonzero frequencies, the distinction between an evaluated symmetric
real window and the intrinsic circle window, and the strictness of every final
error margin.

The controls have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachFiniteSingularControls

open scoped BigOperators Real
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularExpansion
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary

noncomputable section

/-- At `N = 0`, the ordered pair source is the singleton zero-frequency
diagonal. -/
theorem pair_box_zero_control :
    goldbachSingularPairBox 0 = {(0, 0)} ∧
      goldbachSingularDiagonalPairs 0 = {(0, 0)} ∧
      goldbachSingularOffDiagonalPairs 0 = ∅ := by
  decide

/-- The zero target has no finite oscillatory correction. -/
theorem oscillatory_correction_zero_target
    (Q q : ℕ) :
    goldbachSingularOscillatoryCorrection Q 0 q = 0 := by
  simp [goldbachSingularOscillatoryCorrection,
    goldbachSingularOffDiagonalPairs,
    goldbachSingularPairBox,
    goldbachSingularDiagonalPairs]

/-- The zero target has zero oscillatory budget. -/
theorem oscillatory_budget_zero_target
    (Q q : ℕ) :
    goldbachSingularOscillatoryBudget Q 0 q = 0 := by
  simp [goldbachSingularOscillatoryBudget,
    goldbachSingularOffDiagonalPairs,
    goldbachSingularPairBox,
    goldbachSingularDiagonalPairs]

/-- The exact `N = 0` symmetric integral is simply twice the declared radius. -/
theorem symmetric_integral_zero_target
    (Q q : ℕ) :
    goldbachSymmetricRealSingularIntegral Q 0 q =
      (2 * goldbachRationalArcRadius Q 0 q : ℂ) := by
  rw [goldbachSymmetricRealSingularIntegral_eq_main_add_correction,
    oscillatory_correction_zero_target]
  simp [goldbachSingularDiagonalMain]

/-- At `N = 1`, the two off-diagonal pairs are the frequencies `-1` and `1`. -/
theorem off_diagonal_one_control :
    goldbachSingularOffDiagonalPairs 1 =
      ({(0, 0), (1, 1)} : Finset (ℕ × ℕ)) := by
  decide

/-- The `N = 1` correction is twice one symmetric character-window value. -/
theorem oscillatory_correction_one
    (Q q : ℕ) :
    goldbachSingularOscillatoryCorrection Q 1 q =
      (2 * goldbachCharacterWindowValue
        (goldbachRationalArcRadius Q 1 q) 1 : ℂ) := by
  rw [goldbachSingularOscillatoryCorrection,
    off_diagonal_one_control]
  simp [goldbachSingularPairFrequency,
    goldbachCharacterWindowValue_neg]
  ring

/-- At radius one half, the first nonzero character has zero symmetric
integral. -/
theorem character_window_half_control :
    goldbachCharacterWindowValue (1 / 2 : ℝ) 1 = 0 := by
  rw [goldbachCharacterWindowValue_of_ne_zero (by norm_num)]
  simp only [Int.cast_one, mul_one]
  rw [show 2 * Real.pi * (1 / 2 : ℝ) = Real.pi by ring]
  simp

/-- The diagonal mass cancels the target length exactly and depends only on
`Q/q`. -/
theorem diagonal_main_cancellation_control :
    goldbachSingularDiagonalMain 3 18 2 = 3 := by
  rw [goldbachSingularDiagonalMain_eq_two_mul_div
    (Q := 3) (N := 18) (q := 2) (by norm_num)]
  norm_num

/-- The boundary example `Q = N = q = 1` has exact symmetric integral two and
zero oscillatory budget. -/
theorem symmetric_integral_boundary_control :
    goldbachSymmetricRealSingularIntegral 1 1 1 = 2 ∧
      goldbachSingularOscillatoryBudget 1 1 1 = 0 := by
  have hr :
      goldbachRationalArcRadius 1 1 1 = (1 / 2 : ℝ) := by
    norm_num [goldbachRationalArcRadius]
  constructor
  · rw [goldbachSymmetricRealSingularIntegral_eq_main_add_correction,
      oscillatory_correction_one, hr,
      character_window_half_control]
    norm_num [goldbachSingularDiagonalMain,
      goldbachRationalArcRadius]
  · unfold goldbachSingularOscillatoryBudget
    rw [off_diagonal_one_control, hr]
    have hw : goldbachCharacterWindowValue (2⁻¹ : ℝ) 1 = 0 := by
      simpa only [one_div] using character_window_half_control
    simp [goldbachSingularPairFrequency,
      goldbachCharacterWindowValue_neg, hw]

/-- The half-period boundary does not satisfy the strict scale used to replace
circle windows by symmetric real windows. -/
theorem half_period_scale_rejected :
    ¬ 2 * 1 ^ 2 < 1 + 1 := by
  norm_num

/-- The ordered pair and frequency inventories have the announced exact
cardinalities at a representative target. -/
theorem finite_pair_inventory_control :
    (goldbachSingularPairBox 5).card = 36 ∧
      (goldbachSingularDiagonalPairs 5).card = 6 ∧
      (goldbachSingularOffDiagonalPairs 5).card = 30 := by
  norm_num [card_goldbachSingularPairBox,
    card_goldbachSingularDiagonalPairs,
    card_goldbachSingularOffDiagonalPairs]

/-- Exact singular-window evaluation can coexist with a zero exact Goldbach
count. -/
theorem evaluated_window_not_goldbach_witness :
    goldbachCount 2 = 0 ∧
      goldbachSymmetricRealSingularIntegral 1 1 1 = 2 := by
  exact ⟨by decide, symmetric_integral_boundary_control.1⟩

/-- Equality of an oscillatory allowance and the diagonal lower source does
not provide the strict positive margin required by the terminal consumer. -/
theorem strict_window_margin_rejected
    (L : ℝ) :
    ¬ L < L := by
  exact lt_irrefl L

end
end GRWTSK.NumberTheory.Primes.Checks.GoldbachFiniteSingularControls
