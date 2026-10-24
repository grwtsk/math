/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPacket
import Mathlib.Tactic

/-!
# Finite rectangular packet: support filter normalization

This separates the prime/power support from the nonunit indicator.
The result is an exact equality of finite rectangular sums, not yet
an equality with a subtype-indexed sum.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPacketFilter

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPacket

noncomputable section

/-- Only prime bases whose powers lie below N contribute to the
rectangular packet, before imposing the nonunit condition. -/
theorem rectangularProperPowerMass_eq_filtered_packet (q N : ℕ) :
    rectangularProperPowerMass q N =
      ∑ p ∈ Finset.range (N + 1),
        ∑ k ∈ (Finset.Icc 2 N).filter
          (fun k => Nat.Prime p ∧ p ^ k ≤ N),
          (if ¬ IsUnit ((p ^ k : ℕ) : ZMod q) then
            Real.log (p : ℝ) else 0) := by
  rw [rectangularProperPowerMass_eq_packet_sum]
  apply Finset.sum_congr rfl
  intro p hp
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro k hk
  unfold packetWeight
  split_ifs <;> simp_all

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPacketFilter
