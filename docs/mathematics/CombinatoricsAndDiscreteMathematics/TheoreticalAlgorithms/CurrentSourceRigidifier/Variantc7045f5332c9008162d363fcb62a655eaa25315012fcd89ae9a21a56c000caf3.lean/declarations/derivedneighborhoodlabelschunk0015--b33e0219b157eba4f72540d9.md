# derivedNeighborhoodLabelsChunk0015

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65ac4b7c5277a4efee609a59f8a9b01e715fe344c37796249dd3bd0fd2838075",
  "kind": "def",
  "lexical_name": "derivedNeighborhoodLabelsChunk0015",
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
  "slug": "derivedneighborhoodlabelschunk0015--b33e0219b157eba4f72540d9",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126342,
    "line": 126275,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b33e0219b157eba4f72540d9944547417be34e39e8c4fe8a8c0b320f9fb02f1a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65ac4b7c5277a4efee609a59f8a9b01e715fe344c37796249dd3bd0fd2838075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126275–126342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0015 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1018]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[101]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[102,289,476,780,1840]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1020]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1021]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1022,1036,1040]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1022]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1025]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1026]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[102]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1030]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1031]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1032]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1036]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1038]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1040]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1054]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1055,1447,1448,1807,1821]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1055]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[107]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1081]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1085]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1086]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1087]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1088,1089,1119]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1088]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1089]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1098]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1099]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[110,119,629,1641]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1100]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1101]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1105]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1106]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1107]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1108]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1109]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[110]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1110]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1111]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1112]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1113]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1114]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1115]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1116]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1117]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1118]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1119]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[111]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1120]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1121]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1122]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1123]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1125]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1126]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1128]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1129]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[112]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[113,214,485,922,1161,1505,1593]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1131]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1134]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1135]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[1136]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"python\",\"members\":[113]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L126275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
