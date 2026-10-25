# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Executable.Variantb1053c77c701f4f22d21a85ac3d456e420ab5eb668bb44554b543a49b51d774d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `850184625f6fcf71aa620ae721b74871ddb48a45` · SHA-256 `4727bf82009046249a89df4df5cfbaab3b93e9046a9314f7c793add9f6e72a71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanExeRecBuildExe.Variantf6765e4f9525870627c1fed22f64fab6dd6a821026e70dae3537c43a56e57307","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6765e4f9525870627c1fed22f64fab6dd6a821026e70dae3537c43a56e57307","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.LeanExeRecBuildExe.Variantf6765e4f9525870627c1fed22f64fab6dd6a821026e70dae3537c43a56e57307","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"f6765e4f9525870627c1fed22f64fab6dd6a821026e70dae3537c43a56e57307","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/Executable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.FacetConfig
import Lake.Build.Job.Register
import Lake.Build.Target.Fetch
import Lake.Build.Common
import Lake.Build.Infos


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanExeRecBuildExe.Variantf6765e4f9525870627c1fed22f64fab6dd6a821026e70dae3537c43a56e57307

namespace Lake
open System (FilePath)

/-! # Lean Executable Build
The build function definition for a Lean executable.
-/

def LeanExe.recBuildExe (self : LeanExe) : FetchM (Job FilePath) :=
  withRegisterJob s!"{self.name}:exe" <| withCurrPackage self.pkg do
  let infoJob ←
    if self.supportInterpreter
    then self.root.linkInfoExport.fetch
    else self.root.linkInfoNoExport.fetch
  infoJob.mapM fun info => do
    let args := self.exeOnlyLinkArgs ++ info.args
    addPureTrace self.exeOnlyLinkArgs "LeanExe.exeOnlyLinkArgs"
    buildLeanExeSync self.file info.objs info.libs args self.sharedLean

/-- The facet configuration for the builtin `LeanExe.exeFacet`. -/
public def LeanExe.exeFacetConfig : LeanExeFacetConfig exeFacet :=
  mkFacetJobConfig recBuildExe

def LeanExe.recBuildDefault (lib : LeanExe) : FetchM (Job FilePath) :=
  lib.exe.fetch

/-- The facet configuration for the builtin `ExternLib.dynlibFacet`. -/
public def LeanExe.defaultFacetConfig : LeanExeFacetConfig defaultFacet :=
  mkFacetJobConfig recBuildDefault (memoize := false)

/--
A name-configuration map for the initial set of
Lean executable facets (e.g., `exe`).
-/
public def LeanExe.initFacetConfigs : DNameMap LeanExeFacetConfig :=
  DNameMap.empty
  |>.insert defaultFacet defaultFacetConfig
  |>.insert exeFacet exeFacetConfig
```
