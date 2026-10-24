# dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fb950a7-375c-e133-e2dc-d09e86370434",
  "kind": "lemma",
  "lexical_name": "dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq_aux₁",
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
  "slug": "dist-orthogonalprojection-line-eq-of-two-zsmul-oangle-eq-aux--9e45ca14747a10e072add389",
  "source": {
    "blob": "159d93dab9f89a5ded988be238ea4b7c54eed408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 238,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e45ca14747a10e072add389f356cef269229e233ca36ca043b6a585f8b74bb9",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fb950a7-375c-e133-e2dc-d09e86370434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq_aux₁ {p p₁ p₂ p₃ : P}
    (h₂ : p₁ ≠ p₂) (h : (2 : ℤ) • ∡ p₂ p₁ p = (2 : ℤ) • ∡ p p₁ p₃)
    (h' : orthogonalProjection line[ℝ, p₁, p₂] p = p₁) :
    dist p (orthogonalProjection line[ℝ, p₁, p₂] p) =
      dist p (orthogonalProjection line[ℝ, p₁, p₃] p) := by
  obtain rfl | hp := eq_or_ne p p₁
  · rw [h', dist_self, zero_eq_dist, eq_comm, orthogonalProjection_eq_self_iff]
    exact left_mem_affineSpan_pair _ _ _
  · rw [← h'] at h hp
    have hpm : p ∉ line[ℝ, p₁, p₂] := orthogonalProjection_eq_self_iff.not.1 (Ne.symm hp)
    rw [two_zsmul_oangle_orthogonalProjection_self _ hpm (right_mem_affineSpan_pair _ _ _)
          (h'.symm ▸ h₂.symm), eq_comm, oangle, Real.Angle.two_zsmul_eq_pi_iff, h'] at h
    replace h := (Orientation.eq_zero_or_oangle_eq_iff_inner_eq_zero _).1 (.inr (.inr h))
    congr 1
    rw [h', eq_comm, coe_orthogonalProjection_eq_iff_mem]
    refine ⟨left_mem_affineSpan_pair _ _ _, ?_⟩
    rw [Submodule.mem_orthogonal']
    intro u hu
    rw [direction_affineSpan, mem_vectorSpan_pair] at hu
    rcases hu with ⟨r, rfl⟩
    rw [inner_smul_right, ← inner_neg_neg, inner_neg_left]
    simp [h]

/-- Auxiliary lemma for the special case of
`dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq` where the orthogonal projection of `p`
to the line `p₁ p₂` or `p₁ p₃` is `p₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `159d93dab9f89a5ded988be238ea4b7c54eed408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
