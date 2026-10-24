# Complete source: GRWTSK.Analysis.Convolution.FiniteTranslateIndependence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `128afcfc7125f3aff8951de1be140c29840663bf` · SHA-256 `8e9117839ad1d2be0ba4cf91792a0e5a85115afb5cdddb6c93c8d2ce663d5eb6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Finset.Max
import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.LinearAlgebra.LinearIndependent.Defs
import Mathlib.Tactic.Linarith

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Independence of finitely many distinct translates


A nonzero real function whose support is bounded above has independent distinct
translates. The proof isolates the largest shift among the nonzero coefficients
near the supremum of the original support. It needs no continuity or endpoint
value assumption. Pointwise independence alone gives no independence of L2
classes: a singleton-supported function is a counterexample to that inference.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Analysis.Convolution.FiniteTranslateIndependence

open Set Function

noncomputable section

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
/-- A strictly largest shift can be isolated near the supremum of the support. -/
theorem isolate_rightmost_translate {ι : Type*} [DecidableEq ι]
    {f : ℝ → ℝ} (bounded : BddAbove (support f)) (nonempty : (support f).Nonempty)
    (s : Finset ι) (shift : ι → ℝ) {n : ι}
    (largest : ∀ j ∈ s, j ≠ n → shift j < shift n) :
    ∃ x : ℝ, f (x - shift n) ≠ 0 ∧ ∀ j ∈ s, j ≠ n → f (x - shift j) = 0 := by
  rcases (s.erase n).eq_empty_or_nonempty with empty | others
  · obtain ⟨y, hy⟩ := nonempty
    refine ⟨y + shift n, ?_, ?_⟩
    · simpa only [add_sub_cancel_right] using (Function.mem_support.mp hy)
    · intro j hj hjn
      have member := Finset.mem_erase.mpr ⟨hjn, hj⟩
      rw [empty] at member
      exact (Finset.notMem_empty j member).elim
  · obtain ⟨m, hm, maximal⟩ := (s.erase n).exists_max_image shift others
    have gap : 0 < shift n - shift m :=
      sub_pos.mpr (largest m (Finset.mem_erase.mp hm).2 (Finset.mem_erase.mp hm).1)
    obtain ⟨y, hy, near⟩ := exists_lt_of_lt_csSup nonempty
      (sub_lt_self (sSup (support f)) gap)
    refine ⟨y + shift n, ?_, ?_⟩
    · simpa only [add_sub_cancel_right] using (Function.mem_support.mp hy)
    · intro j hj hjn
      by_contra nonzero
      have upper := le_csSup bounded
        (show y + shift n - shift j ∈ support f from nonzero)
      have below := maximal j (Finset.mem_erase.mpr ⟨hjn, hj⟩)
      linarith

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
/-- The complete finite sum is nonzero at some point if a coefficient is nonzero. -/
theorem finite_translate_combination_ne_zero {ι : Type*} [DecidableEq ι]
    {f : ℝ → ℝ} (bounded : BddAbove (support f)) (nonempty : (support f).Nonempty)
    (s : Finset ι) (shift : ι → ℝ) (distinct : Set.InjOn shift (s : Set ι))
    (w : ι → ℝ) (nonzero : ∃ n ∈ s, w n ≠ 0) :
    ∃ x : ℝ, (∑ n ∈ s, w n * f (x - shift n)) ≠ 0 := by
  classical
  let active := s.filter (fun n ↦ w n ≠ 0)
  have activeNonempty : active.Nonempty := by
    obtain ⟨n, hn, hw⟩ := nonzero
    exact ⟨n, Finset.mem_filter.mpr ⟨hn, hw⟩⟩
  obtain ⟨n, hn, maximal⟩ := active.exists_max_image shift activeNonempty
  have hnSource : n ∈ s := (Finset.mem_filter.mp hn).1
  have hnWeight : w n ≠ 0 := (Finset.mem_filter.mp hn).2
  have largest : ∀ j ∈ active, j ≠ n → shift j < shift n := by
    intro j hj hjn
    apply lt_of_le_of_ne (maximal j hj)
    intro equal
    exact hjn (distinct (Finset.mem_filter.mp hj).1 hnSource equal)
  obtain ⟨x, atN, atOthers⟩ := isolate_rightmost_translate bounded nonempty active shift largest
  refine ⟨x, ?_⟩
  have evaluation : (∑ j ∈ s, w j * f (x - shift j)) = w n * f (x - shift n) := by
    apply Finset.sum_eq_single n
    · intro j hj hjn
      by_cases weightZero : w j = 0
      · rw [weightZero, zero_mul]
      · rw [atOthers j (Finset.mem_filter.mpr ⟨hj, weightZero⟩) hjn, mul_zero]
    · exact fun absent ↦ (absent hnSource).elim
  rw [evaluation]
  exact mul_ne_zero hnWeight atN

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
theorem finite_translate_combination_eq_zero_iff {ι : Type*} [DecidableEq ι]
    {f : ℝ → ℝ} (bounded : BddAbove (support f)) (nonempty : (support f).Nonempty)
    (s : Finset ι) (shift : ι → ℝ) (distinct : Set.InjOn shift (s : Set ι))
    (w : ι → ℝ) :
    (∀ x : ℝ, (∑ n ∈ s, w n * f (x - shift n)) = 0) ↔ ∀ n ∈ s, w n = 0 := by
  constructor
  · intro zeroSum n hn
    by_contra nonzero
    obtain ⟨x, hx⟩ := finite_translate_combination_ne_zero bounded nonempty s shift distinct
      w ⟨n, hn, nonzero⟩
    exact hx (zeroSum x)
  · intro zeroWeights x
    apply Finset.sum_eq_zero
    intro n hn
    rw [zeroWeights n hn, zero_mul]

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedFintypeInType false in
theorem finite_translates_linearIndependent {ι : Type*} [Fintype ι]
    {f : ℝ → ℝ} (bounded : BddAbove (support f)) (nonempty : (support f).Nonempty)
    (shift : ι → ℝ) (distinct : Function.Injective shift) :
    LinearIndependent ℝ (fun n x ↦ f (x - shift n)) := by
  classical
  apply Fintype.linearIndependent_iff.mpr
  intro w zeroSum n
  apply (finite_translate_combination_eq_zero_iff bounded nonempty Finset.univ shift
    (fun _ _ _ _ equal ↦ distinct equal) w).mp ?_ n (Finset.mem_univ n)
  intro x
  have equality := congrFun zeroSum x
  simpa using equality

end

end GRWTSK.Analysis.Convolution.FiniteTranslateIndependence
```
