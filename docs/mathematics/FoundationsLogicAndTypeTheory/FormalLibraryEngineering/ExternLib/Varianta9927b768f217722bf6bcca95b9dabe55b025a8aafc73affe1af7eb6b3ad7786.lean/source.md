# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLib.Varianta9927b768f217722bf6bcca95b9dabe55b025a8aafc73affe1af7eb6b3ad7786

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63473191127bc375891be84b98cea2a5c6dc3453` · SHA-256 `da8b2ddf526c77f0d467692ccbdbaf9db86292707ef9a5043a0e98e638571163`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLibRecBuildStatic.Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ExternLibRecBuildStatic.Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/ExternLib.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.FacetConfig
public import Lake.Build.Job.Monad
import Lake.Build.Job.Register
import Lake.Build.Common
import Lake.Build.Infos

/-! # External Library Build
Build function definitions for external libraries.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLibRecBuildStatic.Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9

open System

namespace Lake

def ExternLib.recBuildStatic (lib : ExternLib) : FetchM (Job FilePath) :=
  withRegisterJob s!"{lib.staticTargetName.toString}:static" do
  lib.config.getPath <$> fetch (lib.pkg.target lib.staticTargetName)

/-- The facet configuration for the builtin `ExternLib.staticFacet`. -/
public def ExternLib.staticFacetConfig : ExternLibFacetConfig staticFacet :=
  mkFacetJobConfig recBuildStatic

/--
Build a shared library from a static library using `leanc`
using the Lean toolchain's linker.
-/
public def buildLeanSharedLibOfStatic
  (staticLibJob : Job FilePath)
  (weakArgs traceArgs : Array String := #[])
: SpawnM (Job FilePath) :=
  staticLibJob.mapM fun staticLib => do
    addLeanTrace
    addPureTrace traceArgs
    addPlatformTrace -- shared libraries are platform-dependent artifacts
    let dynlib := staticLib.withExtension sharedLibExt
    buildFileUnlessUpToDate' dynlib do
      let lean ← getLeanInstall
      let baseArgs :=
        if System.Platform.isOSX then
          #[s!"-Wl,-force_load,{staticLib}"]
        else
          #["-Wl,--whole-archive", staticLib.toString, "-Wl,--no-whole-archive"]
      let args := baseArgs ++ weakArgs ++ traceArgs ++
        #["-L", lean.leanLibDir.toString] ++ lean.ccLinkSharedFlags
      compileSharedLib dynlib args lean.cc
    return dynlib

def ExternLib.recBuildShared (lib : ExternLib) : FetchM (Job FilePath) :=
  withRegisterJob s!"{lib.staticTargetName.toString}:shared" do
  buildLeanSharedLibOfStatic (← lib.static.fetch) lib.linkArgs

/-- The facet configuration for the builtin `ExternLib.sharedFacet`. -/
public def ExternLib.sharedFacetConfig : ExternLibFacetConfig sharedFacet :=
  mkFacetJobConfig recBuildShared

/-- Construct a `Dynlib` object for a shared library target. -/
def computeDynlibOfShared (sharedLibTarget : Job FilePath) : SpawnM (Job Dynlib) :=
  sharedLibTarget.mapM fun sharedLib => do
    if let some stem := sharedLib.fileStem then
      if Platform.isWindows then
        return {path := sharedLib, name := stem}
      else if stem.startsWith "lib" then
        return {path := sharedLib, name := stem.drop 3 |>.copy}
      else
        error s!"shared library `{sharedLib}` does not start with `lib`; this is not supported on Unix"
    else
      error s!"shared library `{sharedLib}` has no file name"

def ExternLib.recComputeDynlib (lib : ExternLib) : FetchM (Job Dynlib) := do
  withRegisterJob s!"{lib.staticTargetName.toString}:dynlib" do
  computeDynlibOfShared (← lib.shared.fetch)

/-- The facet configuration for the builtin `ExternLib.dynlibFacet`. -/
public def ExternLib.dynlibFacetConfig : ExternLibFacetConfig dynlibFacet :=
  mkFacetJobConfig recComputeDynlib

def ExternLib.recBuildDefault (lib : ExternLib) : FetchM (Job FilePath) :=
  lib.static.fetch

/-- The facet configuration for the builtin `ExternLib.dynlibFacet`. -/
public def ExternLib.defaultFacetConfig : ExternLibFacetConfig defaultFacet :=
  mkFacetJobConfig recBuildDefault (memoize := false)

/--
A name-configuration map for the initial set of
external library facets (e.g., `static`, `shared`).
-/
public def ExternLib.initFacetConfigs : DNameMap ExternLibFacetConfig :=
  DNameMap.empty
  |>.insert defaultFacet defaultFacetConfig
  |>.insert staticFacet staticFacetConfig
  |>.insert sharedFacet sharedFacetConfig
  |>.insert dynlibFacet dynlibFacetConfig
```
