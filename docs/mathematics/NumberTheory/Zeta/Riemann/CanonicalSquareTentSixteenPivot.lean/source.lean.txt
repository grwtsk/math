/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge
import Mathlib.Tactic

/-!
# The stage-three/four reciprocal pivot at sixteen

The physical stage-three tent has positive support (9,16), while the
stage-four tent has positive support (16,25). The decreasing weight
1/x therefore lies above 1/16 on the first support and below 1/16
on the second. These exact pointwise lemmas are the next analytic
supplier; integral strictness still needs an integrable-positive-mass
argument. No RH or classical Weil form follows.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.NumberTheory.Chebyshev.TentSource

def sixteenPivot : ℝ := 1 / 16

def stageThreeSixteenGap (x : ℝ) : ℝ :=
  canonicalTentReal 1 x / x - sixteenPivot * canonicalTentReal 1 x

def stageFourSixteenGap (x : ℝ) : ℝ :=
  sixteenPivot * canonicalTentReal 2 x - canonicalTentReal 2 x / x

/-- On the actual stage-three interior the reciprocal weight is above
the shared endpoint pivot and the tent has positive mass. -/
theorem stageThreeSixteenGap_pos
    {x : ℝ} (hx : x ∈ Set.Ioo (9 : ℝ) 16) :
    0 < stageThreeSixteenGap x := by
  have ht : 0 < canonicalTentReal 1 x := by
    unfold canonicalTentReal
    apply (tent_pos_iff (squareCenter 3) (squareRadius 3) x
      (squareRadius_pos 3)).2
    norm_num [squareCenter, squareRadius] at hx ⊢
    exact hx
  have hrec : sixteenPivot < 1 / x := by
    unfold sixteenPivot
    exact one_div_lt_one_div_of_lt (by linarith [hx.1]) hx.2
  calc
    stageThreeSixteenGap x =
      canonicalTentReal 1 x * (1 / x - sixteenPivot) := by
        unfold stageThreeSixteenGap
        ring
    _ > 0 := mul_pos ht (sub_pos.mpr hrec)

/-- On the actual stage-four interior the reciprocal weight lies
strictly below the same pivot. -/
theorem stageFourSixteenGap_pos
    {x : ℝ} (hx : x ∈ Set.Ioo (16 : ℝ) 25) :
    0 < stageFourSixteenGap x := by
  have ht : 0 < canonicalTentReal 2 x := by
    unfold canonicalTentReal
    apply (tent_pos_iff (squareCenter 4) (squareRadius 4) x
      (squareRadius_pos 4)).2
    norm_num [squareCenter, squareRadius] at hx ⊢
    exact hx
  have hrec : 1 / x < sixteenPivot := by
    unfold sixteenPivot
    exact one_div_lt_one_div_of_lt (by norm_num : (0 : ℝ) < 16) hx.1
  calc
    stageFourSixteenGap x =
      canonicalTentReal 2 x * (sixteenPivot - 1 / x) := by
        unfold stageFourSixteenGap
        ring
    _ > 0 := mul_pos ht (sub_pos.mpr hrec)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot
