# layer2Weights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6d1cb87a8130b4ce64981845ca1329d08255f236f36f87389ccbd5e70e4800e",
  "kind": "def",
  "lexical_name": "layer2Weights",
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
  "slug": "layer2weights--efc5cdffd81d29f377ac8e9c",
  "source": {
    "blob": "939dadbefbfd7824f289da4846b7e73280c63fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SineNetWeights/Variantc9b3018976efdcad9a5be31cac395d50557e0a506c7658fb4d0a0670daffc184.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efc5cdffd81d29f377ac8e9c139f0106717f0b127307a843e66a36ea2d983d5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SineNetWeights/Variantc9b3018976efdcad9a5be31cac395d50557e0a506c7658fb4d0a0670daffc184.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6d1cb87a8130b4ce64981845ca1329d08255f236f36f87389ccbd5e70e4800e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def layer2Weights : List (List ℚ) := [
  [((-719) : ℚ) / 3063, (2113 : ℚ) / 7789, ((-1840) : ℚ) / 7941, ((-1077) : ℚ) / 4625, (873 : ℚ) / 7216, ((-9487) : ℚ) / 9917, ((-6559) : ℚ) / 7605, ((-1406) : ℚ) / 5001],
  [((-2447) : ℚ) / 4832, (1287 : ℚ) / 8191, ((-3095) : ℚ) / 6817, ((-1079) : ℚ) / 1528, (96 : ℚ) / 131, ((-1087) : ℚ) / 9629, (290 : ℚ) / 8589, ((-4951) : ℚ) / 6950],
  [((-10516) : ℚ) / 8615, (523 : ℚ) / 9430, ((-3639) : ℚ) / 2008, ((-15419) : ℚ) / 5668, ((-94) : ℚ) / 313, ((-1122) : ℚ) / 7693, ((-30905) : ℚ) / 9319, ((-3955) : ℚ) / 7334],
  [((-2) : ℚ) / 295, ((-4921) : ℚ) / 9305, (607 : ℚ) / 1574, ((-246) : ℚ) / 403, (919 : ℚ) / 8800, ((-1069) : ℚ) / 1091, ((-3067) : ℚ) / 4564, (715 : ℚ) / 7264],
  [(2249 : ℚ) / 6091, (325 : ℚ) / 3793, ((-194) : ℚ) / 3355, ((-1255) : ℚ) / 8336, ((-5662) : ℚ) / 7659, ((-185) : ℚ) / 514, ((-512) : ℚ) / 2223, (731 : ℚ) / 1383],
  [(487 : ℚ) / 8143, ((-8467) : ℚ) / 9605, ((-31) : ℚ) / 8040, ((-175) : ℚ) / 333, ((-22) : ℚ) / 65, (1954 : ℚ) / 6389, (997 : ℚ) / 6615, (2456 : ℚ) / 8231],
  [((-3625) : ℚ) / 8639, ((-1111) : ℚ) / 7186, (935 : ℚ) / 5697, (4049 : ℚ) / 8301, ((-1973) : ℚ) / 8235, ((-791) : ℚ) / 8521, ((-512) : ℚ) / 925, ((-4667) : ℚ) / 7803],
  [((-2501) : ℚ) / 7982, (5526 : ℚ) / 8149, ((-7473) : ℚ) / 7670, ((-5235) : ℚ) / 3071, (1397 : ℚ) / 7726, ((-2505) : ℚ) / 7766, ((-20989) : ℚ) / 9961, ((-557) : ℚ) / 1625]
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SineNetWeights/Variantc9b3018976efdcad9a5be31cac395d50557e0a506c7658fb4d0a0670daffc184.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SineNetWeights/Variantc9b3018976efdcad9a5be31cac395d50557e0a506c7658fb4d0a0670daffc184.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939dadbefbfd7824f289da4846b7e73280c63fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
