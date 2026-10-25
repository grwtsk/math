# runExtraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de174c02b0afbd6d99cb21268c48c720367f32daa788c5033546915f894e69e0",
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
  "slug": "runextraction--02b445b09a1ae996934c4db3",
  "source": {
    "blob": "488b94ca640a7e8956f9cfdaf2788d506cc128b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 409,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02b445b09a1ae996934c4db3f36ac5878a5473ec217ffa52ba8d87ba39c955bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de174c02b0afbd6d99cb21268c48c720367f32daa788c5033546915f894e69e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def runExtraction (config : CliConfig) : IO RawExtraction := do
  let root ← config.sourceRoot.getDM IO.currentDir
  let discovered ← if config.modules.isEmpty then collectLeanModules root root else pure config.modules
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `488b94ca640a7e8956f9cfdaf2788d506cc128b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
