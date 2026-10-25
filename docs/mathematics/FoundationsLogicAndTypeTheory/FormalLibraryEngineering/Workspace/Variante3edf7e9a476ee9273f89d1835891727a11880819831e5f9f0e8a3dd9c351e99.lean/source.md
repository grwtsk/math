# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Workspace.Variante3edf7e9a476ee9273f89d1835891727a11880819831e5f9f0e8a3dd9c351e99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5c90c901f6360d4d433facf022873502218642f` · SHA-256 `5f344fa812cb0e797cb64a0ac10cc590499336c2c15d0e5891d4be98b51c14e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadWorkspaceRoot.Variantdd23a173478243833d443dae8ffd28695f9a9b0ca00dd03ee88d039d1f6dd129","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd23a173478243833d443dae8ffd28695f9a9b0ca00dd03ee88d039d1f6dd129","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.LoadWorkspaceRoot.Variantdd23a173478243833d443dae8ffd28695f9a9b0ca00dd03ee88d039d1f6dd129","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"dd23a173478243833d443dae8ffd28695f9a9b0ca00dd03ee88d039d1f6dd129","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Load/Workspace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Load.Config
public import Lake.Config.Workspace
import Lake.Load.Resolve
import Lake.Load.Package
import Lake.Load.Lean.Eval
import Lake.Load.Toml
import Lake.Build.InitFacets

/-! # Workspace Loader

This module contains the main definitions for loading a complete Lake workspace.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadWorkspaceRoot.Variantdd23a173478243833d443dae8ffd28695f9a9b0ca00dd03ee88d039d1f6dd129

open Lean

namespace Lake

/--
**For internal use only.**
Load a `Workspace` for a Lake package by elaborating its configuration file.
Does not resolve dependencies.
-/
public def loadWorkspaceRoot (config : LoadConfig) : LogIO Workspace := do
  Lean.searchPathRef.set config.lakeEnv.leanSearchPath
  let lakeConfig ← loadLakeConfig config.lakeEnv
  let config := {config with pkgIdx := 0}
  let ⟨config, h⟩ ← resolveConfigFile "[root]" config
  let fileCfg ← loadConfigFile config h
  let root := mkPackage config fileCfg 0
  have wsIdx_root : root.wsIdx = 0 := wsIdx_mkPackage
  let facetConfigs := fileCfg.facetDecls.foldl (·.insert ·.config) initFacetConfigs
  return {
    lakeEnv := config.lakeEnv
    lakeCache := computeLakeCache root config.lakeEnv
    lakeConfig
    lakeArgs? := config.lakeArgs?
    facetConfigs
    packages := #[root]
    packageMap := DNameMap.empty.insert root.keyName root
    size_packages_pos := by simp
    packages_wsIdx {i} h := by
      cases i with
      | zero => simp [wsIdx_root]
      | succ => simp at h
    depIdxs_packages := by simp [root]
  }

/--
Load a `Workspace` for a Lake package by
elaborating its configuration file and resolving its dependencies.
If `updateDeps` is true, updates the manifest before resolving dependencies.
-/
public def loadWorkspace (config : LoadConfig) : LoggerIO Workspace := do
  let {reconfigure, leanOpts, updateDeps, updateToolchain, packageOverrides, ..} := config
  let ws ← loadWorkspaceRoot config
  if updateDeps then
    ws.updateAndMaterialize {} leanOpts updateToolchain
  else if let some manifest ← Manifest.load? ws.manifestFile then
    ws.materializeDeps manifest leanOpts reconfigure packageOverrides
  else
    ws.updateAndMaterialize {} leanOpts updateToolchain

/-- Updates the manifest for the loaded Lake workspace (see `updateAndMaterialize`). -/
public def updateManifest
  (config : LoadConfig) (toUpdate : NameSet := {})
: LoggerIO Unit := do
  let {leanOpts, updateToolchain, ..} := config
  let ws ← loadWorkspaceRoot config
  discard <| ws.updateAndMaterialize toUpdate leanOpts updateToolchain
```
