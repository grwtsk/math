-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadStore1Of.Variant05bd18c3d4701d407cedd977f83b1183cf7db2467d8bd4654ba1cdfd97482efb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05bd18c3d4701d407cedd977f83b1183cf7db2467d8bd4654ba1cdfd97482efb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MonadStore1Of.Variant05bd18c3d4701d407cedd977f83b1183cf7db2467d8bd4654ba1cdfd97482efb","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"05bd18c3d4701d407cedd977f83b1183cf7db2467d8bd4654ba1cdfd97482efb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Store.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadStore1Of.Variant05bd18c3d4701d407cedd977f83b1183cf7db2467d8bd4654ba1cdfd97482efb

namespace Lake

/-- A monad equipped with a dependently typed key-value store for a particular key. -/
public class MonadStore1Of {κ : Type u} (k : κ) (α : semiOutParam (Type v)) (m : Type v → Type w) where
  fetch? : m (Option α)
  store : α → m PUnit

export MonadStore1Of (store)

/-- Similar to `MonadStore1Of`, but `α` is an `outParam` for convenience. -/
public class MonadStore1 {κ : Type u} (k : κ) (α : outParam (Type v)) (m : Type v → Type w) where
  fetch? : m (Option α)
  store : α → m PUnit

export MonadStore1 (fetch?)

public instance [MonadStore1Of k α m] : MonadStore1 k α m where
  fetch? := MonadStore1Of.fetch? k
  store := MonadStore1Of.store k

/-- A monad equipped with a dependently typed key-object store. -/
public class MonadDStore (κ : Type u) (β : semiOutParam (κ → Type v)) (m : Type v → Type w) where
  fetch? : (key : κ) → m (Option (β key))
  store : (key : κ) → β key → m PUnit

public instance [MonadDStore κ β m] : MonadStore1Of k (β k) m where
  fetch? := MonadDStore.fetch? k
  store o := MonadDStore.store k o

/-- A monad equipped with a key-object store. -/
public abbrev MonadStore κ α m := MonadDStore κ (fun _ => α) m

public instance [MonadLift m n] [MonadDStore κ β m] : MonadDStore κ β n where
  fetch? k := liftM (m := m) (fetch? k)
  store k a := liftM (m := m) (store k a)

@[inline] public def fetchOrCreate
  [Monad m] (key : κ) [MonadStore1Of key α m] (create : m α)
: m α := do
  if let some val ← fetch? key then
    return val
  else
    let val ← create
    store key val
    return val
