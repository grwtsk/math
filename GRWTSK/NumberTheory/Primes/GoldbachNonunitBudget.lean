/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit
import Mathlib.Tactic

/-!
# Elementary nonunit prime-power mass budget

Use real-valued weights for inequalities; the complex character
interfaces remain separate. No PNT, character cancellation or
zero-free region is assumed.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

noncomputable section

/-- The full finite prime-power weight is nonnegative. -/
theorem primePowerWeight_nonneg (n : ℕ) :
    0 ≤ primePowerWeight n := by
  unfold primePowerWeight
  exact add_nonneg (primeLogWeight_nonneg n)
    (properPrimePowerWeight_nonneg n)

/-- Real nonunit prime-power mass, for a meaningful order comparison. -/
def nonunitPsiMass (q N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1) with
    ¬ IsUnit (n : ZMod q), primePowerWeight n

/-- Real full prime-power mass through the inclusive cutoff. -/
def totalPsiMass (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1), primePowerWeight n

/-- Nonunit mass is nonnegative. -/
theorem nonunitPsiMass_nonneg (q N : ℕ) :
    0 ≤ nonunitPsiMass q N := by
  unfold nonunitPsiMass
  exact Finset.sum_nonneg (fun n hn => primePowerWeight_nonneg n)

/-- Dropping the nonunit restriction bounds its mass by the full mass. -/
theorem nonunitPsiMass_le_total (q N : ℕ) :
    nonunitPsiMass q N ≤ totalPsiMass N := by
  unfold nonunitPsiMass totalPsiMass
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (Finset.filter_subset _ _)
    (fun n hn hnot => primePowerWeight_nonneg n)

end
end GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget
