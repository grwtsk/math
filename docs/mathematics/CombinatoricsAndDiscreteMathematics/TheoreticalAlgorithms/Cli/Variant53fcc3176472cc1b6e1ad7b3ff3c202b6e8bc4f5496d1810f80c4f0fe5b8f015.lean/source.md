# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cli.Variant53fcc3176472cc1b6e1ad7b3ff3c202b6e8bc4f5496d1810f80c4f0fe5b8f015

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf2a0d0427ab8c210c9ccfb93cc317bf42825d7f` · SHA-256 `53fcc3176472cc1b6e1ad7b3ff3c202b6e8bc4f5496d1810f80c4f0fe5b8f015`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import tools.LeanSource.Serialize
public import tools.LeanSource.SourceLocations

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
