# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant2283b670581cee36ccae101f84bb147e273562291a2e45e74cb06526f3446f3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20de6cf5aa1f17d7e507129c7fd1afa8bad19603` · SHA-256 `b88b6983f48ff394bbfe79cbcd816af278cf38f815d3be486642bd9a6303ef9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToListOfList.Variantfcf6369587cea397f4d2242f1c3f4209476eb51c647356ddeeba720d8f1037c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fcf6369587cea397f4d2242f1c3f4209476eb51c647356ddeeba720d8f1037c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToListOfList.Variantfcf6369587cea397f4d2242f1c3f4209476eb51c647356ddeeba720d8f1037c6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fcf6369587cea397f4d2242f1c3f4209476eb51c647356ddeeba720d8f1037c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/DList/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

public import Batteries.Data.DList.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToListOfList.Variantfcf6369587cea397f4d2242f1c3f4209476eb51c647356ddeeba720d8f1037c6

@[expose] public section

/-!
# Difference list

This file provides a few results about `DList`.

A difference list is a function that, given a list, returns the original content of the
difference list prepended to the given list. It is useful to represent elements of a given type
as `a₁ + ... + aₙ` where `+ : α → α → α` is any operation, without actually computing.

This structure supports `O(1)` `append` and `push` operations on lists, making it
useful for append-heavy uses such as logging and pretty printing.
-/

namespace Batteries.DList

open Function

theorem toList_ofList (l : List α) : DList.toList (DList.ofList l) = l := by
  cases l; rfl; simp [ofList]

theorem ofList_toList (l : DList α) : DList.ofList (DList.toList l) = l := by
   obtain ⟨app, inv⟩ := l
   simp only [ofList, toList, mk.injEq]
   funext x
   rw [(inv x)]

set_option backward.isDefEq.respectTransparency.types false in
theorem toList_empty : toList (@empty α) = [] := by simp [empty]

set_option backward.isDefEq.respectTransparency.types false in
theorem toList_singleton (x : α) : toList (singleton x) = [x] := by simp [singleton]

theorem toList_append (l₁ l₂ : DList α) : toList (l₁ ++ l₂) = toList l₁ ++ toList l₂ := by
  simp only [toList, HAppend.hAppend, Append.append, append, Function.comp]; exact invariant ..

theorem toList_cons (x : α) (l : DList α) : toList (cons x l) = x :: toList l := by
  cases l; simp [cons]

theorem toList_push (x : α) (l : DList α) : toList (push l x) = toList l ++ [x] := by
  simp only [toList, push]; rw [invariant]

@[simp]
theorem singleton_eq_ofThunk {α : Type _} {a : α} : singleton a = ofThunk [a] :=
  rfl

@[simp]
theorem ofThunk_coe {α : Type _} {l : List α} : ofThunk l = ofList l :=
  rfl

end Batteries.DList
```
