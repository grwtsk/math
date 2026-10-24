# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cli.Variant848f7a7bd33208a100bbcce86dd27cbb2ea74eb3fb33bc63546f6258f45aae83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5e7d367207302c75b379cf63ce5677594c82edf` · SHA-256 `b040a616818848f9fbf6f4bf2955d7ac4705ca96e9f10a906bb80aa10cf62d71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CliConfig.Variant53fcc3176472cc1b6e1ad7b3ff3c202b6e8bc4f5496d1810f80c4f0fe5b8f015","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53fcc3176472cc1b6e1ad7b3ff3c202b6e8bc4f5496d1810f80c4f0fe5b8f015","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CliConfig.Variant53fcc3176472cc1b6e1ad7b3ff3c202b6e8bc4f5496d1810f80c4f0fe5b8f015","mathematical_subject":"Computation.DataStructures","original_sha256":"53fcc3176472cc1b6e1ad7b3ff3c202b6e8bc4f5496d1810f80c4f0fe5b8f015","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/native-source-intake/relocation-review/aug10-consumers/active-packages/2771b9ffb3fa677967093849d56e47c4f1699805385cd737c37d32438da50ebd/src/tools/LeanSource/Cli.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import tools.LeanSource.Serialize
public import tools.LeanSource.SourceLocations


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CliConfig.Variant53fcc3176472cc1b6e1ad7b3ff3c202b6e8bc4f5496d1810f80c4f0fe5b8f015

public section

/-! # Source tracer command-line interface -/

open Lean System

namespace MathematicsLeanSource

structure CliConfig where
  projectRoot : FilePath := "."
  moduleList : FilePath := "docs/extractor/source-modules.txt"
  output : FilePath := ".surface/source-analysis/raw-trace.json"
  modules : Array Name := #[]
  deriving Inhabited

private def parseModuleName (value : String) : Name :=
  value.splitOn "." |>.foldl (init := Name.anonymous) fun result part =>
    Name.str result part

private partial def parseArgs (args : List String) (config : CliConfig := {}) : IO CliConfig := do
  match args with
  | [] => return config
  | "--project-root" :: value :: tail =>
      parseArgs tail { config with projectRoot := ⟨value⟩ }
  | "--module-list" :: value :: tail =>
      parseArgs tail { config with moduleList := ⟨value⟩ }
  | "--output" :: value :: tail =>
      parseArgs tail { config with output := ⟨value⟩ }
  | "--module" :: value :: tail =>
      parseArgs tail { config with modules := config.modules.push (parseModuleName value) }
  | "--help" :: _ =>
      IO.println "usage: surface_lean_source_trace [--project-root PATH] [--module-list FILE] [--module NAME]* [--output FILE]"
      IO.Process.exit 0
  | option :: _ => throw <| IO.userError s!"unknown argument: {option}"

private def sourcePath (root : FilePath) (moduleName : Name) : IO FilePath :=
  FormalSourceLocations.sourcePath root ⟨moduleName.toString.replace "." "/" ++ ".lean"⟩

private def selectedModules (path : FilePath) : IO (Array Name) := do
  let contents ← IO.FS.readFile path
  let mut modules := #[]
  for line in contents.splitOn "\n" do
    let line := line.trimAscii.copy
    if line.isEmpty || line.startsWith "#" then
      continue
    modules := modules.push (parseModuleName line)
  return modules

def run (args : List String) : IO Unit := do
  let config ← parseArgs args
  let listPath := if config.moduleList.isAbsolute then config.moduleList else config.projectRoot / config.moduleList
  let selected ← selectedModules listPath
  let modules := (selected ++ config.modules).foldl (init := #[]) fun result moduleName =>
    if result.contains moduleName then result else result.push moduleName
  let executableRoots := #[
    `tools.LeanEnvironmentExtract,
    `tools.LeanKernelCheck,
    `tools.LeanSourceTrace
  ]
  let ordinaryModules := modules.filter fun moduleName => !executableRoots.contains moduleName
  let ordinaryDeclarationEnvironment ← importTraceEnvironment ordinaryModules
  let mut frontendEnvironments : Array (String × Environment) := #[]
  let mut files := #[]
  for moduleName in modules do
    let file ← sourcePath config.projectRoot moduleName
    unless ← file.pathExists do
      throw <| IO.userError s!"selected module source is missing: {moduleName} ({file})"
    let imports ← sourceImports file
    let importKey := String.intercalate "," <| imports.toList.map fun imported =>
      s!"{imported.module}:{imported.importAll}"
    let frontendEnvironment ← match frontendEnvironments.find? (fun item => item.1 == importKey) with
      | some item => pure item.2
      | none => do
          let environment ← importFrontendEnvironment imports
          frontendEnvironments := frontendEnvironments.push (importKey, environment)
          pure environment
    let declarationEnvironment ← if executableRoots.contains moduleName then
      importTraceEnvironment #[moduleName]
    else
      pure ordinaryDeclarationEnvironment
    let fileTrace ← traceFileIn frontendEnvironment declarationEnvironment moduleName file
    files := files.push fileTrace
  let output := if config.output.isAbsolute then config.output else config.projectRoot / config.output
  writeTrace output {
    leanVersion := Lean.versionString
    files := files
  }

end MathematicsLeanSource
```
