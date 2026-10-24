# sin_eq_iff_coe_eq_or_add_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f852d6915c7db18dff201cfba4825ed13e22bf48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:782799f4-a8d9-b81f-dff3-df23d6728ad4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:143918ca-f0ea-2a7f-740f-d20cdfb2f1ec",
  "kind": "theorem",
  "lexical_name": "sin_eq_iff_coe_eq_or_add_eq_pi",
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
  "slug": "sin-eq-iff-coe-eq-or-add-eq-pi--98abf58ee4c0ee48d5337566",
  "source": {
    "blob": "f852d6915c7db18dff201cfba4825ed13e22bf48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 263,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98abf58ee4c0ee48d5337566c38e8dd8ab6f731dbcdfb423aa4b3637204b4815",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:143918ca-f0ea-2a7f-740f-d20cdfb2f1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_eq_iff_coe_eq_or_add_eq_pi {θ ψ : ℝ} :
    sin θ = sin ψ ↔ (θ : Angle) = ψ ∨ (θ : Angle) + ψ = π := by
  constructor
  · intro Hsin
    rw [← cos_pi_div_two_sub, ← cos_pi_div_two_sub] at Hsin
    cases' cos_eq_iff_coe_eq_or_eq_neg.mp Hsin with h h
    · left
      rw [coe_sub, coe_sub] at h
      exact sub_right_inj.1 h
    right
    rw [coe_sub, coe_sub, eq_neg_iff_add_eq_zero, add_sub, sub_add_eq_add_sub, ← coe_add,
      add_halves, sub_sub, sub_eq_zero] at h
    exact h.symm
  · rw [angle_eq_iff_two_pi_dvd_sub, ← eq_sub_iff_add_eq, ← coe_sub, angle_eq_iff_two_pi_dvd_sub]
    rintro (⟨k, H⟩ | ⟨k, H⟩)
    rw [← sub_eq_zero, sin_sub_sin, H, mul_assoc 2 π k, mul_div_cancel_left _ (two_ne_zero' ℝ),
      mul_comm π _, sin_int_mul_pi, mul_zero, zero_mul]
    have H' : θ + ψ = 2 * k * π + π := by
      rwa [← sub_add, sub_add_eq_add_sub, sub_eq_iff_eq_add, mul_assoc, mul_comm π _, ←
        mul_assoc] at H
    rw [← sub_eq_zero, sin_sub_sin, H', add_div, mul_assoc 2 _ π,
      mul_div_cancel_left _ (two_ne_zero' ℝ), cos_add_pi_div_two, sin_int_mul_pi, neg_zero,
      mul_zero]
#align real.angle.sin_eq_iff_coe_eq_or_add_eq_pi Real.Angle.sin_eq_iff_coe_eq_or_add_eq_pi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f852d6915c7db18dff201cfba4825ed13e22bf48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
