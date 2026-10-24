/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSupport
import Mathlib.Tactic

/-!
# Rectangular packet to finite supported-pair sum

The product-sum identity and the finite support filter remove
zero-weight terms without changing the nonunit logarithmic weight.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSum

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPacket

noncomputable section

/-- Exact finite rectangular packet expressed over supported pairs. -/
theorem rectangularProperPowerMass_eq_pair_sum (q N : ℕ) :
    rectangularProperPowerMass q N =
      ∑ t ∈ rectangularPairSupport N,
        if ¬ IsUnit ((t.1 ^ t.2 : ℕ) : ZMod q) then
          Real.log (t.1 : ℝ)
        else 0 := by
  classical
  rw [rectangularProperPowerMass_eq_packet_sum]
  unfold rectangularPairSupport
  rw [Finset.sum_filter]
  rw [Finset.sum_product]
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro k hk
  by_cases hs : Nat.Prime p ∧ p ^ k ≤ N
  · simp [packetWeight, hs]
  · simp [packetWeight, hs]

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSum
