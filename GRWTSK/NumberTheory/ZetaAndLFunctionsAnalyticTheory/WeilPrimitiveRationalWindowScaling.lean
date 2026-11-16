/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowMass
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveStageH1Continuity

/-! # Exact rescaling of a rational primitive Weil test -/

set_option autoImplicit false

open MeasureTheory

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation

private theorem aeval_rationalWindowPolynomial_scale (a : ℚ) (x : ℝ) (cs : List ℚ) :
    (rationalWindowPolynomial (cs.map (fun c => a * c))).aeval x =
      (a : ℝ) * (rationalWindowPolynomial cs).aeval x := by
  induction cs with
  | nil => simp [rationalWindowPolynomial]
  | cons c cs ih =>
    simp [rationalWindowPolynomial, ih]
    ring

/-- Scaling all coefficients scales the actual decoded test pointwise. -/
theorem rationalWindowTest_scale (T : ℝ) (a : ℚ) (cs : List ℚ) (x : ℝ) :
    rationalWindowTest T (cs.map (fun c => a * c)) x =
      (a : ℝ) * rationalWindowTest T cs x := by
  simp only [rationalWindowTest, aeval_rationalWindowPolynomial_scale]
  ring

/-- The executable mass is homogeneous of degree two in the code. -/
theorem rationalWindowMass_scale (T : ℚ) (hT : 0 < T) (a : ℚ) (cs : List ℚ) :
    rationalWindowMass T (cs.map (fun c => a * c)) = a ^ 2 * rationalWindowMass T cs := by
  apply Rat.cast_injective (α := ℝ)
  rw [Rat.cast_mul, Rat.cast_pow, rationalWindowMass_cast T hT, rationalWindowMass_cast T hT]
  simp only [energy, liftReal, Complex.norm_real, Real.norm_eq_abs, sq_abs,
    rationalWindowTest_scale, mul_pow, integral_const_mul]

/-- A nonzero scale permits exactly the reciprocal-square raw mass ceiling. -/
theorem rationalWindowMass_scale_le_one_iff (T : ℚ) (hT : 0 < T)
    (a : ℚ) (ha : a ≠ 0) (cs : List ℚ) :
    rationalWindowMass T (cs.map (fun c => a * c)) ≤ 1 ↔
      rationalWindowMass T cs ≤ (a ^ 2)⁻¹ := by
  rw [rationalWindowMass_scale T hT, mul_comm, ← le_div_iff₀ (sq_pos_of_ne_zero ha), one_div]

/-- The scaled code gives the original stage mass test when its raw mass
satisfies the exact reciprocal-square ceiling. -/
noncomputable def primitiveStageMassTestOfScaledCode {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (a : ℚ) (ha : a ≠ 0) (cs : List ℚ)
    (h : rationalWindowMass ((j : ℚ) + 1) cs ≤ (a ^ 2)⁻¹) :
    PrimitiveStageMassTest χ j := by
  have hT : (0 : ℚ) < (j : ℚ) + 1 := by positivity
  have hpos : (0 : ℝ) < (j : ℝ) + 1 := by positivity
  refine ⟨rationalWindowTest ((j : ℝ) + 1) (cs.map (fun c => a * c)),
    rationalWindowTest_admissible χ hpos _, ?_⟩
  simpa only [Rat.cast_add, Rat.cast_natCast, Rat.cast_one] using
    (rationalWindowMass_le_one_iff ((j : ℚ) + 1) hT _).mp
      ((rationalWindowMass_scale_le_one_iff ((j : ℚ) + 1) hT a ha cs).mpr h)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
