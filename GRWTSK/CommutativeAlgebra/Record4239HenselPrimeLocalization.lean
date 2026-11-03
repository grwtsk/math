/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.Record4239HenselSourceReduction
import Mathlib.RingTheory.Localization.AtPrime.Basic

set_option autoImplicit false
noncomputable section

/-! Specified Hensel-kernel localization and actual labelled residue map.
No equality to the earlier arbitrary lying-over prime is used.
Exceptional global square-class identification remains open. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

def henselSourcePrime : Ideal NativeIntegerClosure := RingHom.ker (henselIntegerClosureReduction j)
instance henselSourcePrime_isPrime : (henselSourcePrime j).IsPrime :=
  RingHom.ker_isPrime (henselIntegerClosureReduction j)

abbrev HenselSourceLocalRing := Localization.AtPrime (henselSourcePrime j)

instance henselSourceLocal_normal : IsIntegrallyClosed (HenselSourceLocalRing j) :=
  isIntegrallyClosed_of_isLocalization (HenselSourceLocalRing j)
    (henselSourcePrime j).primeCompl (henselSourcePrime j).primeCompl_le_nonZeroDivisors

def henselSourceLocalReduction : HenselSourceLocalRing j →+* ZMod (primeLabel j) :=
  IsLocalization.lift (M := (henselSourcePrime j).primeCompl)
    (S := HenselSourceLocalRing j) (g := henselIntegerClosureReduction j)
    (fun u => isUnit_iff_ne_zero.mpr u.property)

theorem henselSourceLocalReduction_algebraMap (x : NativeIntegerClosure) :
    henselSourceLocalReduction j (algebraMap NativeIntegerClosure (HenselSourceLocalRing j) x) =
      henselIntegerClosureReduction j x := by
  simp [henselSourceLocalReduction, IsLocalization.lift_eq]

theorem henselSourceLocal_source_value (i : Fin 32) :
    henselSourceLocalReduction j (algebraMap NativeIntegerClosure (HenselSourceLocalRing j)
      (recordOrderToIntegerClosure (sourceOrderLocalElement j i))) =
        (sourceLocalInteger j i : ZMod (primeLabel j)) := by
  rw [henselSourceLocalReduction_algebraMap, hensel_reduction_source_value]

theorem henselSourceLocal_source_isUnit (i : Fin 32) :
    IsUnit (algebraMap NativeIntegerClosure (HenselSourceLocalRing j)
      (recordOrderToIntegerClosure (sourceOrderLocalElement j i))) := by
  apply (IsLocalization.AtPrime.isUnit_to_map_iff (HenselSourceLocalRing j)
    (henselSourcePrime j) _).mpr
  change henselIntegerClosureReduction j (recordOrderToIntegerClosure (sourceOrderLocalElement j i)) ≠ 0
  rw [hensel_reduction_source_value]
  exact sourceLocalInteger_cast_ne_zero j i
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
