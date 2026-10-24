# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ContinuousAtAngle.Variant68547171c437a39a8bfcc58949562eb7aed150aad547bab24566c9348fd06f12.Sbtw.angle₂₁₃_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d110521b-88ec-ff59-cf75-4b8b0c9ac224",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ContinuousAtAngle.Variant68547171c437a39a8bfcc58949562eb7aed150aad547bab24566c9348fd06f12.Sbtw.angle₂₁₃_eq_zero",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang--839584bc096a41b588df0ea8",
  "source": {
    "blob": "529b10405cb4875df868c0c2d81cdb92cf525f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 348,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantc798bf19ac52633ed6dc5c42c2c8f65784676681148f1b07ffe28422344b8350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:839584bc096a41b588df0ea8909a70c5ca127f13575a8370cdde0d4d742aebaf",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantc798bf19ac52633ed6dc5c42c2c8f65784676681148f1b07ffe28422344b8350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d110521b-88ec-ff59-cf75-4b8b0c9ac224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ContinuousAtAngle.Variant68547171c437a39a8bfcc58949562eb7aed150aad547bab24566c9348fd06f12.Sbtw.angle₂₁₃_eq_zero {p₁ p₂ p₃ : P} (h : Sbtw ℝ p₁ p₂ p₃) : ∠ p₂ p₁ p₃ = 0 :=
  h.wbtw.angle₂₁₃_eq_zero_of_ne h.ne_left
#align sbtw.angle₂₁₃_eq_zero Sbtw.angle₂₁₃_eq_zero

/-- If the second of three points is weakly between the other two, and not equal to the first,
the angle at the first point (reversed) is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantc798bf19ac52633ed6dc5c42c2c8f65784676681148f1b07ffe28422344b8350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantc798bf19ac52633ed6dc5c42c2c8f65784676681148f1b07ffe28422344b8350.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `529b10405cb4875df868c0c2d81cdb92cf525f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
