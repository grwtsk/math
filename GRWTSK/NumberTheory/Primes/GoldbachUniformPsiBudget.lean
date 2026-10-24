/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachPsiCircleTransfer
import Mathlib.Tactic

/-!
# Finite uniform psi budgets for Goldbach circle errors

This result consumes a uniform finite bound for every residue and cutoff.
It does not construct such a bound, nor identify the source weight with
Mathlib's von Mangoldt function. No asymptotic or RH claim.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachUniformPsiBudget

open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachPsiCircleTransfer
open GRWTSK.NumberTheory.Primes.GoldbachAbelAggregate
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel

noncomputable section

/-- Uniform finite upper bound on all prime-power weighted progression
errors and all proper-prime-power corrections. -/
theorem norm_circle_residual_le_of_uniform_psi_bounds
    (N a q : ℕ) (hq : 0 < q) (β : ℝ)
    (M : ℕ → ℕ → ℂ) (E C : ℝ)
    (hpsi : ∀ r ∈ Finset.range q, ∀ n ∈ Finset.range (N + 1),
      ‖(finitePsiResidue n q r : ℂ) - M r n‖ ≤ E)
    (hcorr : ∀ r ∈ Finset.range q, ∀ n ∈ Finset.range (N + 1),
      finiteProperPrimePowerCorrection n q r ≤ C) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      (∑ r ∈ Finset.range q,
        residueBudget N q r β
          (psiPrefixBudget q M (fun _ _ => E) (fun _ _ => C))) *
        (goldbachPrimeLogTotal N + (N + 1 : ℝ)) := by
  apply norm_circle_residual_le_of_psi_bounds
    N a q hq β M (fun _ _ => E) (fun _ _ => C)
  · intro r hr n hn
    exact hpsi r hr n hn
  · intro r hr n hn
    exact hcorr r hr n hn

end
end GRWTSK.NumberTheory.Primes.GoldbachUniformPsiBudget
