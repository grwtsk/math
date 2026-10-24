/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport
import Mathlib.Tactic

/-!
# Original dependent proper-power packet

This module unfolds the original nonunit proper-power mass into the
actual finite (n,p,k) packet, preserving dependent ranges and all
multiplicities. It does not assume or claim the final reindexing.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

noncomputable section

/-- The original dependent packet, with the nonunit condition
retained at the represented integer n. -/
def originalPacketMass (q N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1) with
      ¬ IsUnit (n : ZMod q),
    ∑ p ∈ Finset.range (n + 1),
      ∑ k ∈ Finset.Icc 2 n,
        if Nat.Prime p ∧ p ^ k = n then
          Real.log (p : ℝ)
        else 0

/-- The existing nonunit proper-power mass is definitionally the
dependent (n,p,k) packet, with no extra hypotheses. -/
theorem nonunitProperPowerMass_eq_originalPacketMass (q N : ℕ) :
    nonunitProperPowerMass q N = originalPacketMass q N := by
  rfl

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket
