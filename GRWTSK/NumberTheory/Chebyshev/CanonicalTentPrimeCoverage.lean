/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion
import GRWTSK.NumberTheory.Primes.LandauStatements

set_option autoImplicit false

/-!
# Quantifier-preserving consumers of canonical tent prime margins

The threshold is one fixed natural number. Every later interval requires its
own certified SAME-head evaluation and strict scaled margin. The old complete
prefix predicate is reused. No supplier or Legendre conclusion is unconditional.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCoverage

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.LandauStatements
open TentSource SignedTentCorrection CanonicalTentPrimeCriterion

noncomputable section

/-- The historical positive count is obtained from the actual prime witness. -/
theorem squareCount_pos_of_canonical_tent (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (evaluated : ℂ) (error : ℝ)
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated‖ ≤ error)
    (hmargin : 0 < canonicalPrimeMargin n T (evaluated.re + error) (-squareTrivialBudget n)) :
    0 < squareCount n :=
  (squareCount_pos_iff n).mpr
    (prime_in_square_of_canonical_tent n hn T hT evaluated error heval hmargin)

/-- Universal margins beyond ONE fixed cutoff, not almost-all or sampled margins. -/
theorem legendreBeyond_of_canonical_tent (N : ℕ) (hN : 1 ≤ N)
    (T : ℕ → ℝ) (evaluated : ℕ → ℂ) (error : ℕ → ℝ)
    (hT : ∀ n, N < n → 2 ≤ T n)
    (heval : ∀ n, N < n → ‖(∑ z ∈ heightHead (T n), (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated n‖ ≤ error n)
    (hmargin : ∀ n, N < n → 0 < canonicalPrimeMargin n (T n)
      ((evaluated n).re + error n) (-squareTrivialBudget n)) : LegendreBeyond N := by
  intro n hn
  exact squareCount_pos_of_canonical_tent n (by omega) (T n) (hT n hn)
    (evaluated n) (error n) (heval n hn) (hmargin n hn)

/-- Preserve #258's complete prefix and the all-input tail as separate premises. -/
theorem legendre_of_prefix_and_canonical_tent (N : ℕ) (hN : 1 ≤ N)
    (prefix : LegendreThrough N) (T : ℕ → ℝ) (evaluated : ℕ → ℂ) (error : ℕ → ℝ)
    (hT : ∀ n, N < n → 2 ≤ T n)
    (heval : ∀ n, N < n → ‖(∑ z ∈ heightHead (T n), (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated n‖ ≤ error n)
    (hmargin : ∀ n, N < n → 0 < canonicalPrimeMargin n (T n)
      ((evaluated n).re + error n) (-squareTrivialBudget n)) : Legendre :=
  legendre_of_prefix_and_tail N prefix
    (legendreBeyond_of_canonical_tent N hN T evaluated error hT heval hmargin)

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCoverage
