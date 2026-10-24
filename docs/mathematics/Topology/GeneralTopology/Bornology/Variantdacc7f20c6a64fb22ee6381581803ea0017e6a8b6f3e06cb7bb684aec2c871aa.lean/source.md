# Complete source: GRWTSK.Topology.GeneralTopology.Bornology.Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a541e9d2e14ff7318e9ee5f218c5a794bcf35191` · SHA-256 `abc09ae15175e2693e1fe901d68a2cc8cb7299c68deecdc1842bb45ac608941e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsOrderBornology.Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsOrderBornology.Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Order/Bornology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.ConditionallyCompleteLattice.Basic
public import Mathlib.Topology.Bornology.Constructions

/-!
# Bornology of order-bounded sets

This file relates the notion of bornology-boundedness (sets that lie in a bornology) to the notion
of order-boundedness (sets that are bounded above and below).

## Main declarations

* `orderBornology`: The bornology of order-bounded sets of a nonempty lattice.
* `IsOrderBornology`: Typeclass predicate for a preorder to be equipped with its order-bornology.
-/


namespace GRWTSK.Topology.GeneralTopology.IsOrderBornology.Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d

@[expose] public section

open Bornology Set

variable {α : Type*} {s t : Set α}

section Lattice
variable [Lattice α] [Nonempty α]

/-- Order-bornology on a nonempty lattice. The bounded sets are the sets that are bounded both above
and below. -/
@[instance_reducible]
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

variable (α) in
lemma Nonempty.of_isOrderBornology : Nonempty α := Bornology.isBounded_empty.bddBelow.nonempty

instance IsOrderBornology.neBot_cobounded_of_noBotOrder [NoBotOrder α] : (cobounded α).NeBot := by
  simp [Filter.neBot_iff, cobounded_eq_bot_iff, ← isBounded_univ, isBounded_iff_bddBelow_bddAbove]

instance IsOrderBornology.neBot_cobounded_of_noTopOrder [NoTopOrder α] : (cobounded α).NeBot :=
  neBot_cobounded_of_noBotOrder (α := αᵒᵈ)

lemma IsOrderBornology.atTop_le_cobounded [NoMaxOrder α] : .atTop ≤ Bornology.cobounded α := by
  intro s hs
  rw [← compl_compl s, ← isBounded_def, isBounded_iff_bddBelow_bddAbove] at hs
  obtain ⟨b, hb⟩ := hs.2
  obtain ⟨c, hbc⟩ := exists_gt b
  refine Filter.mem_of_superset (Filter.mem_atTop c) fun x hx ↦ ?_
  by_contra hx'
  exact hbc.not_ge <| hx.trans <| hb <| mem_compl hx'

-- TODO (khw): Generate this in the future with `to_dual`
-- See https://github.com/leanprover-community/mathlib4/pull/37738
lemma IsOrderBornology.atBot_le_cobounded [NoMinOrder α] : .atBot ≤ Bornology.cobounded α :=
  atTop_le_cobounded (α := αᵒᵈ)

end Preorder

section LinearOrder

variable [LinearOrder α] [IsOrderBornology α]

lemma IsOrderBornology.cobounded_le_atBot_sup_atTop : cobounded α ≤ .atBot ⊔ .atTop := by
  have := Nonempty.of_isOrderBornology α
  intro s
  rw [Filter.mem_sup, Filter.atTop_basis.mem_iff, Filter.atBot_basis.mem_iff,
    ← compl_compl s, ← isBounded_def, isBounded_iff_bddBelow_bddAbove, compl_compl s]
  intro ⟨⟨b, _, hb⟩, ⟨a, _, ha⟩⟩
  refine ⟨⟨b, fun x hx ↦ ?_⟩, ⟨a, fun x hx ↦ ?_⟩⟩ <;> by_contra! hx'
  · exact hx (hb hx'.le)
  · exact hx (ha hx'.le)

@[simp]
lemma IsOrderBornology.cobounded_eq [NoMaxOrder α] [NoMinOrder α] :
    Bornology.cobounded α = .atBot ⊔ .atTop :=
  cobounded_le_atBot_sup_atTop.antisymm <|
    sup_le IsOrderBornology.atBot_le_cobounded IsOrderBornology.atTop_le_cobounded

lemma IsOrderBornology.cobounded_eq_atTop [NoMaxOrder α] [OrderBot α] :
    Bornology.cobounded α = .atTop := by
  refine atTop_le_cobounded.antisymm' fun s ↦ ?_
  rw [Filter.atTop_basis.mem_iff,
    ← compl_compl s, ← isBounded_def, isBounded_iff_bddBelow_bddAbove, compl_compl s]
  refine fun ⟨b, _, hb⟩ ↦ ⟨⟨⊥, fun x hx ↦ by simp⟩, ⟨b, fun x hx ↦ ?_⟩⟩
  by_contra! hx'
  exact hx (hb hx'.le)

-- TODO (khw): Generate this in the future with `to_dual`
-- See https://github.com/leanprover-community/mathlib4/pull/37738
@[to_dual existing]
lemma IsOrderBornology.cobounded_eq_atBot [NoMinOrder α] [OrderTop α] :
    Bornology.cobounded α = .atBot := cobounded_eq_atTop (α := αᵒᵈ)

end LinearOrder

section ConditionallyCompleteLattice
variable [ConditionallyCompleteLattice α] [IsOrderBornology α] {s : Set α}

protected lemma Bornology.IsBounded.subset_Icc_sInf_sSup (hs : IsBounded s) :
    s ⊆ Icc (sInf s) (sSup s) := subset_Icc_csInf_csSup hs.bddBelow hs.bddAbove

end ConditionallyCompleteLattice
```
