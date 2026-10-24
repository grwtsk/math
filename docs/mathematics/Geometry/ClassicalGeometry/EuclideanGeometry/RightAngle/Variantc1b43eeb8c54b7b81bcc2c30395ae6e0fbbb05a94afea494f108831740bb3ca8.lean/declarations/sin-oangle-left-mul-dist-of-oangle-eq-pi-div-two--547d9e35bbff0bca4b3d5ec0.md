# sin_oangle_left_mul_dist_of_oangle_eq_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12e00514-6b20-a0d1-3873-f200e0cbb19a",
  "kind": "theorem",
  "lexical_name": "sin_oangle_left_mul_dist_of_oangle_eq_pi_div_two",
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
  "slug": "sin-oangle-left-mul-dist-of-oangle-eq-pi-div-two--547d9e35bbff0bca4b3d5ec0",
  "source": {
    "blob": "2b01bb7ca0659527f3eff4a98da378e4459744e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 655,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc1b43eeb8c54b7b81bcc2c30395ae6e0fbbb05a94afea494f108831740bb3ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:547d9e35bbff0bca4b3d5ec0ef44a6431b4e9b50a2c9d15a9ebab984d77a8a8e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc1b43eeb8c54b7b81bcc2c30395ae6e0fbbb05a94afea494f108831740bb3ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12e00514-6b20-a0d1-3873-f200e0cbb19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_oangle_left_mul_dist_of_oangle_eq_pi_div_two {p₁ p₂ p₃ : P}
    (h : ∡ p₁ p₂ p₃ = ↑(π / 2)) : Real.Angle.sin (∡ p₃ p₁ p₂) * dist p₁ p₃ = dist p₃ p₂ := by
  have hs : (∡ p₃ p₁ p₂).sign = 1 := by rw [← oangle_rotate_sign, h, Real.Angle.sign_coe_pi_div_two]
  rw [oangle_eq_angle_of_sign_eq_one hs, angle_comm, Real.Angle.sin_coe, dist_comm p₁ p₃,
    sin_angle_mul_dist_of_angle_eq_pi_div_two (angle_rev_eq_pi_div_two_of_oangle_eq_pi_div_two h)]

/-- The tangent of an angle in a right-angled triangle multiplied by the adjacent side equals
the opposite side. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc1b43eeb8c54b7b81bcc2c30395ae6e0fbbb05a94afea494f108831740bb3ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc1b43eeb8c54b7b81bcc2c30395ae6e0fbbb05a94afea494f108831740bb3ca8.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b01bb7ca0659527f3eff4a98da378e4459744e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
