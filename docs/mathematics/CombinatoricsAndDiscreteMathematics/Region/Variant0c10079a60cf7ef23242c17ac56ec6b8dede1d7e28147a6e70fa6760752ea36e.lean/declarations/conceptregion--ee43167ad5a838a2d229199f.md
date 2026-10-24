# ConceptRegion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67196a6c8cdaa0c33da66c75871bacbf8555dbe8c52b5eaa627a8dd134e01a36",
  "kind": "structure",
  "lexical_name": "ConceptRegion",
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
  "slug": "conceptregion--ee43167ad5a838a2d229199f",
  "source": {
    "blob": "33f05dd12e4fa6cdbfbe5a785e389e46e6f2f32c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Region/Variant0c10079a60cf7ef23242c17ac56ec6b8dede1d7e28147a6e70fa6760752ea36e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee43167ad5a838a2d229199f4c0a92ac4e6ce703ca7b665024eea06f3391a28d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Region/Variant0c10079a60cf7ef23242c17ac56ec6b8dede1d7e28147a6e70fa6760752ea36e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67196a6c8cdaa0c33da66c75871bacbf8555dbe8c52b5eaa627a8dd134e01a36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ConceptRegion where
  id : RegionId
  members : Finset ConceptId
  boundaryRelations : Finset RelationId
  profileDigest : Digest
  deriving DecidableEq

end Mathematics.Terrain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Region/Variant0c10079a60cf7ef23242c17ac56ec6b8dede1d7e28147a6e70fa6760752ea36e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Region/Variant0c10079a60cf7ef23242c17ac56ec6b8dede1d7e28147a6e70fa6760752ea36e.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33f05dd12e4fa6cdbfbe5a785e389e46e6f2f32c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
