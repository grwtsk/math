# signedInfDist_apply_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c159a3f9-cdac-65a7-13bc-f28ae8aa0cdb",
  "kind": "lemma",
  "lexical_name": "signedInfDist_apply_self",
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
  "slug": "signedinfdist-apply-self--ab1b1b0c94bf093c1a114b85",
  "source": {
    "blob": "8e3f8c2258682bf2534914b73c4c6c4c77467376",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 315,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta5f23196f5f5d5b73563ceb3ea328c9a82f0ae681a8705d82b7cc85a529538a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab1b1b0c94bf093c1a114b85501a69d02f37f28e9c08c1e9473afb7f567d3ecd",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta5f23196f5f5d5b73563ceb3ea328c9a82f0ae681a8705d82b7cc85a529538a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c159a3f9-cdac-65a7-13bc-f28ae8aa0cdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma signedInfDist_apply_self :
    s.signedInfDist i (s.points i) =
      ‖s.points i -ᵥ (s.faceOpposite i).orthogonalProjectionSpan (s.points i)‖ :=
  (AffineSubspace.signedInfDist_apply_self _ _).trans <| by simp [orthogonalProjectionSpan]

variable {i} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta5f23196f5f5d5b73563ceb3ea328c9a82f0ae681a8705d82b7cc85a529538a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta5f23196f5f5d5b73563ceb3ea328c9a82f0ae681a8705d82b7cc85a529538a5.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e3f8c2258682bf2534914b73c4c6c4c77467376` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
