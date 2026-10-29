-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultLakeDir.Variantea447fdf16e6814982293323caae5f7018b55ce649bf94a6c521b8ea77343b82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea447fdf16e6814982293323caae5f7018b55ce649bf94a6c521b8ea77343b82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.DefaultLakeDir.Variantea447fdf16e6814982293323caae5f7018b55ce649bf94a6c521b8ea77343b82","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"ea447fdf16e6814982293323caae5f7018b55ce649bf94a6c521b8ea77343b82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/Defaults.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.System.FilePath


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultLakeDir.Variantea447fdf16e6814982293323caae5f7018b55ce649bf94a6c521b8ea77343b82

namespace Lake

open System (FilePath)

/--
The default directory to output Lake-related files
(e.g., build artifacts, packages, caches, etc.).
Currently not configurable.
-/
public def defaultLakeDir : FilePath := ".lake"

/-- The default setting for a `WorkspaceConfig`'s `packagesDir` option. -/
public def defaultPackagesDir := defaultLakeDir / "packages"

/-- The default name of the Lake configuration file (i.e., `lakefile`). -/
public def defaultConfigFile : FilePath := "lakefile"

/-- The default name of the Lean Lake configuration file (i.e., `lakefile.lean`). -/
public def defaultLeanConfigFile : FilePath := defaultConfigFile |>.addExtension "lean"

/-- The default name of the TOML Lake configuration file (i.e., `lakefile.toml`). -/
public def defaultTomlConfigFile : FilePath := defaultConfigFile |>.addExtension "toml"

/-- The default name of the Lake manifest file (i.e., `lake-manifest.json`). -/
public def defaultManifestFile : FilePath := "lake-manifest.json"

/-- The default build directory for packages (i.e., `.lake/build`). -/
public def defaultBuildDir : FilePath := defaultLakeDir / "build"

/-- The default Lean library directory for packages. -/
public def defaultLeanLibDir : FilePath := "lib" / "lean"

/-- The default native library directory for packages. -/
public def defaultNativeLibDir : FilePath := "lib"

/-- The default binary directory for packages. -/
public def defaultBinDir : FilePath := "bin"

/-- The default IR directory for packages. -/
public def defaultIrDir : FilePath := "ir"
