/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTriangle
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeCheckerBase
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeCheckerMidpointLower

/-!
# The literal checker price bounds the whole conductor-three frequency cell

The original multiplier varies by at most `8/256` from the center to any
point of a cell. The signed midpoint estimate already includes the native
prime response and its reserve. The checker adds `9/256` in exact scaled
units and retains positive prices, as in `scripts/verify_odd_three_sine_hs.py`
(blob `b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 132–139).
-/

set_option autoImplicit false

open Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

open CheckerRounding OddRootProjection

/-- Every point of each original half-open frequency cell is bounded by the
literal clipped checker price in that cell, in the units used by the rectangle. -/
theorem q3SineDeficit_le_checkerCellPrice
    (χ : DirichletCharacter ℂ 3) (hodd : gammaParity χ = 1)
    (i : Fin 32768) (x : ℝ) (hx : x ∈ cell i) :
    q3SineDeficit χ x ≤ (price (rawDeficit checkerMidpointLower) i : ℝ) / (scale : ℝ) := by
  have hs : 0 < (scale : ℝ) := by norm_num [scale]
  have hx' : x ∈ Ioc ((i.val : ℝ) / 128) (((i.val : ℝ) + 1) / 128) := by
    simpa only [cell, div_eq_mul_inv, one_mul] using hx
  have hmid := checkerMidpointLower_le_q3SineMultiplier χ hodd checkerBase_le_gammaConstant i
  have hvariation := q3_sine_deficit_le_midpoint χ hodd i.val hx'
  change q3SineDeficit χ x ≤ max 0 (1 - q3SineMultiplier χ (checkerMidpoint i) + 1 / 32)
    at hvariation
  have hbudget : (9 * scale / (2 * 128) : ℤ) = 35156250000 := by decide
  have hraw : (rawDeficit checkerMidpointLower i : ℝ) / (scale : ℝ) =
      1 - (checkerMidpointLower i : ℝ) / (scale : ℝ) + 9 / 256 := by
    rw [rawDeficit, hbudget, Int.cast_add, Int.cast_sub, add_div, sub_div, div_self hs.ne']
    norm_num [scale]
  have hclip : (rawDeficit checkerMidpointLower i : ℝ) ≤
      (price (rawDeficit checkerMidpointLower) i : ℝ) := by
    have hz : rawDeficit checkerMidpointLower i ≤ (price (rawDeficit checkerMidpointLower) i : ℤ) := by
      rw [price, Int.toNat_eq_max]
      exact le_max_left _ _
    exact_mod_cast hz
  refine hvariation.trans (max_le (div_nonneg (Nat.cast_nonneg _) hs.le) ?_)
  calc
    _ ≤ 1 - (checkerMidpointLower i : ℝ) / (scale : ℝ) + 9 / 256 := by linarith only [hmid]
    _ = (rawDeficit checkerMidpointLower i : ℝ) / (scale : ℝ) := hraw.symm
    _ ≤ _ := div_le_div_of_nonneg_right hclip hs.le

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
