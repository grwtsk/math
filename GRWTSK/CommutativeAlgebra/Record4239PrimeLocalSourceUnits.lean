/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.CommutativeAlgebra.Record4239IntegerClosurePrimeAbove
import Mathlib.RingTheory.Localization.AtPrime.Basic

set_option autoImplicit false
noncomputable section

/-! Actual localization at a prime above the source kernel.
All selected branch elements become units by exact contraction. This
neither identifies the upper residue field nor proves the exceptional
branch has the required global square class.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def nativeSourcePrime (j : Fin 32) : Ideal NativeIntegerClosure :=
  Classical.choose (exists_integerClosure_prime_above_source j)

instance nativeSourcePrime_isPrime (j : Fin 32) : (nativeSourcePrime j).IsPrime :=
  (Classical.choose_spec (exists_integerClosure_prime_above_source j)).1

theorem nativeSourcePrime_contraction (j : Fin 32) :
    (nativeSourcePrime j).comap recordOrderToIntegerClosure =
      RingHom.ker (recordOrderReduction j) :=
  (Classical.choose_spec (exists_integerClosure_prime_above_source j)).2

abbrev NativeSourceLocalRing (j : Fin 32) := Localization.AtPrime (nativeSourcePrime j)

theorem selected_source_not_mem_prime (j i : Fin 32) :
    recordOrderToIntegerClosure (sourceOrderLocalElement j i) ∉ nativeSourcePrime j := by
  intro h
  have hc : sourceOrderLocalElement j i ∈
      (nativeSourcePrime j).comap recordOrderToIntegerClosure := h
  rw [nativeSourcePrime_contraction] at hc
  exact sourceOrderLocalElement_reduction_ne_zero j i hc

theorem selected_source_isUnit_atPrime (j i : Fin 32) :
    IsUnit ((algebraMap NativeIntegerClosure (NativeSourceLocalRing j))
      (recordOrderToIntegerClosure (sourceOrderLocalElement j i))) := by
  apply (IsLocalization.AtPrime.isUnit_to_map_iff (NativeSourceLocalRing j)
    (nativeSourcePrime j) _).mpr
  exact selected_source_not_mem_prime j i

def nativePrimeLocalSourceUnit (j i : Fin 32) : (NativeSourceLocalRing j)ˣ :=
  (selected_source_isUnit_atPrime j i).unit

theorem nativePrimeLocalSourceUnit_value (j i : Fin 32) :
    (nativePrimeLocalSourceUnit j i : NativeSourceLocalRing j) =
      algebraMap NativeIntegerClosure (NativeSourceLocalRing j)
        (recordOrderToIntegerClosure (sourceOrderLocalElement j i)) :=
  (selected_source_isUnit_atPrime j i).unit_spec

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
