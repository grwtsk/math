# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant49aeea1c45c95ad5476f2946735b035b78cc385759648bcc8f60547592dc6e85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dafcee71dc5135213b6afbf5efb8c4bb9ce9fc1` · SHA-256 `adc3c7e8974faa0d99671ed8c99796bd072376406db94884ca78deb2e3aa6afa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadConfig.Variant7292223420baa665c49a71a022191bddf8507243e310161d10b52a83f3238e4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7292223420baa665c49a71a022191bddf8507243e310161d10b52a83f3238e4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.LoadConfig.Variant7292223420baa665c49a71a022191bddf8507243e310161d10b52a83f3238e4b","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"7292223420baa665c49a71a022191bddf8507243e310161d10b52a83f3238e4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Load/Config.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Env
public import Lake.Config.Lang
public import Lake.Config.LakeConfig
public import Lake.Load.Manifest


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadConfig.Variant7292223420baa665c49a71a022191bddf8507243e310161d10b52a83f3238e4b

set_option doc.verso true

open System Lean

namespace Lake

/-- Context for loading a Lake configuration. -/
public structure LoadConfig where
  /-- The Lake environment of the load process. -/
  lakeEnv : Lake.Env
  /--
  The CLI arguments Lake was run with.
  Used to perform a restart of Lake on a toolchain update.
  A value of {lean}`none` means that Lake is not restartable via the CLI.
  -/
  lakeArgs? : Option (Array String) := none
  /-- The absolute path to the root directory of the Lake workspace. -/
  wsDir : FilePath
  /-- The index of the package in the workspace. Used to disambiguate packages with the same name. -/
  pkgIdx : Nat := 0
  /--
  The assigned name of the package.
  If {lean}`Name.anonymous`, the package's own name will be used.
  -/
  pkgName : Name := .anonymous
  /-- The loaded package's directory (relative to the workspace directory). -/
  relPkgDir : FilePath := "."
  /-- The absolute path to the loaded package's directory. -/
  pkgDir : FilePath := wsDir / relPkgDir
  /-- The package's Lake configuration file (relative to its directory). -/
  relConfigFile : FilePath := defaultConfigFile
  /-- The full path to the loaded package's Lake configuration file. -/
  configFile : FilePath := pkgDir / relConfigFile
  /-
  The format of the package's configuration file.

  If {lean}`none`, the format will be determined by the file's extension.
  -/
  configLang? : Option ConfigLang := none
  /-- The package's Lake manifest file (relative to its directory). -/
  relManifestFile : FilePath := defaultManifestFile
  /-- Additional package overrides for this workspace load. -/
  packageOverrides : Array PackageEntry := #[]
  /-- A set of key-value Lake configuration options (i.e., {lit}`-K` settings). -/
  lakeOpts : NameMap String := {}
  /-- The Lean options with which to elaborate the configuration file. -/
  leanOpts : Options := {}
  /-- Whether Lake should re-elaborate configuration files instead of using cached OLeans. -/
  reconfigure : Bool := false
  /-- Whether to update dependencies when loading the workspace. -/
  updateDeps : Bool := false
  /--
  Whether to update the workspace's {lit}`lean-toolchain` when dependencies are updated.

  If {lean}`true` and a toolchain update occurs, Lake will need to be restarted.
  -/
  updateToolchain : Bool := true
  /-- The package's scope (e.g., in Reservoir). -/
  scope : String := ""
  /-- The URL to this package's Git remote (if any). -/
  remoteUrl : String := ""

namespace LoadConfig

/-- The package's Lake directory (for Lake temporary files). -/
@[inline] public def lakeDir (cfg : LoadConfig) : FilePath :=
  cfg.pkgDir / defaultLakeDir

/-- The absolute path where compiled configurations are stored. -/
@[inline] public def configDir (cfg : LoadConfig) : FilePath :=
  cfg.wsDir / defaultLakeDir / "config" / toString cfg.pkgIdx
```
