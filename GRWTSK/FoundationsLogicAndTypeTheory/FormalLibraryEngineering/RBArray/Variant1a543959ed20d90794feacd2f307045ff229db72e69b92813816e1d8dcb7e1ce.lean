-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RBArray.Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.RBArray.Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/RBArray.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Std.Data.TreeMap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RBArray.Variant23b9f352e92afb35d37d7f9e4430c047158e231381f58903503757cbe5ede179

namespace Lake

/--
There are two ways to think of this type:
* As an `Array` of values with a `Std.TreeMap` key-value index for the key `α`.
* As a `Std.TreeMap` that preserves insertion order, but is optimized for
iteration-by-values. Thus, it does not store the order of keys.
-/
public structure RBArray (α : Type u) (β : Type v) (cmp : α → α → Ordering) where
  toTreeMap : Std.TreeMap α β cmp
  toArray : Array β

namespace RBArray

public def empty : RBArray α β cmp :=
  ⟨.empty, .empty⟩

instance : EmptyCollection (RBArray α β cmp) := ⟨empty⟩

public def mkEmpty (size : Nat) : RBArray α β cmp :=
  ⟨.empty, .mkEmpty size⟩

@[inline] public def find? (self : RBArray α β cmp) (a : α) : Option β :=
  self.toTreeMap.get? a

@[inline] public def contains (self : RBArray α β cmp) (a : α) : Bool :=
  self.toTreeMap.contains a

/-- Insert `b` with the key `a`. Does nothing if the key is already present. -/
public def insert (self : RBArray α β cmp) (a : α) (b : β) : RBArray α β cmp :=
  if self.toTreeMap.contains a then
    self
  else
    ⟨self.toTreeMap.insert a b, self.toArray.push b⟩

@[inline] public def all (f : β → Bool) (self : RBArray α β cmp) : Bool  :=
  self.toArray.all f

@[inline] public def any (f : β → Bool) (self : RBArray α β cmp) : Bool  :=
  self.toArray.any f

@[inline] public def foldl (f : σ → β → σ) (init : σ) (self : RBArray α β cmp) : σ  :=
  self.toArray.foldl f init

@[inline] public def foldlM [Monad m] (f : σ → β → m σ) (init : σ) (self : RBArray α β cmp) : m σ :=
  self.toArray.foldlM f init

@[inline] public def foldr (f : β → σ → σ) (init : σ) (self : RBArray α β cmp) : σ :=
  self.toArray.foldr f init

@[inline] public def foldrM [Monad m] (f : β → σ → m σ) (init : σ) (self : RBArray α β cmp) : m σ :=
  self.toArray.foldrM f init

@[inline] public def forM [Monad m] (f : β → m PUnit) (self : RBArray α β cmp) : m PUnit :=
  self.toArray.forM f

@[inline] public protected def forIn
  [Monad m] (self : RBArray α β cmp) (init : σ) (f : β → σ → m (ForInStep σ))
: m σ := ForIn.forIn self.toArray init f

instance [Monad m] : ForIn m (RBArray α β cmp) β := ⟨RBArray.forIn⟩

end RBArray

@[inline] public def mkRBArray  (f : β → α) (vs : Array β) : RBArray α β cmp :=
  vs.foldl (init := RBArray.mkEmpty vs.size) fun m v => m.insert (f v) v
