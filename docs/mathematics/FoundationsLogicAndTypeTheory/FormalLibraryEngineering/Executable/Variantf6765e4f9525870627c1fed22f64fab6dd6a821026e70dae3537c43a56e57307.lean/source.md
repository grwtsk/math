# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Executable.Variantf6765e4f9525870627c1fed22f64fab6dd6a821026e70dae3537c43a56e57307

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07ebdaaad10f452374d373f73e7a19eb2cb6934e` · SHA-256 `f6765e4f9525870627c1fed22f64fab6dd6a821026e70dae3537c43a56e57307`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
