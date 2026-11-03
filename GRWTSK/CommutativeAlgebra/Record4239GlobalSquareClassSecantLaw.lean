/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib field maps and quotient groups retain upstream authorship and licenses. -/
import GRWTSK.CommutativeAlgebra.Record4239GlobalSquareClassVerticalLaw
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239OrdinarySecantCancellation

set_option autoImplicit false
noncomputable section

/-!
# Global ordinary-secant square-class law

Actual rational short-curve equations and a secant slope give a square
product in K. The source no-rational-root theorem makes every abscissa
factor a unit. Quotienting the square derives the multiplicative value
law, with no point-independence or descent-homomorphism premise.
Tangent and full point-group packaging remain separate obligations.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem squareClass_pair_eq_of_triple_square (R : Type*) [CommRing R]
    (u v w z : Rˣ) (hprod : u * v * w = z ^ 2) :
    (QuotientGroup.mk' (powMonoidHom (α := Rˣ) 2).range) u *
      (QuotientGroup.mk' (powMonoidHom (α := Rˣ) 2).range) v =
        (QuotientGroup.mk' (powMonoidHom (α := Rˣ) 2).range) w := by
  let π := QuotientGroup.mk' (powMonoidHom (α := Rˣ) 2).range
  have hp : π u * π v * π w = 1 := by
    rw [← map_mul, ← map_mul, hprod, map_pow]
    exact unitSquareClasses_sq_eq_one R (π z)
  have hw := unitSquareClasses_sq_eq_one R (π w)
  change π u * π v = π w
  calc
    _ = (π u * π v) * (π w) ^ 2 := by rw [hw, mul_one]
    _ = (π u * π v * π w) * π w := by group
    _ = π w := by rw [hp, one_mul]

variable (K : Type*) [Field K] [Algebra ℚ K]

def rationalDifferenceUnit (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0) (x : ℚ) : Kˣ :=
  Units.mk0 (algebraMap ℚ K x - θ)
    (sub_ne_zero.mpr (short_root_ne_rational_image K θ hroot x))

theorem global_rational_secant_squareClass_law (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (x₁ y₁ x₂ y₂ m : ℚ)
    (h₁ : nativeShortCurve.toAffine.Equation x₁ y₁)
    (h₂ : nativeShortCurve.toAffine.Equation x₂ y₂)
    (hline : y₂ - y₁ = m * (x₂ - x₁)) (hne : x₂ ≠ x₁) :
    (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
        (rationalDifferenceUnit K θ hroot x₁) *
      (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
        (rationalDifferenceUnit K θ hroot x₂) =
      (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
        (rationalDifferenceUnit K θ hroot (m ^ 2 - x₁ - x₂)) := by
  let f := algebraMap ℚ K
  have hK₁ : (f y₁) ^ 2 = (f x₁) ^ 3 + (shortA : K) * f x₁ + (shortB : K) := by
    simpa only [map_pow, map_add, map_mul, map_intCast] using
      congrArg f ((nativeShortEquation_iff x₁ y₁).mp h₁)
  have hK₂ : (f y₂) ^ 2 = (f x₂) ^ 3 + (shortA : K) * f x₂ + (shortB : K) := by
    simpa only [map_pow, map_add, map_mul, map_intCast] using
      congrArg f ((nativeShortEquation_iff x₂ y₂).mp h₂)
  have hKline : f y₂ - f y₁ = f m * (f x₂ - f x₁) := by
    simpa only [map_sub, map_mul] using congrArg f hline
  have hp := ordinary_secant_root_product_square (shortA : K) (shortB : K) θ
    (f x₁) (f y₁) (f x₂) (f y₂) (f m) hroot hK₁ hK₂ hKline (f.injective.ne hne)
  let u := rationalDifferenceUnit K θ hroot x₁
  let v := rationalDifferenceUnit K θ hroot x₂
  let w := rationalDifferenceUnit K θ hroot (m ^ 2 - x₁ - x₂)
  have hp' : (u : K) * (v : K) * (w : K) = (f y₁ + f m * (θ - f x₁)) ^ 2 := by
    simpa only [u, v, w, rationalDifferenceUnit, Units.val_mk0, map_sub, map_pow] using hp
  have hz : f y₁ + f m * (θ - f x₁) ≠ 0 := by
    intro h
    exact (mul_ne_zero (mul_ne_zero u.ne_zero v.ne_zero) w.ne_zero)
      (by simpa [h] using hp')
  let z := Units.mk0 (f y₁ + f m * (θ - f x₁)) hz
  have hu : u * v * w = z ^ 2 := by
    apply Units.ext
    exact hp'
  exact squareClass_pair_eq_of_triple_square K u v w z hu

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
