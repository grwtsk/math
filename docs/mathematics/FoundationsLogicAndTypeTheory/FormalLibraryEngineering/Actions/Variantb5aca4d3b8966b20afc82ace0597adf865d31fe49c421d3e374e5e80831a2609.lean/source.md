# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Actions.Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ad257dbe1370d19c4d7176a1d675643bd9a737b` · SHA-256 `4e47208ce78540d3afaa5bb76481d0545a8c34d7da9d7ffc8050858013858c31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Env.Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Env.Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/CLI/Actions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Workspace
import Lake.Build.Run
import Lake.Build.Actions
import Lake.Build.Targets
import Lake.Build.Module
import Lake.Util.Proc


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Env.Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b

namespace Lake
open Lean (Name)
open System (FilePath)

public def env (cmd : String) (args : Array String := #[]) : LakeT IO UInt32 := do
  IO.Process.spawn {cmd, args, env := ← getAugmentedEnv} >>= (·.wait)

public def exe
  (name : Name) (args  : Array String := #[]) (buildConfig : BuildConfig := {})
: LakeT IO UInt32 := do
  let ws ← getWorkspace
  let some exe := ws.findLeanExe? name
    | error s!"unknown executable `{name}`"
  let exeFile ← ws.runBuild exe.fetch buildConfig
  env exeFile.toString args

public def Package.pack
  (pkg : Package) (file : FilePath := pkg.buildArchiveFile)
: LogIO Unit := do
  logInfo s!"packing {file}"
  tar pkg.buildDir file

public def Package.unpack
  (pkg : Package) (file : FilePath := pkg.buildArchiveFile)
: LogIO Unit := do
  logInfo s!"unpacking {file}"
  untar file pkg.buildDir

public def Package.uploadRelease
  (pkg : Package) (tag : String)
: LogIO Unit := do
  pkg.pack
  logInfo s!"uploading {tag}:{pkg.buildArchive}"
  let mut args :=
    #["release", "upload", tag, pkg.buildArchiveFile.toString, "--clobber"]
  if let some repo := pkg.releaseRepo? then
    args := args.append #["-R", repo]
  proc {cmd := "gh", args}

public def Package.resolveDriver
  (pkg : Package) (kind : String) (driver : String)
: LakeT IO (Package × String) := do
  if driver.isEmpty then
    error s!"{pkg.prettyName}: no {kind} driver configured"
  else
    match driver.split '/' |>.toStringList with
    | [driverPkg, driver] =>
      let some driverPkg ← findPackageByName? driverPkg.toName
        | error s!"{pkg.prettyName}: unknown {kind} driver package '{driverPkg}'"
      return (driverPkg, driver)
    | [driver] =>
      return (pkg, driver)
    | _ =>
      error s!"{pkg.prettyName}: invalid {kind} driver '{driver}' (too many '/')"

public def Package.test
  (pkg : Package) (args : List String := []) (buildConfig : BuildConfig := {})
: LakeT IO UInt32 := do
  let cfgArgs := pkg.testDriverArgs
  let (pkg, driver) ← pkg.resolveDriver "test" pkg.testDriver
  if let some script := pkg.scripts.find? driver.toName then
    script.run (cfgArgs.toList ++ args)
  else if let some exe := pkg.findLeanExe? driver.toName  then
    let exeFile ← runBuild exe.fetch buildConfig
    env exeFile.toString (cfgArgs ++ args.toArray)
  else if let some lib := pkg.findLeanLib? driver.toName then
    unless cfgArgs.isEmpty ∧ args.isEmpty do
      error s!"{pkg.prettyName}: arguments cannot be passed to a library test driver"
    runBuild lib.fetch {buildConfig with out := .stdout}
    return 0
  else
    error s!"{pkg.prettyName}: invalid test driver: unknown script, executable, or library '{driver}'"

public def Package.lint
  (pkg : Package) (args : List String := []) (buildConfig : BuildConfig := {})
: LakeT IO UInt32 := do
  let cfgArgs := pkg.lintDriverArgs
  let (pkg, driver) ← pkg.resolveDriver "lint" pkg.lintDriver
  if let some script := pkg.scripts.find? driver.toName then
    script.run (cfgArgs.toList ++ args)
  else if let some exe := pkg.findLeanExe? driver.toName  then
    let exeFile ← runBuild exe.fetch buildConfig
    env exeFile.toString (cfgArgs ++ args.toArray)
  else
    error s!"{pkg.prettyName}: invalid lint driver: unknown script or executable '{driver}'"

/--
Run `lean` on file using configuration from the workspace.

Additional arguments can be passed to `lean` via `moreArgs` and the
building of dependencies can be further configured via `buildConfig`.
-/
public def Workspace.evalLeanFile
  (ws : Workspace) (leanFile : FilePath)
  (moreArgs : Array String := #[]) (buildConfig : BuildConfig := {})
: IO UInt32 := do
  let spawnArgs ← ws.runBuild (cfg := buildConfig) do
    prepareLeanCommand leanFile moreArgs
  let child ← IO.Process.spawn spawnArgs
  child.wait
```
