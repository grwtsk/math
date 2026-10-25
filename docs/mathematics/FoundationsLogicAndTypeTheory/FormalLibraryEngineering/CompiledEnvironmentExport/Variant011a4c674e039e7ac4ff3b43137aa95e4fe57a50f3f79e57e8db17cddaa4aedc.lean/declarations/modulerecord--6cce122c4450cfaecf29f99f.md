# moduleRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4f4278d1e23b0c6d6835ab80fa43e3ff55133c8522dc6475058787d08e1aaec",
  "kind": "def",
  "lexical_name": "moduleRecord",
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
  "slug": "modulerecord--6cce122c4450cfaecf29f99f",
  "source": {
    "blob": "e05e18f79025c907fb694c351b551785344fa514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant011a4c674e039e7ac4ff3b43137aa95e4fe57a50f3f79e57e8db17cddaa4aedc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cce122c4450cfaecf29f99ff4bb9264414e427ba9bf1d343622ac3cba89d12a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant011a4c674e039e7ac4ff3b43137aa95e4fe57a50f3f79e57e8db17cddaa4aedc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4f4278d1e23b0c6d6835ab80fa43e3ff55133c8522dc6475058787d08e1aaec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def moduleRecord (env : Environment) (moduleName : Name) : IO ModuleRecord := do
  let some index := env.getModuleIdx? moduleName
    | throw <| IO.userError s!"compiled environment omitted requested module {moduleName}"
  let some data := env.header.moduleData[index]?
    | throw <| IO.userError s!"compiled environment has no module data for {moduleName}"
  return {
    module := moduleName.toString
    imports := data.imports.map fun entry => {
      module := entry.module.toString
      importAll := entry.importAll
      isExported := entry.isExported
      isMeta := entry.isMeta
    }
    declarations := ← data.constants.mapM (declarationRecord env)
    extraConstants := data.extraConstNames.map (toString ·)
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant011a4c674e039e7ac4ff3b43137aa95e4fe57a50f3f79e57e8db17cddaa4aedc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant011a4c674e039e7ac4ff3b43137aa95e4fe57a50f3f79e57e8db17cddaa4aedc.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e05e18f79025c907fb694c351b551785344fa514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
