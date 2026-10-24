-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CliConfig.Variant24282d84f3faf95c5a4cd90c9b0efb0726524619e3a238940c4edda1fe229c85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24282d84f3faf95c5a4cd90c9b0efb0726524619e3a238940c4edda1fe229c85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CliConfig.Variant24282d84f3faf95c5a4cd90c9b0efb0726524619e3a238940c4edda1fe229c85","mathematical_subject":"Computation.DataStructures","original_sha256":"24282d84f3faf95c5a4cd90c9b0efb0726524619e3a238940c4edda1fe229c85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanSource/Cli.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import tools.LeanSource.Serialize


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CliConfig.Variant24282d84f3faf95c5a4cd90c9b0efb0726524619e3a238940c4edda1fe229c85

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

end MathematicsLeanSource
