/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import Mathlib.Data.Real.Basic
import Mathlib.Data.List.Basic

set_option autoImplicit false

/-!
# Bounded selection by a complete final error budget

Choose the first supplied candidate whose final bound meets the tolerance.
No monotonicity of candidates or existence beyond this finite list is assumed.
Failure means only that every budget in this list is too large. This uses
real comparisons mathematically, not a serialized executable checker.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.FinitePrecisionSelection

noncomputable section

variable {α : Type*}

def firstWithin (error : α → ℝ) (tolerance : ℝ) : List α → Option α
  | [] => none
  | a :: rest => if error a ≤ tolerance then some a else firstWithin error tolerance rest

theorem firstWithin_some (error : α → ℝ) (tolerance : ℝ)
    (candidates : List α) (a : α)
    (h : firstWithin error tolerance candidates = some a) :
    a ∈ candidates ∧ error a ≤ tolerance := by
  induction candidates with
  | nil => simp [firstWithin] at h
  | cons b rest ih =>
      by_cases hb : error b ≤ tolerance
      · simp only [firstWithin, if_pos hb, Option.some.injEq] at h
        subst a
        exact ⟨by simp, hb⟩
      · simp only [firstWithin, if_neg hb] at h
        obtain ⟨ha, he⟩ := ih h
        exact ⟨List.mem_cons_of_mem b ha, he⟩

theorem firstWithin_none_iff (error : α → ℝ) (tolerance : ℝ)
    (candidates : List α) :
    firstWithin error tolerance candidates = none ↔
      ∀ a ∈ candidates, tolerance < error a := by
  induction candidates with
  | nil => simp [firstWithin]
  | cons b rest ih =>
      by_cases hb : error b ≤ tolerance
      · constructor
        · intro h
          simp [firstWithin, hb] at h
        · intro h
          exact (not_lt_of_ge hb (h b (by simp))).elim
      · rw [firstWithin, if_neg hb, ih]
        constructor
        · intro h a ha
          rcases List.mem_cons.mp ha with rfl | ha
          · exact lt_of_not_ge hb
          · exact h a ha
        · intro h a ha
          exact h a (List.mem_cons_of_mem b ha)

/-- Completeness is restricted to the explicitly supplied finite candidate list. -/
theorem firstWithin_exists_of_candidate (error : α → ℝ) (tolerance : ℝ)
    (candidates : List α) (a : α) (ha : a ∈ candidates) (he : error a ≤ tolerance) :
    ∃ b, firstWithin error tolerance candidates = some b := by
  cases h : firstWithin error tolerance candidates with
  | none =>
      have hn := (firstWithin_none_iff error tolerance candidates).mp h a ha
      exact (not_lt_of_ge he hn).elim
  | some b => exact ⟨b, rfl⟩

end
end GRWTSK.Analysis.ErrorBounds.FinitePrecisionSelection
