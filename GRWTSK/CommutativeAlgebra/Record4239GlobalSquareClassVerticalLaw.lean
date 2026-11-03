/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib quotient groups and point negation retain upstream authorship and licenses. -/
import GRWTSK.AssociativeRingsAndAlgebras.Record4239GlobalShortSquareClassValue

set_option autoImplicit false
noncomputable section

/-!
# Global vertical cancellation for actual square-class values

Every unit-square quotient has exponent two. The source x-minus-root
unit is invariant under actual elliptic negation, so opposite points
cancel in its square classes. This discharges the vertical value law,
not the nonvertical addition law or local specialization.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem unitSquareClasses_sq_eq_one (R : Type*) [CommRing R] (a : UnitSquareClasses R) :
    a ^ 2 = 1 := by
  refine Quotient.inductionOn a ?_
  intro u
  change ((QuotientGroup.mk' (powMonoidHom (α := Rˣ) 2).range) u) ^ 2 = 1
  rw [← map_pow]
  exact (QuotientGroup.eq_one_iff _).mpr ⟨u, rfl⟩

variable (K : Type*) [Field K] [Algebra ℚ K]

theorem shortPointDifferenceUnit_neg (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P : nativeShortCurve.toAffine.Point) :
    shortPointDifferenceUnit K θ hroot (-P) = shortPointDifferenceUnit K θ hroot P := by
  cases P <;> rfl

theorem shortSquareClassValue_neg (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P : nativeShortCurve.toAffine.Point) :
    shortSquareClassValue K θ hroot (-P) = shortSquareClassValue K θ hroot P := by
  unfold shortSquareClassValue
  rw [shortPointDifferenceUnit_neg]

theorem shortSquareClassValue_vertical (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P : nativeShortCurve.toAffine.Point) :
    shortSquareClassValue K θ hroot P * shortSquareClassValue K θ hroot (-P) = 1 := by
  rw [shortSquareClassValue_neg, ← pow_two]
  exact unitSquareClasses_sq_eq_one K _

theorem nativeSquareClassValue_neg (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P : nativeCurve.toAffine.Point) :
    nativeSquareClassValue K θ hroot (-P) = nativeSquareClassValue K θ hroot P := by
  unfold nativeSquareClassValue
  rw [nativeToShortPoint_neg, shortSquareClassValue_neg]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
