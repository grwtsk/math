/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239NativePadicEmbedding
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239ConcreteIntegerClosure

set_option autoImplicit false
noncomputable section

/-! Restrict the literal native embedding to integral p-adic values.
Normality of Zp replaces a new norm-bound premise. Residue transport and
exceptional global square classes remain separate. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

def integerClosureToPadicField : NativeIntegerClosure →+* ℚ_[primeLabel j] :=
  (nativeCubicToPadic j).comp (algebraMap NativeIntegerClosure NativeCubicField)

theorem integerClosure_padic_image_integral (x : NativeIntegerClosure) :
    IsIntegral ℤ_[primeLabel j] (integerClosureToPadicField j x) := by
  apply IsIntegral.map_of_comp_eq (Int.castRingHom ℤ_[primeLabel j])
    (integerClosureToPadicField j) _ (integralClosure.isIntegral x)
  ext n
  simp

theorem integerClosure_padic_image_lifts (x : NativeIntegerClosure) :
    ∃ z : ℤ_[primeLabel j], algebraMap ℤ_[primeLabel j] ℚ_[primeLabel j] z =
      integerClosureToPadicField j x := by
  exact (IsIntegrallyClosed.isIntegral_iff (R := ℤ_[primeLabel j])
    (K := ℚ_[primeLabel j])).mp (integerClosure_padic_image_integral j x)

def integerClosurePadicValue (x : NativeIntegerClosure) : ℤ_[primeLabel j] :=
  Classical.choose (integerClosure_padic_image_lifts j x)

theorem integerClosurePadicValue_spec (x : NativeIntegerClosure) :
    algebraMap ℤ_[primeLabel j] ℚ_[primeLabel j] (integerClosurePadicValue j x) =
      integerClosureToPadicField j x := Classical.choose_spec (integerClosure_padic_image_lifts j x)

def integerClosureToPadicInt : NativeIntegerClosure →+* ℤ_[primeLabel j] where
  toFun := integerClosurePadicValue j
  map_one' := by
    apply IsFractionRing.injective ℤ_[primeLabel j] ℚ_[primeLabel j]
    simp [integerClosurePadicValue_spec]
  map_zero' := by
    apply IsFractionRing.injective ℤ_[primeLabel j] ℚ_[primeLabel j]
    simp [integerClosurePadicValue_spec]
  map_add' x y := by
    apply IsFractionRing.injective ℤ_[primeLabel j] ℚ_[primeLabel j]
    simp [integerClosurePadicValue_spec]
  map_mul' x y := by
    apply IsFractionRing.injective ℤ_[primeLabel j] ℚ_[primeLabel j]
    simp [integerClosurePadicValue_spec]

theorem integerClosureToPadicInt_root :
    integerClosureToPadicInt j nativeIntegralRoot = nativePadicRoot j := by
  apply IsFractionRing.injective ℤ_[primeLabel j] ℚ_[primeLabel j]
  change algebraMap ℤ_[primeLabel j] ℚ_[primeLabel j]
    (integerClosurePadicValue j nativeIntegralRoot) = _
  rw [integerClosurePadicValue_spec]
  simpa [integerClosureToPadicField, nativeIntegralRoot] using nativeCubicToPadic_root j
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
