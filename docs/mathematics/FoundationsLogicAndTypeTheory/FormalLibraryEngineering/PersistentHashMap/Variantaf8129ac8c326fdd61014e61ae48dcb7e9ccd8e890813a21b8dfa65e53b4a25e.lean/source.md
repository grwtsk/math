# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashMap.Variantaf8129ac8c326fdd61014e61ae48dcb7e9ccd8e890813a21b8dfa65e53b4a25e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcc8bcee93f382d031255ca4094a3a4373e1fe62` · SHA-256 `9a44febaa8180608a2bf32513398e03677f768bf1c5b261127a64242878ceb82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfList.Variantecd3809e9edee709f5fba56a16fce438dee0124dd4d0411710e7e51cfaf6da10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecd3809e9edee709f5fba56a16fce438dee0124dd4d0411710e7e51cfaf6da10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OfList.Variantecd3809e9edee709f5fba56a16fce438dee0124dd4d0411710e7e51cfaf6da10","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ecd3809e9edee709f5fba56a16fce438dee0124dd4d0411710e7e51cfaf6da10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/PersistentHashMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Data.PersistentHashMap


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfList.Variantecd3809e9edee709f5fba56a16fce438dee0124dd4d0411710e7e51cfaf6da10

@[expose] public section

namespace Lean.PersistentHashMap

variable [BEq α] [Hashable α]

/--
Builds a `PersistentHashMap` from a list of key-value pairs. Values of
duplicated keys are replaced by their respective last occurrences.
-/
def ofList (xs : List (α × β)) : PersistentHashMap α β :=
  xs.foldl (init := {}) fun m (k, v) => m.insert k v

/--
Variant of `ofList` which accepts a function that combines values of duplicated
keys.
-/
def ofListWith (xs : List (α × β)) (f : α → β → β → β) :
    PersistentHashMap α β :=
  xs.foldl (init := {}) fun m (k, v) =>
    match m.find? k with
    | none    => m.insert k v
    | some v' => m.insert k <| f k v v'

/--
Builds a `PersistentHashMap` from an array of key-value pairs. Values of
duplicated keys are replaced by their respective last occurrences.
-/
def ofArray (xs : Array (α × β)) : PersistentHashMap α β :=
  xs.foldl (init := {}) fun m (k, v) => m.insert k v

/--
Variant of `ofArray` which accepts a function that combines values of duplicated
keys.
-/
def ofArrayWith (xs : Array (α × β)) (f : α → β → β → β) :
    PersistentHashMap α β :=
  xs.foldl (init := {}) fun m (k, v) =>
    match m.find? k with
    | none    => m.insert k v
    | some v' => m.insert k <| f k v v'

/--
Merge two `PersistentHashMap`s. The values of keys which appear in both maps are
combined using the monadic function `f`.
-/
@[specialize]
def mergeWithM [Monad m] (self other : PersistentHashMap α β)
    (f : α → β → β → m β) : m (PersistentHashMap α β) :=
  other.foldlM (init := self) fun map k v₂ =>
    match map.find? k with
    | none => return map.insert k v₂
    | some v₁ => return map.insert k (← f k v₁ v₂)

/--
Merge two `PersistentHashMap`s. The values of keys which appear in both maps are
combined using `f`.
-/
@[inline]
def mergeWith (self other : PersistentHashMap α β) (f : α → β → β → β) :
    PersistentHashMap α β :=
  -- Implementing this function directly, rather than via `mergeWithM`, gives
  -- us less constrained universes.
  other.foldl (init := self) fun map k v₂ =>
    match map.find? k with
    | none => map.insert k v₂
    | some v₁ => map.insert k <| f k v₁ v₂
```
