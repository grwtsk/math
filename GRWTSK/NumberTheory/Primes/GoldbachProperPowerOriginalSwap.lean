/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalIndicator
import Mathlib.Tactic

/-!
# Exponent-first normalization of the original proper-power packet

Swap the two inner finite sums at fixed represented integer n.
The dependent n range, nonunit condition, and prime-power equality
are unchanged. This is not the final n-to-(p,k) reindexing.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalSwap

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalIndicator

noncomputable section

/-- The prime-base and exponent sums commute at each fixed n. -/
theorem originalPacketMass_eq_exponent_first (q N : ℕ) :
    originalPacketMass q N =
      ∑ n ∈ Finset.range (N + 1),
        ∑ k ∈ Finset.Icc 2 n,
          ∑ p ∈ Finset.range (n + 1),
            if ¬ IsUnit (n : ZMod q) ∧ Nat.Prime p ∧ p ^ k = n then
              Real.log (p : ℝ)
            else 0 := by
  rw [originalPacketMass_eq_inner_indicator]
  apply Finset.sum_congr rfl
  intro n hn
  exact Finset.sum_comm

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalSwap
