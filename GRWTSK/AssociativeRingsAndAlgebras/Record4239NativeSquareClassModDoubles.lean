/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib additive quotient groups retain upstream authorship and licenses. -/
import GRWTSK.AssociativeRingsAndAlgebras.Record4239NativeSquareClassHom
import Mathlib.GroupTheory.QuotientGroup.Basic

set_option autoImplicit false
noncomputable section

/-! Native descent value factored through the actual quotient by doubles.
The kernel inclusion supplies well-definedness only; no quotient
injectivity or point independence is asserted. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def nativeDoublingHom : nativeCurve.toAffine.Point →+ nativeCurve.toAffine.Point where
  toFun P := 2 • P
  map_zero' := by simp
  map_add' P Q := by simp only [nsmul_add]

def nativeDoubles : AddSubgroup nativeCurve.toAffine.Point := nativeDoublingHom.range

abbrev NativePointsModDoubles := nativeCurve.toAffine.Point ⧸ nativeDoubles

variable (K : Type*) [Field K] [Algebra ℚ K]

theorem nativeDoubles_le_squareClass_kernel (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0) :
    nativeDoubles ≤ (nativeSquareClassHom K θ hroot).ker := by
  intro P hP
  obtain ⟨Q, rfl⟩ := hP
  change nativeSquareClassHom K θ hroot (2 • Q) = 0
  exact nativeSquareClassHom_double K θ hroot Q

def nativeSquareClassModDoubles (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0) :
    NativePointsModDoubles →+ Additive (UnitSquareClasses K) :=
  QuotientAddGroup.lift nativeDoubles (nativeSquareClassHom K θ hroot)
    (nativeDoubles_le_squareClass_kernel K θ hroot)

theorem nativeSquareClassModDoubles_mk (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P : nativeCurve.toAffine.Point) :
    nativeSquareClassModDoubles K θ hroot (P : NativePointsModDoubles) =
      nativeSquareClassHom K θ hroot P := by
  rfl

theorem native_double_class_eq_zero (P : nativeCurve.toAffine.Point) :
    ((2 • P : nativeCurve.toAffine.Point) : NativePointsModDoubles) = 0 := by
  apply (QuotientAddGroup.eq_zero_iff _).mpr
  exact ⟨P, rfl⟩

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
