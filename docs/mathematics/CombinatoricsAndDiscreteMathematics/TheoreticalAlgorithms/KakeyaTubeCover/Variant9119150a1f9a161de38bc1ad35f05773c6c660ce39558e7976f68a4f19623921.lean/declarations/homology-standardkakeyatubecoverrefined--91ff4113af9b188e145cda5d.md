# Homology.standardKakeyaTubeCoverRefined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d373659d17d2ae10e6b95a513bbabe7b247d068303d9b06e4afc54731914487",
  "kind": "def",
  "lexical_name": "Homology.standardKakeyaTubeCoverRefined",
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
  "slug": "homology-standardkakeyatubecoverrefined--91ff4113af9b188e145cda5d",
  "source": {
    "blob": "cb8305c898a441712a40362320cc06abaaebb382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaTubeCover/Variant9119150a1f9a161de38bc1ad35f05773c6c660ce39558e7976f68a4f19623921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91ff4113af9b188e145cda5dc452e80610eaffd2510233325b7ed0a777855fcd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaTubeCover/Variant9119150a1f9a161de38bc1ad35f05773c6c660ce39558e7976f68a4f19623921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d373659d17d2ae10e6b95a513bbabe7b247d068303d9b06e4afc54731914487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homology.standardKakeyaTubeCoverRefined :
    Homology.KakeyaTubeCover where
  ambientDimension := 3
  scales :=
    { delta := 1
      rho := 1
      delta_le_rho := Nat.le_refl 1 }
  tubes :=
    [ { id := 0, directionLabel := "tube_0", scaleLabel := "δ" }
    , { id := 1, directionLabel := "tube_1", scaleLabel := "δ" }
    , { id := 2, directionLabel := "tube_2", scaleLabel := "δ" }
    ]
  partitions :=
    [ { source := .wangZahl, cellLabel := "partition_cell_0", tubeIds := [0, 1, 2] } ]
  planks :=
    [ { id := 0
        shortScale := 1
        middleScale := 1
        longScale := 1
        short_le_middle := Nat.le_refl 1
        middle_le_long := Nat.le_refl 1
        planeLabel := "symbolic_plane" } ]
  alternatives :=
    [ .sticky
    , .richerAfterThickening
    , .richerAfterZoom
    , .plankArrangement
    ]
  eulerObstruction := Homology.evenSphereEulerObstruction 1
  has_wang_zahl_partition := true
  has_multiscale_tube_data := true
  has_plank_data := true

/-- The refined standard Kakeya tube cover passes the finite structural gate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaTubeCover/Variant9119150a1f9a161de38bc1ad35f05773c6c660ce39558e7976f68a4f19623921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaTubeCover/Variant9119150a1f9a161de38bc1ad35f05773c6c660ce39558e7976f68a4f19623921.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb8305c898a441712a40362320cc06abaaebb382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
