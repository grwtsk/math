# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Flatten.Variantd0aa615736ccc134d60add27b1ed7b84531d43e0a05085835a5179313ad217ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bd9d861338554b16e7ba1c02ac332435093e6bb` · SHA-256 `6791ee383c527764ad9a3da938b66356219570f9f6eb81fb3b3f19b75a98b200`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SublistFlatten.Variantc0cb2a64e610f90d857542ddd46bfa29d7c7ae2880edd0a4432da842b1d2d8b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0cb2a64e610f90d857542ddd46bfa29d7c7ae2880edd0a4432da842b1d2d8b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SublistFlatten.Variantc0cb2a64e610f90d857542ddd46bfa29d7c7ae2880edd0a4432da842b1d2d8b1","mathematical_subject":"Computation.DataStructures","original_sha256":"c0cb2a64e610f90d857542ddd46bfa29d7c7ae2880edd0a4432da842b1d2d8b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/Flatten.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Floris van Doorn, Mario Carneiro, Martin Dvorak
-/
module

public import Mathlib.Tactic.GCongr

/-!
# Join of a list of lists

This file proves basic properties of `List.flatten`, which concatenates a list of lists. It is
defined in `Init.Prelude`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SublistFlatten.Variantc0cb2a64e610f90d857542ddd46bfa29d7c7ae2880edd0a4432da842b1d2d8b1

public section

-- Make sure we don't import algebra
assert_not_exists Monoid

variable {α β : Type*}

namespace List

@[gcongr]
protected theorem Sublist.flatten {l₁ l₂ : List (List α)} (h : l₁ <+ l₂) :
    l₁.flatten <+ l₂.flatten := by
  induction h with grind

@[gcongr]
protected theorem Sublist.flatMap {l₁ l₂ : List α} (h : l₁ <+ l₂) (f : α → List β) :
    l₁.flatMap f <+ l₂.flatMap f :=
  (h.map f).flatten

protected theorem Sublist.flatMap_right (l : List α) {f g : α → List β} (h : ∀ a ∈ l, f a <+ g a) :
    l.flatMap f <+ l.flatMap g := by
  induction l with grind

/-- Taking only the first `i+1` elements in a list, and then dropping the first `i` ones, one is
left with a list of length `1` made of the `i`-th element of the original list. -/
theorem drop_take_succ_eq_cons_getElem (L : List α) (i : Nat) (h : i < L.length) :
    (L.take (i + 1)).drop i = [L[i]] := by
  induction L generalizing i with grind

/-- We can rebracket `x ++ (l₁ ++ x) ++ (l₂ ++ x) ++ ... ++ (lₙ ++ x)` to
`(x ++ l₁) ++ (x ++ l₂) ++ ... ++ (x ++ lₙ) ++ x` where `L = [l₁, l₂, ..., lₙ]`. -/
theorem append_flatten_map_append (L : List (List α)) (x : List α) :
    x ++ (L.map (· ++ x)).flatten = (L.map (x ++ ·)).flatten ++ x := by
  induction L with grind

/-- See also `head_flatten_eq_head_head`, which switches around the proof obligations. -/
theorem head_head_eq_head_flatten {l : List (List α)} (hl : l ≠ []) (hl' : l.head hl ≠ []) :
    (l.head hl).head hl' = l.flatten.head (flatten_ne_nil_iff.2 ⟨_, head_mem hl, hl'⟩) := by
  cases l with grind

/-- See also `head_head_eq_head_flatten`, which switches around the proof obligations. -/
theorem head_flatten_eq_head_head {l : List (List α)} (hl : l.flatten ≠ [])
    (hl' : l.head (by grind) ≠ []) : l.flatten.head hl = (l.head (by grind)).head hl' :=
  (head_head_eq_head_flatten ..).symm

/-- See also `getLast_flatten_eq_getLast_getLast`, which switches around the proof obligations. -/
theorem getLast_getLast_eq_getLast_flatten {l : List (List α)}
    (hl : l ≠ []) (hl' : l.getLast hl ≠ []) :
    (l.getLast hl).getLast hl' =
      l.flatten.getLast (flatten_ne_nil_iff.2 ⟨_, getLast_mem hl, hl'⟩) := by
  cases eq_nil_or_concat l with grind

/-- See also `getLast_getLast_eq_getLast_flatten`, which switches around the proof obligations. -/
theorem getLast_flatten_eq_getLast_getLast {l : List (List α)}
    (hl : l.flatten ≠ []) (hl' : l.getLast (by grind) ≠ []) :
    l.flatten.getLast hl = (l.getLast (by grind)).getLast hl' :=
  (getLast_getLast_eq_getLast_flatten ..).symm

end List
```
