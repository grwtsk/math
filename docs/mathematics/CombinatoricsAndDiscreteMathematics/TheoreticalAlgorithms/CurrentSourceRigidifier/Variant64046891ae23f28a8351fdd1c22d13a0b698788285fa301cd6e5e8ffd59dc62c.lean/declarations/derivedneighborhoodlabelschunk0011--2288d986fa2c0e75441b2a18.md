# derivedNeighborhoodLabelsChunk0011

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7dab1498cb61d3923cd476139cb8fd1dca249dcc2be68154a71ec83f5af09d4",
  "kind": "def",
  "lexical_name": "derivedNeighborhoodLabelsChunk0011",
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
  "slug": "derivedneighborhoodlabelschunk0011--2288d986fa2c0e75441b2a18",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126062,
    "line": 125995,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2288d986fa2c0e75441b2a182d54762d7227217078b998d67e7ccd9a2019c606",
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

Occurrence: `declaration:e7dab1498cb61d3923cd476139cb8fd1dca249dcc2be68154a71ec83f5af09d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125995–126062.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0011 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[584]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[586]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[587]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[588]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[589]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[590]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[591]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[592]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[593]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[594]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[595]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[596]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[597]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[598]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[599]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[5]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[600]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[601]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[602]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[603]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[605]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[608]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[609]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[61,183,237,250,282,323,347,348,399,425,480,519,532,548,566,589,590,591,592,593,594,595,596,597,598,599,600,601,602,612,631,689,714,727,785,818,1028,1048,1083,1162,1241,1242,1247,1258,1259,1264,1266,1267,1271,1272,1274,1306,1365,1376,1377,1379,1380,1395,1417,1418,1436,1527,1611,1613,1615,1620,1622,1628,1685,1691,1694,1699,1700,1702,1706,1707,1737,1742,1761,1892]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[611,1482,1664]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[611]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[612]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[613]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[614]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[615]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[616]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[617]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[619]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[61]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[620]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[621]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[624]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[626]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[627]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[628]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[62]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[630]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[631]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[634,1415,1433]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[634]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[635]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[636]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[637,638]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[637]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[638]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[63]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[642]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[643]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[651,653]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[651]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[653]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[654,656]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[654]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[655]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[656]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[657]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[659]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[660]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[661]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L125995).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
