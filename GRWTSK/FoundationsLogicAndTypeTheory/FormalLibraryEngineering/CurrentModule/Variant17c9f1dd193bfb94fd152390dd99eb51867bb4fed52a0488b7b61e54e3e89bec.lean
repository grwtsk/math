-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetCurrentModule.Variant21dd68fac4a866f16f1a60d6c5bf99d3a335e5411d0f214a659c45eee4b7f9f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21dd68fac4a866f16f1a60d6c5bf99d3a335e5411d0f214a659c45eee4b7f9f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.GetCurrentModule.Variant21dd68fac4a866f16f1a60d6c5bf99d3a335e5411d0f214a659c45eee4b7f9f6","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"21dd68fac4a866f16f1a60d6c5bf99d3a335e5411d0f214a659c45eee4b7f9f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Util/CurrentModule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster
-/
module

import Lake.Load.Manifest


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetCurrentModule.Variant21dd68fac4a866f16f1a60d6c5bf99d3a335e5411d0f214a659c45eee4b7f9f6

open Lean (Name)

namespace ImportGraph

/-- Read the name of the main module from the `lake-manifest`. -/
public def getCurrentModule : IO Name := do

  match (← Lake.Manifest.load? ⟨"lake-manifest.json"⟩) with
  | none =>
    -- TODO: should this be caught?
    pure .anonymous
  | some manifest =>
    -- TODO: This assumes that the `package` and the default `lean_lib`
    -- have the same name up to capitalisation.
    -- Would be better to read the `.defaultTargets` from the
    -- `← getRootPackage` from `Lake`, but I can't make that work with the monads involved.
    return manifest.name.capitalize
