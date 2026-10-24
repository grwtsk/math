-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakefileConfig.Variant017d0499448b0a6fbce8beda1f38ebda18bd26158421a1963d084d897b2131e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"017d0499448b0a6fbce8beda1f38ebda18bd26158421a1963d084d897b2131e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.LakefileConfig.Variant017d0499448b0a6fbce8beda1f38ebda18bd26158421a1963d084d897b2131e7","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"017d0499448b0a6fbce8beda1f38ebda18bd26158421a1963d084d897b2131e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/LakefileConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Script
public import Lake.Config.Dependency
public import Lake.Config.PackageConfig
public import Lake.Config.FacetConfig
public import Lake.Config.TargetConfig


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakefileConfig.Variant017d0499448b0a6fbce8beda1f38ebda18bd26158421a1963d084d897b2131e7

set_option doc.verso true

open Lean

namespace Lake

/-- The configuration defined by a Lake configuration file (e.g., {lit}`lakefile.(lean|toml)`). -/
public structure LakefileConfig where
  /-- The package deceleration of the configuration file. -/
  pkgDecl : PackageDecl
  /-- Depdency configurations in the order declared by the configuration file.  -/
  depConfigs : Array Dependency := #[]
  /-- Facet configurations in the order declared by the configuration file. -/
  facetDecls : Array FacetDecl := {}
  /-- Target configurations in the order declared by the configuration file. -/
  targetDecls : Array (PConfigDecl pkgDecl.keyName) := #[]
  /-- Name-declaration map of target configurations declared in the configuration file. -/
  targetDeclMap : DNameMap (NConfigDecl pkgDecl.keyName) :=
    targetDecls.foldl (fun m d => m.insert d.name (.mk d rfl)) {}
  /-- The names of targets declared via {lit}`@[default_target]`. -/
  defaultTargets : Array Name := #[]
  /-- Scripts declared in the configuration file. -/
  scripts : NameMap Script := {}
  /-- The names of the scripts declared via {lit}`@[default_script]`. -/
  defaultScripts : Array Script := #[]
  /-- {lit}`post_update` hooks in the order declared by the configuration file.. -/
  postUpdateHooks : Array (OpaquePostUpdateHook pkgDecl.keyName) := #[]
  /--
  The name of the configuration file's test driver.

  It is either  declared via {lit}`@[test_driver]` or derived from {lean}`PackageConfig.testDriver`.
  -/
  testDriver : String := pkgDecl.config.testDriver
  /--
  The name of the configuration file's test driver.

  It is either declared via {lit}`@[lint_driver]` or derived from {lean}`PackageConfig.lintDriver`.
  -/
  lintDriver : String := pkgDecl.config.lintDriver
