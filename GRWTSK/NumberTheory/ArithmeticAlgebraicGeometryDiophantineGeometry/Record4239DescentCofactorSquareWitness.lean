/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239DescentCofactorResidue
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegralOrderToCubicField

set_option autoImplicit false
noncomputable section

/-! Literal source-point cofactor square witness. No identification of the
cofactor with the derivative in global square classes is assumed.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def sourceShortY (i : Fin 32) : ℚ := 108 * (2 * pointY i + pointX i)

theorem sourceShortY_square (i : Fin 32) :
    sourceShortY i ^ 2 = (shortXInt i : ℚ)^3 +
      (shortA : ℚ)*(shortXInt i : ℚ)+(shortB : ℚ) := by
  rw [shortXInt_eq]
  exact shortEquation_of_record _ _ (points_on_record_model i)

theorem sourceShortY_ne_zero (i : Fin 32) : sourceShortY i ≠ 0 := by
  unfold sourceShortY
  exact mul_ne_zero (by norm_num) (noRationalVerticalTangency _ _ (points_on_record_model i))

theorem descentCofactor_field_image (i : Fin 32) :
    recordOrderToCubicField (sourceOrderDescentCofactor i) =
      (shortXInt i : NativeCubicField)^2+
      (shortXInt i : NativeCubicField)*nativeCubicRoot+nativeCubicRoot^2+
      (shortA : NativeCubicField) := by
  simp [sourceOrderDescentCofactor, recordOrderToCubicField_of,
    recordOrderToCubicField_root]

theorem descent_difference_cofactor_square (i : Fin 32) :
    recordOrderToCubicField (sourceOrderDifference i) *
      recordOrderToCubicField (sourceOrderDescentCofactor i) =
        (algebraMap ℚ NativeCubicField (sourceShortY i))^2 := by
  have hy := congrArg (algebraMap ℚ NativeCubicField) (sourceShortY_square i)
  simp only [map_pow, map_add, map_mul] at hy
  norm_cast at hy
  rw [sourceOrderDifference_field_image, descentCofactor_field_image]
  have hr := nativeCubicRoot_relation
  linear_combination -hr + hy.symm

/- Unit packaging and the actual local-to-global square-class comparison
remain separate obligations. This factorization supplies their nonzero
rational square witness, not BSD or an independence theorem. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
