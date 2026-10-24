# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18d2172b2ffc0bb133d9baeded645324f9e2428d` · SHA-256 `b2b2fe46a6e0412e6f46e5fb55918de9bda00d570c6550e6d88b62754613f4f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListSupportSumSubset.Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListSupportSumSubset.Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34","mathematical_subject":"Computation.DataStructures","original_sha256":"746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finsupp/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Group.Finsupp
import Mathlib.Data.Finset.Pairwise

/-!

# Sums of collections of Finsupp, and their support
This file provides results about the `Finsupp.support` of sums of collections of `Finsupp`,
including sums of `List`, `Multiset`, and `Finset`.

The support of the sum is a subset of the union of the supports:
* `List.support_sum_subset`
* `Multiset.support_sum_subset`
* `Finset.support_sum_subset`

The support of the sum of pairwise disjoint finsupps is equal to the union of the supports
* `List.support_sum_eq`
* `Multiset.support_sum_eq`
* `Finset.support_sum_eq`

Member in the support of the indexed union over a collection iff
it is a member of the support of a member of the collection:
* `List.mem_foldr_sup_support_iff`
* `Multiset.mem_sup_map_support_iff`
* `Finset.mem_sup_support_iff`

-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListSupportSumSubset.Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34

variable {ι M : Type*} [DecidableEq ι]

theorem List.support_sum_subset [AddZeroClass M] (l : List (ι →₀ M)) :
    l.sum.support ⊆ l.foldr (Finsupp.support · ⊔ ·) ∅ := by
  induction' l with hd tl IH
  · simp
  · simp only [List.sum_cons, Finset.union_comm]
    refine Finsupp.support_add.trans (Finset.union_subset_union ?_ IH)
    rfl

theorem Multiset.support_sum_subset [AddCommMonoid M] (s : Multiset (ι →₀ M)) :
    s.sum.support ⊆ (s.map Finsupp.support).sup := by
  induction s using Quot.inductionOn
  simpa only [Multiset.quot_mk_to_coe'', Multiset.sum_coe, Multiset.map_coe, Multiset.sup_coe,
    List.foldr_map] using List.support_sum_subset _

theorem Finset.support_sum_subset [AddCommMonoid M] (s : Finset (ι →₀ M)) :
    (s.sum id).support ⊆ Finset.sup s Finsupp.support := by
  classical convert Multiset.support_sum_subset s.1; simp

theorem List.mem_foldr_sup_support_iff [Zero M] {l : List (ι →₀ M)} {x : ι} :
    x ∈ l.foldr (Finsupp.support · ⊔ ·) ∅ ↔ ∃ f ∈ l, x ∈ f.support := by
  simp only [Finset.sup_eq_union, List.foldr_map, Finsupp.mem_support_iff, exists_prop]
  induction' l with hd tl IH
  · simp
  · simp only [foldr, Function.comp_apply, Finset.mem_union, Finsupp.mem_support_iff, ne_eq, IH,
      find?, mem_cons, exists_eq_or_imp]

theorem Multiset.mem_sup_map_support_iff [Zero M] {s : Multiset (ι →₀ M)} {x : ι} :
    x ∈ (s.map Finsupp.support).sup ↔ ∃ f ∈ s, x ∈ f.support :=
  Quot.inductionOn s fun _ ↦ by
    simpa only [Multiset.quot_mk_to_coe'', Multiset.map_coe, Multiset.sup_coe, List.foldr_map]
    using List.mem_foldr_sup_support_iff

theorem Finset.mem_sup_support_iff [Zero M] {s : Finset (ι →₀ M)} {x : ι} :
    x ∈ s.sup Finsupp.support ↔ ∃ f ∈ s, x ∈ f.support :=
  Multiset.mem_sup_map_support_iff

open scoped Function -- required for scoped `on` notation

theorem List.support_sum_eq [AddZeroClass M] (l : List (ι →₀ M))
    (hl : l.Pairwise (_root_.Disjoint on Finsupp.support)) :
    l.sum.support = l.foldr (Finsupp.support · ⊔ ·) ∅ := by
  induction' l with hd tl IH
  · simp
  · simp only [List.pairwise_cons] at hl
    simp only [List.sum_cons, List.foldr_cons, Function.comp_apply]
    rw [Finsupp.support_add_eq, IH hl.right, Finset.sup_eq_union]
    suffices _root_.Disjoint hd.support (tl.foldr (fun x y ↦ (Finsupp.support x ⊔ y)) ∅) by
      exact Finset.disjoint_of_subset_right (List.support_sum_subset _) this
    rw [← List.foldr_map, ← Finset.bot_eq_empty, List.foldr_sup_eq_sup_toFinset,
      Finset.disjoint_sup_right]
    intro f hf
    simp only [List.mem_toFinset, List.mem_map] at hf
    obtain ⟨f, hf, rfl⟩ := hf
    exact hl.left _ hf

theorem Multiset.support_sum_eq [AddCommMonoid M] (s : Multiset (ι →₀ M))
    (hs : s.Pairwise (_root_.Disjoint on Finsupp.support)) :
    s.sum.support = (s.map Finsupp.support).sup := by
  induction' s using Quot.inductionOn with a
  obtain ⟨l, hl, hd⟩ := hs
  suffices a.Pairwise (_root_.Disjoint on Finsupp.support) by
    convert List.support_sum_eq a this
    dsimp only [Function.comp_def]
    simp only [quot_mk_to_coe'', map_coe, sup_coe, Finset.le_eq_subset,
      Finset.sup_eq_union, Finset.bot_eq_empty, List.foldr_map]
  simp only [Multiset.quot_mk_to_coe'', Multiset.map_coe, Multiset.coe_eq_coe] at hl
  exact hl.symm.pairwise hd fun h ↦ _root_.Disjoint.symm h

theorem Finset.support_sum_eq [AddCommMonoid M] (s : Finset (ι →₀ M))
    (hs : (s : Set (ι →₀ M)).PairwiseDisjoint Finsupp.support) :
    (s.sum id).support = Finset.sup s Finsupp.support := by
  classical
  suffices s.1.Pairwise (_root_.Disjoint on Finsupp.support) by
    convert Multiset.support_sum_eq s.1 this
    exact (Finset.sum_val _).symm
  obtain ⟨l, hl, hn⟩ : ∃ l : List (ι →₀ M), l.toFinset = s ∧ l.Nodup := by
    refine ⟨s.toList, ?_, Finset.nodup_toList _⟩
    simp
  subst hl
  rwa [List.toFinset_val, List.dedup_eq_self.mpr hn, Multiset.pairwise_coe_iff_pairwise, ←
    List.pairwiseDisjoint_iff_coe_toFinset_pairwise_disjoint hn]
  intro x y hxy
  exact symmetric_disjoint hxy
```
