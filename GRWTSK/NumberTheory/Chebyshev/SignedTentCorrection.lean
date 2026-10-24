/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.TentRationalCorrection
import GRWTSK.NumberTheory.Chebyshev.CountedTentTail

set_option autoImplicit false

/-!
# Explicit signed correction in the counted-tent prime criterion

The correction is the specific negative rational integral, not a freely supplied
complex number or a discrepancy defined from the target arithmetic source.
Its lower bound is now supplied here. The complete tent-specific source identity,
actual zero counting and indexing, finite evaluation and strict margin remain
hypotheses. No Perron inversion, zero-count theorem, or Legendre proof is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection

open scoped BigOperators
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentKernelTail
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget
open GRWTSK.NumberTheory.Chebyshev.CountedTentTail

noncomputable section

/-- The specific signed integral on the unshifted square interval. -/
def squareTrivialCorrection (n : ℕ) : ℝ :=
  rationalTentCorrection (squareCenter n) (squareRadius n)

/-- Exact rational endpoint majorant; no zero data or fitted constant enters. -/
def squareTrivialBudget (n : ℕ) : ℝ :=
  squareRadius n / ((n : ℝ) ^ 2 * ((n : ℝ) ^ 4 - 1))

/-- Preserve the sign and both endpoint envelopes. -/
theorem squareTrivialCorrection_bounds (n : ℕ) (hn : 2 ≤ n) :
    -squareTrivialBudget n ≤ squareTrivialCorrection n ∧
      squareTrivialCorrection n ≤
        -(squareRadius n / (((n : ℝ) + 1) ^ 2 * (((n : ℝ) + 1) ^ 4 - 1))) := by
  have hb := rationalTentCorrection_bounds (squareCenter n) (squareRadius n)
    (squareRadius_pos n) (square_tent_domain n hn)
  rw [center_sub_radius, center_add_radius] at hb
  simpa only [squareTrivialBudget, squareTrivialCorrection, Nat.cast_pow,
    Nat.cast_add, Nat.cast_one, ← pow_mul] using hb

theorem squareTrivialCorrection_neg (n : ℕ) (hn : 2 ≤ n) :
    squareTrivialCorrection n < 0 :=
  rationalTentCorrection_neg (squareCenter n) (squareRadius n)
    (squareRadius_pos n) (square_tent_domain n hn)

/-- The geometric correction error has the exact square-stage factor n^(-4N). -/
theorem square_correctionPrefix_error (N n : ℕ) (hn : 2 ≤ n) :
    0 ≤ correctionPrefix N (squareCenter n) (squareRadius n) - squareTrivialCorrection n ∧
      correctionPrefix N (squareCenter n) (squareRadius n) - squareTrivialCorrection n ≤
        squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ N := by
  have he := correctionPrefix_error N (squareCenter n) (squareRadius n)
    (squareRadius_pos n) (square_tent_domain n hn)
  rw [center_sub_radius] at he
  simpa only [squareTrivialBudget, squareTrivialCorrection, Nat.cast_pow, ← pow_mul] using he

/-- No signed-correction bound premise remains. The complete source identity,
counting/coverage, evaluator and strict margin still must be proved independently. -/
theorem prime_in_square_of_signed_counted_tent {ι : Type*}
    (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 1 ≤ T)
    (head : Finset ι) (m : ι → ℕ) (ρ : ι → ℂ)
    (hhead : ∀ i, |(ρ i).im| ≤ T → i ∈ head)
    (hstrip : ∀ i, i ∉ head → (ρ i).re ≤ 1)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S (fun i => |(ρ i).im|) (fun i => (m i : ℝ)) t ≤ t * Real.log t)
    (evaluated : ℂ) (evaluationError : ℝ)
    (hsource : (squareTentMangoldt n : ℂ) = (squareRadius n : ℂ) -
      (∑' i, (m i : ℂ) * tentKernel (squareCenter n) (squareRadius n) (ρ i)) +
        (squareTrivialCorrection n : ℂ))
    (heval : ‖(∑ i ∈ head,
      (m i : ℂ) * tentKernel (squareCenter n) (squareRadius n) (ρ i)) - evaluated‖ ≤
        evaluationError)
    (hmargin : 0 < squareRadius n - evaluated.re - squareTrivialBudget n -
      tentTailBudget (squareCenter n) (squareRadius n) 1 T - evaluationError -
        squareCorrectionBudget n) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  apply prime_in_square_of_counted_tent n hn T hT head m ρ hhead hstrip hcount
    (squareTrivialCorrection n : ℂ) evaluated evaluationError (-squareTrivialBudget n)
    hsource heval
  · exact (squareTrivialCorrection_bounds n hn).1
  · simpa only [sub_eq_add_neg, add_assoc] using hmargin

end
end GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection
