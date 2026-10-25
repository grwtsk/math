# ensureFunIndReservedNamesAvailable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffc3b9bcf2d79e283b5d3390b031f40e2b11a08bb1d65f0c8e9dc757ff89e798",
  "kind": "def",
  "lexical_name": "ensureFunIndReservedNamesAvailable",
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
  "slug": "ensurefunindreservednamesavailable--eb3b00e90846ff0034c46977",
  "source": {
    "blob": "3d2169aeae3d4d29e04ba9421ec3b7f95ee799e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb3b00e90846ff0034c4697797c896d9036b4cb01d6a14a65bdac4c4f0094007",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffc3b9bcf2d79e283b5d3390b031f40e2b11a08bb1d65f0c8e9dc757ff89e798`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ensureFunIndReservedNamesAvailable (preDefs : Array PreDefinition) : MetaM Unit := do
  preDefs.forM fun preDef =>
    withRef preDef.ref <| ensureReservedNameAvailable preDef.declName "induct"
  withRef preDefs[0]!.ref <| ensureReservedNameAvailable preDefs[0]!.declName "mutual_induct"


/--
Checks consistency of a clique of TerminationHints:

* If not all have a hint, the hints are ignored (log error)
* None have both `termination_by` and `partial_fixpoint` (throw error)
* If one has `structural` or `partial_fixpoint`, check that all have it (else throw error)
* A `structural` should not have a `decreasing_by` (else log error)

-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2169aeae3d4d29e04ba9421ec3b7f95ee799e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
