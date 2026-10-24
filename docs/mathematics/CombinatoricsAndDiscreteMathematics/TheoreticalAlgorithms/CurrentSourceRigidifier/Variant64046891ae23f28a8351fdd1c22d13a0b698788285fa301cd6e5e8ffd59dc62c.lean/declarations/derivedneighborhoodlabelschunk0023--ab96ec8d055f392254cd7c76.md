# derivedNeighborhoodLabelsChunk0023

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa1f4631e7e286730dd4b30b1f5c19dddadce8e4cb75cbd18b67b6ddfb020da5",
  "kind": "def",
  "lexical_name": "derivedNeighborhoodLabelsChunk0023",
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
  "slug": "derivedneighborhoodlabelschunk0023--ab96ec8d055f392254cd7c76",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126878,
    "line": 126811,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab96ec8d055f392254cd7c7646a137df049eb6b92a75b770987ec4011d27a37e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa1f4631e7e286730dd4b30b1f5c19dddadce8e4cb75cbd18b67b6ddfb020da5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126811–126878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0023 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1869]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1870]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[187]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1895,1897,1902,1904,1905]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1895]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1896]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1897,1902,1904]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1898]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1899]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[18]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1900]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1901]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1903]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1905]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1906]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1907]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1908]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1909]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[190]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[191,306,798,1602]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1910]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1911]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1912]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1913]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1915]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1916]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1917]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[191]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[192,254,256,945,1198,1406,1796,1841,1843,1844,1847]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[192,254,256,945,1198,1406,1796,1843,1844,1847]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[192]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[193]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[194]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[195]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[197,206,210]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[197]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[198,333,494,899,931,1183]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[198]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[199,455]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[199]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[19]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[200]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[201,444,448,719,1806]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[201]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[202,203,204,442,445,450,528,641,717,1105,1119,1335,1336,1570,1605,1648,1895,1896]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[202,215,217]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[202]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[203]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[204,219]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[204]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[205,208,209,216]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[205,208,216]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[206]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[207,449,516,518,809,948,1038,1125,1181,1563,1571,1575,1614,1649]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[207]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[209]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[210]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[211]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[212]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[213]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[214]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[215]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[217]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L126811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
