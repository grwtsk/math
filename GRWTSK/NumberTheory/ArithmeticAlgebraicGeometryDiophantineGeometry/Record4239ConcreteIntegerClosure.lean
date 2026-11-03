/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib integral closure and power bases retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegralOrderFieldInjectivity
import GRWTSK.CommutativeAlgebra.Record4239NormalDomainSquareClassReflection

set_option autoImplicit false
noncomputable section

/-! Concrete normal ambient ring in the literal cubic field.
Residue-prime choice, localization and exceptional source square-class
agreement remain separate. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

noncomputable instance nativeCubicField_finiteDimensional : FiniteDimensional ℚ NativeCubicField :=
  Module.Finite.of_basis (AdjoinRoot.powerBasis rationalShortCubic_irreducible.ne_zero).basis

abbrev NativeIntegerClosure := integralClosure ℤ NativeCubicField

noncomputable instance nativeIntegerClosure_fractionField :
    IsFractionRing NativeIntegerClosure NativeCubicField :=
  integralClosure.isFractionRing_of_finite_extension ℚ NativeCubicField

noncomputable instance nativeIntegerClosure_normal : IsIntegrallyClosed NativeIntegerClosure :=
  integralClosure.isIntegrallyClosedOfFiniteExtension (R := ℤ) ℚ (L := NativeCubicField)

theorem nativeCubicRoot_integral : IsIntegral ℤ nativeCubicRoot := by
  refine ⟨shortCubic, shortCubic_monic, ?_⟩
  have hi : Int.castRingHom NativeCubicField = algebraMap ℤ NativeCubicField := by
    ext n
    simp
  rw [← hi]
  exact integralShortCubic_eval_nativeRoot

def nativeIntegralRoot : NativeIntegerClosure := ⟨nativeCubicRoot, nativeCubicRoot_integral⟩

lemma integralShortCubic_eval_integerClosureRoot :
    shortCubic.eval₂ (Int.castRingHom NativeIntegerClosure) nativeIntegralRoot = 0 := by
  apply Subtype.ext
  simpa [shortCubic, nativeIntegralRoot] using nativeCubicRoot_relation

def recordOrderToIntegerClosure : RecordIntegralOrder →+* NativeIntegerClosure :=
  AdjoinRoot.lift (Int.castRingHom NativeIntegerClosure) nativeIntegralRoot
    integralShortCubic_eval_integerClosureRoot

theorem integerClosure_order_map_field_compat :
    (algebraMap NativeIntegerClosure NativeCubicField).comp recordOrderToIntegerClosure =
      recordOrderToCubicField := by
  apply AdjoinRoot.ringHom_ext
  · ext n
    simp [recordOrderToIntegerClosure, recordOrderToCubicField]
  · simp [recordOrderToIntegerClosure, recordOrderToCubicField, nativeIntegralRoot]

theorem nativeIntegerClosure_squareClass_injective :
    Function.Injective (unitSquareClassMap (algebraMap NativeIntegerClosure NativeCubicField)) :=
  normal_squareClassMap_injective NativeIntegerClosure NativeCubicField

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
