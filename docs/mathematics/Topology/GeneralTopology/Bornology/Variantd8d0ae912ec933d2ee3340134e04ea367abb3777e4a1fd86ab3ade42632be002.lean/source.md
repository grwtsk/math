# Complete source: GRWTSK.Topology.GeneralTopology.Bornology.Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76100717905727ec127722a2ca47a59b7803ccd4` · SHA-256 `7219898732d23df09270b83222ef95048d4532396bc3c9b9123f750a3151317c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsOrderBornology.Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsOrderBornology.Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"eca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/Bornology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Topology.Bornology.Constructions

/-!
# Bornology of order-bounded sets

This file relates the notion of bornology-boundedness (sets that lie in a bornology) to the notion
of order-boundedness (sets that are bounded above and below).

## Main declarations

* `orderBornology`: The bornology of order-bounded sets of a nonempty lattice.
* `IsOrderBornology`: Typeclass predicate for a preorder to be equipped with its order-bornology.
-/


namespace GRWTSK.Topology.GeneralTopology.IsOrderBornology.Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c

open Bornology Set

variable {α : Type*} {s t : Set α}

section Lattice
variable [Lattice α] [Nonempty α]

/-- Order-bornology on a nonempty lattice. The bounded sets are the sets that are bounded both above
and below. -/
def orderBornology : Bornology α := .ofBounded
  {s | BddBelow s ∧ BddAbove s}
  (by simp)
  (fun _ hs _ hst ↦ ⟨hs.1.mono hst, hs.2.mono hst⟩)
  (fun _ hs _ ht ↦ ⟨hs.1.union ht.1, hs.2.union ht.2⟩)
  (by simp)

@[simp] lemma orderBornology_isBounded : orderBornology.IsBounded s ↔ BddBelow s ∧ BddAbove s := by
  simp [IsBounded, IsCobounded, -isCobounded_compl_iff]

end Lattice

variable [Bornology α]

variable (α) [Preorder α] in
/-- Predicate for a preorder to be equipped with its order-bornology, namely for its bounded sets
to be the ones that are bounded both above and below. -/
class IsOrderBornology : Prop where
  protected isBounded_iff_bddBelow_bddAbove (s : Set α) : IsBounded s ↔ BddBelow s ∧ BddAbove s

lemma isOrderBornology_iff_eq_orderBornology [Lattice α] [Nonempty α] :
    IsOrderBornology α ↔ ‹Bornology α› = orderBornology := by
  refine ⟨fun h ↦ ?_, fun h ↦ ⟨fun s ↦ by rw [h, orderBornology_isBounded]⟩⟩
  ext s
  exact isBounded_compl_iff.symm.trans (h.1 _)

section Preorder
variable [Preorder α] [IsOrderBornology α]

lemma isBounded_iff_bddBelow_bddAbove : IsBounded s ↔ BddBelow s ∧ BddAbove s :=
  IsOrderBornology.isBounded_iff_bddBelow_bddAbove _

protected lemma Bornology.IsBounded.bddBelow (hs : IsBounded s) : BddBelow s :=
  (isBounded_iff_bddBelow_bddAbove.1 hs).1

protected lemma Bornology.IsBounded.bddAbove (hs : IsBounded s) : BddAbove s :=
  (isBounded_iff_bddBelow_bddAbove.1 hs).2

protected lemma BddBelow.isBounded (hs₀ : BddBelow s) (hs₁ : BddAbove s) : IsBounded s :=
  isBounded_iff_bddBelow_bddAbove.2 ⟨hs₀, hs₁⟩

protected lemma BddAbove.isBounded (hs₀ : BddAbove s) (hs₁ : BddBelow s) : IsBounded s :=
  isBounded_iff_bddBelow_bddAbove.2 ⟨hs₁, hs₀⟩

lemma BddBelow.isBounded_inter (hs : BddBelow s) (ht : BddAbove t) : IsBounded (s ∩ t) :=
  (hs.mono inter_subset_left).isBounded <| ht.mono inter_subset_right

lemma BddAbove.isBounded_inter (hs : BddAbove s) (ht : BddBelow t) : IsBounded (s ∩ t) :=
  (hs.mono inter_subset_left).isBounded <| ht.mono inter_subset_right

instance OrderDual.instIsOrderBornology : IsOrderBornology αᵒᵈ where
  isBounded_iff_bddBelow_bddAbove s := by
    rw [← isBounded_preimage_toDual, ← bddBelow_preimage_toDual, ← bddAbove_preimage_toDual,
      isBounded_iff_bddBelow_bddAbove, and_comm]

instance Prod.instIsOrderBornology {β : Type*} [Preorder β] [Bornology β] [IsOrderBornology β] :
    IsOrderBornology (α × β) where
  isBounded_iff_bddBelow_bddAbove s := by
    rw [← isBounded_image_fst_and_snd, bddBelow_prod, bddAbove_prod, and_and_and_comm,
      isBounded_iff_bddBelow_bddAbove, isBounded_iff_bddBelow_bddAbove]

instance Pi.instIsOrderBornology {ι : Type*} {α : ι → Type*} [∀ i, Preorder (α i)]
    [∀ i, Bornology (α i)] [∀ i, IsOrderBornology (α i)] : IsOrderBornology (∀ i, α i) where
  isBounded_iff_bddBelow_bddAbove s := by
    simp_rw [← forall_isBounded_image_eval_iff, bddBelow_pi, bddAbove_pi, ← forall_and,
      isBounded_iff_bddBelow_bddAbove]

end Preorder

section ConditionallyCompleteLattice
variable [ConditionallyCompleteLattice α] [IsOrderBornology α] {s : Set α}

protected lemma Bornology.IsBounded.subset_Icc_sInf_sSup (hs : IsBounded s) :
    s ⊆ Icc (sInf s) (sSup s) := subset_Icc_csInf_csSup hs.bddBelow hs.bddAbove

end ConditionallyCompleteLattice
```
