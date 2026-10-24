/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachPsiPrefixTransfer
import GRWTSK.NumberTheory.Primes.GoldbachAbelAggregate
import Mathlib.Tactic

/-!
# Conditional finite psi-to-Goldbach circle error transfer

All analytic estimates remain explicit hypotheses. The correction for
proper prime powers and the exact inclusive-main mismatch are retained.
No prime distribution, Goldbach, RH, or GRH theorem is asserted.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachPsiCircleTransfer

open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.FiniteAbelTransfer
open GRWTSK.NumberTheory.Primes.GoldbachAbelDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachAbelAggregate
open GRWTSK.NumberTheory.Primes.GoldbachCumulativeNormalization
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachPsiPrefixTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel

noncomputable section

/-- Exact cumulative error budget from supplied finite psi errors,
proper prime-power bounds and main-term mismatch. -/
def psiPrefixBudget (q r n : ℕ)
    (M : ℕ → ℕ → ℂ) (E C : ℕ → ℕ → ℝ) : ℝ :=
  E r n + C r n + ‖M r n - canonicalMain n q r‖

/-- The full conditional transfer to the existing quadratic Goldbach
circle residual, retaining every finite error contribution. -/
theorem norm_circle_residual_le_of_psi_bounds
    (N a q : ℕ) (hq : 0 < q) (β : ℝ)
    (M : ℕ → ℕ → ℂ) (E C : ℕ → ℕ → ℝ)
    (hpsi : ∀ r ∈ Finset.range q, ∀ n ∈ Finset.range (N + 1),
      ‖(finitePsiResidue n q r : ℂ) - M r n‖ ≤ E r n)
    (hcorr : ∀ r ∈ Finset.range q, ∀ n ∈ Finset.range (N + 1),
      finiteProperPrimePowerCorrection n q r ≤ C r n) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      (∑ r ∈ Finset.range q,
        residueBudget N q r β (psiPrefixBudget q M E C)) *
        (goldbachPrimeLogTotal N + (N + 1 : ℝ)) := by
  apply norm_circle_residual_le_of_prefix_bounds
    N a q hq β (psiPrefixBudget q M E C)
  intro r hr
  exact prefix_le_of_psi_bounds N q r (M r) (E r) (C r)
    (hpsi r hr) (hcorr r hr)

end
end GRWTSK.NumberTheory.Primes.GoldbachPsiCircleTransfer
