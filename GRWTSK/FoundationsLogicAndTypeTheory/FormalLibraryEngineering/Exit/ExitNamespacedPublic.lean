-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadExit.Varianteff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MonadExit.Varianteff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"eff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Exit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Notation
import Init.Data.UInt.BasicAux


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadExit.Varianteff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a

namespace Lake

/-- A process exit / return code. -/
public abbrev ExitCode := UInt32

public class MonadExit (m : Type u → Type v) where
  exit {α : Type u} : ExitCode → m α

export MonadExit (exit)

public instance [MonadLift m n] [MonadExit m] : MonadExit n where
  exit rc := liftM (m := m) <| exit rc

/-- Exit with `ExitCode` if it is not 0. Otherwise, continue. -/
@[inline] public def exitIfErrorCode [Pure m] [MonadExit m]  (rc : ExitCode) : m Unit :=
  if rc != 0 then exit rc else pure ()
