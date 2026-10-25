# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashMap.Variant323f272c8cd8c9cd8e9bf7e24096117635f5be2fa373e9f599dffe3a3d268dac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bf2aba3e0ecc055cf090850283f6dbb9e477744` · SHA-256 `a4c1d9aee6dfacfa312298796ff194ab4660ed14e4c23e35efdcc87c076b293f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InsertPrime.Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InsertPrime.Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/PersistentHashMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Lean.Data.PersistentHashMap


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InsertPrime.Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512

namespace Lean.PersistentHashMap

variable [BEq α] [Hashable α]

/--
Similar to `insert`, but also returns a Boolean flag indicating whether an
existing entry has been replaced with `a => b`.
-/
def insert' (m : PersistentHashMap α β) (a : α) (b : β) : PersistentHashMap α β × Bool :=
  let oldSize := m.size
  let m := m.insert a b
  (m, m.size == oldSize)

/--
Turns a `PersistentHashMap` into an array of key-value pairs.
-/
def toArray (m : PersistentHashMap α β) : Array (α × β) :=
  m.foldl (init := Array.mkEmpty m.size) fun xs k v => xs.push (k, v)

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
