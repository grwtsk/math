/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegerClosurePadicRestriction
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegerClosureResidueCompatibility
import Mathlib.NumberTheory.Padics.RingHoms

set_option autoImplicit false
noncomputable section

/-! Concrete source-compatible reduction obtained from the actual Hensel root.
This defines a specified prime choice; equality to an earlier arbitrary
lying-over choice is not asserted. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

theorem nativePadicRoot_source_reduction :
    PadicInt.toZMod (nativePadicRoot j) = (rootLabel j : ZMod (primeLabel j)) := by
  have hd := (PadicInt.norm_lt_one_iff_dvd
    (nativePadicRoot j-(rootLabel j : ℤ_[primeLabel j]))).mp (nativePadicRoot_close j)
  have hm : nativePadicRoot j-(rootLabel j : ℤ_[primeLabel j]) ∈
      IsLocalRing.maximalIdeal ℤ_[primeLabel j] := by
    rw [PadicInt.maximalIdeal_eq_span_p, Ideal.mem_span_singleton]
    exact hd
  have hz : PadicInt.toZMod (nativePadicRoot j-(rootLabel j : ℤ_[primeLabel j]))=0 := by
    change nativePadicRoot j-(rootLabel j : ℤ_[primeLabel j]) ∈ RingHom.ker PadicInt.toZMod
    rw [PadicInt.ker_toZMod]
    exact hm
  simpa only [map_sub, map_natCast, sub_eq_zero] using hz

def henselIntegerClosureReduction : NativeIntegerClosure →+* ZMod (primeLabel j) :=
  PadicInt.toZMod.comp (integerClosureToPadicInt j)

theorem henselIntegerClosureReduction_root :
    henselIntegerClosureReduction j nativeIntegralRoot = (rootLabel j : ZMod (primeLabel j)) := by
  change PadicInt.toZMod (integerClosureToPadicInt j nativeIntegralRoot) = _
  rw [integerClosureToPadicInt_root, nativePadicRoot_source_reduction]

theorem hensel_reduction_source_order_compat :
    (henselIntegerClosureReduction j).comp recordOrderToIntegerClosure = recordOrderReduction j :=
  integerClosure_residue_compat_of_root j (henselIntegerClosureReduction j)
    (henselIntegerClosureReduction_root j)

theorem hensel_reduction_source_value (i : Fin 32) :
    henselIntegerClosureReduction j (recordOrderToIntegerClosure (sourceOrderLocalElement j i)) =
      (sourceLocalInteger j i : ZMod (primeLabel j)) :=
  integerClosure_residue_source_value j i (henselIntegerClosureReduction j)
    (henselIntegerClosureReduction_root j)

theorem hensel_reduction_kernel_contraction :
    (RingHom.ker (henselIntegerClosureReduction j)).comap recordOrderToIntegerClosure =
      RingHom.ker (recordOrderReduction j) :=
  integerClosure_residue_kernel_contraction j (henselIntegerClosureReduction j)
    (henselIntegerClosureReduction_root j)
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
