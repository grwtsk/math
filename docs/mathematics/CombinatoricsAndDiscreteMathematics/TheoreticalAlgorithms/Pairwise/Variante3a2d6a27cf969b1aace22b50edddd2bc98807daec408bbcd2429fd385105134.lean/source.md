# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e71d4e101e67eb7efb5c483c02f9ad024339f997` · SHA-256 `edb8be785a9329ab12bb7d828c2f84b586070a825a1dbc7681cb549df5cc17ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PairwiseForallOfForall.Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PairwiseForallOfForall.Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4","mathematical_subject":"Computation.DataStructures","original_sha256":"311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/Pairwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Batteries.Data.List.Pairwise
import Mathlib.Logic.Pairwise
import Mathlib.Logic.Relation

/-!
# Pairwise relations on a list

This file provides basic results about `List.Pairwise` and `List.pwFilter` (definitions are in
`Data.List.Defs`).
`Pairwise r [a 0, ..., a (n - 1)]` means `∀ i j, i < j → r (a i) (a j)`. For example,
`Pairwise (≠) l` means that all elements of `l` are distinct, and `Pairwise (<) l` means that `l`
is strictly increasing.
`pwFilter r l` is the list obtained by iteratively adding each element of `l` that doesn't break
the pairwiseness of the list we have so far. It thus yields `l'` a maximal sublist of `l` such that
`Pairwise r l'`.

## Tags

sorted, nodup
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PairwiseForallOfForall.Variant311bd6d03d566cb0f98567267e0891f02faf20a5ed9159d86b252f2124b9a8c4

open Nat Function

namespace List

variable {α β : Type*} {R : α → α → Prop} {l : List α} {a : α}

mk_iff_of_inductive_prop List.Pairwise List.pairwise_iff

/-! ### Pairwise -/

theorem Pairwise.forall_of_forall (H : Symmetric R) (H₁ : ∀ x ∈ l, R x x) (H₂ : l.Pairwise R) :
    ∀ ⦃x⦄, x ∈ l → ∀ ⦃y⦄, y ∈ l → R x y :=
  H₂.forall_of_forall_of_flip H₁ <| by rwa [H.flip_eq]

theorem Pairwise.forall (hR : Symmetric R) (hl : l.Pairwise R) :
    ∀ ⦃a⦄, a ∈ l → ∀ ⦃b⦄, b ∈ l → a ≠ b → R a b := by
  apply Pairwise.forall_of_forall
  · exact fun a b h hne => hR (h hne.symm)
  · exact fun _ _ hx => (hx rfl).elim
  · exact hl.imp (@fun a b h _ => by exact h)

theorem Pairwise.set_pairwise (hl : Pairwise R l) (hr : Symmetric R) : { x | x ∈ l }.Pairwise R :=
  hl.forall hr

theorem pairwise_of_reflexive_of_forall_ne (hr : Reflexive R)
    (h : ∀ a ∈ l, ∀ b ∈ l, a ≠ b → R a b) : l.Pairwise R := by
  rw [pairwise_iff_forall_sublist]
  intro a b hab
  if heq : a = b then
    cases heq; apply hr
  else
    apply h <;> try (apply hab.subset; simp)
    exact heq

theorem Pairwise.rel_head_tail (h₁ : l.Pairwise R) (ha : a ∈ l.tail) :
    R (l.head <| ne_nil_of_mem <| mem_of_mem_tail ha) a := by
  cases l with
  | nil => simp at ha
  | cons b l => exact (pairwise_cons.1 h₁).1 a ha

theorem Pairwise.rel_head_of_rel_head_head (h₁ : l.Pairwise R) (ha : a ∈ l)
    (hhead : R (l.head <| ne_nil_of_mem ha) (l.head <| ne_nil_of_mem ha)) :
    R (l.head <| ne_nil_of_mem ha) a := by
  cases l with
  | nil => simp at ha
  | cons b l => exact (mem_cons.mp ha).elim (· ▸ hhead) ((pairwise_cons.1 h₁).1 _)

theorem Pairwise.rel_head [IsRefl α R] (h₁ : l.Pairwise R) (ha : a ∈ l) :
    R (l.head <| ne_nil_of_mem ha) a :=
  h₁.rel_head_of_rel_head_head ha (refl_of ..)

theorem Pairwise.rel_dropLast_getLast (h : l.Pairwise R) (ha : a ∈ l.dropLast) :
    R a (l.getLast <| ne_nil_of_mem <| dropLast_subset _ ha) := by
  rw [← pairwise_reverse] at h
  rw [getLast_eq_head_reverse]
  exact h.rel_head_tail (by rwa [tail_reverse, mem_reverse])

theorem Pairwise.rel_getLast_of_rel_getLast_getLast (h₁ : l.Pairwise R) (ha : a ∈ l)
    (hlast : R (l.getLast <| ne_nil_of_mem ha) (l.getLast <| ne_nil_of_mem ha)) :
    R a (l.getLast <| ne_nil_of_mem ha) := by
  rw [← dropLast_concat_getLast (ne_nil_of_mem ha), mem_append, List.mem_singleton] at ha
  exact ha.elim h₁.rel_dropLast_getLast (· ▸ hlast)

theorem Pairwise.rel_getLast [IsRefl α R] (h₁ : l.Pairwise R) (ha : a ∈ l) :
    R a (l.getLast <| ne_nil_of_mem ha) :=
  h₁.rel_getLast_of_rel_getLast_getLast ha (refl_of ..)

protected alias ⟨Pairwise.of_reverse, Pairwise.reverse⟩ := pairwise_reverse

/-! ### Pairwise filtering -/

protected alias ⟨_, Pairwise.pwFilter⟩ := pwFilter_eq_self

end List
```
