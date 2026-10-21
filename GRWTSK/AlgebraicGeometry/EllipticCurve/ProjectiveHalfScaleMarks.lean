/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

Integral projective representatives of marked points under the OLD half-scale
change. Rational projective equality is not equality up to a dyadic unit.
A denominator-cleared zero residue vector is NOT a projective point.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale
import Mathlib.AlgebraicGeometry.EllipticCurve.Projective.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FinCases

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.ProjectiveHalfScaleMarks

open WeierstrassCurve
open scoped WeierstrassCurve.Projective
open GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale

/-- Homogeneous coordinates, not affine coordinates with forbidden denominators. -/
def cleared (d : ℤ) : Fin 3 → ℤ := ![2*d, -d, 8]

def affineIntegral (q : ℤ) : Fin 3 → ℤ := ![4*q, -2*q, 1]

/-- This normalization is primitive at two on the guarded domain
`16 | d` or `d odd`. No claim is made about its complement. -/
def mark (d : ℤ) : Fin 3 → ℤ :=
  if (16 : ℤ) ∣ d then affineIntegral (d/16) else cleared d

def rational (P : Fin 3 → ℤ) : Fin 3 → ℚ := fun i => (P i : ℚ)

def binary (P : Fin 3 → ℤ) : Fin 3 → ZMod 2 := fun i => (P i : ZMod 2)

theorem divided_identity (q : ℤ) :
    rational (cleared (16*q)) = (8 : ℚ) • rational (affineIntegral q) := by
  ext i
  fin_cases i <;> simp [rational, cleared, affineIntegral] <;> ring

theorem mark_Z_ne_zero (d : ℤ) : rational (mark d) 2 ≠ 0 := by
  unfold mark
  split_ifs <;> norm_num [rational, affineIntegral, cleared]

/-- The affine ratios are exact; no reduction modulo two occurs here. -/
theorem mark_ratios (d : ℤ) :
    rational (mark d) 0 / rational (mark d) 2 = (d : ℚ)/4 ∧
    rational (mark d) 1 / rational (mark d) 2 = -(d : ℚ)/8 := by
  by_cases hd : (16 : ℤ) ∣ d
  · obtain ⟨q, rfl⟩ := hd
    have hdiv : (16*q)/16 = q := by omega
    constructor <;> simp [mark, affineIntegral, rational, hdiv] <;> ring
  · constructor <;> simp [mark, hd, cleared, rational] <;> ring

/-- Exact equality of rational projective classes. Eight is a Q-unit only. -/
theorem mark_class (d : ℤ) :
    (⟦rational (mark d)⟧ : Projective.PointClass ℚ) =
      ⟦![(d : ℚ)/4, -(d : ℚ)/8, 1]⟧ := by
  have h := Projective.equiv_some_of_Z_ne_zero 
    (mark_Z_ne_zero d)
  rw [(mark_ratios d).1, (mark_ratios d).2] at h
  exact Quotient.eq.mpr h

/-- Polynomial covariance of the actual old change, before clearing denominators. -/
theorem half_image_polynomial (W : WeierstrassCurve ℚ) (r x y : ℚ) :
    MvPolynomial.eval ![2*(x-r), y-x+r, 8]
      (halfChange r • W).toProjective.polynomial =
        8 * W.toAffine.polynomial.evalEval x y := by
  simp [Projective.eval_polynomial, Affine.evalEval_polynomial,
    halfChange, WeierstrassCurve.variableChange_def]
  ring

/-- At the source marks y=0, the homogeneous image is precisely cleared(x-r). -/
theorem half_cleared_equation (W : WeierstrassCurve ℚ) (r x : ℤ)
    (h : W.toAffine.Equation (x : ℚ) 0) :
    (halfChange (r : ℚ) • W).toProjective.Equation (rational (cleared (x-r))) := by
  change W.toAffine.polynomial.evalEval (x : ℚ) 0 = 0 at h
  change MvPolynomial.eval _ _ = 0
  have he := half_image_polynomial W (r : ℚ) (x : ℚ) 0
  have hp : rational (cleared (x-r)) =
      ![2*((x : ℚ)-r), (0 : ℚ)-x+r, 8] := by
    ext i
    fin_cases i <;> simp [rational, cleared] <;> ring
  rw [hp, he, h, mul_zero]

/-- Replacing the nonprimitive cleared vector by its normalized representative
uses an equation equivalence over Q, not division by eight in the residue field. -/
theorem mark_equation_of_cleared (W : WeierstrassCurve ℚ) (d : ℤ)
    (h : W.toProjective.Equation (rational (cleared d))) :
    W.toProjective.Equation (rational (mark d)) := by
  by_cases hd : (16 : ℤ) ∣ d
  · obtain ⟨q, rfl⟩ := hd
    have hdiv : (16*q)/16 = q := by omega
    simp only [mark, if_pos (dvd_mul_right 16 q), hdiv]
    rw [divided_identity] at h
    exact (Projective.equation_smul _ (isUnit_iff_ne_zero.mpr (by norm_num : (8 : ℚ) ≠ 0))).mp h
  · simpa only [mark, if_neg hd] using h

theorem affineIntegral_binary (q : ℤ) : binary (affineIntegral q) = ![0,0,1] := by
  ext i
  fin_cases i <;> simp [binary, affineIntegral]

theorem cleared_binary_of_odd (d : ℤ) (hd : ¬ (2 : ℤ) ∣ d) :
    binary (cleared d) = ![0,1,0] := by
  have hd1 : (d : ZMod 2) = 1 := by
    have hn : (d : ZMod 2) ≠ 0 := by
      simpa only [ZMod.intCast_zmod_eq_zero_iff_dvd] using hd
    have hh : ∀ z : ZMod 2, z ≠ 0 → z=1 := by decide
    exact hh _ hn
  ext i
  fin_cases i <;> simp [binary, cleared, hd1]

theorem mark_binary_of_divisible (d : ℤ) (hd : (16 : ℤ) ∣ d) :
    binary (mark d) = ![0,0,1] := by
  simpa only [mark, if_pos hd] using affineIntegral_binary (d/16)

theorem mark_binary_of_odd (d : ℤ) (hd : ¬ (2 : ℤ) ∣ d) :
    binary (mark d) = ![0,1,0] := by
  have hn : ¬ (16 : ℤ) ∣ d := fun h => hd (dvd_trans (by norm_num) h)
  simpa only [mark, if_neg hn] using cleared_binary_of_odd d hd

/-- A nonzero residue vector is proved, not presumed from denominator clearing. -/
theorem mark_binary_ne_zero (d : ℤ)
    (hd : (16 : ℤ) ∣ d ∨ ¬ (2 : ℤ) ∣ d) : binary (mark d) ≠ 0 := by
  rcases hd with hd | hd
  · rw [mark_binary_of_divisible d hd]
    intro h
    have := congrFun h 2
    norm_num at this
  · rw [mark_binary_of_odd d hd]
    intro h
    have := congrFun h 1
    norm_num at this

/-- Clearing first and reducing before primitive normalization loses the point. -/
theorem unnormalized_zero_residue (q : ℤ) : binary (cleared (16*q)) = 0 := by
  ext i
  fin_cases i <;> simp [binary,cleared]

/-- Infinity-chart coordinates on the Y-unit branch. The first coordinate alone
is constant and cannot recover d. -/
theorem infinity_chart (d : ℤ) (hd : d ≠ 0) :
    -(rational (cleared d) 0) / rational (cleared d) 1 = 2 ∧
    -(rational (cleared d) 2) / rational (cleared d) 1 = 8/(d : ℚ) := by
  have hq : (d : ℚ) ≠ 0 := by exact_mod_cast hd
  simp only [rational, cleared, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, Int.cast_mul, Int.cast_ofNat, Int.cast_neg]
  constructor <;> field_simp <;> ring

/-- The actual homogeneous equation in the Y-unit chart [-t:1:-w]. -/
theorem infinity_chart_equation (W : WeierstrassCurve ℚ) (t w : ℚ) :
    W.toProjective.Equation ![-t,1,-w] ↔
      w = t^3 + W.a₁*t*w + W.a₂*t^2*w + W.a₃*w^2 +
        W.a₄*t*w^2 + W.a₆*w^3 := by
  rw [Projective.equation_iff]
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two]
  constructor <;> intro h <;> linear_combination -h

/-- On fields, infinity is nonsingular independently of the bad finite fiber. -/
theorem infinity_nonsingular (W : WeierstrassCurve (ZMod 2)) :
    W.toProjective.Nonsingular ![0,1,0] := Projective.nonsingular_zero

/-- The collision point can be singular even though the representatives are integral. -/
theorem affine_origin_nonsingular_iff (W : WeierstrassCurve (ZMod 2))
    (h3 : W.a₃ = 0) (h6 : W.a₆ = 0) :
    W.toProjective.Nonsingular ![0,0,1] ↔ W.a₄ ≠ 0 := by
  rw [Projective.nonsingular_some, Affine.nonsingular_zero]
  simp [h3, h6]

end GRWTSK.AlgebraicGeometry.EllipticCurve.ProjectiveHalfScaleMarks
