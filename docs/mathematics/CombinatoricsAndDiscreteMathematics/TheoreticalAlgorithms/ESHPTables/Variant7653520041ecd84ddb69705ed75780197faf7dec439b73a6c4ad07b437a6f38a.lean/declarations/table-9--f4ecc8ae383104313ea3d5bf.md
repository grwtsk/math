# table_9

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:638ef1a59fa842d3668bd2a311a123e25e050ea8735a46ceff329cd43ccc1092",
  "kind": "def",
  "lexical_name": "table_9",
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
  "slug": "table-9--f4ecc8ae383104313ea3d5bf",
  "source": {
    "blob": "ca27981e0c8924e0cec6c24cbabb98d73d69fd0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ESHPTables/Variant7653520041ecd84ddb69705ed75780197faf7dec439b73a6c4ad07b437a6f38a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4ecc8ae383104313ea3d5bf6beaea70f6e16c8224b995f935bb8bcd9288b2a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ESHPTables/Variant7653520041ecd84ddb69705ed75780197faf7dec439b73a6c4ad07b437a6f38a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:638ef1a59fa842d3668bd2a311a123e25e050ea8735a46ceff329cd43ccc1092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def table_9 : List (ℕ × ℕ) := [
  (1, 2), (2, 3), (4, 7), (6, 23), (8, 89), (10, 139),
  (12, 199), (16, 1831), (26, 2477), (28, 2971), (30, 4297),
  (32, 5591), (36, 9551), (38, 30593), (46, 81463),
  (56, 82073), (64, 89689), (66, 162143), (70, 173359),
  (74, 404597), (80, 542603), (88, 544279), (92, 927869),
  (94, 1100977), (102, 1444309), (108, 2238823),
  (116, 5845193), (124, 6752623), (134, 6958667),
  (140, 7621259), (142, 10343761), (144, 11981443),
  (150, 13626257), (156, 17983717), (158, 49269581),
  (166, 83751121), (186, 147684137), (194, 166726367),
  (200, 378043979), (224, 409866323), (226, 519653371),
  (228, 895858039), (254, 1202442089),
  (688, 110526670235599), (708, 143679495784681),
  (722, 218356872845927), (752, 255294593822687),
  (764, 323811481625339), (768, 423683030575549),
  (774, 469789142849483), (780, 471911699384963),
  (782, 726507223559111), (796, 1271309838631957),
  (812, 1710270958551941), (848, 2537070652896083),
  (866, 2759317684446707), (882, 3371055452381147),
  (886, 4127074165753081), (898, 4198168149492463),
  (922, 4286129201882221), (926, 6381944136489827),
  (928, 10244316228469423), (932, 10676480515967939),
  (968, 19124990244992669), (980, 19403684901755939),
  (986, 34847474118974633), (992, 37343192296558573),
  (1018, 37967240836435909),
  (1040, 46246848392875127),
  (1048, 88089672331629091),
  (1052, 89219242873419107),
  (1066, 98436147540371287),
  (1094, 139033656446725643),
  (1114, 198887512806988729),
  (1124, 203153416523088323),
  (1144, 236552906662007587),
  (1150, 293464161465135373),
  (1172, 400240934741322419),
  (1186, 404444692323376357),
  (1192, 703390724952490921),
  (1202, 819615344996114321),
  (1208, 1331711247969025019),
  (1264, 1798556720194308703),
  (1290, 2980707563031238363),
  (1306, 3278018069102480227)
]

end eSHP
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ESHPTables/Variant7653520041ecd84ddb69705ed75780197faf7dec439b73a6c4ad07b437a6f38a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ESHPTables/Variant7653520041ecd84ddb69705ed75780197faf7dec439b73a6c4ad07b437a6f38a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca27981e0c8924e0cec6c24cbabb98d73d69fd0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
