/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib localization and unit maps retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegralOrderFieldInjectivity
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239FiniteSourceLocalization

set_option autoImplicit false
noncomputable section

/-! Extend the exact source localization to the literal cubic field.
The finite product and branch units are preserved. A field square-class
identity is not reflected to local square classes by this construction.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem sourceLocalizingProduct_field_ne_zero (j : Fin 32) :
    recordOrderToCubicField (sourceLocalizingProduct j) ≠ 0 := by
  intro h
  apply sourceLocalizingProduct_ne_zero j
  exact recordOrderToCubicField_injective (h.trans (map_zero recordOrderToCubicField).symm)

def sourceLocalizationToCubicField (j : Fin 32) : SourceLocalRing j →+* NativeCubicField :=
  IsLocalization.Away.lift (S := SourceLocalRing j) (g := recordOrderToCubicField)
    (sourceLocalizingProduct j) (isUnit_iff_ne_zero.mpr (sourceLocalizingProduct_field_ne_zero j))

theorem sourceLocalizationToCubicField_algebraMap (j : Fin 32) (x : RecordIntegralOrder) :
    sourceLocalizationToCubicField j (algebraMap RecordIntegralOrder (SourceLocalRing j) x) =
      recordOrderToCubicField x := by
  simp [sourceLocalizationToCubicField, IsLocalization.Away.lift_eq]

theorem sourceLocalizationToCubicField_injective (j : Fin 32) :
    Function.Injective (sourceLocalizationToCubicField j) := by
  apply (IsLocalization.injective_iff_map_algebraMap_eq
    (Submonoid.powers (sourceLocalizingProduct j)) (sourceLocalizationToCubicField j)).mpr
  intro x y
  constructor
  · intro h
    exact congrArg (sourceLocalizationToCubicField j) h
  · intro h
    rw [sourceLocalizationToCubicField_algebraMap, sourceLocalizationToCubicField_algebraMap] at h
    exact congrArg (algebraMap RecordIntegralOrder (SourceLocalRing j))
      (recordOrderToCubicField_injective h)

theorem sourceLocalizedUnit_field_map (j i : Fin 32) :
    Units.map (sourceLocalizationToCubicField j).toMonoidHom (sourceLocalizedUnit j i) =
      sourceLocalFieldUnit j i := by
  apply Units.ext
  change sourceLocalizationToCubicField j (sourceLocalizedUnit j i : SourceLocalRing j) = _
  rw [sourceLocalizedUnit_coe, sourceLocalizationToCubicField_algebraMap]
  rfl

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
