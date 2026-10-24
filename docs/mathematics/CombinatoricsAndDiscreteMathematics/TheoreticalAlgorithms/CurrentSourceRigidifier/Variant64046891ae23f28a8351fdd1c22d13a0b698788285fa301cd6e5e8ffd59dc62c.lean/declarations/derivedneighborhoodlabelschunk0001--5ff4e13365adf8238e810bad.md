# derivedNeighborhoodLabelsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35c3f58160391ecf15006ec0b4063a4be461a416c724a1050fdf79cab28a63cb",
  "kind": "def",
  "lexical_name": "derivedNeighborhoodLabelsChunk0001",
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
  "slug": "derivedneighborhoodlabelschunk0001--5ff4e13365adf8238e810bad",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125382,
    "line": 125315,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ff4e13365adf8238e810badd8d6614668a5643f7640078e61ec5685464040bc",
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

Occurrence: `declaration:35c3f58160391ecf15006ec0b4063a4be461a416c724a1050fdf79cab28a63cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125315–125382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0001 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1090]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1091]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1092]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1093,1094,1095]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1096]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1097]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[109]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1102,1799]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1102]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1103]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1104]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1124]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1127]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1130]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1132]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1133,1640]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1133]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1137]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1138]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1139]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1141]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1142]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1149]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[114]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1151]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1154]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1157]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1158]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1159]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[115]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1160]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1162]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1163]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1165]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1166]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1167]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1168]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1169]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1170]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1171]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1172]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1173]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1174]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1187]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[11]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1200]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1206]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1212]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1216]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1219]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1221]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1222]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1223]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1225]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1226]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1228]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1229]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1230]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1231]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1232]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1233]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1234]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1235]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1239]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L125315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
