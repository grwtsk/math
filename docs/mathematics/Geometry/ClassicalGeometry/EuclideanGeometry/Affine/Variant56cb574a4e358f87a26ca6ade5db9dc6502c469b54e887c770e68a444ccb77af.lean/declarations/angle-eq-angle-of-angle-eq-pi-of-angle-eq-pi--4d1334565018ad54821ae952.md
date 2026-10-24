# angle_eq_angle_of_angle_eq_pi_of_angle_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f6fcbfe-51fb-9553-d43e-442bdfbc6155",
  "kind": "theorem",
  "lexical_name": "angle_eq_angle_of_angle_eq_pi_of_angle_eq_pi",
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
  "slug": "angle-eq-angle-of-angle-eq-pi-of-angle-eq-pi--4d1334565018ad54821ae952",
  "source": {
    "blob": "6c6c1789da60121d028146cf736c1fa8f3482873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 206,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d1334565018ad54821ae9525f58730543c14f584edbb52cc37f4cfd0c37bb3c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f6fcbfe-51fb-9553-d43e-442bdfbc6155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_eq_angle_of_angle_eq_pi_of_angle_eq_pi {p₁ p₂ p₃ p₄ p₅ : P} (hapc : ∠ p₁ p₅ p₃ = π)
    (hbpd : ∠ p₂ p₅ p₄ = π) : ∠ p₁ p₅ p₂ = ∠ p₃ p₅ p₄ := by
  linarith [angle_add_angle_eq_pi_of_angle_eq_pi p₁ hbpd, angle_comm p₄ p₅ p₁,
    angle_add_angle_eq_pi_of_angle_eq_pi p₄ hapc, angle_comm p₄ p₅ p₃]

/-- If ∠ABC = π then dist A B ≠ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c6c1789da60121d028146cf736c1fa8f3482873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
