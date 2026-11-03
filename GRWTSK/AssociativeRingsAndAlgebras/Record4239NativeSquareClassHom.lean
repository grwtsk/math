/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib additive homomorphisms and type tags retain upstream authorship and licenses. -/
import GRWTSK.AssociativeRingsAndAlgebras.Record4239GlobalSquareClassMultiplicativity

set_option autoImplicit false
noncomputable section

/-! Actual native value packaged as an additive square-class homomorphism.
Doubles cancel by exponent two, independently of local character tables.
No injectivity, source-point independence or rank claim is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
variable (K : Type*) [Field K] [Algebra ℚ K]

def nativeSquareClassHom (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0) :
    nativeCurve.toAffine.Point →+ Additive (UnitSquareClasses K) where
  toFun P := Additive.ofMul (nativeSquareClassValue K θ hroot P)
  map_zero' := by
    change Additive.ofMul (nativeSquareClassValue K θ hroot 0) = 0
    simp [nativeSquareClassValue, nativeToShortPoint_zero, shortSquareClassValue_zero]
  map_add' P Q := by
    change Additive.ofMul (nativeSquareClassValue K θ hroot (P + Q)) = _
    rw [nativeSquareClassValue_add, Additive.ofMul_mul]

theorem nativeSquareClassValue_double (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P : nativeCurve.toAffine.Point) :
    nativeSquareClassValue K θ hroot (P + P) = 1 := by
  rw [nativeSquareClassValue_add, ← pow_two]
  exact unitSquareClasses_sq_eq_one K _

theorem nativeSquareClassHom_double (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P : nativeCurve.toAffine.Point) :
    nativeSquareClassHom K θ hroot (2 • P) = 0 := by
  rw [two_nsmul]
  change Additive.ofMul (nativeSquareClassValue K θ hroot (P + P)) = 0
  rw [nativeSquareClassValue_double, Additive.ofMul_one]

theorem nativeSquareClassHom_add_double (θ : K)
    (hroot : θ ^ 3 + (shortA : K) * θ + (shortB : K) = 0)
    (P Q : nativeCurve.toAffine.Point) :
    nativeSquareClassHom K θ hroot (P + 2 • Q) = nativeSquareClassHom K θ hroot P := by
  rw [map_add, nativeSquareClassHom_double, add_zero]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
