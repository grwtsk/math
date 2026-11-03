/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegralOrderReduction

set_option autoImplicit false
noncomputable section

/-! An exceptional cofactor with the source derivative residue.
This is a NEW representative, not an equality to the old derivative
in global square classes. The native point factor-square bridge remains
separate. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def sourceOrderDescentCofactor (i : Fin 32) : RecordIntegralOrder :=
  (AdjoinRoot.of shortCubic (shortXInt i))^2+
    AdjoinRoot.of shortCubic (shortXInt i)*AdjoinRoot.root shortCubic+
    (AdjoinRoot.root shortCubic)^2+AdjoinRoot.of shortCubic shortA

theorem sourceOrderDescentCofactor_reduction (j i : Fin 32) :
    recordOrderReduction j (sourceOrderDescentCofactor i) =
      ((shortXInt i : ZMod (primeLabel j))^2+
        (shortXInt i : ZMod (primeLabel j))*(rootLabel j : ZMod (primeLabel j))+
        (rootLabel j : ZMod (primeLabel j))^2+(shortA : ZMod (primeLabel j))) := by
  simp [sourceOrderDescentCofactor, recordOrderReduction_of, recordOrderReduction_root]

theorem exceptional_cofactor_has_derivative_residue (j i : Fin 32)
    (h : (shortXInt i-(rootLabel j : ℤ)) % (primeLabel j : ℤ)=0) :
    recordOrderReduction j (sourceOrderDescentCofactor i) =
      recordOrderReduction j sourceOrderDerivative := by
  have hd : (primeLabel j : ℤ) ∣ shortXInt i-(rootLabel j : ℤ) := Int.dvd_of_emod_eq_zero h
  have hz : ((shortXInt i-(rootLabel j : ℤ) : ℤ) : ZMod (primeLabel j))=0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mpr hd
  have hx : (shortXInt i : ZMod (primeLabel j))=(rootLabel j : ZMod (primeLabel j)) := by
    simpa only [Int.cast_sub, Int.cast_natCast, sub_eq_zero] using hz
  rw [sourceOrderDescentCofactor_reduction, sourceOrderDerivative_reduction]
  push_cast
  rw [hx]
  ring

def sourceOrderDescentRepresentative (j i : Fin 32) : RecordIntegralOrder :=
  if (shortXInt i-(rootLabel j : ℤ)) % (primeLabel j : ℤ)=0
  then sourceOrderDescentCofactor i else sourceOrderDifference i

theorem descentRepresentative_same_source_residue (j i : Fin 32) :
    recordOrderReduction j (sourceOrderDescentRepresentative j i) =
      (sourceLocalInteger j i : ZMod (primeLabel j)) := by
  unfold sourceOrderDescentRepresentative
  split_ifs with h
  · rw [exceptional_cofactor_has_derivative_residue j i h]
    simpa [sourceOrderLocalElement,h] using sourceOrderLocalElement_reduction j i
  · simpa [sourceOrderLocalElement,h] using sourceOrderLocalElement_reduction j i

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
