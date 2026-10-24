# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lookmap.Variant862d394e57dcdd43ad36d15e28426ca5951805f2688a5bf22ac1d36aeb65984b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed8f57989765354626a9a9cbc1305e179ec8a0d0` · SHA-256 `0dadc92decc1eb1da23fc55a1185a60cff2a540afb523b59d5c48c085188eae3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LookmapGoAppend.Variantefded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"efded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LookmapGoAppend.Variantefded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07","mathematical_subject":"Computation.DataStructures","original_sha256":"efded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/Lookmap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Parikshit Khanna. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Mario Carneiro
-/
module

public import Batteries.Data.List.Basic
public import Mathlib.Init

/-! # `List.lookmap` -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LookmapGoAppend.Variantefded2d659ac65b14c0fc96c73f6b75c06292049772c3141b33859588adf6d07

public section

variable {α β : Type*}

namespace List

variable (f : α → Option α)

private theorem lookmap.go_append (l : List α) (acc : Array α) :
    lookmap.go f l acc = acc.toListAppend (lookmap f l) := by
  cases l with
  | nil => simp [go, lookmap]
  | cons hd tl =>
    rw [lookmap, go, go]
    cases f hd with
    | none =>
      simp only [go_append tl _, Array.toListAppend_eq, append_assoc, Array.toList_push]
      rfl
    | some a => simp

@[simp, grind =]
theorem lookmap_nil : [].lookmap f = [] :=
  rfl

@[simp]
theorem lookmap_cons_none {a : α} (l : List α) (h : f a = none) :
    (a :: l).lookmap f = a :: l.lookmap f := by
  simp only [lookmap, lookmap.go, Array.toListAppend_eq, nil_append]
  rw [lookmap.go_append, lookmap, h]; simp

@[simp]
theorem lookmap_cons_some {a b : α} (l : List α) (h : f a = some b) :
    (a :: l).lookmap f = b :: l := by
  simp only [lookmap, lookmap.go, Array.toListAppend_eq, nil_append]
  rw [h]

@[grind =]
theorem lookmap_cons {a : α} {l : List α} :
    (a :: l).lookmap f = match f a with
    | none => a :: l.lookmap f
    | some b => b :: l := by
  cases h : f a <;> simp_all

theorem lookmap_some : ∀ l : List α, l.lookmap some = l
  | [] => rfl
  | _ :: rest => lookmap_cons_some some rest rfl

theorem lookmap_none : ∀ l : List α, (l.lookmap fun _ => none) = l
  | [] => rfl
  | a :: l => (lookmap_cons_none _ l rfl).trans (congrArg (cons a) (lookmap_none l))

theorem lookmap_congr {f g : α → Option α} :
    ∀ {l : List α}, (∀ a ∈ l, f a = g a) → l.lookmap f = l.lookmap g
  | [], _ => rfl
  | a :: l, H => by
    obtain ⟨H₁, H₂⟩ := forall_mem_cons.1 H
    rcases h : g a with - | b
    · simp [h, H₁.trans h, lookmap_congr H₂]
    · simp [lookmap_cons_some _ _ h, lookmap_cons_some _ _ (H₁.trans h)]

theorem lookmap_of_forall_not {l : List α} (H : ∀ a ∈ l, f a = none) : l.lookmap f = l :=
  (lookmap_congr H).trans (lookmap_none l)

theorem lookmap_map_eq (g : α → β) (h : ∀ (a), ∀ b ∈ f a, g a = g b) :
    ∀ l : List α, map g (l.lookmap f) = map g l
  | [] => rfl
  | a :: l => by
    rcases h' : f a with - | b
    · simpa [h'] using lookmap_map_eq _ h l
    · simp [lookmap_cons_some _ _ h', h _ _ h']

theorem lookmap_id' (h : ∀ (a), ∀ b ∈ f a, a = b) (l : List α) : l.lookmap f = l := by
  rw [← map_id (l.lookmap f), lookmap_map_eq, map_id]; exact h

@[simp, grind =]
theorem length_lookmap (l : List α) : length (l.lookmap f) = length l := by
  rw [← length_map, lookmap_map_eq _ fun _ => (), length_map]; simp

open Perm in
theorem perm_lookmap (f : α → Option α) {l₁ l₂ : List α}
    (H : Pairwise (fun a b => ∀ c ∈ f a, ∀ d ∈ f b, a = b ∧ c = d) l₁) (p : l₁ ~ l₂) :
    lookmap f l₁ ~ lookmap f l₂ := by
  induction p with
  | nil => simp
  | cons a p IH =>
    cases h : f a
    · simpa [h] using IH (pairwise_cons.1 H).2
    · simp [lookmap_cons_some _ _ h, p]
  | swap a b l =>
    rcases h₁ : f a with - | c <;> rcases h₂ : f b with - | d
    · simpa [h₁, h₂] using Perm.swap _ _ _
    · simpa [h₁, lookmap_cons_some _ _ h₂] using Perm.swap _ _ _
    · simpa [lookmap_cons_some _ _ h₁, h₂] using Perm.swap _ _ _
    · rcases (pairwise_cons.1 H).1 _ (mem_cons.2 (Or.inl rfl)) _ h₂ _ h₁ with ⟨rfl, rfl⟩
      exact Perm.refl _
  | trans p₁ _ IH₁ IH₂ =>
    refine (IH₁ H).trans (IH₂ ((p₁.pairwise_iff ?_).1 H))
    grind

end List
```
