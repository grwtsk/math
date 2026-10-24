/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
import Mathlib.Tactic

/-!
# Exact finite reindexing of nonunit proper prime powers

This changes the order of the existing finite sum, without claiming
uniqueness of prime-power representations or a logarithmic bound.
The nonunit predicate remains on the actual power p^k.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerReindex

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

noncomputable section

/-- A rectangular finite packet with the original arithmetic support.
The prime base and exponent ranges are deliberately larger than needed,
so the endpoint n=0 and n=1 are handled by the support predicate. -/
def rectangularProperPowerMass (q N : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (N + 1),
    ∑ k ∈ Finset.Icc 2 N,
      if Nat.Prime p ∧ p ^ k ≤ N ∧
          ¬ IsUnit ((p ^ k : ℕ) : ZMod q) then
        Real.log (p : ℝ)
      else 0

/-- The rectangular packet can be summed exponent-first. -/
theorem rectangularProperPowerMass_swap (q N : ℕ) :
    rectangularProperPowerMass q N =
      ∑ k ∈ Finset.Icc 2 N,
        ∑ p ∈ Finset.range (N + 1),
          if Nat.Prime p ∧ p ^ k ≤ N ∧
              ¬ IsUnit ((p ^ k : ℕ) : ZMod q) then
            Real.log (p : ℝ)
          else 0 := by
  unfold rectangularProperPowerMass
  exact Finset.sum_comm

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerReindex
