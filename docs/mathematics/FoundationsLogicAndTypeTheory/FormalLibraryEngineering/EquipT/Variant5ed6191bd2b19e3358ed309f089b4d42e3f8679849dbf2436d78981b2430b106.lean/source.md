# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EquipT.Variant5ed6191bd2b19e3358ed309f089b4d42e3f8679849dbf2436d78981b2430b106

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87f76f14d03094f0abf20c235142f590ca5011cb` · SHA-256 `55453e228adf7e6e831c885997fc8f39e88e592f2d4345a635d892ceae0cfce9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Map.Variant2cadf71574a2e23054e54277ac043649ceaa162fd8556a0d6f334b32a981bf96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2cadf71574a2e23054e54277ac043649ceaa162fd8556a0d6f334b32a981bf96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Map.Variant2cadf71574a2e23054e54277ac043649ceaa162fd8556a0d6f334b32a981bf96","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"2cadf71574a2e23054e54277ac043649ceaa162fd8556a0d6f334b32a981bf96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/EquipT.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Control.Except


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Map.Variant2cadf71574a2e23054e54277ac043649ceaa162fd8556a0d6f334b32a981bf96

namespace Lake

/--
A monad transformer that equips a monad with a value.
This is a generalization of `ReaderT` where the value is not
necessarily directly readable through the monad.
-/
@[expose] public def EquipT (ρ : Type u) (m : Type v → Type w) (α : Type v) :=
  ρ → m α

namespace EquipT

@[always_inline, inline] public def mk (x : ρ → m α) : EquipT ρ m α :=
  x

public instance [Inhabited (m α)] : Inhabited (EquipT ρ m α) where
  default := .mk fun _ => default

@[always_inline, inline] public def run (self : EquipT ρ m α) (r : ρ) : m α :=
  self r

@[always_inline, inline]
public protected def map [Functor m] (f : α → β) (self : EquipT ρ m α) : EquipT ρ m β :=
  fun r => Functor.map f (self r)

public instance [Functor m] : Functor (EquipT ρ m) where
  map := EquipT.map

@[always_inline, inline]
public protected def pure [Pure m] (a : α) : EquipT ρ m α :=
  fun _ => pure a

public instance [Pure m] : Pure (EquipT ρ m) := ⟨EquipT.pure⟩

@[always_inline, inline]
public def compose (f : m α₁ → (Unit → m α₂) → m β) (x₁ : EquipT ρ m α₁) (x₂ : Unit → EquipT ρ m α₂) : EquipT ρ m β :=
  fun r => f (x₁ r) (fun _ => x₂ () r)

@[always_inline, inline]
public protected def seq [Seq m] : EquipT ρ m (α → β) → (Unit → EquipT ρ m α) → EquipT ρ m β :=
  EquipT.compose Seq.seq

public instance [Seq m] : Seq (EquipT ρ m) := ⟨EquipT.seq⟩

public instance [Applicative m] : Applicative (EquipT ρ m)  := {}

@[always_inline, inline]
public protected def bind [Bind m] (self : EquipT ρ m α) (f : α → EquipT ρ m β) : EquipT ρ m β :=
  fun r => bind (self r) fun a => f a r

public instance [Bind m] : Bind (EquipT ρ m) := ⟨EquipT.bind⟩

public instance [Monad m] : Monad (EquipT ρ m) := {}

@[always_inline, inline]
public def lift (t : m α) : EquipT ρ m α :=
  fun _ => t

public instance : MonadLift m (EquipT ρ m) where
  monadLift := EquipT.lift

public instance : MonadFunctor m (EquipT ρ m) where
  monadMap f x := .mk fun ctx => f (x.run ctx)

@[always_inline, inline]
public protected def failure [Alternative m] : EquipT ρ m α :=
  fun _ => failure

@[always_inline, inline]
public protected def orElse [Alternative m] : EquipT ρ m α → (Unit → EquipT ρ m α) → EquipT ρ m α :=
  EquipT.compose Alternative.orElse

public instance [Alternative m] : Alternative (EquipT ρ m) where
  failure := EquipT.failure
  orElse  := EquipT.orElse

@[always_inline, inline]
public protected def throw [MonadExceptOf ε m]  (e : ε) : EquipT ρ m α  :=
  fun _ => throw e

@[always_inline, inline]
public protected def tryCatch [MonadExceptOf ε m]
  (self : EquipT ρ m α) (c : ε → EquipT ρ m α)
: EquipT ρ m α := fun f => tryCatchThe ε (self f) fun e => (c e) f

public instance (ε) [MonadExceptOf ε m] : MonadExceptOf ε (EquipT ρ m) where
  throw    := EquipT.throw
  tryCatch := EquipT.tryCatch

set_option linter.checkUnivs false in
@[always_inline, inline]
public protected def tryFinally' [MonadFinally m] [Monad m]
  (x : EquipT ρ m α) (f : Option α → EquipT ρ m β)
: EquipT ρ m (α × β) := fun ctx => tryFinally' (x.run ctx) (fun a? => f a? |>.run ctx)

set_option linter.checkUnivs false in
public instance [MonadFinally m] [Monad m] : MonadFinally (EquipT ρ m) := ⟨EquipT.tryFinally'⟩
```
