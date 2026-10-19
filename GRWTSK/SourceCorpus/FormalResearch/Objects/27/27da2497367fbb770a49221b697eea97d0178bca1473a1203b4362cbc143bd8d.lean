import FormalResearch.RiemannHypothesis.Conversation.NativeCrossingTailDecay

/-!
# Every finite actual crossing selection consumes the proved complete tail

No selected crossings are omitted from the infinite comparison. Its summability
prices any finite crossing set lying after the entrance, with the unchanged
storage and literal native widths. The exact N-star budget therefore applies to
every such selection, and one entrance works for all later selections at any
positive tolerance.

A separately constructed reconstruction residual can consume this payment only
when its exact absolute-error comparison has been proved. This file supplies no
moving-seam reconstruction law, cycle-load estimate or RH consequence.
Human complete atomic-ledger and uniform-selection direction: grwtsk contributors.
Local finite/infinite payment consumer: OpenAI Codex. Mathlib sums retain their
upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FiniteCrossingTailBudget
open ArithmeticPrimitive NativeRecordConsumer AtomicCrossingLedger NativeCrossingTail
  NativeCrossingTailDecay
open scoped BigOperators
noncomputable section

theorem complete_price_term_nonnegative {N : ℕ} (hN : 3 ≤ N) (n : ℕ) :
    0 ≤ priceTerm N n := by
  classical
  unfold priceTerm
  split_ifs with h
  · exact mul_nonneg (cellClock_pos (by have := h.1; omega)).le
      (le_max_of_le_left (abs_nonneg _))
  · rfl

theorem every_finite_gated_selection_le_complete_tail {N : ℕ} (hN : 3 ≤ N)
    (s : Finset ℕ) : (∑ n ∈ s, priceTerm N n) ≤ tailPrice N := by
  exact (actual_selected_crossing_price_summable hN).sum_le_tsum s
    (fun n _ ↦ complete_price_term_nonnegative hN n)

theorem actual_finite_crossing_selection_le_complete_tail {N : ℕ} (hN : 3 ≤ N)
    (s : Finset ℕ) (hs : ∀ n ∈ s, N ≤ n ∧ isCrossing n) :
    (∑ n ∈ s, cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n|) ≤
      tailPrice N := by
  classical
  have he : (∑ n ∈ s, priceTerm N n) =
      ∑ n ∈ s, cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n| := by
    apply Finset.sum_congr rfl
    intro n hn
    simp only [priceTerm, if_pos (hs n hn)]
  rw [← he]
  exact every_finite_gated_selection_le_complete_tail hN s

theorem every_actual_finite_entrance_selection_pays_literal_budget
    (s : Finset ℕ)
    (hs : ∀ n ∈ s, ReserveConsumer.entranceScale ≤ n ∧ isCrossing n) :
    (∑ n ∈ s, cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n|) <
      1 / 4000000 := by
  exact (actual_finite_crossing_selection_le_complete_tail
    (by norm_num [ReserveConsumer.entranceScale]) s hs).trans_lt actual_literal_seam_budget

theorem one_entrance_prices_every_later_finite_selection {epsilon : ℝ} (he : 0 < epsilon) :
    ∃ N0 : ℕ, 3 ≤ N0 ∧ ∀ N : ℕ, N0 ≤ N → ∀ s : Finset ℕ,
      (∑ n ∈ s, priceTerm N n) < epsilon := by
  obtain ⟨N0, hN0, h⟩ := every_positive_tolerance_has_uniform_actual_entrance he
  refine ⟨N0, hN0, ?_⟩
  intro N hN s
  exact (every_finite_gated_selection_le_complete_tail (hN0.trans hN) s).trans_lt (h N hN).2

theorem separately_bounded_reconstruction_residual_pays_literal_budget
    (s : Finset ℕ)
    (hs : ∀ n ∈ s, ReserveConsumer.entranceScale ≤ n ∧ isCrossing n)
    (residual : ℝ)
    (hresidual : |residual| ≤ ∑ n ∈ s,
      cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n|) :
    |residual| < 1 / 4000000 :=
  hresidual.trans_lt (every_actual_finite_entrance_selection_pays_literal_budget s hs)

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteCrossingTailBudget
