/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget
import Mathlib.Tactic

/-!
# Nonunit prime and proper-prime-power separation

This source-level lemma splits the nonunit correction into prime and
proper-prime-power components, without replacing either component by
an unproved modulus-sensitive bound.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget

noncomputable section

/-- Prime-only contribution supported on nonunit residues. -/
def nonunitPrimeMass (q N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1) with
    ¬ IsUnit (n : ZMod q), primeLogWeight n

/-- Proper-prime-power contribution supported on nonunit residues. -/
def nonunitProperPowerMass (q N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1) with
    ¬ IsUnit (n : ZMod q), properPrimePowerWeight n

/-- Exact decomposition of the nonunit mass into prime and proper-power
components, with no cancellation or asymptotic estimate. -/
theorem nonunitPsiMass_eq_prime_add_proper (q N : ℕ) :
    nonunitPsiMass q N =
      nonunitPrimeMass q N + nonunitProperPowerMass q N := by
  unfold nonunitPsiMass nonunitPrimeMass nonunitProperPowerMass
  simp only [primePowerWeight, Finset.sum_add_distrib]

/-- Both contributions are nonnegative. -/
theorem nonunitPrimeMass_nonneg (q N : ℕ) :
    0 ≤ nonunitPrimeMass q N := by
  unfold nonunitPrimeMass
  exact Finset.sum_nonneg (fun n _ => primeLogWeight_nonneg n)

theorem nonunitProperPowerMass_nonneg (q N : ℕ) :
    0 ≤ nonunitProperPowerMass q N := by
  unfold nonunitProperPowerMass
  exact Finset.sum_nonneg (fun n _ => properPrimePowerWeight_nonneg n)

end
end GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
