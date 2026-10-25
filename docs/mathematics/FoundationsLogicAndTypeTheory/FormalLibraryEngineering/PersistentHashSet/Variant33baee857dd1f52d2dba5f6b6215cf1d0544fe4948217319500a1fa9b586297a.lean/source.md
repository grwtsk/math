# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashSet.Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `154e3b1dce4945624bcbc6814958760d0077f11b` · SHA-256 `c412f26a556c621a6ffe15bb27e85567e4f102e4f40453e5ea294c1e82dc5cf3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnyM.Variant276f14bdec98cd4523907f59ee7e32e041a4f7b4b2b0e6b0686867e62dea9fe6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"276f14bdec98cd4523907f59ee7e32e041a4f7b4b2b0e6b0686867e62dea9fe6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AnyM.Variant276f14bdec98cd4523907f59ee7e32e041a4f7b4b2b0e6b0686867e62dea9fe6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"276f14bdec98cd4523907f59ee7e32e041a4f7b4b2b0e6b0686867e62dea9fe6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/PersistentHashSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Lean.Data.PersistentHashSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnyM.Variant276f14bdec98cd4523907f59ee7e32e041a4f7b4b2b0e6b0686867e62dea9fe6

namespace Lean.PersistentHashSet

variable [BEq α] [Hashable α]

instance : ForIn m (PersistentHashSet α) α where
  forIn s init step := do
    let mut state := init
    for (k, _) in s.set do
      match ← step k state with
      | .done state' => return state'
      | .yield state' => state := state'
    return state

/--
Returns `true` if `f` returns `true` for any element of the set.
-/
@[specialize]
def anyM [Monad m] (s : PersistentHashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if ← f a then
      return true
  return false

/--
Returns `true` if `f` returns `true` for any element of the set.
-/
@[inline]
def any (s : PersistentHashSet α) (f : α → Bool) : Bool :=
  Id.run <| s.anyM f

/--
Returns `true` if `f` returns `true` for all elements of the set.
-/
@[specialize]
def allM [Monad m] (s : PersistentHashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if ! (← f a) then
      return false
  return true

/--
Returns `true` if `f` returns `true` for all elements of the set.
-/
@[inline]
def all (s : PersistentHashSet α) (f : α → Bool) : Bool :=
  Id.run <| s.allM f

instance : BEq (PersistentHashSet α) where
  beq s t := s.all (t.contains ·) && t.all (s.contains ·)

/--
Similar to `insert`, but also returns a Boolean flag indicating whether an
existing entry has been replaced with `a => b`.
-/
@[inline]
def insert' (s : PersistentHashSet α) (a : α) : PersistentHashSet α × Bool :=
  let oldSize := s.size
  let s := s.insert a
  (s, s.size == oldSize)

/--
Insert all elements from a collection into a `PersistentHashSet`.
-/
def insertMany [ForIn Id ρ α] (s : PersistentHashSet α) (as : ρ) :
    PersistentHashSet α := Id.run do
  let mut s := s
  for a in as do
    s := s.insert a
  return s

/--
Obtain a `PersistentHashSet` from an array.
-/
@[inline]
protected def ofArray [BEq α] [Hashable α] (as : Array α) : PersistentHashSet α :=
  PersistentHashSet.empty.insertMany as

/--
Obtain a `PersistentHashSet` from a list.
-/
@[inline]
protected def ofList [BEq α] [Hashable α] (as : List α) : PersistentHashSet α :=
  PersistentHashSet.empty.insertMany as

/--
Merge two `PersistentHashSet`s.
-/
@[inline]
def merge (s t : PersistentHashSet α) : PersistentHashSet α :=
  s.insertMany t
```
