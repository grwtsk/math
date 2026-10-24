# properPartitionsThreeExplicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b84d13e60752b967d7a633d0ef5289e5680d940cb9972194b963e141e92f738",
  "kind": "def",
  "lexical_name": "properPartitionsThreeExplicit",
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
  "slug": "properpartitionsthreeexplicit--84c9d38104a49019886e4b6e",
  "source": {
    "blob": "8ce3a0dc523c6f3816dcd39963be5c0170581d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5PartitionCheck/Variant98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84c9d38104a49019886e4b6e6876d3caa6cd5144be35783fe7ae9c89afa932b1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5PartitionCheck/Variant98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b84d13e60752b967d7a633d0ef5289e5680d940cb9972194b963e141e92f738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def properPartitionsThreeExplicit :
    Finset (DirectionPartition 3) :=
  {(⊥ : DirectionPartition 3),
    pairPartition01_2,
    pairPartition02_1,
    pairPartition12_0}


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5PartitionCheck/Variant98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5PartitionCheck/Variant98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ce3a0dc523c6f3816dcd39963be5c0170581d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
