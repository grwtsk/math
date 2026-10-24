# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Finite.Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d9aaa219a181404cb44d8c4f4aa1067fed5b8ff` · SHA-256 `febd31b82bfe6868aa391b09aaf09466b7c86555aa131a97070e2d529345cd9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Univ.Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Univ.Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"dd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Atoms/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.Data.Set.Finite.Lattice
import Mathlib.Order.Atoms
import Mathlib.Order.Interval.Finset.Defs
import Mathlib.Order.Preorder.Finite

/-!
# Atoms, Coatoms, Simple Lattices, and Finiteness

This module contains some results on atoms and simple lattices in the finite context.

## Main results
  * `Finite.to_isAtomic`, `Finite.to_isCoatomic`: Finite partial orders with bottom resp. top
    are atomic resp. coatomic.

-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Univ.Variantdd1ebd8756d8e965ac75fda957821be840cfda3a952483c4365b037a72414b82

variable {α β : Type*}

namespace IsSimpleOrder

variable [LE α] [BoundedOrder α] [IsSimpleOrder α]

section DecidableEq

/- It is important that `IsSimpleOrder` is the last type-class argument of this instance,
so that type-class inference fails quickly if it doesn't apply. -/
instance (priority := 200) [DecidableEq α] : Fintype α :=
  Fintype.ofEquiv Bool equivBool.symm

end DecidableEq

instance (priority := 200) : Finite α := by classical infer_instance

end IsSimpleOrder

namespace Fintype

namespace IsSimpleOrder

variable [LE α] [BoundedOrder α] [IsSimpleOrder α] [DecidableEq α]

theorem univ : (Finset.univ : Finset α) = {⊤, ⊥} := by
  change Finset.map _ (Finset.univ : Finset Bool) = _
  rw [Fintype.univ_bool]
  simp only [Finset.map_insert, Function.Embedding.coeFn_mk, Finset.map_singleton]
  rfl

theorem card : Fintype.card α = 2 :=
  (Fintype.ofEquiv_card _).trans Fintype.card_bool

end IsSimpleOrder

end Fintype

namespace Bool

instance : IsSimpleOrder Bool :=
  ⟨fun a => by
    rw [← Finset.mem_singleton, Or.comm, ← Finset.mem_insert, top_eq_true, bot_eq_false, ←
      Fintype.univ_bool]
    apply Finset.mem_univ⟩

end Bool

section Fintype

open Finset

-- see Note [lower instance priority]
instance (priority := 100) Finite.to_isCoatomic [PartialOrder α] [OrderTop α] [Finite α] :
    IsCoatomic α := by
  refine IsCoatomic.mk fun b => or_iff_not_imp_left.2 fun ht => ?_
  obtain ⟨c, hc, hmax⟩ :=
    Set.Finite.exists_maximalFor id { x : α | b ≤ x ∧ x ≠ ⊤ } (Set.toFinite _) ⟨b, le_rfl, ht⟩
  refine ⟨c, ⟨hc.2, fun y hcy => ?_⟩, hc.1⟩
  by_contra hyt
  exact not_lt_iff_le_imp_le.2 (hmax ⟨hc.1.trans hcy.le, hyt⟩) hcy

-- see Note [lower instance priority]
instance (priority := 100) Finite.to_isAtomic [PartialOrder α] [OrderBot α] [Finite α] :
    IsAtomic α :=
  isCoatomic_dual_iff_isAtomic.mp Finite.to_isCoatomic

end Fintype

section LocallyFinite

variable [Preorder α] [LocallyFiniteOrder α]

instance : IsStronglyAtomic α where
  exists_covBy_le_of_lt a b hab := by
    obtain ⟨x, hx, hxmin⟩ := (LocallyFiniteOrder.finsetIoc a b).exists_minimal
      ⟨b, by simpa [LocallyFiniteOrder.finset_mem_Ioc]⟩
    simp only [LocallyFiniteOrder.finset_mem_Ioc] at hx hxmin
    exact ⟨x, ⟨hx.1, fun c hac hcx ↦ hcx.not_le <| hxmin ⟨hac, hcx.le.trans hx.2⟩ hcx.le⟩, hx.2⟩

instance : IsStronglyCoatomic α := by
  rw [← isStronglyAtomic_dual_iff_is_stronglyCoatomic]; infer_instance

end LocallyFinite

section IsStronglyAtomic

variable [PartialOrder α] {a : α}

theorem exists_covby_infinite_Ici_of_infinite_Ici [IsStronglyAtomic α]
    (ha : (Set.Ici a).Infinite) (hfin : {x | a ⋖ x}.Finite) :
    ∃ b, a ⋖ b ∧ (Set.Ici b).Infinite := by
  by_contra! h
  refine ((hfin.biUnion (t := Set.Ici) (by simpa using h)).subset (fun b hb ↦ ?_)).not_infinite
    (ha.diff (Set.finite_singleton a))
  obtain ⟨x, hax, hxb⟩ := ((show a ≤ b from hb.1).lt_of_ne (Ne.symm hb.2)).exists_covby_le
  exact Set.mem_biUnion hax hxb

theorem exists_covby_infinite_Iic_of_infinite_Iic [IsStronglyCoatomic α]
    (ha : (Set.Iic a).Infinite) (hfin : {x | x ⋖ a}.Finite) :
    ∃ b, b ⋖ a ∧ (Set.Iic b).Infinite := by
  simp_rw [← toDual_covBy_toDual_iff (α := α)] at hfin ⊢
  exact exists_covby_infinite_Ici_of_infinite_Ici (α := αᵒᵈ) ha hfin

end IsStronglyAtomic
```
