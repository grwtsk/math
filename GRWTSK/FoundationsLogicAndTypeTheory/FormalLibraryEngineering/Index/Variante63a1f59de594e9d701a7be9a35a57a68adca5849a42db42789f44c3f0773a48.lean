-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecBuildWithIndex.Variant160e062d7fddc4495da165747a2070730e6830743aa33590a895fb76e91d9e04","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"160e062d7fddc4495da165747a2070730e6830743aa33590a895fb76e91d9e04","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.RecBuildWithIndex.Variant160e062d7fddc4495da165747a2070730e6830743aa33590a895fb76e91d9e04","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"160e062d7fddc4495da165747a2070730e6830743aa33590a895fb76e91d9e04","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/Index.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Fetch
import Lake.Config.Monad
import Lake.Build.Topological
import Lake.Util.StoreInsts

/-!
# The Lake Build Index

The Lake build index is the complete map of Lake build keys to
Lake build functions, which is used by Lake to build any Lake build info.

This module leverages the index to perform topologically-based recursive builds.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecBuildWithIndex.Variant160e062d7fddc4495da165747a2070730e6830743aa33590a895fb76e91d9e04

open Lean (Name)
open System (FilePath)

namespace Lake

/-- Recursive build function for anything in the Lake build index. -/
def recBuildWithIndex (info : BuildInfo) : FetchM (Job (BuildData info.key)) :=
  match info with
  | .target pkg target => do
    if let some decl := pkg.findTargetDecl? target then
      if h : decl.kind.isAnonymous then
        let key := BuildKey.packageTarget pkg.keyName target
        fetchOrCreate key do (decl.targetConfig h).fetchFn pkg
      else
        let kind := ⟨decl.kind, by simp [decl.target_eq_type h]⟩
        let job := Job.pure (kind := kind) <| decl.mkConfigTarget pkg
        return cast (by simp [decl.data_eq_target h]) job
    else
      error s!"invalid target '{info}': target not found in package"
  | .facet target kind data facet => do
    if let some config := (← getWorkspace).findFacetConfig? facet then
      if h : config.kind = kind then
        let recFetch := config.fetchFn <| cast (by simp [h]) data
        if config.memoize then
          let key := BuildKey.facet target facet
          fetchOrCreate key recFetch
        else
          recFetch
      else
        error s!"invalid target '{info}': \
          input target is of kind '{kind}', but facet expects '{config.kind}'"
    else
      error s!"invalid target '{info}': unknown facet '{facet}'"

/-- Recursive build function with memoization. -/
def recFetchWithIndex : (info : BuildInfo) → RecBuildM (Job (BuildData info.key)) :=
 inline <| recFetchAcyclic (β := (Job <| BuildData ·.key)) BuildInfo.key recBuildWithIndex

/--
Run a recursive Lake build using the Lake build index
and a topological / suspending scheduler.
-/
@[inline] public nonrec def FetchT.run (x : FetchT m α) : RecBuildT m α :=
  x.run recFetchWithIndex
