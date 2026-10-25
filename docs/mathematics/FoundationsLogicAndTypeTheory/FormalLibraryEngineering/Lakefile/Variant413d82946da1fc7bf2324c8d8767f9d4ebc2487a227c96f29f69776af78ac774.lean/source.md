# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant413d82946da1fc7bf2324c8d8767f9d4ebc2487a227c96f29f69776af78ac774

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9d84742b2d9681c2efdcf8ba0945bc8aa8a874d` · SHA-256 `413d82946da1fc7bf2324c8d8767f9d4ebc2487a227c96f29f69776af78ac774`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL System

package proofwidgets {
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/46d42dc423d8a134d8e12708d1da168b2cab421b6587332b884de91fc5513f15/src"
  preferReleaseBuild := true
}

lean_lib ProofWidgets {
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/46d42dc423d8a134d8e12708d1da168b2cab421b6587332b884de91fc5513f15/src"
}

def npmCmd : String :=
  if Platform.isWindows then "npm.cmd" else "npm"

def widgetDir := FilePath.mk "/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/widget"

/-- Target to update `package-lock.json` whenever `package.json` has changed. -/
target widgetPackageLock : FilePath := do
  let packageFile ← inputFile <| widgetDir / "package.json"
  let packageLockFile := widgetDir / "package-lock.json"
  buildFileAfterDep packageLockFile packageFile fun _srcFile => do
    proc {
      cmd := npmCmd
      args := #["install"]
      cwd := some widgetDir
    }

/-- Target to build `build/js/foo.js` from a `widget/src/foo.tsx` widget module.
Rebuilds whenever the `.tsx` source, or any part of the build configuration, has changed. -/
def widgetTsxTarget (pkg : NPackage _package.name) (nodeModulesMutex : IO.Mutex Bool)
    (tsxName : String) (deps : Array (BuildJob FilePath)) (isDev : Bool) :
    IndexBuildM (BuildJob FilePath) := do
  let jsFile := pkg.buildDir / "js" / s!"{tsxName}.js"
  buildFileAfterDepArray jsFile deps fun _srcFile => do
    /-
    HACK: Ensure that NPM modules are installed before building TypeScript, *if* we are building it.
    It would probably be better to have a proper target for `node_modules`
    that all the `.tsx` modules depend on.
    BUT when we are being built as a dependency of another package using the cloud releases feature,
    we wouldn't want that target to trigger since in that case NPM is not necessarily installed.
    Hence we put this block inside the build process for any `.tsx` file
    rather than as a top-level target.
    This only runs when some TypeScript needs building.
    It has to be guarded by a mutex to avoid multiple `.tsx` builds trampling on each other
    with multiple `npm clean-install`s.
    -/
    nodeModulesMutex.atomically (m := IO) do
      if (← get) then return
      let _ ← IO.Process.run {
        cmd := npmCmd
        args := #["clean-install"]
        cwd := some widgetDir
      }
      set true
    proc {
      cmd := npmCmd
      args :=
        if isDev then
          #["run", "build-dev", "--", "--tsxName", tsxName]
        else
          #["run", "build", "--", "--tsxName", tsxName]
      cwd := some widgetDir
    }

/-- Target to build all TypeScript widget modules that match `widget/src/*.tsx`. -/
def widgetJsAllTarget (pkg : NPackage _package.name) (isDev : Bool) :
    IndexBuildM (BuildJob (Array FilePath)) := do
  let fs ← (widgetDir / "src").readDir
  let tsxs : Array FilePath := fs.filterMap fun f =>
    let p := f.path; if let some "tsx" := p.extension then some p else none
  -- Conservatively, every .js build depends on all the .tsx source files.
  let depFiles := tsxs ++ #[ widgetDir / "rollup.config.js", widgetDir / "tsconfig.json" ]
  let deps ← liftM <| depFiles.mapM inputFile
  let deps := deps.push $ ← fetch (pkg.target ``widgetPackageLock)
  let nodeModulesMutex ← IO.Mutex.new false
  let jobs ← tsxs.mapM fun tsx => widgetTsxTarget pkg nodeModulesMutex tsx.fileStem.get! deps isDev
  BuildJob.collectArray jobs

target widgetJsAll (pkg : NPackage _package.name) : Array FilePath := do
  widgetJsAllTarget pkg (isDev := false)

target widgetJsAllDev (pkg : NPackage _package.name) : Array FilePath := do
  widgetJsAllTarget pkg (isDev := true)

@[default_target]
target all (pkg : NPackage _package.name) : Unit := do
  let some lib := pkg.findLeanLib? ``ProofWidgets |
    error "cannot find lean_lib target"
  let job₁ ← fetch (pkg.target ``widgetJsAll)
  let _ ← job₁.await
  let job₂ ← lib.recBuildLean
  let _ ← job₂.await
  return .nil
```
