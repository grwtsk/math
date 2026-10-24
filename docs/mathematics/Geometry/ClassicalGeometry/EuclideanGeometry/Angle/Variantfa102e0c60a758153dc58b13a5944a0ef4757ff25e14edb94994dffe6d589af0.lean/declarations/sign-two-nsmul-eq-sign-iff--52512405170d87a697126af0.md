# sign_two_nsmul_eq_sign_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ca68df8-481e-185c-f063-b1e923891d73",
  "kind": "theorem",
  "lexical_name": "sign_two_nsmul_eq_sign_iff",
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
  "slug": "sign-two-nsmul-eq-sign-iff--52512405170d87a697126af0",
  "source": {
    "blob": "8464084c8889b5b5a659c5bb51b4a6ed3e6ad874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1036,
    "line": 995,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52512405170d87a697126af0f90ca4f9f38fb532404875e80ba8845f1eb38c3b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ca68df8-481e-185c-f063-b1e923891d73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 995–1036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sign_two_nsmul_eq_sign_iff {θ : Angle} :
    ((2 : ℕ) • θ).sign = θ.sign ↔ θ = π ∨ |θ.toReal| < π / 2 := by
  by_cases hpi : θ = π; · simp [hpi]
  rw [or_iff_right hpi]
  refine' ⟨fun h => _, fun h => _⟩
  · by_contra hle
    rw [not_lt, le_abs, le_neg] at hle
    have hpi' : θ.toReal ≠ π := by simpa using hpi
    rcases hle with (hle | hle) <;> rcases hle.eq_or_lt with (heq | hlt)
    · rw [← coe_toReal θ, ← heq] at h
      simp at h
    · rw [← sign_toReal hpi, sign_pos (pi_div_two_pos.trans hlt), ← sign_toReal,
        two_nsmul_toReal_eq_two_mul_sub_two_pi.2 hlt, _root_.sign_neg] at h
      · simp at h
      · rw [← mul_sub]
        exact mul_neg_of_pos_of_neg two_pos (sub_neg.2 ((toReal_le_pi _).lt_of_ne hpi'))
      · intro he
        simp [he] at h
    · rw [← coe_toReal θ, heq] at h
      simp at h
    · rw [← sign_toReal hpi, _root_.sign_neg (hlt.trans (Left.neg_neg_iff.2 pi_div_two_pos)), ←
        sign_toReal] at h
      swap
      · intro he
        simp [he] at h
      rw [← neg_div] at hlt
      rw [two_nsmul_toReal_eq_two_mul_add_two_pi.2 hlt.le, sign_pos] at h
      · simp at h
      · linarith [neg_pi_lt_toReal θ]
  · have hpi' : (2 : ℕ) • θ ≠ π := by
      rw [Ne.def, two_nsmul_eq_pi_iff, not_or]
      constructor
      · rintro rfl
        simp [pi_pos, div_pos, abs_of_pos] at h
      · rintro rfl
        rw [toReal_neg_pi_div_two] at h
        simp [pi_pos, div_pos, neg_div, abs_of_pos] at h
    rw [abs_lt, ← neg_div] at h
    rw [← sign_toReal hpi, ← sign_toReal hpi', two_nsmul_toReal_eq_two_mul.2 ⟨h.1, h.2.le⟩,
      sign_mul, sign_pos (zero_lt_two' ℝ), one_mul]
#align real.angle.sign_two_nsmul_eq_sign_iff Real.Angle.sign_two_nsmul_eq_sign_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean#L995).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8464084c8889b5b5a659c5bb51b4a6ed3e6ad874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
