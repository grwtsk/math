# sourcePath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b494c9ebc12f6a14b56f0f6651f49ef10ee851726899540833538178cf4c123b",
  "kind": "def",
  "lexical_name": "sourcePath",
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
  "slug": "sourcepath--aaed67e0e453317b3e9ad911",
  "source": {
    "blob": "e092d354617148329e9de858f3e8ecd90cef09bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variant5f0b85efd7879518d04018fbc937638b29873249b42ea69d1c22baff04de2614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaed67e0e453317b3e9ad91187d91cda065f59c7d1d663548a03de752bd6f7e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variant5f0b85efd7879518d04018fbc937638b29873249b42ea69d1c22baff04de2614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b494c9ebc12f6a14b56f0f6651f49ef10ee851726899540833538178cf4c123b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourcePath (root relative : FilePath) : IO FilePath := do
  require (!relative.isAbsolute && !(relative.components.any fun p => p == "..")) "source ID is not relative"
  let absoluteRoot ← IO.FS.realPath root
  let logical := absoluteRoot / relative
  match ← view absoluteRoot with
  | none => return root / relative
  | some (original, map) =>
    let key ← relativeTo original logical
    let sources ← IO.ofExcept <| map.getObjVal? "sources"
    let record ← IO.ofExcept <| sources.getObjVal? key
    verifiedTarget original key record

/-- Exact logical module discovery, including detached sources and excluding
retired versions. The caller retains its original scope and exclusion rules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variant5f0b85efd7879518d04018fbc937638b29873249b42ea69d1c22baff04de2614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variant5f0b85efd7879518d04018fbc937638b29873249b42ea69d1c22baff04de2614.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e092d354617148329e9de858f3e8ecd90cef09bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
