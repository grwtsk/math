# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant6921045cb674f76d538ebc736bfa723cdcffff0e6d3bbe9aa8dd78352d369779

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30d3a2149bc214b6eaa91b841d53f188b2e430c2` · SHA-256 `6921045cb674f76d538ebc736bfa723cdcffff0e6d3bbe9aa8dd78352d369779`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joachim Breitner, Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner, Yaël Dillies
-/
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.ENat.Lattice

/-!
# Sum of suprema in `ENat`
-/

assert_not_exists Field

namespace ENat

lemma sum_iSup {α ι : Type*} {s : Finset α} {f : α → ι → ℕ∞}
    (hf : ∀ i j, ∃ k, ∀ a, f a i ≤ f a k ∧ f a j ≤ f a k) :
    ∑ a ∈ s, ⨆ i, f a i = ⨆ i, ∑ a ∈ s, f a i := by
  induction' s using Finset.cons_induction with a s ha ihs
  · simp
  simp_rw [Finset.sum_cons, ihs]
  refine iSup_add_iSup fun i j ↦ (hf i j).imp fun k hk ↦ ?_
  gcongr
  exacts [(hk a).1, (hk _).2]

lemma sum_iSup_of_monotone {α ι : Type*} [Preorder ι] [IsDirected ι (· ≤ ·)] {s : Finset α}
    {f : α → ι → ℕ∞} (hf : ∀ a, Monotone (f a)) : (∑ a ∈ s, iSup (f a)) = ⨆ n, ∑ a ∈ s, f a n :=
  sum_iSup fun i j ↦ (exists_ge_ge i j).imp fun _k ⟨hi, hj⟩ a ↦ ⟨hf a hi, hf a hj⟩

end ENat
```
