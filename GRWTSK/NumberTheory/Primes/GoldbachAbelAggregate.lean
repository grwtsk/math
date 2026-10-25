/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachAbelErrorBudget
import GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
import Mathlib.Tactic

/-!
# Conditional aggregate Goldbach error from cumulative residue budgets

All residue bounds are hypotheses; no prime cancellation is established.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachAbelAggregate

open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.FiniteAbelTransfer
open GRWTSK.NumberTheory.Primes.GoldbachAbelDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachAbelErrorBudget
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer

noncomputable section

/-- The finite frequency-sensitive bound for one residue channel. -/
def residueBudget (N q r : ℕ) (β : ℝ) (E : ℕ → ℕ → ℝ) : ℝ :=
  E r N * ‖unitCharacter (N : ℤ) β‖ +
    ∑ n ∈ Finset.range N,
      E r n * ‖unitCharacter (n : ℤ) β -
        unitCharacter ((n + 1 : ℕ) : ℤ) β‖

/-- Supplied cumulative bounds in all residue channels imply a bound
for the phase-weighted progression discrepancy. -/
theorem norm_progression_discrepancy_le_of_prefix_bounds
    (N a q : ℕ) (β : ℝ) (E : ℕ → ℕ → ℝ)
    (hE : ∀ r ∈ Finset.range q, ∀ n ∈ Finset.range (N + 1),
      ‖prefix (residueCoefficient q r) n‖ ≤ E r n) :
    ‖goldbachProgressionExponentialDiscrepancy N a q β‖ ≤
      ∑ r ∈ Finset.range q, residueBudget N q r β E := by
  apply norm_goldbachProgressionExponentialDiscrepancy_le
    (residueError := fun r => residueBudget N q r β E)
  intro r hr
  exact norm_discrepancy_le_of_prefix_bounds N q r β (E r)
    (hE r hr)

/-- The same supplied bounds propagate to the quadratic circle residual,
with the original norm budget and no cancellation assumption. -/
theorem norm_circle_residual_le_of_prefix_bounds
    (N a q : ℕ) (hq : 0 < q) (β : ℝ) (E : ℕ → ℕ → ℝ)
    (hE : ∀ r ∈ Finset.range q, ∀ n ∈ Finset.range (N + 1),
      ‖prefix (residueCoefficient q r) n‖ ≤ E r n) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      (∑ r ∈ Finset.range q, residueBudget N q r β E) *
        (goldbachPrimeLogTotal N + (N + 1 : ℝ)) := by
  apply norm_goldbachCenteredProgressionCircleResidual_le_of_residue hq
    (residueError := fun r => residueBudget N q r β E)
  intro r hr
  exact norm_discrepancy_le_of_prefix_bounds N q r β (E r)
    (hE r hr)

end
end GRWTSK.NumberTheory.Primes.GoldbachAbelAggregate
