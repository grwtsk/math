# Complete source: GRWTSK.Topology.GeneralTopology.NhdsSet.Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a2a7bfb2db6f3b5ba8ec0f5dd3464184c644b44` · SHA-256 `c3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Patrick Massot
-/
import Mathlib.Topology.Basic

#align_import topology.nhds_set from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Neighborhoods of a set

In this file we define the filter `𝓝ˢ s` or `nhdsSet s` consisting of all neighborhoods of a set
`s`.

## Main Properties

There are a couple different notions equivalent to `s ∈ 𝓝ˢ t`:
* `s ⊆ interior t` using `subset_interior_iff_mem_nhdsSet`
* `∀ x : α, x ∈ t → s ∈ 𝓝 x` using `mem_nhdsSet_iff_forall`
* `∃ U : Set α, IsOpen U ∧ t ⊆ U ∧ U ⊆ s` using `mem_nhdsSet_iff_exists`

Furthermore, we have the following results:
* `monotone_nhdsSet`: `𝓝ˢ` is monotone
* In T₁-spaces, `𝓝ˢ`is strictly monotone and hence injective:
  `strict_mono_nhdsSet`/`injective_nhdsSet`. These results are in `Mathlib.Topology.Separation`.

-/

open Set Filter Topology

variable {α β : Type*} [TopologicalSpace α] [TopologicalSpace β] {s t s₁ s₂ t₁ t₂ : Set α} {x : α}

/-- The filter of neighborhoods of a set in a topological space. -/
def nhdsSet (s : Set α) : Filter α :=
  sSup (nhds '' s)
#align nhds_set nhdsSet

@[inherit_doc] scoped[Topology] notation "𝓝ˢ" => nhdsSet

theorem nhdsSet_diagonal (α) [TopologicalSpace (α × α)] :
    𝓝ˢ (diagonal α) = ⨆ (x : α), 𝓝 (x, x) := by
  rw [nhdsSet, ← range_diag, ← range_comp]
  rfl
#align nhds_set_diagonal nhdsSet_diagonal

theorem mem_nhdsSet_iff_forall : s ∈ 𝓝ˢ t ↔ ∀ x : α, x ∈ t → s ∈ 𝓝 x := by
  simp_rw [nhdsSet, Filter.mem_sSup, ball_image_iff]
#align mem_nhds_set_iff_forall mem_nhdsSet_iff_forall

theorem bUnion_mem_nhdsSet {t : α → Set α} (h : ∀ x ∈ s, t x ∈ 𝓝 x) : (⋃ x ∈ s, t x) ∈ 𝓝ˢ s :=
  mem_nhdsSet_iff_forall.2 fun x hx => mem_of_superset (h x hx) <|
    subset_iUnion₂ (s := fun x _ => t x) x hx -- porting note: fails to find `s`
#align bUnion_mem_nhds_set bUnion_mem_nhdsSet

theorem subset_interior_iff_mem_nhdsSet : s ⊆ interior t ↔ t ∈ 𝓝ˢ s := by
  simp_rw [mem_nhdsSet_iff_forall, subset_interior_iff_nhds]
#align subset_interior_iff_mem_nhds_set subset_interior_iff_mem_nhdsSet

theorem disjoint_principal_nhdsSet : Disjoint (𝓟 s) (𝓝ˢ t) ↔ Disjoint (closure s) t := by
  rw [disjoint_principal_left, ← subset_interior_iff_mem_nhdsSet, interior_compl,
    subset_compl_iff_disjoint_left]

theorem disjoint_nhdsSet_principal : Disjoint (𝓝ˢ s) (𝓟 t) ↔ Disjoint s (closure t) := by
  rw [disjoint_comm, disjoint_principal_nhdsSet, disjoint_comm]

theorem mem_nhdsSet_iff_exists : s ∈ 𝓝ˢ t ↔ ∃ U : Set α, IsOpen U ∧ t ⊆ U ∧ U ⊆ s := by
  rw [← subset_interior_iff_mem_nhdsSet, subset_interior_iff]
#align mem_nhds_set_iff_exists mem_nhdsSet_iff_exists

theorem hasBasis_nhdsSet (s : Set α) : (𝓝ˢ s).HasBasis (fun U => IsOpen U ∧ s ⊆ U) fun U => U :=
  ⟨fun t => by simp [mem_nhdsSet_iff_exists, and_assoc]⟩
#align has_basis_nhds_set hasBasis_nhdsSet

theorem IsOpen.mem_nhdsSet (hU : IsOpen s) : s ∈ 𝓝ˢ t ↔ t ⊆ s := by
  rw [← subset_interior_iff_mem_nhdsSet, hU.interior_eq]
#align is_open.mem_nhds_set IsOpen.mem_nhdsSet

theorem principal_le_nhdsSet : 𝓟 s ≤ 𝓝ˢ s := fun _s hs =>
  (subset_interior_iff_mem_nhdsSet.mpr hs).trans interior_subset
#align principal_le_nhds_set principal_le_nhdsSet

theorem subset_of_mem_nhdsSet (h : t ∈ 𝓝ˢ s) : s ⊆ t := principal_le_nhdsSet h

theorem Filter.Eventually.self_of_nhdsSet {p : α → Prop} (h : ∀ᶠ x in 𝓝ˢ s, p x) : ∀ x ∈ s, p x :=
  principal_le_nhdsSet h

nonrec theorem Filter.EventuallyEq.self_of_nhdsSet {f g : α → β} (h : f =ᶠ[𝓝ˢ s] g) : EqOn f g s :=
  h.self_of_nhdsSet

@[simp]
theorem nhdsSet_eq_principal_iff : 𝓝ˢ s = 𝓟 s ↔ IsOpen s := by
  rw [← principal_le_nhdsSet.le_iff_eq, le_principal_iff, mem_nhdsSet_iff_forall,
    isOpen_iff_mem_nhds]
#align nhds_set_eq_principal_iff nhdsSet_eq_principal_iff

alias ⟨_, IsOpen.nhdsSet_eq⟩ := nhdsSet_eq_principal_iff
#align is_open.nhds_set_eq IsOpen.nhdsSet_eq

@[simp]
theorem nhdsSet_interior : 𝓝ˢ (interior s) = 𝓟 (interior s) :=
  isOpen_interior.nhdsSet_eq
#align nhds_set_interior nhdsSet_interior

@[simp]
theorem nhdsSet_singleton : 𝓝ˢ {x} = 𝓝 x := by simp [nhdsSet]
#align nhds_set_singleton nhdsSet_singleton

theorem mem_nhdsSet_interior : s ∈ 𝓝ˢ (interior s) :=
  subset_interior_iff_mem_nhdsSet.mp Subset.rfl
#align mem_nhds_set_interior mem_nhdsSet_interior

@[simp]
theorem nhdsSet_empty : 𝓝ˢ (∅ : Set α) = ⊥ := by rw [isOpen_empty.nhdsSet_eq, principal_empty]
#align nhds_set_empty nhdsSet_empty

theorem mem_nhdsSet_empty : s ∈ 𝓝ˢ (∅ : Set α) := by simp
#align mem_nhds_set_empty mem_nhdsSet_empty

@[simp]
theorem nhdsSet_univ : 𝓝ˢ (univ : Set α) = ⊤ := by rw [isOpen_univ.nhdsSet_eq, principal_univ]
#align nhds_set_univ nhdsSet_univ

@[mono]
theorem nhdsSet_mono (h : s ⊆ t) : 𝓝ˢ s ≤ 𝓝ˢ t :=
  sSup_le_sSup <| image_subset _ h
#align nhds_set_mono nhdsSet_mono

theorem monotone_nhdsSet : Monotone (𝓝ˢ : Set α → Filter α) := fun _ _ => nhdsSet_mono
#align monotone_nhds_set monotone_nhdsSet

theorem nhds_le_nhdsSet (h : x ∈ s) : 𝓝 x ≤ 𝓝ˢ s :=
  le_sSup <| mem_image_of_mem _ h
#align nhds_le_nhds_set nhds_le_nhdsSet

@[simp]
theorem nhdsSet_union (s t : Set α) : 𝓝ˢ (s ∪ t) = 𝓝ˢ s ⊔ 𝓝ˢ t := by
  simp only [nhdsSet, image_union, sSup_union]
#align nhds_set_union nhdsSet_union

theorem union_mem_nhdsSet (h₁ : s₁ ∈ 𝓝ˢ t₁) (h₂ : s₂ ∈ 𝓝ˢ t₂) : s₁ ∪ s₂ ∈ 𝓝ˢ (t₁ ∪ t₂) := by
  rw [nhdsSet_union]
  exact union_mem_sup h₁ h₂
#align union_mem_nhds_set union_mem_nhdsSet

@[simp]
theorem nhdsSet_insert (x : α) (s : Set α) : 𝓝ˢ (insert x s) = 𝓝 x ⊔ 𝓝ˢ s := by
  rw [insert_eq, nhdsSet_union, nhdsSet_singleton]

/-- Preimage of a set neighborhood of `t` under a continuous map `f` is a set neighborhood of `s`
provided that `f` maps `s` to `t`.  -/
theorem Continuous.tendsto_nhdsSet {f : α → β} {t : Set β} (hf : Continuous f)
    (hst : MapsTo f s t) : Tendsto f (𝓝ˢ s) (𝓝ˢ t) :=
  ((hasBasis_nhdsSet s).tendsto_iff (hasBasis_nhdsSet t)).mpr fun U hU =>
    ⟨f ⁻¹' U, ⟨hU.1.preimage hf, hst.mono Subset.rfl hU.2⟩, fun _ => id⟩
#align continuous.tendsto_nhds_set Continuous.tendsto_nhdsSet
```
