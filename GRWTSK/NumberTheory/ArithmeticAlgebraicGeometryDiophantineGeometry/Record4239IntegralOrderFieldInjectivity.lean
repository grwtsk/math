/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib monic polynomial divisibility retains upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegralOrderToCubicField

set_option autoImplicit false
noncomputable section

/-! Injectivity of the actual source order map by monic divisibility.
The integral and rational cubics retain their exact source identity.
No local valuation or character specialization is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
open Polynomial

theorem recordOrderToCubicField_mk (p : ℤ[X]) :
    recordOrderToCubicField (AdjoinRoot.mk shortCubic p) =
      AdjoinRoot.mk rationalShortCubic (p.map (Int.castRingHom ℚ)) := by
  unfold recordOrderToCubicField
  rw [AdjoinRoot.lift_mk]
  simpa [nativeCubicRoot, Polynomial.aeval_def] using
    (AdjoinRoot.aeval_eq_of_algebra rationalShortCubic p)

theorem recordOrderToCubicField_injective : Function.Injective recordOrderToCubicField := by
  rw [injective_iff_map_eq_zero]
  intro x hx
  induction x using AdjoinRoot.induction_on with
  | ih p =>
    have hm : AdjoinRoot.mk rationalShortCubic (p.map (Int.castRingHom ℚ)) = 0 := by
      rw [← recordOrderToCubicField_mk]
      exact hx
    have hd : rationalShortCubic ∣ p.map (Int.castRingHom ℚ) :=
      AdjoinRoot.mk_eq_zero.mp hm
    have hi : Function.Injective (Int.castRingHom ℚ) := Int.cast_injective
    have hz : shortCubic ∣ p := by
      apply (Polynomial.map_dvd_map (Int.castRingHom ℚ) hi shortCubic_monic).mp
      rw [← rationalShortCubic_source_map]
      exact hd
    exact AdjoinRoot.mk_eq_zero.mpr hz

theorem sourceOrderLocalElement_field_ne_zero (j i : Fin 32) :
    recordOrderToCubicField (sourceOrderLocalElement j i) ≠ 0 := by
  intro h
  have hz : sourceOrderLocalElement j i = 0 :=
    recordOrderToCubicField_injective (h.trans (map_zero recordOrderToCubicField).symm)
  apply sourceOrderLocalElement_reduction_ne_zero j i
  rw [hz, map_zero]

def sourceLocalFieldUnit (j i : Fin 32) : NativeCubicFieldˣ :=
  Units.mk0 (recordOrderToCubicField (sourceOrderLocalElement j i))
    (sourceOrderLocalElement_field_ne_zero j i)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
