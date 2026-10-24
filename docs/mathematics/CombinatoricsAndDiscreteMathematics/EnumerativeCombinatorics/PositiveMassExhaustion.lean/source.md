# Complete source: GRWTSK.Combinatorics.Enumerative.PositiveMassExhaustion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d17b523b57ddd2359bf6c4fa98e9eebc3fc0fcc` · SHA-256 `d67bc9ba10ec3965f0ee482469e710b8f31c173116c9d953d97d55866c6507b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Omega

set_option autoImplicit false

/-!
# Exhaustion from distinct witnesses and saturated positive mass

An injection into a finite positive-weight source, pointwise lower weights,
and an upper bound on the COMPLETE source mass force surjectivity and exact
weights. Equal totals without injectivity or pointwise lower bounds do not.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Combinatorics.Enumerative.PositiveMassExhaustion

open scoped BigOperators

/-- Neither coverage nor exact pointwise weights is an input. Positivity of
EVERY target atom is essential: omitted zero-weight atoms would be invisible. -/
theorem bijective_and_weights_eq
    {ι α : Type*} [Fintype ι] [Fintype α]
    (mass : α → ℕ) (hmass : ∀ a, 0 < mass a)
    (weight : ι → ℕ) (f : ι → α) (hinj : Function.Injective f)
    (hlower : ∀ i, weight i ≤ mass (f i))
    (hupper : (∑ a, mass a) ≤ ∑ i, weight i) :
    Function.Bijective f ∧ ∀ i, weight i = mass (f i) := by
  classical
  let e : ι ↪ α := ⟨f, hinj⟩
  let S : Finset α := Finset.univ.map e
  have himage : (∑ a ∈ S, mass a) = ∑ i, mass (f i) := by
    simp [S, e]
  have hsub : (∑ i, mass (f i)) ≤ ∑ a, mass a := by
    rw [← himage]
    exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ S)
      (fun a _ _ => Nat.zero_le (mass a))
  have hlow : (∑ i, weight i) ≤ ∑ i, mass (f i) :=
    Finset.sum_le_sum (fun i _ => hlower i)
  constructor
  · refine ⟨hinj, ?_⟩
    intro a
    by_contra hmissing
    have hnot : a ∉ S := by
      intro ha
      obtain ⟨i, _, hi⟩ := Finset.mem_map.mp ha
      exact hmissing ⟨i, hi⟩
    have hadd : (∑ b ∈ insert a S, mass b) ≤ ∑ b, mass b :=
      Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _)
        (fun b _ _ => Nat.zero_le (mass b))
    rw [Finset.sum_insert hnot, himage] at hadd
    have hpos := hmass a
    omega
  · intro i
    apply le_antisymm (hlower i)
    by_contra hbad
    have hstrict : weight i < mass (f i) := Nat.lt_of_not_ge hbad
    have hsum : (∑ j, weight j) < ∑ j, mass (f j) :=
      Finset.sum_lt_sum (fun j _ => hlower j) ⟨i, Finset.mem_univ i, hstrict⟩
    omega

/-- In particular the upper bound is forced to be an exact total. -/
theorem total_eq_of_saturation
    {ι α : Type*} [Fintype ι] [Fintype α]
    (mass : α → ℕ) (hmass : ∀ a, 0 < mass a)
    (weight : ι → ℕ) (f : ι → α) (hinj : Function.Injective f)
    (hlower : ∀ i, weight i ≤ mass (f i))
    (hupper : (∑ a, mass a) ≤ ∑ i, weight i) :
    (∑ a, mass a) = ∑ i, weight i := by
  classical
  obtain ⟨hb, hw⟩ := bijective_and_weights_eq mass hmass weight f hinj hlower hupper
  let e : ι ≃ α := Equiv.ofBijective f hb
  calc
    _ = ∑ i, mass (f i) := (Equiv.sum_comp e mass).symm
    _ = _ := Finset.sum_congr rfl (fun i _ => (hw i).symm)

end GRWTSK.Combinatorics.Enumerative.PositiveMassExhaustion
```
