# runExtraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75e9874b9448f33db1e7ebf94cde438a9a6b288690aa284e0efb01263efc92e4",
  "kind": "def",
  "lexical_name": "runExtraction",
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
  "slug": "runextraction--d92e54b7743f6d3e0e7a9cff",
  "source": {
    "blob": "285df3c6c3484d3488b66aa600907417e91604cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 518,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant123d5a26af6ba46c8ca0e53bc8c4deed0c29e2b07b283c34b73f56526989dcfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d92e54b7743f6d3e0e7a9cfffe12157e5b3e2eb86c70506b516462ecb7e6b9b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant123d5a26af6ba46c8ca0e53bc8c4deed0c29e2b07b283c34b73f56526989dcfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75e9874b9448f33db1e7ebf94cde438a9a6b288690aa284e0efb01263efc92e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def runExtraction (config : CliConfig) : IO RawExtraction := do
  let root ← config.sourceRoot.getDM IO.currentDir
  let discovered ← if config.modules.isEmpty then
      match ← FormalSourceLocations.leanFiles root with
      | none => collectLeanModules root root
      | some files => do
          let files := files.filter fun file => !(file.components.any fun part =>
            part == ".lake" || part == ".surface" || part == ".mathematics")
          files.mapM fun file => FormalSourceLocations.logicalModuleName root file
    else pure config.modules
  let modules := distinctSortedNames discovered
  let importRequests := modules.map fun moduleName =>
    { module := moduleName, importAll := true : Import }
  let env ← try
      importModules importRequests {}
    catch error =>
      throw <| IO.userError s!"failed to load selected compiled modules: {error}"
  let mut records := #[]
  let mut diagnostics := #[]
  for moduleName in modules do
    try
      records := records.push (← loadModuleShard env moduleName)
    catch error =>
      if config.failOnModuleError then
        throw <| IO.userError s!"failed to load {moduleName}: {error}"
      else
        diagnostics := diagnostics.push s!"failed to load {moduleName}: {error}"
  return {
    schemaVersion := 7
    extractorVersion := "surface-lean-environment-extractor/0.8.0"
    adapterVersion := "lean-v4.32.0-adapter/2"
    checkerVersion := Lean.versionString
    scope := if config.modules.isEmpty then "project-source-modules" else "selected-modules"
    selectedModules := modules.map Name.toString
    modules := records.qsort fun left right => left.module < right.module
    diagnostics := diagnostics
  }

end MathematicsLeanEnvironmentExtract

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant123d5a26af6ba46c8ca0e53bc8c4deed0c29e2b07b283c34b73f56526989dcfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant123d5a26af6ba46c8ca0e53bc8c4deed0c29e2b07b283c34b73f56526989dcfb.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `285df3c6c3484d3488b66aa600907417e91604cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
