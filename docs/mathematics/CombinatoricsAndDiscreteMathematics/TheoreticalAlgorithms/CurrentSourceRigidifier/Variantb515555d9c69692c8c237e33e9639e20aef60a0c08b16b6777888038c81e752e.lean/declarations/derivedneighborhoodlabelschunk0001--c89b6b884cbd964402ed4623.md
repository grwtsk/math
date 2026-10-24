# derivedNeighborhoodLabelsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f233892cb44a1a76fa70da25ca2efc5012133dc4c6db02b54f9ddd299912f5e7",
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
  "slug": "derivedneighborhoodlabelschunk0001--c89b6b884cbd964402ed4623",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111460,
    "line": 111393,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c89b6b884cbd964402ed462380d9c336bf119523ccbd174de50e6ea455059c30",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f233892cb44a1a76fa70da25ca2efc5012133dc4c6db02b54f9ddd299912f5e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111393–111460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0001 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1100]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1104]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1106,1604]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1106]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1107]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[110]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1111]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1112]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1113]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1115]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1116]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[111]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1123]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1127]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1128]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1130]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1131]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1132]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1133]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1135]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1136]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1138]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1139]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1140]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1141]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1142]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1143]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1144]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1145]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1146]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1147]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1156]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1173]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1181]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1185]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1189]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1192]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1194]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1195]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1196]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1198]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[11]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1200]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1201]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1202]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1203]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1204]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1205]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1206]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1207]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1208]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1211]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1213]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1214]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1215]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1217]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1219]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1220]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1221]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1222]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1224]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1225]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1226]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1227]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L111393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
