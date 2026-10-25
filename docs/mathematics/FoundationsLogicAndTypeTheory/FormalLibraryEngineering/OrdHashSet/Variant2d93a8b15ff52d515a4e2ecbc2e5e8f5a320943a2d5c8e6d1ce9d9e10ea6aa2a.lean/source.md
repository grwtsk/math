# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrdHashSet.Variant2d93a8b15ff52d515a4e2ecbc2e5e8f5a320943a2d5c8e6d1ce9d9e10ea6aa2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `454ae406a1b7c6b8bb23ec1599d3a2c7da2942dd` · SHA-256 `579b633299f350f686b5d97d93b3b403abbe98137a33754b4d65ee6d0e00bc59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrdHashSet.Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.OrdHashSet.Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"d8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/OrdHashSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Std.Data.HashSet.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrdHashSet.Variantd8bc41a6668c6e42cd917ed5ffb47220d22b7b6f2c16bc15b68991bba21083b4

open Lean

namespace Lake

/-- A `HashSet` that preserves insertion order. -/
public structure OrdHashSet (α) [Hashable α] [BEq α] where
  toHashSet : Std.HashSet α
  toArray : Array α

namespace OrdHashSet
variable [Hashable α] [BEq α]

public instance : Coe (OrdHashSet α) (Std.HashSet α) := ⟨toHashSet⟩

public def empty : OrdHashSet α :=
  ⟨∅, .empty⟩

public instance : EmptyCollection (OrdHashSet α) := ⟨empty⟩

public def mkEmpty (size : Nat) : OrdHashSet α :=
  ⟨∅, .mkEmpty size⟩

public def insert (self : OrdHashSet α) (a : α) : OrdHashSet α :=
  if self.toHashSet.contains a then
    self
  else
    ⟨self.toHashSet.insert a, self.toArray.push a⟩

public def appendArray (self : OrdHashSet α) (arr : Array α) :=
  arr.foldl (·.insert ·) self

public instance : HAppend (OrdHashSet α) (Array α) (OrdHashSet α) := ⟨OrdHashSet.appendArray⟩

public protected def append (self other : OrdHashSet α) :=
  self.appendArray other.toArray

public instance : Append (OrdHashSet α) := ⟨OrdHashSet.append⟩

public def ofArray (arr : Array α) : OrdHashSet α :=
  mkEmpty arr.size |>.appendArray arr

@[inline] public def all (f : α → Bool) (self : OrdHashSet α) : Bool  :=
  self.toArray.all f

@[inline] public def any (f : α → Bool) (self : OrdHashSet α) : Bool  :=
  self.toArray.any f

@[inline] public def foldl (f : β → α → β) (init : β) (self : OrdHashSet α) : β :=
  self.toArray.foldl f init

@[inline] public def foldlM [Monad m] (f : β → α → m β) (init : β) (self : OrdHashSet α) : m β :=
  self.toArray.foldlM f init

@[inline] public def foldr (f : α → β → β) (init : β) (self : OrdHashSet α) : β :=
  self.toArray.foldr f init

@[inline] public def foldrM [Monad m] (f : α → β → m β) (init : β) (self : OrdHashSet α) : m β :=
  self.toArray.foldrM f init

@[inline] public def forM [Monad m] (f : α → m PUnit) (self : OrdHashSet α) : m PUnit :=
  self.toArray.forM f

@[inline] public protected def forIn [Monad m] (self : OrdHashSet α) (init : β) (f : α → β → m (ForInStep β)) : m β :=
  ForIn.forIn self.toArray init f

public instance [Monad m] : ForIn m (OrdHashSet α) α := ⟨OrdHashSet.forIn⟩
```
