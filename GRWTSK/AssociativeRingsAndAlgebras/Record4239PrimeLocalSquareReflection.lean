/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.Record4239PrimeLocalSourceUnits
import Mathlib.RingTheory.Localization.LocalizationLocalization

set_option autoImplicit false
noncomputable section

/-! Normal prime localization in the literal native cubic field.
Unit-square reflection now specializes to this ring. Residue-character
and exceptional global-class identification remain separate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

instance nativeSourceLocal_normal (j : Fin 32) :
    IsIntegrallyClosed (NativeSourceLocalRing j) :=
  isIntegrallyClosed_of_isLocalization (NativeSourceLocalRing j)
    (nativeSourcePrime j).primeCompl (nativeSourcePrime j).primeCompl_le_nonZeroDivisors

def nativeSourceLocalToField (j : Fin 32) : NativeSourceLocalRing j →+* NativeCubicField :=
  IsLocalization.map _ (T := nonZeroDivisors NativeIntegerClosure)
    (RingHom.id NativeIntegerClosure) (nativeSourcePrime j).primeCompl_le_nonZeroDivisors

instance nativeSourceLocal_fieldAlgebra (j : Fin 32) :
    Algebra (NativeSourceLocalRing j) NativeCubicField := (nativeSourceLocalToField j).toAlgebra

instance nativeSourceLocal_fieldTower (j : Fin 32) :
    IsScalarTower NativeIntegerClosure (NativeSourceLocalRing j) NativeCubicField :=
  IsScalarTower.of_algebraMap_eq' (by
    rw [RingHom.algebraMap_toAlgebra, nativeSourceLocalToField,
      IsLocalization.map_comp, RingHomCompTriple.comp_eq])

instance nativeSourceLocal_fractionField (j : Fin 32) :
    IsFractionRing (NativeSourceLocalRing j) NativeCubicField :=
  IsFractionRing.isFractionRing_of_isDomain_of_isLocalization
    (nativeSourcePrime j).primeCompl (NativeSourceLocalRing j) NativeCubicField

theorem nativeSourceLocal_squareClass_injective (j : Fin 32) :
    Function.Injective (unitSquareClassMap
      (algebraMap (NativeSourceLocalRing j) NativeCubicField)) :=
  normal_squareClassMap_injective (NativeSourceLocalRing j) NativeCubicField

theorem nativeSourceLocal_square_root_descends (j : Fin 32)
    (u : (NativeSourceLocalRing j)ˣ) (t : NativeCubicField)
    (ht : t^2 = algebraMap (NativeSourceLocalRing j) NativeCubicField (u : NativeSourceLocalRing j)) :
    ∃ v : (NativeSourceLocalRing j)ˣ, v^2=u ∧
      algebraMap (NativeSourceLocalRing j) NativeCubicField (v : NativeSourceLocalRing j)=t :=
  unit_square_root_descends (NativeSourceLocalRing j) NativeCubicField u t ht

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
