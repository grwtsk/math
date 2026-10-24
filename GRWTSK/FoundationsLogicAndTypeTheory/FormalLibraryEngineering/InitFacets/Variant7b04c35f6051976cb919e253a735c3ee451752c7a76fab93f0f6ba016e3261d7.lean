-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InitFacetConfigs.Variant623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.InitFacetConfigs.Variant623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/InitFacets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.FacetConfig
import Lake.Build.Module
import Lake.Build.Package
import Lake.Build.Library
import Lake.Build.Executable
import Lake.Build.ExternLib
import Lake.Build.InputFile

/-! # Initial Facets -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InitFacetConfigs.Variant623d9a019992f6c85e2b569cab29da2debfdcf0f4247ce3399ff8576b8141806

namespace Lake

/-- The initial set of Lake facets. -/
public def initFacetConfigs : FacetConfigMap :=
  DNameMap.empty
  |> insert Module.initFacetConfigs
  |> insert Package.initFacetConfigs
  |> insert LeanLib.initFacetConfigs
  |> insert LeanExe.initFacetConfigs
  |> insert ExternLib.initFacetConfigs
  |> insert InputFile.initFacetConfigs
  |> insert InputDir.initFacetConfigs
where
  insert {k} (group : DNameMap (KFacetConfig k)) map :=
    group.foldl (init := map) fun m _ v => m.insert v.toFacetConfig
