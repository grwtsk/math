# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cli.Variantafb945ef279ab8dfd2d639c7131899bdcc26e1bde5e88a1691097513a744d507

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e71354b8c69ae58b5cfc9de241497973754a206` · SHA-256 `e36e7ff891579a2329178ecffbb9fcd0f5658afce254befd0722188c1852543b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CliConfig.Variantf4a96b4bd745f823a74e4379b49594179dcb14ab187d33d1049b269edcb3ee35","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4a96b4bd745f823a74e4379b49594179dcb14ab187d33d1049b269edcb3ee35","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CliConfig.Variantf4a96b4bd745f823a74e4379b49594179dcb14ab187d33d1049b269edcb3ee35","mathematical_subject":"Computation.DataStructures","original_sha256":"f4a96b4bd745f823a74e4379b49594179dcb14ab187d33d1049b269edcb3ee35","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/tools/LeanSource/Cli.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import tools.LeanSource.Serialize


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CliConfig.Variantf4a96b4bd745f823a74e4379b49594179dcb14ab187d33d1049b269edcb3ee35

public section

/-! # Source tracer command-line interface -/

open Lean System

namespace MathDiscoveryLeanSource

structure CliConfig where
  projectRoot : FilePath := "."
  moduleList : FilePath := "docs/extractor/self-modules.txt"
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

private def sourcePath (root : FilePath) (moduleName : Name) : FilePath :=
  root / ⟨moduleName.toString.replace "." "/" ++ ".lean"⟩

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
  let executableRoots := #[`tools.LeanEnvironmentExtract, `tools.LeanSourceTrace]
  let ordinaryModules := modules.filter fun moduleName => !executableRoots.contains moduleName
  let ordinaryDeclarationEnvironment ← importTraceEnvironment ordinaryModules
  let mut frontendEnvironments : Array (String × Environment) := #[]
  let mut files := #[]
  for moduleName in modules do
    let file := sourcePath config.projectRoot moduleName
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

end MathDiscoveryLeanSource
```
