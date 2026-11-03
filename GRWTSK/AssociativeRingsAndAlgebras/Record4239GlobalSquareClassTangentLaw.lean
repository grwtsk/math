/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.Record4239GlobalSquareClassSecantLaw
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239TangentCancellation

set_option autoImplicit false
noncomputable section

/-! Global tangent cancellation for the literal rational short model.
The tangent relation is explicit. Native addition transport below consumes,
rather than asserts, branch-complete short-point multiplicativity.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
variable (K : Type*) [Field K] [Algebra ℚ K]

theorem global_rational_tangent_squareClass_law (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (x y m : ℚ) (hcurve : nativeShortCurve.toAffine.Equation x y)
    (htangent : 2 * m * y = 3 * x ^ 2 + (shortA : ℚ)) :
    (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
        (rationalDifferenceUnit K θ hroot x) *
      (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
        (rationalDifferenceUnit K θ hroot x) =
      (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
        (rationalDifferenceUnit K θ hroot (m ^ 2 - 2 * x)) := by
  let f := algebraMap ℚ K
  have hc : (f y) ^ 2 = (f x) ^ 3 + (shortA : K) * f x + (shortB : K) := by
    simpa only [map_pow, map_add, map_mul, map_intCast] using
      congrArg f ((nativeShortEquation_iff x y).mp hcurve)
  have ht : 2 * f m * f y = 3 * (f x) ^ 2 + (shortA : K) := by
    simpa only [map_mul, map_pow, map_add, map_ofNat, map_intCast] using
      congrArg f htangent
  have hp := tangent_root_product_square (shortA : K) (shortB : K) θ
    (f x) (f y) (f m) hroot hc ht
  let u := rationalDifferenceUnit K θ hroot x
  let w := rationalDifferenceUnit K θ hroot (m ^ 2 - 2 * x)
  have hp' : (u : K) * (u : K) * (w : K) = (f y + f m * (θ - f x)) ^ 2 := by
    simpa only [u, w, rationalDifferenceUnit, Units.val_mk0, map_sub,
      map_pow, map_mul, map_ofNat, pow_two] using hp
  have hz : f y + f m * (θ - f x) ≠ 0 := by
    intro h
    exact (mul_ne_zero (mul_ne_zero u.ne_zero u.ne_zero) w.ne_zero)
      (by simpa [h] using hp')
  let z := Units.mk0 (f y + f m * (θ - f x)) hz
  have hu : u * u * w = z ^ 2 := by
    apply Units.ext
    exact hp'
  exact squareClass_pair_eq_of_triple_square K u u w z hu

/-- Exact native transport; the complete short-point law remains a premise. -/
theorem nativeSquareClassValue_add_of_short_law (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (hshort : ∀ P Q : nativeShortCurve.toAffine.Point,
      shortSquareClassValue K θ hroot (P + Q) =
        shortSquareClassValue K θ hroot P * shortSquareClassValue K θ hroot Q)
    (P Q : nativeCurve.toAffine.Point) :
    nativeSquareClassValue K θ hroot (P + Q) =
      nativeSquareClassValue K θ hroot P * nativeSquareClassValue K θ hroot Q := by
  unfold nativeSquareClassValue
  rw [nativeToShortPoint_add]
  exact hshort _ _

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
