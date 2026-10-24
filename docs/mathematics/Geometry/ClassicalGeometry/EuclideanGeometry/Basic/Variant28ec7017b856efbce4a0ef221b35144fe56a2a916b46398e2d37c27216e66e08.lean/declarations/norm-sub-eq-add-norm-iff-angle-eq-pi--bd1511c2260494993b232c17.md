# norm_sub_eq_add_norm_iff_angle_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:570abc57-2059-8b3a-cc85-ae9dc8a3b2b4",
  "kind": "theorem",
  "lexical_name": "norm_sub_eq_add_norm_iff_angle_eq_pi",
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
  "slug": "norm-sub-eq-add-norm-iff-angle-eq-pi--bd1511c2260494993b232c17",
  "source": {
    "blob": "2cf8e67ba43a28fdc2440446b30026480e0a1087",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 297,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant28ec7017b856efbce4a0ef221b35144fe56a2a916b46398e2d37c27216e66e08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd1511c2260494993b232c1751da761e5e3a12a404e2c7156e69a2596ed597bb",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant28ec7017b856efbce4a0ef221b35144fe56a2a916b46398e2d37c27216e66e08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:570abc57-2059-8b3a-cc85-ae9dc8a3b2b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sub_eq_add_norm_iff_angle_eq_pi {x y : V} (hx : x ≠ 0) (hy : y ≠ 0) :
    ‖x - y‖ = ‖x‖ + ‖y‖ ↔ angle x y = π := by
  refine ⟨fun h => ?_, norm_sub_eq_add_norm_of_angle_eq_pi⟩
  rw [← inner_eq_neg_mul_norm_iff_angle_eq_pi hx hy]
  obtain ⟨hxy₁, hxy₂⟩ := norm_nonneg (x - y), add_nonneg (norm_nonneg x) (norm_nonneg y)
  rw [← sq_eq_sq₀ hxy₁ hxy₂, norm_sub_pow_two_real] at h
  calc
    ⟪x, y⟫ = (‖x‖ ^ 2 + ‖y‖ ^ 2 - (‖x‖ + ‖y‖) ^ 2) / 2 := by linarith
    _ = -(‖x‖ * ‖y‖) := by ring

/-- The norm of the sum of two non-zero vectors equals the sum of their norms
if and only the angle between the two vectors is 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant28ec7017b856efbce4a0ef221b35144fe56a2a916b46398e2d37c27216e66e08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant28ec7017b856efbce4a0ef221b35144fe56a2a916b46398e2d37c27216e66e08.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf8e67ba43a28fdc2440446b30026480e0a1087` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
