# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant51715179534c90bbd0a734dd8570f52044ebcfec71f3b58588036c019ad87917

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86356d5987dc850f9cd45cba7ceec0456a0ab998` · SHA-256 `5b5188f9f3aa041bfd4abeb8bf42eb09cb8b3f0fa1dc7b3e13ad72441b8e5570`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SetoidIsPartitionNcardEqFinsum.Variantc9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SetoidIsPartitionNcardEqFinsum.Variantc9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Setoid/Partition/Card.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/
module

public import Mathlib.Algebra.BigOperators.Finprod
public import Mathlib.Data.Set.Card
public import Mathlib.Data.Setoid.Partition

/-! # Cardinality of parts of partitions

* `Setoid.IsPartition.ncard_eq_finsum` on an ambient finite type,
  the cardinal of a set is the sum of the cardinalities of its trace on the parts of the partition

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SetoidIsPartitionNcardEqFinsum.Variantc9eecee0a820b867eb91734b33fc60b542e1946496d3615bee9b29a6faeb96b7

public section

section Finite

/-- Given a partition of the ambient type, the cardinal of a finite set
  is the `finsum` of the cardinalities of its traces on the parts of the partition -/
theorem Setoid.IsPartition.ncard_eq_finsum {α : Type*} {P : Set (Set α)}
    (hP : Setoid.IsPartition P) (s : Set α) (hs : s.Finite := by toFinite_tac) :
    s.ncard = finsum fun t : P => (s ∩ t).ncard := by
  classical
  have hst (t : Set α) : (s ∩ t).Finite := hs.inter_of_left t
  have hst' (t : Set α) : Nat.card ↑(s ∩ t) = (hst t).toFinset.card :=
    Nat.card_eq_card_finite_toFinset (hst t)
  suffices hs' : _ by
    rw [finsum_def, dite_eq_left hs']
    simp only [← Nat.card_coe_set_eq, Nat.card_eq_card_finite_toFinset hs]
    rw [Finset.sum_congr rfl (fun t ht ↦ by exact hst' ↑t)]
    rw [← Finset.card_sigma, eq_comm]
    apply Finset.card_nbij' (fun ⟨t, x⟩ ↦ x)
      (fun x ↦ ⟨⟨(hP.2 x).exists.choose, (hP.2 x).exists.choose_spec.1⟩, x⟩)
    · rintro ⟨t, x⟩
      simp +contextual
    · intro x
      simp only [Set.Finite.mem_toFinset, Finset.mem_sigma, Function.mem_support, Set.mem_inter_iff,
        Finset.mem_coe]
      intro hx
      refine ⟨Nat.card_ne_zero.mpr ⟨?_, hst (hP.right x).exists.choose⟩,
        hx, (hP.2 x).exists.choose_spec.2⟩
      simp only [nonempty_subtype, Set.mem_inter_iff]
      use x, hx, (hP.2 x).exists.choose_spec.2
    · rintro ⟨t, x⟩
      simp only [Finset.mem_sigma, Set.Finite.mem_toFinset, Function.mem_support, Nat.card_ne_zero,
        Set.mem_inter_iff, Sigma.mk.inj_iff, heq_eq_eq, and_true, and_imp, Finset.mem_coe]
      simp only [nonempty_subtype, Set.mem_inter_iff, forall_exists_index, and_imp]
      intro y hy hyt _ hxs hxt
      rw [← Subtype.coe_inj]
      exact (hP.2 x).unique (hP.2 x).exists.choose_spec ⟨t.prop, hxt⟩
    · intro t
      simp only [implies_true]
  let f : Function.support (fun (t : P) ↦ (s ∩ (t : Set α)).ncard) → s := fun ⟨t, ht⟩ ↦
    ⟨(Set.nonempty_of_ncard_ne_zero ht).choose, (Set.nonempty_of_ncard_ne_zero ht).choose_spec.1⟩
  have hf (t : Function.support (fun (t : P) ↦ (s ∩ (t : Set α)).ncard)) :
      ↑↑t ∈ P ∧ (f t : α) ∈ (t : Set α) :=
    ⟨(↑t : P).prop, (Set.nonempty_of_ncard_ne_zero t.prop).choose_spec.2⟩
  have : Finite ↑s := hs
  apply Finite.of_injective f
  intro t t' h
  simp only [← Subtype.coe_inj]
  exact (hP.2 (f t)).unique (hf t) (h ▸ hf t')

end Finite
```
