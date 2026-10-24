# angle_lt_pi_div_two_of_angle_eq_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6dc272c-a384-6659-ee94-b87aeec32117",
  "kind": "theorem",
  "lexical_name": "angle_lt_pi_div_two_of_angle_eq_pi_div_two",
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
  "slug": "angle-lt-pi-div-two-of-angle-eq-pi-div-two--35b8d1fdbd99dca3a3b3a3f4",
  "source": {
    "blob": "52cb9d784abbcda21f2d93e8bce4d3f8acac8570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 399,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35b8d1fdbd99dca3a3b3a3f46d2d7e7c8107fafb9c50b60ef0e068e863f1f992",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6dc272c-a384-6659-ee94-b87aeec32117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_lt_pi_div_two_of_angle_eq_pi_div_two {p₁ p₂ p₃ : P} (h : ∠ p₁ p₂ p₃ = π / 2)
    (h0 : p₃ ≠ p₂) : ∠ p₂ p₃ p₁ < π / 2 := by
  rw [angle, ← inner_eq_zero_iff_angle_eq_pi_div_two, real_inner_comm, ← neg_eq_zero, ←
    inner_neg_left, neg_vsub_eq_vsub_rev] at h
  rw [ne_comm, ← @vsub_ne_zero V] at h0
  rw [angle, ← vsub_add_vsub_cancel p₁ p₂ p₃, add_comm]
  exact angle_add_lt_pi_div_two_of_inner_eq_zero h h0

/-- The cosine of an angle in a right-angled triangle as a ratio of sides. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cb9d784abbcda21f2d93e8bce4d3f8acac8570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
