/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.Record4239HenselPrimeLocalization
import Mathlib.RingTheory.Localization.LocalizationLocalization

set_option autoImplicit false
noncomputable section

/-! Literal native fraction field and quadratic character at the specified
Hensel prime. Exceptional point-class compatibility is not inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

def henselLocalToNativeField : HenselSourceLocalRing j →+* NativeCubicField :=
  IsLocalization.map _ (T := nonZeroDivisors NativeIntegerClosure)
    (RingHom.id NativeIntegerClosure) (henselSourcePrime j).primeCompl_le_nonZeroDivisors

instance henselLocal_fieldAlgebra : Algebra (HenselSourceLocalRing j) NativeCubicField :=
  (henselLocalToNativeField j).toAlgebra

instance henselLocal_fieldTower :
    IsScalarTower NativeIntegerClosure (HenselSourceLocalRing j) NativeCubicField :=
  IsScalarTower.of_algebraMap_eq' (by
    rw [RingHom.algebraMap_toAlgebra, henselLocalToNativeField,
      IsLocalization.map_comp, RingHomCompTriple.comp_eq])

instance henselLocal_fractionField : IsFractionRing (HenselSourceLocalRing j) NativeCubicField :=
  IsFractionRing.isFractionRing_of_isDomain_of_isLocalization
    (henselSourcePrime j).primeCompl (HenselSourceLocalRing j) NativeCubicField

theorem henselLocal_squareClass_injective :
    Function.Injective (unitSquareClassMap (algebraMap (HenselSourceLocalRing j) NativeCubicField)) :=
  normal_squareClassMap_injective (HenselSourceLocalRing j) NativeCubicField

def henselLocalUnitCharacter :
    UnitSquareClasses (HenselSourceLocalRing j) →* Multiplicative (ZMod 2) :=
  localUnitClassCharacter (primeLabel j) (henselSourceLocalReduction j)

def henselSourceSelectedUnit (i : Fin 32) : (HenselSourceLocalRing j)ˣ :=
  (henselSourceLocal_source_isUnit j i).unit

theorem henselSourceSelectedUnit_residue (i : Fin 32) :
    henselSourceLocalReduction j (henselSourceSelectedUnit j i : HenselSourceLocalRing j) =
      (sourceLocalInteger j i : ZMod (primeLabel j)) := by
  change henselSourceLocalReduction j ((henselSourceLocal_source_isUnit j i).unit : HenselSourceLocalRing j) = _
  rw [(henselSourceLocal_source_isUnit j i).unit_spec]
  exact henselSourceLocal_source_value j i

theorem henselLocalUnitCharacter_representative (u : (HenselSourceLocalRing j)ˣ) :
    henselLocalUnitCharacter j
      ((QuotientGroup.mk' (powMonoidHom (α := (HenselSourceLocalRing j)ˣ) 2).range) u) =
      residueUnitBitHom (primeLabel j) (Units.map (henselSourceLocalReduction j).toMonoidHom u) :=
  localUnitClassCharacter_mk (primeLabel j) (henselSourceLocalReduction j) u
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
