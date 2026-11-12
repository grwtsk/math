/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

/-!
# Global scalar Fourier translation defect

MSC2020: 42A38 (primary), 11M26, 46E35.
The exact scalar defect x^2-2*(1-cos x) lies between zero and x^4/12,
for every real x. The 1/12 coefficient is sharp at zero. The companion
WeilH1SourceContinuity.md returns this multiplier, through Plancherel
and Sobolev translation, to the original Weil gamma energy. That
Plancherel/source-return proof is WRITTEN, not a Lean declaration here.

Classical input: Real.abs_sub_sin_le, Real.abs_sin_le_abs,
Real.one_sub_sq_div_two_le_cos, Real.cos_two_mul,
Real.sin_sq_add_cos_sq from Mathlib at pin
d13f23b723b8a846827a245b89c10fc7d3f11612.

SOURCE_PROOF_CANDIDATE; elaboration, complete dependency build, fresh
kernel replay, transitive axiom audit, numerical certification and
independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ShiftDefectScalar

private theorem cos_eq_one_sub_two_sin_half_sq (x : ℝ) :
    Real.cos x = 1 - 2 * Real.sin (x / 2) ^ 2 := by
  have hc := Real.cos_two_mul (x / 2)
  have hs := Real.sin_sq_add_cos_sq (x / 2)
  have ht : (2 : ℝ) * (x / 2) = x := by ring
  rw [ht] at hc
  nlinarith

private theorem cosine_defect_factor (x : ℝ) :
    x ^ 2 - 2 * (1 - Real.cos x) =
      4 * (x / 2 - Real.sin (x / 2)) *
        (x / 2 + Real.sin (x / 2)) := by
  rw [cos_eq_one_sub_two_sin_half_sq]
  ring

/-- Global sharp quartic Fourier translation defect, with its original sign. -/
theorem cosine_defect_bounds (x : ℝ) :
    0 ≤ x ^ 2 - 2 * (1 - Real.cos x) ∧
      x ^ 2 - 2 * (1 - Real.cos x) ≤ x ^ 4 / 12 := by
  have hnonneg : 0 ≤ x ^ 2 - 2 * (1 - Real.cos x) := by
    nlinarith [Real.one_sub_sq_div_two_le_cos x]
  have hsin := Real.abs_sub_sin_le (x / 2)
  have hsin' := Real.abs_sin_le_abs (x / 2)
  have hplus : |x / 2 + Real.sin (x / 2)| ≤ 2 * |x / 2| := by
    calc
      |x / 2 + Real.sin (x / 2)| ≤
          |x / 2| + |Real.sin (x / 2)| := abs_add_le _ _
      _ ≤ |x / 2| + |x / 2| := add_le_add_left hsin' _
      _ = 2 * |x / 2| := by ring
  have hprod :
      |(x / 2 - Real.sin (x / 2)) *
        (x / 2 + Real.sin (x / 2))| ≤
        (|x / 2| ^ 3 / 6) * (2 * |x / 2|) := by
    rw [abs_mul]
    exact mul_le_mul hsin hplus (abs_nonneg _) (by positivity)
  have hhalf : |x / 2| ^ 4 = x ^ 4 / 16 := by
    rw [abs_div, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
    have hsquare : |x| ^ 2 = x ^ 2 := sq_abs x
    calc
      (|x| / 2) ^ 4 = (|x| ^ 2) ^ 2 / 16 := by ring
      _ = (x ^ 2) ^ 2 / 16 := by rw [hsquare]
      _ = x ^ 4 / 16 := by ring
  have hfactor :
      4 * ((|x / 2| ^ 3 / 6) * (2 * |x / 2|)) = x ^ 4 / 12 := by
    calc
      _ = (4 / 3 : ℝ) * |x / 2| ^ 4 := by ring
      _ = (4 / 3 : ℝ) * (x ^ 4 / 16) := by rw [hhalf]
      _ = x ^ 4 / 12 := by ring
  have habs : |x ^ 2 - 2 * (1 - Real.cos x)| ≤ x ^ 4 / 12 := by
    rw [cosine_defect_factor, abs_mul,
      abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 4)]
    calc
      4 * |(x / 2 - Real.sin (x / 2)) *
        (x / 2 + Real.sin (x / 2))| ≤
          4 * ((|x / 2| ^ 3 / 6) * (2 * |x / 2|)) :=
        mul_le_mul_of_nonneg_left hprod (by norm_num)
      _ = x ^ 4 / 12 := hfactor
  exact ⟨hnonneg, (le_abs_self _).trans habs⟩

/-- The same nonnegative scalar multiplier for any complex Fourier phase. -/
theorem cosine_defect_mul_norm_sq_bounds (x : ℝ) (z : ℂ) :
    0 ≤ (x ^ 2 - 2 * (1 - Real.cos x)) * ‖z‖ ^ 2 ∧
      (x ^ 2 - 2 * (1 - Real.cos x)) * ‖z‖ ^ 2 ≤
        (x ^ 4 / 12) * ‖z‖ ^ 2 := by
  obtain ⟨h0, h1⟩ := cosine_defect_bounds x
  exact ⟨mul_nonneg h0 (sq_nonneg _),
    mul_le_mul_of_nonneg_right h1 (sq_nonneg _)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.ShiftDefectScalar
