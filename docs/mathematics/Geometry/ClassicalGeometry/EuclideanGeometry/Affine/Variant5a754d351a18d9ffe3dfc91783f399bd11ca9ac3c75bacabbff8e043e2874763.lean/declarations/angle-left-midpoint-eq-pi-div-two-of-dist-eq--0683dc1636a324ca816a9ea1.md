# angle_left_midpoint_eq_pi_div_two_of_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed55acf2-bb5b-a195-fa99-c3d4c8179c4f",
  "kind": "theorem",
  "lexical_name": "angle_left_midpoint_eq_pi_div_two_of_dist_eq",
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
  "slug": "angle-left-midpoint-eq-pi-div-two-of-dist-eq--0683dc1636a324ca816a9ea1",
  "source": {
    "blob": "338879a70c8444ba628584a05335292d0e5cdbb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 238,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0683dc1636a324ca816a9ea101bb8637fd1a4911e2eb5f0f8c49d98923acd00d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed55acf2-bb5b-a195-fa99-c3d4c8179c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_left_midpoint_eq_pi_div_two_of_dist_eq {p₁ p₂ p₃ : P} (h : dist p₃ p₁ = dist p₃ p₂) :
    ∠ p₃ (midpoint ℝ p₁ p₂) p₁ = π / 2 := by
  let m : P := midpoint ℝ p₁ p₂
  have h1 : p₃ -ᵥ p₁ = p₃ -ᵥ m - (p₁ -ᵥ m) := (vsub_sub_vsub_cancel_right p₃ p₁ m).symm
  have h2 : p₃ -ᵥ p₂ = p₃ -ᵥ m + (p₁ -ᵥ m) := by
    rw [left_vsub_midpoint, ← midpoint_vsub_right, vsub_add_vsub_cancel]
  rw [dist_eq_norm_vsub V p₃ p₁, dist_eq_norm_vsub V p₃ p₂, h1, h2] at h
  exact (norm_add_eq_norm_sub_iff_angle_eq_pi_div_two (p₃ -ᵥ m) (p₁ -ᵥ m)).mp h.symm

/-- If M is the midpoint of the segment AB and C is the same distance from A as it is from B
then ∠CMB = π / 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `338879a70c8444ba628584a05335292d0e5cdbb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
