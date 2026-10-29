-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadLeanConfig.Variant835d173b6b9855c99833c7063c3909f58d2e746632d3f723f10aff5e1fe0a015","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"835d173b6b9855c99833c7063c3909f58d2e746632d3f723f10aff5e1fe0a015","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.LoadLeanConfig.Variant835d173b6b9855c99833c7063c3909f58d2e746632d3f723f10aff5e1fe0a015","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"835d173b6b9855c99833c7063c3909f58d2e746632d3f723f10aff5e1fe0a015","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Load/Lean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Package
public import Lake.Config.LakefileConfig
public import Lake.Load.Config
import Lake.Load.Lean.Elab
import Lake.Load.Lean.Eval

/-! # Lean Loader

This module contains the main definitions to load a package from a
Lake configuration file written in Lake's Lean DSL.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadLeanConfig.Variant835d173b6b9855c99833c7063c3909f58d2e746632d3f723f10aff5e1fe0a015

open Lean

namespace Lake

/-- Elaborate a Lake configuration file written in Lean and extract the Lake configuration.  -/
public def loadLeanConfig  (cfg : LoadConfig) : LogIO LakefileConfig := do
  let configEnv ← importConfigFile cfg
  LakefileConfig.loadFromEnv configEnv cfg.leanOpts
