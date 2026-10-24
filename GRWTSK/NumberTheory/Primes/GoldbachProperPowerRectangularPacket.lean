/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularNormalization
import Mathlib.Tactic

/-!
# Finite rectangular proper-power packet normalization

The exact rectangular packet is an indicator-weighted sum over the
finite product range. This module records its support as a predicate
on pairs and proves the indicator agrees with the original summand.
The final subtype-sum equality remains a separate Finset normalization.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPacket

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerReindex

noncomputable section

/-- A finite rectangular summand with the original prime and power cutoff. -/
def packetWeight (q N p k : ℕ) : ℝ :=
  if Nat.Prime p ∧ p ^ k ≤ N ∧
      ¬ IsUnit ((p ^ k : ℕ) : ZMod q) then
    Real.log (p : ℝ)
  else 0

/-- The rectangular packet is exactly the sum of its finite summands. -/
theorem rectangularProperPowerMass_eq_packet_sum (q N : ℕ) :
    rectangularProperPowerMass q N =
      ∑ p ∈ Finset.range (N + 1),
        ∑ k ∈ Finset.Icc 2 N, packetWeight q N p k := by
  rfl

/-- For supported pairs, the rectangular packet weight reduces to
the nonunit prime-logarithmic term. -/
theorem packetWeight_of_support (q N p k : ℕ)
    (h : RectangularSupport N p k) :
    packetWeight q N p k =
      if ¬ IsUnit ((p ^ k : ℕ) : ZMod q) then
        Real.log (p : ℝ)
      else 0 := by
  rcases h with ⟨hpN, hk2, hkN, hp, hpow⟩
  simp [packetWeight, hp, hpow]

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPacket
