# coordinateHodgeProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdd2f13f556d681a558e457ca771d8d837ceb1c0636a652fbd3412bf5d4196e5",
  "kind": "def",
  "lexical_name": "coordinateHodgeProfile",
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
  "slug": "coordinatehodgeprofile--b50eb1b77cc127f340491904",
  "source": {
    "blob": "320dc84dd983c31aa3d51c85160e7bea2605d4b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 230,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b50eb1b77cc127f340491904332ff0d83e054683baefa0a34a270a9f847fbf6c",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdd2f13f556d681a558e457ca771d8d837ceb1c0636a652fbd3412bf5d4196e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coordinateHodgeProfile : CoordinateWeightOneHodgeProfile C v where
  H10 := holomorphicPart v
  H01 := antiholomorphicPart v
  decomposition := hodgePieces_isCompl v
  conjugation := realConj C
  conjugation_involutive := realConj_involutive C
  conjugation_H10_to_H01 := realConj_holomorphic_mem C v
  conjugation_H01_to_H10 := realConj_antiholomorphic_mem C v
  weil := weilOperator v
  weil_sq := weilOperator_sq v
  weil_H10 := weilOperator_holomorphic v
  weil_H01 := weilOperator_antiholomorphic v

end

end GRWTSK.AlgebraicGeometry.Hodge.CMCoordinateHodge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320dc84dd983c31aa3d51c85160e7bea2605d4b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
