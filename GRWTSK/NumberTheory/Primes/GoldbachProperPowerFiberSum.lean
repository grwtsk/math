/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairSum

/-!
# Original dependent packet as a sum over fixed-n prime-power fibers

Composes the original indicator normalization with the exact fixed-n
filtered pair-sum identity. No global reindexing or asymptotic claim.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSum

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalIndicator
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairSum

/-- The original packet is exactly a finite sum of fixed-n filtered
prime-power fibers, retaining all pairs and nonunit conditions. -/
theorem originalPacketMass_eq_fiber_sum (q N : ℕ) :
    originalPacketMass q N =
      ∑ n ∈ Finset.range (N + 1),
        ∑ t ∈ pairSupportAt n,
          if ¬ IsUnit (n : ZMod q) then
            Real.log (t.1 : ℝ)
          else 0 := by
  rw [originalPacketMass_eq_inner_indicator]
  apply Finset.sum_congr rfl
  intro n hn
  exact nested_eq_pairSupport_sum q n

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSum
