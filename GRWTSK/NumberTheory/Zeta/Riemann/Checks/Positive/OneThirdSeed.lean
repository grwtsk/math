/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CoverDepth
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdSeed

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.OneThirdSeedChecks

open CriticalStripHeightDescent

example {t a : ℝ} (ht : 0 < t) (ha : 0 < a) :
    Real.log t ≤ (t ^ a - 1) / a := log_le_rpow_sub_one_div ht ha

example {σ a : ℝ} (ha : 0 < a) (haσ : a < σ) :
    (∫ t : ℝ in Set.Ioi 1,
      (1 / a) * (t ^ (-(σ - a + 1)) - t ^ (-(σ + 1)))) =
      1 / (σ * (σ - a)) := log_majorant_integral ha haσ

-- The derivative majorant is a derived source bound, not a fixture premise.
example {s : ℂ} (hs : (1 / 2 : ℝ) ≤ s.re) :
    ‖deriv fractionalMellin s‖ ≤ (32 / 7 : ℝ) :=
  fractionalMellin_deriv_norm_le_thirtyTwoSevenths hs

example {s : ℂ} (hs : (1 / 2 : ℝ) ≤ s.re) (hB : ‖s‖ ≤ 1) :
    ‖deriv poleNormalizedZeta s‖ ≤ (113 / 7 : ℝ) :=
  poleNormalized_deriv_norm_le_113_sevenths hs hB

example {s : ℂ} (hl : (1 / 2 : ℝ) ≤ s.re) (hr : s.re ≤ 1)
    (ht : |s.im| ≤ (1 / 3 : ℝ)) :
    (1 / 42 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  poleNormalized_norm_lower_oneThird hl hr ht

-- Both critical-line and height-boundary equality are included in the target.
example : poleNormalizedZeta (⟨1 / 2, 1 / 3⟩ : ℂ) ≠ 0 :=
  poleNormalized_nonzero_oneThird_right (by norm_num) (by norm_num) (by norm_num)

example : poleNormalizedZeta (⟨1, -(1 / 3)⟩ : ℂ) ≠ 0 :=
  poleNormalized_nonzero_oneThird_right (by norm_num) (by norm_num) (by norm_num)

example : (1 / 42 : ℝ) ≤ ‖poleNormalizedZeta (1 : ℂ)‖ :=
  poleNormalized_norm_lower_oneThird (by norm_num) (by norm_num) (by norm_num)

example {z : ℂ} (hz : NontrivialZetaZero z) :
    (1 / 3 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| :=
  nontrivialZetaZero_height_gt_one_third hz

example : NoTargetZero {z : ℂ |
    |ZetaCommutatorRoot.root.heightAt z| ≤ (1 / 3 : ℝ)} := noTargetZero_oneThird_seed

example : Nonempty (FiniteVariationCover poleNormalizedZeta oneThirdRightSeed) :=
  exists_oneThirdRightSeed_cover

-- All margins are rational; no transcendental value is used by these arithmetic checks.
example : (1 / ( (1 / 2 : ℝ) * (1 / 2 - 1 / 16))) = 32 / 7 := by norm_num
example : (13 / 36 : ℝ) < (5 / 8) ^ 2 := by norm_num
example : (5 / 8 : ℝ) * (32 / 7) * (1 / 3) = 20 / 21 := by norm_num
example : (20 / 21 : ℝ) < 1 := by norm_num
example : (1 / 2 : ℝ) * (1 - 20 / 21) = 1 / 42 := by norm_num
example : (32 / 7 : ℝ) < 16 := by norm_num
example : (113 / 7 : ℝ) < 45 := by norm_num
example : (1 / 16 : ℝ) < 1 / 3 ∧ (1 / 3 : ℝ) < 1 := oneThird_seed_scope

-- Setting the auxiliary exponent to zero destroys the logarithm bound.
example : ¬ Real.log (2 : ℝ) ≤ ((2 : ℝ) ^ (0 : ℝ) - 1) / 0 := by
  have h : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  simpa using (not_le_of_gt h)

-- The upper constraint on a cannot be replaced by a non-strict inequality.
example : ¬ ((1 / 2 : ℝ) < 1 / 2) := by norm_num

-- A coarser coordinate-sum estimate would LOSE the strict margin at height 1/3.
example : (5 / 6 : ℝ) * (32 / 7) * (1 / 3) > 1 := by norm_num

end GRWTSK.RiemannHypothesis.Checks.OneThirdSeedChecks
