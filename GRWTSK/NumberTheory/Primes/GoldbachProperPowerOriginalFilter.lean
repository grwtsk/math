/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket
import Mathlib.Tactic

/-!
# Original proper-power packet: remove the outer filter

This is an exact finite indicator normalization of the original
dependent (n,p,k) sum. The subsequent supported-triple reindexing
is a separate obligation.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalFilter

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket

noncomputable section

/-- Replace the outer nonunit filter by an indicator at each n,
without changing the dependent prime-base and exponent ranges. -/
theorem originalPacketMass_eq_indicator_sum (q N : ℕ) :
    originalPacketMass q N =
      ∑ n ∈ Finset.range (N + 1),
        if ¬ IsUnit (n : ZMod q) then
          (∑ p ∈ Finset.range (n + 1),
            ∑ k ∈ Finset.Icc 2 n,
              if Nat.Prime p ∧ p ^ k = n then
                Real.log (p : ℝ)
              else 0)
        else 0 := by
  classical
  unfold originalPacketMass
  rw [Finset.sum_filter]

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalFilter
