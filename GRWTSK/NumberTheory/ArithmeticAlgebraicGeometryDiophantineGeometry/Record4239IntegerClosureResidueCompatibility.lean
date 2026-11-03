/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239ConcreteIntegerClosure
import Mathlib.RingTheory.Ideal.Maps

set_option autoImplicit false
noncomputable section

/-! Source-compatible residue specialization of the concrete integer closure.
The map rho and its root identity are explicit premises: existence is NOT
claimed. These candidates identify exactly which residue prime is needed,
and transport all selected source elements without changing their branches.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem integerClosure_residue_compat_of_root (j : Fin 32)
    (rho : NativeIntegerClosure →+* ZMod (primeLabel j))
    (hroot : rho nativeIntegralRoot = (rootLabel j : ZMod (primeLabel j))) :
    rho.comp recordOrderToIntegerClosure = recordOrderReduction j := by
  apply AdjoinRoot.ringHom_ext
  · ext n
    simp [recordOrderToIntegerClosure, recordOrderReduction]
  · simpa [recordOrderToIntegerClosure, recordOrderReduction] using hroot

theorem integerClosure_residue_source_value (j i : Fin 32)
    (rho : NativeIntegerClosure →+* ZMod (primeLabel j))
    (hroot : rho nativeIntegralRoot = (rootLabel j : ZMod (primeLabel j))) :
    rho (recordOrderToIntegerClosure (sourceOrderLocalElement j i)) =
      (sourceLocalInteger j i : ZMod (primeLabel j)) := by
  have h := congrArg (fun f : RecordIntegralOrder →+* ZMod (primeLabel j) =>
    f (sourceOrderLocalElement j i)) (integerClosure_residue_compat_of_root j rho hroot)
  exact h.trans (sourceOrderLocalElement_reduction j i)

theorem integerClosure_residue_source_nonzero (j i : Fin 32)
    (rho : NativeIntegerClosure →+* ZMod (primeLabel j))
    (hroot : rho nativeIntegralRoot = (rootLabel j : ZMod (primeLabel j))) :
    rho (recordOrderToIntegerClosure (sourceOrderLocalElement j i)) ≠ 0 := by
  rw [integerClosure_residue_source_value j i rho hroot]
  exact sourceLocalInteger_cast_ne_zero j i

theorem integerClosure_residue_kernel_contraction (j : Fin 32)
    (rho : NativeIntegerClosure →+* ZMod (primeLabel j))
    (hroot : rho nativeIntegralRoot = (rootLabel j : ZMod (primeLabel j))) :
    (RingHom.ker rho).comap recordOrderToIntegerClosure =
      RingHom.ker (recordOrderReduction j) := by
  rw [RingHom.comap_ker, integerClosure_residue_compat_of_root j rho hroot]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
