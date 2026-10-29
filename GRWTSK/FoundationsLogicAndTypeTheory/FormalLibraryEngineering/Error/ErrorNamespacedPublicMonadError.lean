-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadError.Variantd7ef7277f0881f2c9da082be21713bf46a4607542e3ba1f0117b18f160cca0ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7ef7277f0881f2c9da082be21713bf46a4607542e3ba1f0117b18f160cca0ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MonadError.Variantd7ef7277f0881f2c9da082be21713bf46a4607542e3ba1f0117b18f160cca0ef","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"d7ef7277f0881f2c9da082be21713bf46a4607542e3ba1f0117b18f160cca0ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Error.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.System.IO


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadError.Variantd7ef7277f0881f2c9da082be21713bf46a4607542e3ba1f0117b18f160cca0ef

namespace Lake

public class MonadError (m : Type u → Type v) where
  error {α : Type u} : String → m α

export MonadError (error)

public instance [MonadLift m n] [MonadError m] : MonadError n where
  error msg := liftM (m := m) <| error msg

public instance : MonadError IO where
  error msg := throw <| IO.userError msg

public instance : MonadError (EIO String) where
  error msg := throw msg

public instance : MonadError (Except String) where
  error msg := throw msg

/--
Perform an EIO action.
If it throws an error, invoke `error` with its string representation.
-/
@[inline] public def MonadError.runEIO
  [Monad m] [MonadError m] [MonadLiftT BaseIO m] [ToString ε] (x : EIO ε α)
: m α := do
  match (← x.toBaseIO) with
  | .ok a => pure a
  | .error e => error (toString e)

/--
Perform an IO action.
If it throws an error, invoke `error` with its string representation.
-/
@[inline] public def MonadError.runIO
  [Monad m] [MonadError m] [MonadLiftT BaseIO m] (x : IO α)
: m α := MonadError.runEIO x
