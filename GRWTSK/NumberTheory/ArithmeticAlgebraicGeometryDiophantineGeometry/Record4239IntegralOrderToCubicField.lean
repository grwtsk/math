/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239ConcreteCubicField
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegralOrderReduction

set_option autoImplicit false
noncomputable section

/-! Source integral-order map to the literal cubic field, retaining root
and every source numerator. Injectivity is a separate obligation; this
is not labeled an embedding. No field-to-finite-field reduction is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

lemma integralShortCubic_eval_nativeRoot :
    shortCubic.eval₂ (Int.castRingHom NativeCubicField) nativeCubicRoot = 0 := by
  simpa [shortCubic] using nativeCubicRoot_relation

def recordOrderToCubicField : RecordIntegralOrder →+* NativeCubicField :=
  AdjoinRoot.lift (Int.castRingHom NativeCubicField) nativeCubicRoot
    integralShortCubic_eval_nativeRoot

theorem recordOrderToCubicField_root :
    recordOrderToCubicField (AdjoinRoot.root shortCubic) = nativeCubicRoot := by
  exact AdjoinRoot.lift_root integralShortCubic_eval_nativeRoot

theorem recordOrderToCubicField_of (n : ℤ) :
    recordOrderToCubicField (AdjoinRoot.of shortCubic n) = (n : NativeCubicField) := by
  exact AdjoinRoot.lift_of integralShortCubic_eval_nativeRoot

theorem sourceOrderDifference_field_image (i : Fin 32) :
    recordOrderToCubicField (sourceOrderDifference i) =
      (shortXInt i : NativeCubicField) - nativeCubicRoot := by
  simp [sourceOrderDifference, recordOrderToCubicField_of, recordOrderToCubicField_root]

theorem sourceOrderDerivative_field_image :
    recordOrderToCubicField sourceOrderDerivative =
      3 * nativeCubicRoot ^ 2 + (shortA : NativeCubicField) := by
  simp [sourceOrderDerivative, recordOrderToCubicField_of, recordOrderToCubicField_root]

theorem sourceOrderDifference_matches_native_unit (i : Fin 32) :
    recordOrderToCubicField (sourceOrderDifference i) =
      (shortPointDifferenceUnit NativeCubicField nativeCubicRoot nativeCubicRoot_relation
        (nativeToShortPoint (nativePoint i)) : NativeCubicField) := by
  rw [sourceOrderDifference_field_image, native_source_difference_unit_value]
  simp

theorem sourceOrderLocalElement_field_image (j i : Fin 32) :
    recordOrderToCubicField (sourceOrderLocalElement j i) =
      if (shortXInt i - (rootLabel j : ℤ)) % (primeLabel j : ℤ) = 0
      then 3 * nativeCubicRoot ^ 2 + (shortA : NativeCubicField)
      else (shortXInt i : NativeCubicField) - nativeCubicRoot := by
  unfold sourceOrderLocalElement
  split_ifs <;> simp only [sourceOrderDerivative_field_image, sourceOrderDifference_field_image]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
