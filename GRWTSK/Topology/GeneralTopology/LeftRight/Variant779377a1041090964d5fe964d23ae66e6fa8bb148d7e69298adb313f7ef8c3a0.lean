-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FrequentlyLtNhds.Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FrequentlyLtNhds.Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9","mathematical_subject":"Topology.GeneralTopology","original_sha256":"124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/LeftRight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
import Mathlib.Order.Antichain
import Mathlib.Topology.ContinuousOn

/-!
# Left and right continuity

In this file we prove a few lemmas about left and right continuous functions:

* `continuousWithinAt_Ioi_iff_Ici`: two definitions of right continuity
  (with `(a, ∞)` and with `[a, ∞)`) are equivalent;
* `continuousWithinAt_Iio_iff_Iic`: two definitions of left continuity
  (with `(-∞, a)` and with `(-∞, a]`) are equivalent;
* `continuousAt_iff_continuous_left_right`, `continuousAt_iff_continuous_left'_right'` :
  a function is continuous at `a` if and only if it is left and right continuous at `a`.

## Tags

left continuous, right continuous
-/



namespace GRWTSK.Topology.GeneralTopology.FrequentlyLtNhds.Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9

open Set Filter Topology

section Preorder

variable {α : Type*} [TopologicalSpace α] [Preorder α]

lemma frequently_lt_nhds (a : α) [NeBot (𝓝[<] a)] : ∃ᶠ x in 𝓝 a, x < a :=
  frequently_iff_neBot.2 ‹_›

lemma frequently_gt_nhds (a : α) [NeBot (𝓝[>] a)] : ∃ᶠ x in 𝓝 a, a < x :=
  frequently_iff_neBot.2 ‹_›

theorem Filter.Eventually.exists_lt {a : α} [NeBot (𝓝[<] a)] {p : α → Prop}
    (h : ∀ᶠ x in 𝓝 a, p x) : ∃ b < a, p b :=
  ((frequently_lt_nhds a).and_eventually h).exists

theorem Filter.Eventually.exists_gt {a : α} [NeBot (𝓝[>] a)] {p : α → Prop}
    (h : ∀ᶠ x in 𝓝 a, p x) : ∃ b > a, p b :=
  ((frequently_gt_nhds a).and_eventually h).exists

theorem nhdsWithin_Ici_neBot {a b : α} (H₂ : a ≤ b) : NeBot (𝓝[Ici a] b) :=
  nhdsWithin_neBot_of_mem H₂

instance nhdsGE_neBot (a : α) : NeBot (𝓝[≥] a) := nhdsWithin_Ici_neBot (le_refl a)

@[deprecated nhdsGE_neBot (since := "2024-12-21")]
theorem nhdsWithin_Ici_self_neBot (a : α) : NeBot (𝓝[≥] a) := nhdsGE_neBot a

theorem nhdsWithin_Iic_neBot {a b : α} (H : a ≤ b) : NeBot (𝓝[Iic b] a) :=
  nhdsWithin_neBot_of_mem H

instance nhdsLE_neBot (a : α) : NeBot (𝓝[≤] a) := nhdsWithin_Iic_neBot (le_refl a)

@[deprecated nhdsLE_neBot (since := "2024-12-21")]
theorem nhdsWithin_Iic_self_neBot (a : α) : NeBot (𝓝[≤] a) := nhdsLE_neBot a

theorem nhdsLT_le_nhdsNE (a : α) : 𝓝[<] a ≤ 𝓝[≠] a :=
  nhdsWithin_mono a fun _ => ne_of_lt

@[deprecated (since := "2024-12-21")] alias nhds_left'_le_nhds_ne := nhdsLT_le_nhdsNE

theorem nhdsGT_le_nhdsNE (a : α) : 𝓝[>] a ≤ 𝓝[≠] a := nhdsWithin_mono a fun _ => ne_of_gt

@[deprecated (since := "2024-12-21")] alias nhds_right'_le_nhds_ne := nhdsGT_le_nhdsNE

-- TODO: add instances for `NeBot (𝓝[<] x)` on (indexed) product types

lemma IsAntichain.interior_eq_empty [∀ x : α, (𝓝[<] x).NeBot] {s : Set α}
    (hs : IsAntichain (· ≤ ·) s) : interior s = ∅ := by
  refine eq_empty_of_forall_notMem fun x hx ↦ ?_
  have : ∀ᶠ y in 𝓝 x, y ∈ s := mem_interior_iff_mem_nhds.1 hx
  rcases this.exists_lt with ⟨y, hyx, hys⟩
  exact hs hys (interior_subset hx) hyx.ne hyx.le

lemma IsAntichain.interior_eq_empty' [∀ x : α, (𝓝[>] x).NeBot] {s : Set α}
    (hs : IsAntichain (· ≤ ·) s) : interior s = ∅ :=
  have : ∀ x : αᵒᵈ, NeBot (𝓝[<] x) := ‹_›
  hs.to_dual.interior_eq_empty

end Preorder

section PartialOrder

variable {α β : Type*} [TopologicalSpace α] [PartialOrder α] [TopologicalSpace β]

theorem continuousWithinAt_Ioi_iff_Ici {a : α} {f : α → β} :
    ContinuousWithinAt f (Ioi a) a ↔ ContinuousWithinAt f (Ici a) a := by
  simp only [← Ici_diff_left, continuousWithinAt_diff_self]

theorem continuousWithinAt_Iio_iff_Iic {a : α} {f : α → β} :
    ContinuousWithinAt f (Iio a) a ↔ ContinuousWithinAt f (Iic a) a :=
  @continuousWithinAt_Ioi_iff_Ici αᵒᵈ _ _ _ _ _ f

end PartialOrder

section TopologicalSpace

variable {α β : Type*} [TopologicalSpace α] [LinearOrder α] [TopologicalSpace β]

theorem nhdsLE_sup_nhdsGE (a : α) : 𝓝[≤] a ⊔ 𝓝[≥] a = 𝓝 a := by
  rw [← nhdsWithin_union, Iic_union_Ici, nhdsWithin_univ]

@[deprecated (since := "2024-12-21")] alias nhds_left_sup_nhds_right := nhdsLE_sup_nhdsGE

theorem nhdsLT_sup_nhdsGE (a : α) : 𝓝[<] a ⊔ 𝓝[≥] a = 𝓝 a := by
  rw [← nhdsWithin_union, Iio_union_Ici, nhdsWithin_univ]

@[deprecated (since := "2024-12-21")] alias nhds_left'_sup_nhds_right := nhdsLT_sup_nhdsGE

theorem nhdsLE_sup_nhdsGT (a : α) : 𝓝[≤] a ⊔ 𝓝[>] a = 𝓝 a := by
  rw [← nhdsWithin_union, Iic_union_Ioi, nhdsWithin_univ]

@[deprecated (since := "2024-12-21")] alias nhds_left_sup_nhds_right' := nhdsLE_sup_nhdsGT

theorem nhdsLT_sup_nhdsGT (a : α) : 𝓝[<] a ⊔ 𝓝[>] a = 𝓝[≠] a := by
  rw [← nhdsWithin_union, Iio_union_Ioi]

@[deprecated (since := "2024-12-21")] alias nhds_left'_sup_nhds_right' := nhdsLT_sup_nhdsGT

lemma nhdsWithin_right_sup_nhds_singleton (a : α) :
    𝓝[>] a ⊔ 𝓝[{a}] a = 𝓝[≥] a := by
  simp only [union_singleton, Ioi_insert, ← nhdsWithin_union]

theorem continuousAt_iff_continuous_left_right {a : α} {f : α → β} :
    ContinuousAt f a ↔ ContinuousWithinAt f (Iic a) a ∧ ContinuousWithinAt f (Ici a) a := by
  simp only [ContinuousWithinAt, ContinuousAt, ← tendsto_sup, nhdsLE_sup_nhdsGE]

theorem continuousAt_iff_continuous_left'_right' {a : α} {f : α → β} :
    ContinuousAt f a ↔ ContinuousWithinAt f (Iio a) a ∧ ContinuousWithinAt f (Ioi a) a := by
  rw [continuousWithinAt_Ioi_iff_Ici, continuousWithinAt_Iio_iff_Iic,
    continuousAt_iff_continuous_left_right]

end TopologicalSpace
