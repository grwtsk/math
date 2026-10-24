import FormalResearch.RiemannHypothesis.Conversation.NativeCellBound

/-!
# A chronological reserve process is equivalent to its exact prefix guards

Batch 05's causal closure is expressed as a concrete scalar reserve path.
Each slot pays its debt from the existing reserve and adds its credit only
afterward. Such a path exists exactly when each debt prefix is covered by the
initial reserve plus strictly earlier credits. The canonical path is unique
on the finite horizon. This reconstructs the resource process, not a labeled
credit-to-debt transport matrix or an actual arithmetic prefix bound.

Human chronological matching direction: grwtsk contributors. Local causal
reserve interface and Lean proofs: OpenAI Codex. Mathlib finite sums retain
their upstream identity; no prime cancellation estimate is supplied.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.CausalReserveProcess

open scoped BigOperators

/-- The stock in this module, with the following exact parameterization.

def stock (R : ℝ) (credit debt : ℕ → ℝ) (j : ℕ) : ℝ := R + (∑ i ∈ Finset.range j, credit i) -
∑ i ∈ Finset.range j, debt i
-/
def stock (R : ℝ) (credit debt : ℕ → ℝ) (j : ℕ) : ℝ :=
  R + (∑ i ∈ Finset.range j, credit i) - ∑ i ∈ Finset.range j, debt i

/-- The reserve process in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def ReserveProcess (R : ℝ) (credit debt : ℕ → ℝ) (K : ℕ) : Prop := ∃ s : ℕ → ℝ, s 0 = R ∧ ∀ j
< K, debt j ≤ s j ∧ s (j + 1) = s j - debt j + credit j
-/
def ReserveProcess (R : ℝ) (credit debt : ℕ → ℝ) (K : ℕ) : Prop :=
  ∃ s : ℕ → ℝ, s 0 = R ∧ ∀ j < K,
    debt j ≤ s j ∧ s (j + 1) = s j - debt j + credit j

/-- The prefix covered in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def PrefixCovered (R : ℝ) (credit debt : ℕ → ℝ) (K : ℕ) : Prop := ∀ j < K, (∑ i ∈ Finset.range
(j + 1), debt i) ≤ R + ∑ i ∈ Finset.range j, credit i
-/
def PrefixCovered (R : ℝ) (credit debt : ℕ → ℝ) (K : ℕ) : Prop :=
  ∀ j < K, (∑ i ∈ Finset.range (j + 1), debt i) ≤
    R + ∑ i ∈ Finset.range j, credit i

theorem stock_initial (R : ℝ) (credit debt : ℕ → ℝ) : stock R credit debt 0 = R := by
  simp [stock]

theorem stock_step (R : ℝ) (credit debt : ℕ → ℝ) (j : ℕ) :
    stock R credit debt (j + 1) = stock R credit debt j - debt j + credit j := by
  simp only [stock, Finset.sum_range_succ]
  ring

theorem reserve_path_is_canonical {R : ℝ} {credit debt s : ℕ → ℝ} {K : ℕ}
    (hzero : s 0 = R)
    (hstep : ∀ j < K, s (j + 1) = s j - debt j + credit j) (j : ℕ) (hj : j ≤ K) :
    s j = stock R credit debt j := by
  induction j with
  | zero => simpa only [stock_initial] using hzero
  | succ j ih =>
      rw [hstep j (by omega), ih (by omega), stock_step]

theorem process_iff_prefix_covered (R : ℝ) (credit debt : ℕ → ℝ) (K : ℕ) :
    ReserveProcess R credit debt K ↔ PrefixCovered R credit debt K := by
  constructor
  · rintro ⟨s, hzero, hs⟩ j hj
    have hcanonical := reserve_path_is_canonical hzero (fun i hi => (hs i hi).2) j hj.le
    have hguard := (hs j hj).1
    rw [hcanonical, stock] at hguard
    change (∑ i ∈ Finset.range (j + 1), debt i) ≤ _
    rw [Finset.sum_range_succ]
    linarith
  · intro h
    refine ⟨stock R credit debt, stock_initial R credit debt, ?_⟩
    intro j hj
    refine ⟨?_, stock_step R credit debt j⟩
    have hprefix := h j hj
    rw [Finset.sum_range_succ] at hprefix
    unfold stock
    linarith

theorem canonical_stock_nonneg {R : ℝ} {credit debt : ℕ → ℝ} {K : ℕ}
    (hR : 0 ≤ R) (hcredit : ∀ j, 0 ≤ credit j)
    (hprefix : PrefixCovered R credit debt K)
    (j : ℕ) (hj : j ≤ K) : 0 ≤ stock R credit debt j := by
  cases j with
  | zero => simpa only [stock_initial] using hR
  | succ j =>
      have h := hprefix j (by omega)
      rw [Finset.sum_range_succ] at h
      rw [stock_step]
      have hguard : debt j ≤ stock R credit debt j := by
        unfold stock
        linarith
      linarith [hcredit j]

/-- Earlier credit can protect a later debt even when the total separate debt exceeds R. -/
theorem replenishment_retained (a : ℝ) (ha : 0 < a) :
    ReserveProcess 0 (fun j => if j = 0 then a else 0)
      (fun j => if j = 1 then a else 0) 2 ∧
        0 < ∑ j ∈ Finset.range 2, (if j = 1 then a else 0) := by
  constructor
  · rw [process_iff_prefix_covered]
    intro j hj
    interval_cases j <;> simp
  · simpa using ha

end GRWTSK.RiemannHypothesis.Conversation.CausalReserveProcess
