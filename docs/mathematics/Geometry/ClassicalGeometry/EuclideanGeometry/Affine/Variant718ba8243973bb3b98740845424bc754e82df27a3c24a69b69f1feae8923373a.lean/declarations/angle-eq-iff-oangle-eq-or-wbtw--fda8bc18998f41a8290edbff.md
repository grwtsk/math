# angle_eq_iff_oangle_eq_or_wbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e1904d3-9742-62aa-55cf-4ddd57876d64",
  "kind": "lemma",
  "lexical_name": "angle_eq_iff_oangle_eq_or_wbtw",
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
  "slug": "angle-eq-iff-oangle-eq-or-wbtw--fda8bc18998f41a8290edbff",
  "source": {
    "blob": "403e9dfb32f4f11daabf70f6a88c1f254ef47444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 886,
    "line": 871,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fda8bc18998f41a8290edbff57961074f101160c53c03489c1becb0472bf5a06",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1904d3-9742-62aa-55cf-4ddd57876d64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 871–886.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma angle_eq_iff_oangle_eq_or_wbtw {p₁ p₂ p₃ p₄ : P} (hp₁ : p₁ ≠ p₂) (hp₄ : p₄ ≠ p₂) :
    ∠ p₁ p₂ p₃ = ∠ p₃ p₂ p₄ ↔ ∡ p₁ p₂ p₃ = ∡ p₃ p₂ p₄ ∨ Wbtw ℝ p₂ p₁ p₄ ∨ Wbtw ℝ p₂ p₄ p₁ := by
  simp_rw [angle, oangle,
    o.angle_eq_iff_oangle_eq_or_sameRay (vsub_ne_zero.2 hp₁) (vsub_ne_zero.2 hp₄)]
  apply or_congr_right
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · obtain ⟨r, hr, he⟩ := h.exists_pos_left (vsub_ne_zero.2 hp₁) (vsub_ne_zero.2 hp₄)
    rw [← vsub_vadd p₁ p₂, ← vsub_vadd p₄ p₂, ← he]
    nth_rw 1 4 [← one_smul ℝ (p₁ -ᵥ p₂)]
    exact wbtw_or_wbtw_smul_vadd_of_nonneg _ _ zero_le_one hr.le
  · rcases h with h | h
    · exact h.sameRay_vsub_left
    · exact h.sameRay_vsub_left.symm

/-- If `p₃` bisects the angle `∡ p₁ p₂ p₄`, and `p₃` and `p₄` lie on the same side of the line
`p₁ p₂`, then the unoriented angle `∠ p₁ p₂ p₃` is half `∠ p₁ p₂ p₄`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean#L871).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `403e9dfb32f4f11daabf70f6a88c1f254ef47444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
