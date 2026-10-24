# vPullbackConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34b2c10b9d788cc8f4295c4c4b7a19cb02ebfa3bba6ef4c32dea808191c63b50",
  "kind": "def",
  "lexical_name": "vPullbackConeIsLimit",
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
  "slug": "vpullbackconeislimit--d4da0077a092488596574c43",
  "source": {
    "blob": "7111257d225ca68393d544fd7efd7619715b4793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 202,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4da0077a092488596574c4356bd63e9c3f84f0d6a3c1d1d30c5c26c919d0882",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34b2c10b9d788cc8f4295c4c4b7a19cb02ebfa3bba6ef4c32dea808191c63b50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vPullbackConeIsLimit (i j : D.J) : IsLimit (D.vPullbackCone i j) :=
  𝖣.vPullbackConeIsLimitOfMap forgetToLocallyRingedSpace i j
    (D.toLocallyRingedSpaceGlueData.vPullbackConeIsLimit _ _)
#align algebraic_geometry.Scheme.glue_data.V_pullback_cone_is_limit AlgebraicGeometry.Scheme.GlueData.vPullbackConeIsLimit

-- Porting note: new notation
local notation "D_" => TopCat.GlueData.toGlueData <|
  D.toLocallyRingedSpaceGlueData.toSheafedSpaceGlueData.toPresheafedSpaceGlueData.toTopGlueData

/-- The underlying topological space of the glued scheme is isomorphic to the gluing of the
underlying spaces -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7111257d225ca68393d544fd7efd7619715b4793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
