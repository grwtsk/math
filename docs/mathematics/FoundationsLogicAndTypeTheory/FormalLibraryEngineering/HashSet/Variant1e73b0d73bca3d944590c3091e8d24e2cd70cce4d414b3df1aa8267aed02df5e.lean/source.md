# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HashSet.Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a915451dafa2c7603a95a6445d37f8b66d6568f1` · SHA-256 `f2f9edb22405db7bc27461e44e4844da3453844e3da0fb523252cfb2b4c1e2b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnyM.Variant28ec77200db4c47d71a51399bab83d954f527322e0df0a8d5dc28bbf7518b76e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28ec77200db4c47d71a51399bab83d954f527322e0df0a8d5dc28bbf7518b76e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AnyM.Variant28ec77200db4c47d71a51399bab83d954f527322e0df0a8d5dc28bbf7518b76e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"28ec77200db4c47d71a51399bab83d954f527322e0df0a8d5dc28bbf7518b76e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/HashSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Lean.Data.HashSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnyM.Variant28ec77200db4c47d71a51399bab83d954f527322e0df0a8d5dc28bbf7518b76e

namespace Lean.HashSet

variable [BEq α] [Hashable α]

/--
`O(n)`. Returns `true` if `f` returns `true` for any element of the set.
-/
@[specialize]
def anyM [Monad m] (s : HashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if ← f a then
      return true
  return false

/--
`O(n)`. Returns `true` if `f` returns `true` for any element of the set.
-/
@[inline]
def any (s : HashSet α) (f : α → Bool) : Bool :=
  Id.run <| s.anyM f

/--
`O(n)`. Returns `true` if `f` returns `true` for all elements of the set.
-/
@[specialize]
def allM [Monad m] (s : HashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if !(← f a) then
      return false
  return true

/--
`O(n)`. Returns `true` if `f` returns `true` for all elements of the set.
-/
@[inline]
def all (s : HashSet α) (f : α → Bool) : Bool :=
  Id.run <| s.allM f

instance : BEq (HashSet α) where
  beq s t := s.all (t.contains ·) && t.all (s.contains ·)

/--
`O(1)` amortized. Similar to `insert`, but also returns a Boolean flag indicating whether an
existing entry has been replaced with `a => b`.
-/
@[inline]
def insert' (s : HashSet α) (a : α) : HashSet α × Bool :=
  let oldSize := s.size
  let s := s.insert a
  (s, s.size == oldSize)

/--
`O(n)`. Obtain a `HashSet` from an array.
-/
@[inline]
protected def ofArray [BEq α] [Hashable α] (as : Array α) : HashSet α :=
  HashSet.empty.insertMany as

/--
`O(n)`. Obtain a `HashSet` from a list.
-/
@[inline]
protected def ofList [BEq α] [Hashable α] (as : List α) : HashSet α :=
  HashSet.empty.insertMany as

/--
`O(|t|)` amortized. Merge two `HashSet`s.
-/
@[inline]
def merge {α : Type u} [BEq α] [Hashable α] (s t : HashSet α) : HashSet α :=
  t.fold (init := s) fun s a => s.insert a
  -- We don't use `insertMany` here because it gives weird universes.
```
