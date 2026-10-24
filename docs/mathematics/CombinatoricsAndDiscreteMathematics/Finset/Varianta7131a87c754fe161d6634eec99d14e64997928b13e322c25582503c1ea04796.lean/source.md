# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13e3404ea8093e3e89147741be1215105499c13a` · SHA-256 `a7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jeremy Avigad, Yury Kudryashov, Patrick Massot
-/
import Mathlib.Data.Finset.Preimage
import Mathlib.Order.Filter.AtTopBot.Tendsto
import Mathlib.Order.Filter.AtTopBot.Basic
import Mathlib.Order.Filter.Finite

/-!
# `Filter.atTop` and `Filter.atBot` filters and finite sets.
-/

variable {ι ι' α β γ : Type*}

open Set

namespace Filter

theorem tendsto_finset_range : Tendsto Finset.range atTop atTop :=
  Finset.range_mono.tendsto_atTop_atTop Finset.exists_nat_subset_range

theorem atTop_finset_eq_iInf : (atTop : Filter (Finset α)) = ⨅ x : α, 𝓟 (Ici {x}) := by
  refine le_antisymm (le_iInf fun i => le_principal_iff.2 <| mem_atTop ({i} : Finset α)) ?_
  refine
    le_iInf fun s =>
      le_principal_iff.2 <| mem_iInf_of_iInter s.finite_toSet (fun i => mem_principal_self _) ?_
  simp only [subset_def, mem_iInter, SetCoe.forall, mem_Ici, Finset.le_iff_subset,
    Finset.mem_singleton, Finset.subset_iff, forall_eq]
  exact fun t => id

/-- If `f` is a monotone sequence of `Finset`s and each `x` belongs to one of `f n`, then
`Tendsto f atTop atTop`. -/
theorem tendsto_atTop_finset_of_monotone [Preorder β] {f : β → Finset α} (h : Monotone f)
    (h' : ∀ x : α, ∃ n, x ∈ f n) : Tendsto f atTop atTop := by
  simp only [atTop_finset_eq_iInf, tendsto_iInf, tendsto_principal]
  intro a
  rcases h' a with ⟨b, hb⟩
  exact (eventually_ge_atTop b).mono fun b' hb' => (Finset.singleton_subset_iff.2 hb).trans (h hb')

alias _root_.Monotone.tendsto_atTop_finset := tendsto_atTop_finset_of_monotone

theorem tendsto_finset_image_atTop_atTop [DecidableEq β] {i : β → γ} {j : γ → β}
    (h : Function.LeftInverse j i) : Tendsto (Finset.image j) atTop atTop :=
  (Finset.image_mono j).tendsto_atTop_finset fun a =>
    ⟨{i a}, by simp only [Finset.image_singleton, h a, Finset.mem_singleton]⟩

theorem tendsto_finset_preimage_atTop_atTop {f : α → β} (hf : Function.Injective f) :
    Tendsto (fun s : Finset β => s.preimage f (hf.injOn)) atTop atTop :=
  (Finset.monotone_preimage hf).tendsto_atTop_finset fun x =>
    ⟨{f x}, Finset.mem_preimage.2 <| Finset.mem_singleton_self _⟩

lemma tendsto_toLeft_atTop :
    Tendsto (Finset.toLeft (α := α) (β := β)) atTop atTop := by
  intro s hs
  simp only [mem_atTop_sets, Finset.le_eq_subset, Filter.mem_map, Set.mem_preimage] at hs ⊢
  obtain ⟨t, H⟩ := hs
  exact ⟨t.disjSum ∅, fun b hb ↦ H _ (by simpa [← Finset.coe_subset, Set.subset_def] using hb)⟩

lemma tendsto_toRight_atTop :
    Tendsto (Finset.toRight (α := α) (β := β)) atTop atTop := by
  intro s hs
  simp only [mem_atTop_sets, Finset.le_eq_subset, Filter.mem_map, Set.mem_preimage] at hs ⊢
  obtain ⟨t, H⟩ := hs
  exact ⟨.disjSum ∅ t, fun b hb ↦ H _ (by simpa [← Finset.coe_subset, Set.subset_def] using hb)⟩

end Filter
```
