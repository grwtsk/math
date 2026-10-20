/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Analytic.Order
import Mathlib.Analysis.Calculus.Deriv.Star

set_option autoImplicit false

/-!
# Conjugation transports finite analytic order, including repeated zeros

Both the input and output are conjugated. The derivative identity holds for
Mathlib's total derivative; the order theorem additionally requires actual
analyticity at BOTH points and an actual finite-order equation. No simplicity
assumption or multiplicity label is substituted for these hypotheses.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.ConjugateAnalyticOrder

open scoped ComplexConjugate

/-- Symmetry of f passes to its actual derivative, not just to its zero set. -/
theorem deriv_conjugation {f : ℂ → ℂ}
    (hf : ∀ z, f (star z) = star (f z)) (z : ℂ) :
    deriv f (star z) = star (deriv f z) := by
  have he : (fun w : ℂ => star (f (star w))) = f := by
    funext w
    rw [hf, star_star]
  have hd : deriv (fun w : ℂ => star (f (star w))) =
      fun w : ℂ => star (deriv f (star w)) := by
    simpa only [Function.comp_def] using (deriv_conj_conj (f := f))
  rw [he] at hd
  simpa only [star_star] using congrFun hd (star z)

/-- Every derivative is transported, so higher orders are retained. -/
theorem iteratedDeriv_conjugation {f : ℂ → ℂ}
    (hf : ∀ z, f (star z) = star (f z)) (n : ℕ) (z : ℂ) :
    iteratedDeriv n f (star z) = star (iteratedDeriv n f z) := by
  induction n generalizing z with
  | zero => simpa using hf z
  | succ n ih =>
    simp only [iteratedDeriv_succ]
    exact deriv_conjugation ih z

/-- Finite analytic order is transported through all vanishing derivatives.
This applies to repeated zeros as well as simple zeros. -/
theorem finite_order_conjugation {f : ℂ → ℂ} {z : ℂ} {n : ℕ}
    (hf : ∀ w, f (star w) = star (f w))
    (hz : AnalyticAt ℂ f z) (hc : AnalyticAt ℂ f (star z))
    (ho : analyticOrderAt f z = (n : ℕ∞)) :
    analyticOrderAt f (star z) = (n : ℕ∞) := by
  obtain ⟨hvan, hnon⟩ := (analyticOrderAt_eq_nat_iff_iteratedDeriv_eq_zero hz).mp ho
  apply (analyticOrderAt_eq_nat_iff_iteratedDeriv_eq_zero hc).mpr
  constructor
  · intro k hk
    rw [iteratedDeriv_conjugation hf k z, hvan k hk, star_zero]
  · rw [iteratedDeriv_conjugation hf n z]
    intro h
    apply hnon
    have hh := congrArg (fun v : ℂ => star v) h
    simpa only [star_star, star_zero] using hh

end GRWTSK.Analysis.Complex.ConjugateAnalyticOrder
