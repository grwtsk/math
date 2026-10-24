/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.TentKernelTail
import GRWTSK.NumberTheory.Chebyshev.TentSource
import Mathlib.Tactic.Positivity

set_option autoImplicit false

/-!
# Count-derived complete tent tail and the actual square-interval consumer

A uniform weighted count now supplies the tail, rather than a free tail-error
argument. The full tent-specific explicit formula is still an independent
hypothesis about the literal squareTentMangoldt source. Neither that identity,
zeta indexing/multiplicity, the literature counting theorem nor the signed
trivial-zero correction bound is proved here. No unsmoothed source is substituted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CountedTentTail

open scoped BigOperators
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentKernelTail
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget

noncomputable section

variable {ι : Type*}

theorem square_tent_domain (n : ℕ) (hn : 2 ≤ n) :
    1 < squareCenter n - squareRadius n := by
  rw [center_sub_radius]
  have hnR : (2 : ℝ) ≤ n := by exact_mod_cast hn
  push_cast
  nlinarith

/-- The radius normalization and fourth-power numerator are explicit. -/
theorem square_tent_tail_budget (n : ℕ) (T : ℝ) :
    tentTailBudget (squareCenter n) (squareRadius n) 1 T =
      8 * ((n : ℝ) + 1) ^ 4 * (Real.log T + 1) / (squareRadius n * T) := by
  rw [tentTailBudget_beta_one _ _ T (by rw [center_add_radius]; positivity), center_add_radius]
  push_cast
  ring

/-- The complete tail is derived from a uniform count. The full explicit
formula, same-head evaluation and signed correction lower bound remain
separately visible, as does the actual strict prime-existence margin. -/
theorem prime_in_square_of_counted_tent (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 1 ≤ T)
    (head : Finset ι) (m : ι → ℕ) (ρ : ι → ℂ)
    (hhead : ∀ i, |(ρ i).im| ≤ T → i ∈ head)
    (hstrip : ∀ i, i ∉ head → (ρ i).re ≤ 1)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S (fun i => |(ρ i).im|) (fun i => (m i : ℝ)) t ≤ t * Real.log t)
    (correction evaluated : ℂ) (evaluationError correctionLower : ℝ)
    (hsource : (squareTentMangoldt n : ℂ) = (squareRadius n : ℂ) -
      (∑' i, (m i : ℂ) * tentKernel (squareCenter n) (squareRadius n) (ρ i)) + correction)
    (heval : ‖(∑ i ∈ head,
      (m i : ℂ) * tentKernel (squareCenter n) (squareRadius n) (ρ i)) - evaluated‖ ≤
        evaluationError)
    (hcorr : correctionLower ≤ correction.re)
    (hmargin : 0 < squareRadius n - evaluated.re + correctionLower -
      tentTailBudget (squareCenter n) (squareRadius n) 1 T - evaluationError -
        squareCorrectionBudget n) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have herror := tent_full_sum_evaluation_error
    (squareCenter n) (squareRadius n) 1 T (squareRadius_pos n)
    (square_tent_domain n hn) (by norm_num) hT head m ρ hhead hstrip hcount
    evaluated evaluationError heval
  have hreal := (Complex.abs_re_le_norm
    ((∑' i, (m i : ℂ) * tentKernel (squareCenter n) (squareRadius n) (ρ i)) - evaluated)).trans herror
  have hupper := (abs_le.mp hreal).2
  simp only [Complex.sub_re] at hupper
  have hs := congrArg Complex.re hsource
  simp only [Complex.add_re, Complex.sub_re, Complex.ofReal_re] at hs
  apply prime_in_square_of_tent_mass n (by omega)
  linarith

end
end GRWTSK.NumberTheory.Chebyshev.CountedTentTail
