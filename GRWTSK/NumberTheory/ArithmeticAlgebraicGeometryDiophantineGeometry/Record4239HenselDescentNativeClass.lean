/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239HenselDescentRepresentativeUnit

set_option autoImplicit false
noncomputable section

/-! Actual Hensel-local representative mapped to the native point's global
square class. The exceptional branch uses the cofactor, never an assumed
global derivative-class identity. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

theorem hensel_descent_unit_field_image (i : Fin 32) :
    Units.map (algebraMap (HenselSourceLocalRing j) NativeCubicField).toMonoidHom
      (henselDescentRepresentativeUnit j i) =
      if (shortXInt i-(rootLabel j : ℤ)) % (primeLabel j : ℤ)=0
      then descentCofactorUnit i else descentDifferenceUnit i := by
  apply Units.ext
  change algebraMap (HenselSourceLocalRing j) NativeCubicField
    (henselDescentRepresentativeUnit j i : HenselSourceLocalRing j) = _
  rw [henselDescentRepresentativeUnit,(henselDescentRepresentative_isUnit j i).unit_spec]
  unfold henselDescentRepresentativeValue
  rw [← IsScalarTower.algebraMap_apply]
  change ((algebraMap NativeIntegerClosure NativeCubicField).comp
    recordOrderToIntegerClosure) (sourceOrderDescentRepresentative j i) = _
  rw [integerClosure_order_map_field_compat]
  unfold sourceOrderDescentRepresentative
  split_ifs <;> rfl

theorem descentDifferenceUnit_native (i : Fin 32) :
    descentDifferenceUnit i = shortPointDifferenceUnit NativeCubicField
      nativeCubicRoot nativeCubicRoot_relation (nativeToShortPoint (nativePoint i)) := by
  apply Units.ext
  exact sourceOrderDifference_matches_native_unit i

theorem hensel_descent_native_global_class (i : Fin 32) :
    (QuotientGroup.mk' (powMonoidHom (α := NativeCubicFieldˣ) 2).range)
      (Units.map (algebraMap (HenselSourceLocalRing j) NativeCubicField).toMonoidHom
        (henselDescentRepresentativeUnit j i)) =
      nativeSquareClassValue NativeCubicField nativeCubicRoot nativeCubicRoot_relation
        (nativePoint i) := by
  have hd : (QuotientGroup.mk' (powMonoidHom (α := NativeCubicFieldˣ) 2).range)
      (descentDifferenceUnit i) =
      nativeSquareClassValue NativeCubicField nativeCubicRoot nativeCubicRoot_relation
        (nativePoint i) := by
    rw [descentDifferenceUnit_native]
    rfl
  rw [hensel_descent_unit_field_image]
  split_ifs
  · exact (descent_cofactor_same_global_class i).symm.trans hd
  · exact hd
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
