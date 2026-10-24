# angle_eq_pi_div_two_iff_mem_sphere_ofDiameter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c0a6798-9cd0-2cfd-69ff-e746e20d74ec",
  "kind": "theorem",
  "lexical_name": "angle_eq_pi_div_two_iff_mem_sphere_ofDiameter",
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
  "slug": "angle-eq-pi-div-two-iff-mem-sphere-ofdiameter--f497b569532d21cbd2727ede",
  "source": {
    "blob": "52a26f7cc9e8e4f28a50419588fbdcc6bca91460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 111,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf074e2f88d68e3e03132d8803aa0f5136a4bafbee65f054d99d142b39eb0a31f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f497b569532d21cbd2727edeb91b833f6dad1e8d6b831bd6bcf1223e4f798d8f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf074e2f88d68e3e03132d8803aa0f5136a4bafbee65f054d99d142b39eb0a31f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c0a6798-9cd0-2cfd-69ff-e746e20d74ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_eq_pi_div_two_iff_mem_sphere_ofDiameter {p₁ p₂ p₃ : P} :
    ∠ p₁ p₂ p₃ = π / 2 ↔ p₂ ∈ Sphere.ofDiameter p₁ p₃ :=
  angle_eq_pi_div_two_iff_mem_sphere_of_isDiameter (Sphere.isDiameter_ofDiameter p₁ p₃)

alias thales_theorem := angle_eq_pi_div_two_iff_mem_sphere_of_isDiameter

/-- Converse of Thales' theorem in 2D: if three distinct points on a circle
    form a right angle, then the chord is a diameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf074e2f88d68e3e03132d8803aa0f5136a4bafbee65f054d99d142b39eb0a31f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf074e2f88d68e3e03132d8803aa0f5136a4bafbee65f054d99d142b39eb0a31f.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a26f7cc9e8e4f28a50419588fbdcc6bca91460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
