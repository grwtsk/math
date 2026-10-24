# angle_eq_pi_iff_sbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:190f69c0-a088-92f8-77a6-f45b3710df33",
  "kind": "theorem",
  "lexical_name": "angle_eq_pi_iff_sbtw",
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
  "slug": "angle-eq-pi-iff-sbtw--51fdaf305c392c088a959a96",
  "source": {
    "blob": "529b10405cb4875df868c0c2d81cdb92cf525f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 314,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantc798bf19ac52633ed6dc5c42c2c8f65784676681148f1b07ffe28422344b8350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51fdaf305c392c088a959a965424133a632b6ae1abf2bd9888469642116651d6",
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

Occurrence: `result:190f69c0-a088-92f8-77a6-f45b3710df33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_eq_pi_iff_sbtw {p₁ p₂ p₃ : P} : ∠ p₁ p₂ p₃ = π ↔ Sbtw ℝ p₁ p₂ p₃ := by
  refine' ⟨_, fun h => h.angle₁₂₃_eq_pi⟩
  rw [angle, angle_eq_pi_iff]
  rintro ⟨hp₁p₂, r, hr, hp₃p₂⟩
  refine' ⟨⟨1 / (1 - r), ⟨div_nonneg zero_le_one (sub_nonneg.2 (hr.le.trans zero_le_one)),
    (div_le_one (sub_pos.2 (hr.trans zero_lt_one))).2 ((le_sub_self_iff 1).2 hr.le)⟩, _⟩,
    (vsub_ne_zero.1 hp₁p₂).symm, _⟩
  · rw [← eq_vadd_iff_vsub_eq] at hp₃p₂
    rw [AffineMap.lineMap_apply, hp₃p₂, vadd_vsub_assoc, ← neg_vsub_eq_vsub_rev p₂ p₁, smul_neg, ←
      neg_smul, smul_add, smul_smul, ← add_smul, eq_comm, eq_vadd_iff_vsub_eq]
    convert (one_smul ℝ (p₂ -ᵥ p₁)).symm
    field_simp [(sub_pos.2 (hr.trans zero_lt_one)).ne.symm]
    ring
  · rw [ne_comm, ← @vsub_ne_zero V, hp₃p₂, smul_ne_zero_iff]
    exact ⟨hr.ne, hp₁p₂⟩
#align euclidean_geometry.angle_eq_pi_iff_sbtw EuclideanGeometry.angle_eq_pi_iff_sbtw

/-- If the second of three points is weakly between the other two, and not equal to the first,
the angle at the first point is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantc798bf19ac52633ed6dc5c42c2c8f65784676681148f1b07ffe28422344b8350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantc798bf19ac52633ed6dc5c42c2c8f65784676681148f1b07ffe28422344b8350.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `529b10405cb4875df868c0c2d81cdb92cf525f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
