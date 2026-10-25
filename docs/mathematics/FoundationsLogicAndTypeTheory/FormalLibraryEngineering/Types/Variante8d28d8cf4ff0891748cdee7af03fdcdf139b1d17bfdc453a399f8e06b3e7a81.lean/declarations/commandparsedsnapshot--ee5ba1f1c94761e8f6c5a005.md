# CommandParsedSnapshot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bebe2e0033a3b5e16fb5e597812bc3d4809f5d99bf0bc2f4f827d823a8248f11",
  "kind": "structure",
  "lexical_name": "CommandParsedSnapshot",
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
  "slug": "commandparsedsnapshot--ee5ba1f1c94761e8f6c5a005",
  "source": {
    "blob": "d55477698718499a3445802cf3c79d18a45175cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante8d28d8cf4ff0891748cdee7af03fdcdf139b1d17bfdc453a399f8e06b3e7a81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee5ba1f1c94761e8f6c5a005f9eeb0c8944e05ef8597959a45ce26372d4b9c6b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante8d28d8cf4ff0891748cdee7af03fdcdf139b1d17bfdc453a399f8e06b3e7a81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bebe2e0033a3b5e16fb5e597812bc3d4809f5d99bf0bc2f4f827d823a8248f11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommandParsedSnapshot extends Snapshot where
  /-- Syntax tree of the command. -/
  stx : Syntax
  /-- Resulting parser state. -/
  parserState : Parser.ModuleParserState
  /-- State before the command is elaborated. This snapshot is always fulfilled immediately. -/
  elabSnap : CommandElaboratingSnapshot
  /-- Next command, unless this is a terminal command. -/
  nextCmdSnap? : Option (SnapshotTask CommandParsedSnapshot)
deriving Nonempty
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante8d28d8cf4ff0891748cdee7af03fdcdf139b1d17bfdc453a399f8e06b3e7a81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante8d28d8cf4ff0891748cdee7af03fdcdf139b1d17bfdc453a399f8e06b3e7a81.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55477698718499a3445802cf3c79d18a45175cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
