# run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12cc00fda15421163393773c9a87f788549dfc4b0ff3b594afff6fc0542aa665",
  "kind": "def",
  "lexical_name": "run",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "run--97e2d9be5fbc2ef665fb366b",
  "source": {
    "blob": "2f2458be2bb89f3ac20d5a39691a18488c6f62bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variantb10a0fdeca8559b8c458e47a8cb36b1de7c16f3db49aeb303ea39267773db8c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97e2d9be5fbc2ef665fb366bdbf7f650aaf121d1c98a8ce01b5b11b6fb3817ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variantb10a0fdeca8559b8c458e47a8cb36b1de7c16f3db49aeb303ea39267773db8c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12cc00fda15421163393773c9a87f788549dfc4b0ff3b594afff6fc0542aa665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

end MathematicsLeanSource
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variantb10a0fdeca8559b8c458e47a8cb36b1de7c16f3db49aeb303ea39267773db8c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cli/Variantb10a0fdeca8559b8c458e47a8cb36b1de7c16f3db49aeb303ea39267773db8c8.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2458be2bb89f3ac20d5a39691a18488c6f62bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
