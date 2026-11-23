import Mathlib.LinearAlgebra.Lagrange
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! A Hermite trace form for finite conjugation-stable windows of a real
entire divisor. Each distinct location can carry its own positive weight. -/

namespace GRWTSK.XiContourTraceForm

open Polynomial Complex
open scoped Polynomial ComplexConjugate

noncomputable def traceForm (s : Finset ℂ) (w : ℂ → ℝ) (p : ℂ[X]) : ℝ :=
  ∑ z ∈ s, w z * (p.eval z * conj (p.eval (conj z))).re

theorem real_support_nonneg {s : Finset ℂ} {w : ℂ → ℝ}
    (hw : ∀ z ∈ s, 0 ≤ w z) (hs : ∀ z ∈ s, conj z = z) (p : ℂ[X]) :
    0 ≤ traceForm s w p := by
  apply Finset.sum_nonneg
  intro z hz
  rw [hs z hz, Complex.mul_conj]
  exact mul_nonneg (hw z hz) (Complex.normSq_nonneg _)

theorem negative_witness {s : Finset ℂ} {w : ℂ → ℝ} {a : ℂ}
    (ha : a ∈ s) (hb : conj a ∈ s) (hne : conj a ≠ a) :
    ∃ p : ℂ[X], p.degree < (s.card : WithBot ℕ) ∧
      traceForm s w p = -(w a + w (conj a)) := by
  classical
  let v : ℂ → ℂ := fun z => if z = a then 1 else if z = conj a then -1 else 0
  let p := Lagrange.interpolate s id v
  have he (z : ℂ) (hz : z ∈ s) : p.eval z = v z :=
    Lagrange.eval_interpolate_at_node (v := id) (r := v) (Set.injOn_id _) hz
  refine ⟨p, Lagrange.degree_interpolate_lt (v := id) v (Set.injOn_id _), ?_⟩
  unfold traceForm
  have h : ∀ z ∈ s, w z * (p.eval z * conj (p.eval (conj z))).re =
      (if z = a then -w a else 0) + (if z = conj a then -w (conj a) else 0) := by
    intro z hz
    by_cases hza : z = a
    · subst z
      simp [he _ ha, he _ hb, v, hne, Ne.symm hne]
    by_cases hzb : z = conj a
    · subst z
      simp [he _ ha, he _ hb, v, hne]
    · simp [he _ hz, v, hza, hzb]
  rw [Finset.sum_congr rfl h, Finset.sum_add_distrib]
  simp [ha, hb, add_comm]

/-- The degree bound uses the number of distinct roots. Analytic multiplicities
enter as strictly positive weights. -/
theorem hermite_nonneg_iff {s : Finset ℂ} {w : ℂ → ℝ}
    (hw : ∀ z ∈ s, 0 < w z) (hs : ∀ z ∈ s, conj z ∈ s) :
    (∀ p : ℂ[X], p.degree < (s.card : WithBot ℕ) → 0 ≤ traceForm s w p) ↔
      ∀ z ∈ s, conj z = z := by
  constructor
  · intro h z hz
    by_contra hn
    obtain ⟨p, hp, hq⟩ := negative_witness (w := w) hz (hs z hz) hn
    have := h p hp
    rw [hq] at this
    linarith [hw z hz, hw _ (hs z hz)]
  · intro h p _
    exact real_support_nonneg (fun z hz => (hw z hz).le) h p

end GRWTSK.XiContourTraceForm
