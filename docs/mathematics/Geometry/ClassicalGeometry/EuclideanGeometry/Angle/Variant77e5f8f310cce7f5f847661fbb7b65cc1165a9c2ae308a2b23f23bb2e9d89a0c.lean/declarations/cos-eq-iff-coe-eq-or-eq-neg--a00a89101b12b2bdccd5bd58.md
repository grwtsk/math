# cos_eq_iff_coe_eq_or_eq_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67ae2938-057d-bad8-7af0-56e0e7b74f1b",
  "kind": "theorem",
  "lexical_name": "cos_eq_iff_coe_eq_or_eq_neg",
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
  "slug": "cos-eq-iff-coe-eq-or-eq-neg--a00a89101b12b2bdccd5bd58",
  "source": {
    "blob": "358d8e29b4a6099451b07372ffb0d5827c3a2e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 203,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a00a89101b12b2bdccd5bd5850f679c98a8074e3a1cfa450cd1d77f398e7d799",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ae2938-057d-bad8-7af0-56e0e7b74f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_eq_iff_coe_eq_or_eq_neg {θ ψ : ℝ} :
    cos θ = cos ψ ↔ (θ : Angle) = ψ ∨ (θ : Angle) = -ψ := by
  constructor
  · intro Hcos
    rw [← sub_eq_zero, cos_sub_cos, mul_eq_zero, mul_eq_zero, neg_eq_zero,
      eq_false (two_ne_zero' ℝ), false_or, sin_eq_zero_iff, sin_eq_zero_iff] at Hcos
    rcases Hcos with (⟨n, hn⟩ | ⟨n, hn⟩)
    · right
      rw [eq_div_iff_mul_eq (two_ne_zero' ℝ), ← sub_eq_iff_eq_add] at hn
      rw [← hn, coe_sub, eq_neg_iff_add_eq_zero, sub_add_cancel, mul_assoc, intCast_mul_eq_zsmul,
        mul_comm, coe_two_pi, zsmul_zero]
    · left
      rw [eq_div_iff_mul_eq (two_ne_zero' ℝ), eq_sub_iff_add_eq] at hn
      rw [← hn, coe_add, mul_assoc, intCast_mul_eq_zsmul, mul_comm, coe_two_pi, zsmul_zero,
        zero_add]
  · rw [angle_eq_iff_two_pi_dvd_sub, ← coe_neg, angle_eq_iff_two_pi_dvd_sub]
    rintro (⟨k, H⟩ | ⟨k, H⟩)
    · rw [← sub_eq_zero, cos_sub_cos, H, mul_assoc 2 π k, mul_div_cancel_left₀ _ (two_ne_zero' ℝ),
        mul_comm π _, sin_int_mul_pi, mul_zero]
    rw [← sub_eq_zero, cos_sub_cos, ← sub_neg_eq_add, H, mul_assoc 2 π k,
      mul_div_cancel_left₀ _ (two_ne_zero' ℝ), mul_comm π _, sin_int_mul_pi, mul_zero,
      zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `358d8e29b4a6099451b07372ffb0d5827c3a2e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
