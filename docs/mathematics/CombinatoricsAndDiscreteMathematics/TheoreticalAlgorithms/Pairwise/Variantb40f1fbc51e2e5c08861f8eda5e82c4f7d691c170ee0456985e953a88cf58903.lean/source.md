# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variantb40f1fbc51e2e5c08861f8eda5e82c4f7d691c170ee0456985e953a88cf58903

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7d5ecabdf302af193d1e5d893694c9a1a521561` · SHA-256 `cf4adbc8a6b52d882225d7b5e197cdaa6c0ac803095bc6866d75e75ebe7aa350`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PairwiseIffGet.Variant8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PairwiseIffGet.Variant8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f","mathematical_subject":"Computation.DataStructures","original_sha256":"8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/List/Pairwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, James Gallicchio
-/
module

public import Batteries.Data.List.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PairwiseIffGet.Variant8499097ac4b7628a135cf9987ba62b5044a62e259625f7f750e30a4862b4e27f

@[expose] public section

/-!
# Pairwise relations on a list

This file provides basic results about `List.Pairwise` and `List.pwFilter` (definitions are in
`Batteries.Data.List.Basic`).
`Pairwise r [a 0, ..., a (n - 1)]` means `∀ i j, i < j → r (a i) (a j)`. For example,
`Pairwise (≠) l` means that all elements of `l` are distinct, and `Pairwise (<) l` means that `l`
is strictly increasing.
`pwFilter r l` is the list obtained by iteratively adding each element of `l` that doesn't break
the pairwiseness of the list we have so far. It thus yields `l'` a maximal sublist of `l` such that
`Pairwise r l'`.

## Tags

sorted, nodup
-/


open Nat Function

namespace List

/-! ### Pairwise -/

theorem pairwise_iff_get : Pairwise R l ↔ ∀ (i j) (_hij : i < j), R (get l i) (get l j) := by
  rw [pairwise_iff_getElem]
  constructor <;> intro h
  · intros i j h'
    exact h _ _ _ _ h'
  · intros i j hi hj h'
    exact h ⟨i, hi⟩ ⟨j, hj⟩ h'

/-! ### Pairwise filtering -/

@[simp] theorem pwFilter_nil [DecidableRel R] : pwFilter R [] = [] := rfl

@[simp] theorem pwFilter_cons_of_pos [DecidableRel (α := α) R] {a : α} {l : List α}
    (h : ∀ b ∈ pwFilter R l, R a b) : pwFilter R (a :: l) = a :: pwFilter R l := if_pos h

@[simp] theorem pwFilter_cons_of_neg [DecidableRel (α := α) R] {a : α} {l : List α}
    (h : ¬∀ b ∈ pwFilter R l, R a b) : pwFilter R (a :: l) = pwFilter R l := if_neg h

theorem pwFilter_map [DecidableRel (α := α) R] (f : β → α) :
    ∀ l : List β, pwFilter R (map f l) = map f (pwFilter (fun x y => R (f x) (f y)) l)
  | [] => rfl
  | x :: xs => by
    if h : ∀ b ∈ pwFilter R (map f xs), R (f x) b then
      have h' : ∀ b : β, b ∈ pwFilter (fun x y : β => R (f x) (f y)) xs → R (f x) (f b) :=
        fun b hb => h _ (by rw [pwFilter_map f xs]; apply mem_map_of_mem hb)
      rw [map, pwFilter_cons_of_pos h, pwFilter_cons_of_pos h', pwFilter_map f xs, map]
    else
      rw [map, pwFilter_cons_of_neg h, pwFilter_cons_of_neg ?_, pwFilter_map f xs]
      refine fun hh => h fun a ha => ?_
      rw [pwFilter_map f xs, mem_map] at ha
      let ⟨b, hb₀, hb₁⟩ := ha; exact hb₁ ▸ hh _ hb₀

theorem pwFilter_sublist [DecidableRel (α := α) R] : ∀ l : List α, pwFilter R l <+ l
  | [] => nil_sublist _
  | x :: l =>
    if h : ∀ y ∈ pwFilter R l, R x y then
      pwFilter_cons_of_pos h ▸ (pwFilter_sublist l).cons_cons _
    else
      pwFilter_cons_of_neg h ▸ Sublist.cons _ (pwFilter_sublist l)

theorem pwFilter_subset [DecidableRel (α := α) R] (l : List α) : pwFilter R l ⊆ l :=
  (pwFilter_sublist _).subset

theorem pairwise_pwFilter [DecidableRel (α := α) R] : ∀ l : List α, Pairwise R (pwFilter R l)
  | [] => Pairwise.nil
  | x :: l =>
    if h : ∀ y ∈ pwFilter R l, R x y then
      pwFilter_cons_of_pos h ▸ pairwise_cons.2 ⟨h, pairwise_pwFilter l⟩
    else
      pwFilter_cons_of_neg h ▸ pairwise_pwFilter l

theorem pwFilter_eq_self [DecidableRel (α := α) R] {l : List α} :
    pwFilter R l = l ↔ Pairwise R l := by
  refine ⟨fun e => e ▸ pairwise_pwFilter l, fun p => ?_⟩
  induction l with
  | nil => rfl
  | cons x l IH =>
    let ⟨al, p⟩ := pairwise_cons.1 p
    rw [pwFilter_cons_of_pos fun b hb => ?_, IH p]
    rw [IH p] at hb
    exact al _ hb

@[simp] theorem pwFilter_idem [DecidableRel (α := α) R] :
    pwFilter R (pwFilter R l) = pwFilter R l := pwFilter_eq_self.2 (pairwise_pwFilter ..)

theorem forall_mem_pwFilter [DecidableRel (α := α) R]
    (neg_trans : ∀ {x y z}, R x z → R x y ∨ R y z) (a : α) (l : List α) :
    (∀ b ∈ pwFilter R l, R a b) ↔ ∀ b ∈ l, R a b := by
  refine ⟨?_, fun h b hb => h _ <| pwFilter_subset (R := R) _ hb⟩
  induction l with
  | nil => exact fun _ _ h => (not_mem_nil h).elim
  | cons x l IH =>
    simp only [forall_mem_cons]
    if h : ∀ y ∈ pwFilter R l, R x y then
      simpa [pwFilter_cons_of_pos h] using fun r H => ⟨r, IH H⟩
    else
      refine pwFilter_cons_of_neg h ▸ fun H => ⟨?_, IH H⟩
      match e : find? (fun y => ¬R x y) (pwFilter R l) with
      | none => exact h.elim fun y hy => by simpa using find?_eq_none.1 e y hy
      | some k =>
        have := find?_some e
        apply (neg_trans (H k (mem_of_find?_eq_some e))).resolve_right
        rw [decide_eq_true_iff] at this; exact this
```
