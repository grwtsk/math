# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant8cb19e5493696e84fe7d1b5efa3da544a7b38fc6717bf55448fecf18bf445200

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `257a0b4b46c3e39d66b2fa46afc70de7fe73e3d8` · SHA-256 `22ecb98fb7bfbae7130b9aa0640577935a495fe88125102fc70df9eeb4c4b0d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildModuleBlueprint.Variant50a4b15cadd4d8f2f1ddd02324968a1498a3443956b9f07d2e024196376c0cbd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50a4b15cadd4d8f2f1ddd02324968a1498a3443956b9f07d2e024196376c0cbd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.BuildModuleBlueprint.Variant50a4b15cadd4d8f2f1ddd02324968a1498a3443956b9f07d2e024196376c0cbd","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"50a4b15cadd4d8f2f1ddd02324968a1498a3443956b9f07d2e024196376c0cbd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildModuleBlueprint.Variant50a4b15cadd4d8f2f1ddd02324968a1498a3443956b9f07d2e024196376c0cbd

open System Lake DSL

package LeanArchitect where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/0fbfba6c79f5290a71f49e08df8df2043e37dd094cf9385a5f5bd25c8221d692/src"
  testDriver := "ArchitectTest"

@[default_target]
lean_lib Architect where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/0fbfba6c79f5290a71f49e08df8df2043e37dd094cf9385a5f5bd25c8221d692/src"

lean_lib ArchitectTest where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/0fbfba6c79f5290a71f49e08df8df2043e37dd094cf9385a5f5bd25c8221d692/src"
  globs := #[.submodules `ArchitectTest]

@[default_target]
lean_exe extract_blueprint where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/0fbfba6c79f5290a71f49e08df8df2043e37dd094cf9385a5f5bd25c8221d692/src"
  root := `Main
  supportInterpreter := true

/-- Utility script used for converting from existing blueprint format. -/
@[default_target]
lean_exe add_position_info where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/0fbfba6c79f5290a71f49e08df8df2043e37dd094cf9385a5f5bd25c8221d692/src"
  root := `scripts.convert.add_position_info
  supportInterpreter := true

require batteries from git
  "https://github.com/leanprover-community/batteries" @ "v4.29.0"

require Cli from git
  "https://github.com/mhuisi/lean4-cli" @ "v4.29.0"

def buildModuleBlueprint (mod : Module) (ext : String) (extractArgs : Array String) : FetchM (Job Unit) := do
  let exeJob ← extract_blueprint.fetch
  let modJob ← mod.leanArts.fetch
  let buildDir := (← getRootPackage).buildDir
  let mainFile := mod.filePath (buildDir / "blueprint" / "module") ext
  let leanOptions := Lean.toJson mod.leanOptions |>.compress
  exeJob.bindM fun exeFile => do
    modJob.mapM fun _ => do
      -- The output is a main file plus a list of auxiliary files
      buildFileUnlessUpToDate' mainFile do
        proc {
          cmd := exeFile.toString
          args := #["single", "--build", buildDir.toString, "--options", leanOptions, mod.name.toString] ++ extractArgs
          env := ← getAugmentedEnv
        }

/-- A facet to extract the blueprint for a module. -/
module_facet blueprint (mod : Module) : Unit := do
  buildModuleBlueprint mod "tex" #[]

/-- A facet to extract JSON data of blueprint for a module. -/
module_facet blueprintJson (mod : Module) : Unit := do
  buildModuleBlueprint mod "json" #["--json"]

def buildLibraryBlueprint (lib : LeanLib) (moduleFacet : Lean.Name) (ext : String) (extractArgs : Array String) : FetchM (Job Unit) := do
  let mods ← (← lib.modules.fetch).await
  let moduleJobs := Job.collectArray <| ← mods.mapM (fetch <| ·.facet moduleFacet)
  let exeJob ← extract_blueprint.fetch
  let buildDir := (← getRootPackage).buildDir
  let outputFile := buildDir / "blueprint" / "library" / lib.name.toString |>.addExtension ext
  exeJob.bindM fun exeFile => do
    moduleJobs.mapM fun _ => do
      buildFileUnlessUpToDate' outputFile do
        logInfo "Blueprint indexing"
        proc {
          cmd := exeFile.toString
          args := #["index", "--build", buildDir.toString, lib.name.toString, ",".intercalate (mods.map (·.name.toString)).toList] ++ extractArgs
          env := ← getAugmentedEnv
        }

/-- A facet to extract the blueprint for a library. -/
library_facet blueprint (lib : LeanLib) : Unit := do
  buildLibraryBlueprint lib `blueprint "tex" #[]

/-- A facet to extract the JSON data for the blueprint for a library. -/
library_facet blueprintJson (lib : LeanLib) : Unit := do
  buildLibraryBlueprint lib `blueprintJson "json" #["--json"]

/-- A facet to extract the blueprint for each library in a package. -/
package_facet blueprint (pkg : Package) : Unit := do
  let libJobs := Job.collectArray <| ← pkg.leanLibs.mapM (fetch <| ·.facet `blueprint)
  let _ ← libJobs.await
  return .nil

/-- A facet to extract the blueprint JSON data for each library in a package. -/
package_facet blueprintJson (pkg : Package) : Unit := do
  let libJobs := Job.collectArray <| ← pkg.leanLibs.mapM (fetch <| ·.facet `blueprintJson)
  let _ ← libJobs.await
  return .nil

open IO.Process in
/-- Run a command, print all outputs, and throw an error if it fails. -/
private def runCmd (cmd : String) (args : Array String) : ScriptM Unit := do
  let child ← spawn { cmd, args, stdout := .inherit, stderr := .inherit, stdin := .null }
  let exitCode ← child.wait
  if exitCode != 0 then
    throw <| IO.userError s!"Error running command {cmd} {args.toList}"

/-- A script to convert an existing blueprint to LeanArchitect format,
modifying the Lean and LaTeX source files in place. -/
script blueprintConvert (args : List String) do
  let architect ← Architect.get
  let convertScript := architect.srcDir / "scripts" / "convert" / "main.py"
  let libs := (← getRootPackage).leanLibs
  let rootMods := libs.flatMap (·.rootModules)
  if h : rootMods.size = 0 then
    IO.eprintln "No root modules found for any library"
    return 1
  else  -- this else is needed for rootMods[0] to work
  for lib in libs do
    runCmd (← getLake).toString #["build", lib.name.toString]
  let leanOptions := Lean.toJson (← getRootPackage).leanOptions |>.compress
  runCmd "python3" <|
    #[convertScript.toString] ++
    #["--libraries"] ++ libs.map (·.name.toString) ++
    #["--modules"] ++ rootMods.map (·.name.toString) ++
    #["--root_file", rootMods[0].leanFile.toString] ++
    #["--options", leanOptions] ++
    args
  return 0
```
