# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantdcfe05ba7f37a1743e75e25abd5c8c129b5c28daacde41754f502607cb1f87b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10b5aa40787947acab5cf6a94c35f15133e881e7` · SHA-256 `66b6e2f759ac62c2b3d77c082f1b9cf80818affac6102f5105aaa035d6002c13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WidgetDir.Variant0a319fffbf511dab4c3307dc105f8e8fdb4f6160020995cef5f442061cc0abca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a319fffbf511dab4c3307dc105f8e8fdb4f6160020995cef5f442061cc0abca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.WidgetDir.Variant0a319fffbf511dab4c3307dc105f8e8fdb4f6160020995cef5f442061cc0abca","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"0a319fffbf511dab4c3307dc105f8e8fdb4f6160020995cef5f442061cc0abca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WidgetDir.Variant0a319fffbf511dab4c3307dc105f8e8fdb4f6160020995cef5f442061cc0abca

open Lake DSL System

package proofwidgets where

def widgetDir : FilePath := "widget"

nonrec def Lake.Package.widgetDir (pkg : Package) : FilePath :=
  pkg.dir / widgetDir

def Lake.Package.runNpmCommand (pkg : Package) (args : Array String) : LogIO Unit :=
  -- Running `cmd := "npm.cmd"` directly fails on Windows sometimes
  -- (https://github.com/leanprover-community/ProofWidgets4/issues/97)
  -- so run in PowerShell instead (`cmd.exe` also doesn't work.)
  if Platform.isWindows then
    proc {
      cmd := "powershell"
      args := #["-Command", "npm.cmd"] ++ args
      cwd := some pkg.widgetDir
    } (quiet := true) -- use `quiet` here or `lake` will replay the output in downstream projects.
  else
    proc {
      cmd := "npm"
      args
      cwd := some pkg.widgetDir
    } (quiet := true)

input_file widgetPackageJson where
  path := widgetDir / "package.json"
  text := true

/-- Target to update `package-lock.json` whenever `package.json` has changed. -/
target widgetPackageLock pkg : FilePath := do
  let packageFile ← widgetPackageJson.fetch
  let packageLockFile := pkg.widgetDir / "package-lock.json"
  buildFileAfterDep (text := true) packageLockFile packageFile fun _srcFile => do
    pkg.runNpmCommand #["install"]

input_file widgetRollupConfig where
  path := widgetDir / "rollup.config.js"
  text := true

input_file widgetTsconfig where
  path := widgetDir / "tsconfig.json"
  text := true

/-- The TypeScript widget modules in `widget/src`. -/
input_dir widgetJsSrcs where
  path := widgetDir / "src"
  filter := .extension <| .mem #["ts", "tsx", "js", "jsx"]
  text := true

/-- Target to build all widget modules from `widgetJsSrcs`. -/
def widgetJsAllTarget (pkg : Package) (isDev : Bool) : FetchM (Job Unit) := do
  let srcs ← widgetJsSrcs.fetch
  let rollupConfig ← widgetRollupConfig.fetch
  let tsconfig ← widgetTsconfig.fetch
  let widgetPackageLock ← widgetPackageLock.fetch
  srcs.bindM (sync := true) fun _ =>
  rollupConfig.bindM (sync := true) fun _ =>
  tsconfig.bindM (sync := true) fun _ =>
  widgetPackageLock.mapM fun _ => do
    let depTrace := mixTrace (← getTrace) (.ofHash (.ofHashable isDev) "isDev")
    let traceFile := pkg.widgetDir / "js" / "lake.trace"
    buildUnlessUpToDate traceFile depTrace traceFile do
      if let some msg := get_config? errorOnBuild then
        error msg
      /- HACK: Ensure that NPM modules are installed before building TypeScript,
       *if* we are building Typescript.
       It would probably be better to have a proper target for `node_modules`
       that all the JS/TS modules depend on.
       BUT when we are being built as a dependency of another package
       we wouldn't want that target to trigger
       since in that case NPM is not necessarily installed.
       Hence, we put this block inside the build process for JS/TS files
       rather than as a top-level target.
       This only runs when some TypeScript needs building. -/
      pkg.runNpmCommand #["clean-install"]
      pkg.runNpmCommand #["run", if isDev then "build-dev" else "build"]

target widgetJsAll pkg : Unit :=
  widgetJsAllTarget pkg (isDev := false)

target widgetJsAllDev pkg : Unit :=
  widgetJsAllTarget pkg (isDev := true)

@[default_target]
lean_lib ProofWidgets where
  needs := #[widgetJsAll]

lean_lib ProofWidgets.Demos where
  needs := #[widgetJsAll]
  globs := #[.submodules `ProofWidgets.Demos]

@[test_driver]
lean_lib test where
  globs := #[.submodules `test]
```
