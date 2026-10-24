# Complete source: GRWTSK.Topology.GeneralTopology.IndicatorCard.Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9affe3d2a27e45ebe5d22e061bd03bbfe261b38` · SHA-256 `91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Damien Thomine. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damien Thomine
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Indicator
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Group.Indicator
import Mathlib.Order.LiminfLimsup
import Mathlib.SetTheory.Cardinal.Finite

/-!
# Cardinality and limit of sum of indicators
This file contains results relating the cardinality of subsets of ℕ and limits,
limsups of sums of indicators.

## Tags
finite, indicator, limsup, tendsto
-/

namespace Set

open Filter Finset

lemma sum_indicator_eventually_eq_card {α : Type*} [AddCommMonoid α] (a : α) {s : Set ℕ}
    (hs : s.Finite) :
    ∀ᶠ n in atTop, ∑ k ∈ Finset.range n, s.indicator (fun _ ↦ a) k = (Nat.card s) • a := by
  have key : ∀ x ∈ hs.toFinset, s.indicator (fun _ ↦ a) x = a := by
    intro x hx
    rw [indicator_of_mem (hs.mem_toFinset.1 hx) (fun _ ↦ a)]
  rw [Nat.card_eq_card_finite_toFinset hs, ← sum_eq_card_nsmul key, eventually_atTop]
  obtain ⟨m, hm⟩ := hs.bddAbove
  refine ⟨m + 1, fun n n_m ↦ (sum_subset ?_ ?_).symm⟩ <;> intro x <;> rw [hs.mem_toFinset]
  · rw [Finset.mem_range]
    exact fun x_s ↦ ((mem_upperBounds.1 hm) x x_s).trans_lt (Nat.lt_of_succ_le n_m)
  · exact fun _ x_s ↦ indicator_of_notMem x_s (fun _ ↦ a)

lemma infinite_iff_tendsto_sum_indicator_atTop {R : Type*}
    [AddCommMonoid R] [PartialOrder R] [IsOrderedAddMonoid R]
    [AddLeftStrictMono R] [Archimedean R] {r : R} (h : 0 < r) {s : Set ℕ} :
    s.Infinite ↔ atTop.Tendsto (fun n ↦ ∑ k ∈ Finset.range n, s.indicator (fun _ ↦ r) k) atTop := by
  constructor
  · have h_mono : Monotone fun n ↦ ∑ k ∈ Finset.range n, s.indicator (fun _ ↦ r) k := by
      refine (sum_mono_set_of_nonneg ?_).comp range_mono
      exact (fun _ ↦ indicator_nonneg (fun _ _ ↦ h.le) _)
    rw [h_mono.tendsto_atTop_atTop_iff]
    intro hs n
    obtain ⟨n', hn'⟩ := exists_lt_nsmul h n
    obtain ⟨t, t_s, t_card⟩ := hs.exists_subset_card_eq n'
    obtain ⟨m, hm⟩ := t.bddAbove
    refine ⟨m + 1, hn'.le.trans ?_⟩
    apply (sum_le_sum fun i _ ↦ (indicator_le_indicator_of_subset t_s (fun _ ↦ h.le)) i).trans_eq'
    have h : t ⊆ Finset.range (m + 1) := by
      intro i i_t
      rw [Finset.mem_range]
      exact (hm i_t).trans_lt (lt_add_one m)
    rw [sum_indicator_subset (fun _ ↦ r) h, sum_eq_card_nsmul (fun _ _ ↦ rfl), t_card]
  · contrapose
    intro hs
    rw [not_infinite] at hs
    rw [tendsto_congr' (sum_indicator_eventually_eq_card r hs), tendsto_atTop_atTop]
    push_neg
    obtain ⟨m, hm⟩ := exists_lt_nsmul h (Nat.card s • r)
    exact ⟨m • r, fun n ↦ ⟨n, le_refl n, not_le_of_lt hm⟩⟩

lemma limsup_eq_tendsto_sum_indicator_atTop {α R : Type*}
    [AddCommMonoid R] [PartialOrder R] [IsOrderedAddMonoid R]
    [AddLeftStrictMono R] [Archimedean R] {r : R} (h : 0 < r) (s : ℕ → Set α) :
    atTop.limsup s = { ω | atTop.Tendsto
      (fun n ↦ ∑ k ∈ Finset.range n, (s k).indicator (fun _ ↦ r) ω) atTop } := by
  nth_rw 1 [← Nat.cofinite_eq_atTop, cofinite.limsup_set_eq]
  ext ω
  rw [mem_setOf_eq, mem_setOf_eq, infinite_iff_tendsto_sum_indicator_atTop h, iff_eq_eq]
  congr

end Set
```
