# Iter.Total.atIdxSlow?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:816a7cbd84995c3a6a9f7bb4f2b5a8fedc89cfd07bacbd496fa9cbba449acb77",
  "kind": "def",
  "lexical_name": "Iter.Total.atIdxSlow?",
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
  "slug": "iter-total-atidxslow--220f849b5545c87543ef48fa",
  "source": {
    "blob": "9ecb06446bc06f5b5d666fc7d83141f123814a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant13c6122caeed66438bbc4b062be95bca34bd6d2c42bc4a63d067d7dded3375fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:220f849b5545c87543ef48fa39c80855c1dc6a90442c16ab0f5ef9f7189d832f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant13c6122caeed66438bbc4b062be95bca34bd6d2c42bc4a63d067d7dded3375fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:816a7cbd84995c3a6a9f7bb4f2b5a8fedc89cfd07bacbd496fa9cbba449acb77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.Total.atIdxSlow? {α β} [Iterator α Id β] [Productive α Id]
    (n : Nat) (it : Iter.Total (α := α) β) : Option β :=
  it.it.atIdxSlow? n

@[inline, inherit_doc Iter.atIdxSlow?, deprecated Iter.atIdxSlow? (since := "2026-01-28")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant13c6122caeed66438bbc4b062be95bca34bd6d2c42bc4a63d067d7dded3375fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant13c6122caeed66438bbc4b062be95bca34bd6d2c42bc4a63d067d7dded3375fd.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ecb06446bc06f5b5d666fc7d83141f123814a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
