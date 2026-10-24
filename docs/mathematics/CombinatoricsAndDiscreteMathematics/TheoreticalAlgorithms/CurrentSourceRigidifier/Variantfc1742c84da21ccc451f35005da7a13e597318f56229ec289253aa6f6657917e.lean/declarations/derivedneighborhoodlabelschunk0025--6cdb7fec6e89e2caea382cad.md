# derivedNeighborhoodLabelsChunk0025

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5155b5f365f1e29743484ba24bd65c3631ddac5a18f3c58264ec959e9a3e0a7",
  "kind": "def",
  "lexical_name": "derivedNeighborhoodLabelsChunk0025",
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
  "slug": "derivedneighborhoodlabelschunk0025--6cdb7fec6e89e2caea382cad",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113084,
    "line": 113017,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cdb7fec6e89e2caea382cadb93bd65f398454d5c32b5c5cf5a316d1d11225dd",
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

Occurrence: `declaration:e5155b5f365f1e29743484ba24bd65c3631ddac5a18f3c58264ec959e9a3e0a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113017–113084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0025 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[370,726,1363,1478,1776]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[370]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[375,1783]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[375]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[37]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[383]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[385]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[388,921,1001,1165,1267]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[388]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[391,551,880,1005]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[391]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[393,397,461,475,557,675,745,781,791,958,983,1174,1264,1266,1550,1563,1818,1826,1830]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[393]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[394]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[396,516,874,1108,1283]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[396,874,1108,1283]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[396]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[397]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[4,10,36,74,75,103,160,174,213,214,220,231,232,233,243,266,301,308,326,329,331,362,383,491,516,534,552,568,615,662,672,673,683,774,824,842,894,969,992,1015,1060,1061,1075,1105,1117,1118,1119,1120,1121,1122,1125,1180,1184,1187,1216,1233,1241,1242,1245,1268,1323,1324,1335,1348,1349,1366,1420,1424,1448,1582,1641,1648,1664,1684,1696,1698,1699,1739,1740,1741,1801,1810]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[402]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[404]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[41,239,632,1454,1501,1738]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[412]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[414,918,1151]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[414]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[416]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[418]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[41]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[42,269,1260,1399,1441,1482,1623]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[422]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[424]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[425]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[426]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[427,1332]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[427]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[429]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[42]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[430]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[431]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[432,439,441,1542]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[432,439,441]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[433,452,1540]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[433]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[434]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[437,447]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[437]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[438]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[440,443,448,449,454]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[440]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[442,699]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[442]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[443]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[444]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[445]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[446]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[447]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[448]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[449]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[45,216,252,552,665,666,851,852,1075,1159,1512]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[45,216,252,665,666,851,852,1159,1512]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[450]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[451]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[452]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[453]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L113017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
