/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239DescentCofactorSquareWitness
import GRWTSK.CommutativeAlgebra.Record4239GlobalSquareClassSecantLaw

set_option autoImplicit false
noncomputable section

/-! Actual cofactor unit and global class comparison. The local exceptional
residue is retained in DescentCofactorResidue; the global derivative class
is never substituted. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem sourceShortY_field_ne_zero (i : Fin 32) :
    algebraMap ℚ NativeCubicField (sourceShortY i) ≠ 0 := by
  intro h
  apply sourceShortY_ne_zero i
  apply (algebraMap ℚ NativeCubicField).injective
  simpa using h

theorem descent_difference_field_ne_zero (i : Fin 32) :
    recordOrderToCubicField (sourceOrderDifference i) ≠ 0 := by
  intro h
  have hs := descent_difference_cofactor_square i
  rw [h,zero_mul] at hs
  exact pow_ne_zero 2 (sourceShortY_field_ne_zero i) hs.symm

theorem descent_cofactor_field_ne_zero (i : Fin 32) :
    recordOrderToCubicField (sourceOrderDescentCofactor i) ≠ 0 := by
  intro h
  have hs := descent_difference_cofactor_square i
  rw [h,mul_zero] at hs
  exact pow_ne_zero 2 (sourceShortY_field_ne_zero i) hs.symm

def descentDifferenceUnit (i : Fin 32) : NativeCubicFieldˣ :=
  Units.mk0 _ (descent_difference_field_ne_zero i)
def descentCofactorUnit (i : Fin 32) : NativeCubicFieldˣ :=
  Units.mk0 _ (descent_cofactor_field_ne_zero i)
def descentSquareWitnessUnit (i : Fin 32) : NativeCubicFieldˣ :=
  Units.mk0 _ (sourceShortY_field_ne_zero i)

theorem descent_units_product_square (i : Fin 32) :
    descentDifferenceUnit i * descentCofactorUnit i = descentSquareWitnessUnit i ^ 2 := by
  apply Units.ext
  exact descent_difference_cofactor_square i

theorem descent_cofactor_same_global_class (i : Fin 32) :
    (QuotientGroup.mk' (powMonoidHom (α := NativeCubicFieldˣ) 2).range)
      (descentDifferenceUnit i) =
    (QuotientGroup.mk' (powMonoidHom (α := NativeCubicFieldˣ) 2).range)
      (descentCofactorUnit i) := by
  have h := squareClass_pair_eq_of_triple_square NativeCubicField
    (descentDifferenceUnit i) 1 (descentCofactorUnit i) (descentSquareWitnessUnit i)
    (by simpa using descent_units_product_square i)
  simpa using h

/- Remaining: assemble the corresponding actual Hensel-local unit and its
character comparison, then SourceBitsMatch. No rank or BSD claim follows. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
