# derivedNeighborhoodLabelsChunk0004

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b36fc836d2ae8e9e46172296c92eef51c841a0e5db5f673653ebe1f9f20c5ce",
  "kind": "def",
  "lexical_name": "derivedNeighborhoodLabelsChunk0004",
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
  "slug": "derivedneighborhoodlabelschunk0004--cdfceed9dfc532fc1150bd95",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111656,
    "line": 111589,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdfceed9dfc532fc1150bd959db9e695783e6dc04972a1911d469267cf123f40",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b36fc836d2ae8e9e46172296c92eef51c841a0e5db5f673653ebe1f9f20c5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111589–111656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0004 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1447]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1451]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1452]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1453]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1455]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1456]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1457]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1458]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1459]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1460]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1461]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1463]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1467]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1469]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1470]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1471]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1491]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1492]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1493]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1494]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1495]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1496]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1497]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1499]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[149]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[150,1038,1596]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1503]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1504,1507]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1504]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1505]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1506]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1507]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1509]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[150]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1510]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1511]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1514]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1515]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1519]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[151]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1528]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1532]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1534]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1535]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1537]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1544]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1545]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[155,156]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1558]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1559]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[155]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1564]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1565]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1566]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1567]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1569]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[156]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[157,692]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1574]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1575]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1576]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1577]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1579]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[157]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L111589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
