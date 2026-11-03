/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib fields, point types and quotient groups retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239NativeShortPointAddEquiv
import GRWTSK.CommutativeAlgebra.Record4239UnitSquareClassTransport

set_option autoImplicit false
noncomputable section

/-!
# Actual global x-minus-root square-class values

In a field over Q containing a root theta of the literal short cubic,
no rational abscissa equals theta, by the source no-rational-root theorem.
Thus every affine short point gives an actual unit x-theta; infinity
gives one. We construct square-class VALUE FUNCTIONS on the complete
short and native point groups, not yet homomorphisms. A concrete cubic
field and branch-complete multiplicativity/local normalization remain
missing. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

variable (K : Type*) [Field K] [Algebra ℚ K]

theorem short_root_ne_rational_image (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0) (x : ℚ) :
    algebraMap ℚ K x ≠ θ := by
  intro he
  rw [← he] at hroot
  have hm : algebraMap ℚ K (x ^ 3 + (shortA : ℚ) * x + (shortB : ℚ)) =
      algebraMap ℚ K 0 := by
    simpa only [map_add, map_pow, map_mul, map_intCast, map_zero] using hroot
  exact shortCubic_noRationalRoot x ((algebraMap ℚ K).injective hm)

def shortPointDifferenceUnit (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0) :
    nativeShortCurve.toAffine.Point → Kˣ
  | .zero => 1
  | .some x _ _ => Units.mk0 (algebraMap ℚ K x - θ)
      (sub_ne_zero.mpr (short_root_ne_rational_image K θ hroot x))

def shortSquareClassValue (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P : nativeShortCurve.toAffine.Point) : UnitSquareClasses K :=
  (QuotientGroup.mk' (powMonoidHom (α := Kˣ) 2).range)
    (shortPointDifferenceUnit K θ hroot P)

def nativeSquareClassValue (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P : nativeCurve.toAffine.Point) : UnitSquareClasses K :=
  shortSquareClassValue K θ hroot (nativeToShortPoint P)

theorem shortSquareClassValue_zero (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0) :
    shortSquareClassValue K θ hroot 0 = 1 := by
  simp [shortSquareClassValue, shortPointDifferenceUnit]

theorem native_source_difference_unit_value (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0) (i : Fin 32) :
    (shortPointDifferenceUnit K θ hroot (nativeToShortPoint (nativePoint i)) : K) =
      algebraMap ℚ K (shortXInt i : ℚ) - θ := by
  change algebraMap ℚ K (36 * pointX i + 3) - θ = _
  rw [shortXInt_eq]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
