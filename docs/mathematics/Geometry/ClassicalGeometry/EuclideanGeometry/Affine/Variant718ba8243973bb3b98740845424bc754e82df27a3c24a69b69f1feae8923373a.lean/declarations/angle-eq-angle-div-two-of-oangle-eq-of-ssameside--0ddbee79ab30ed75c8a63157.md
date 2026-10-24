# angle_eq_angle_div_two_of_oangle_eq_of_sSameSide

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8f657d2-78e8-862c-aca9-c1e8f80b511c",
  "kind": "lemma",
  "lexical_name": "angle_eq_angle_div_two_of_oangle_eq_of_sSameSide",
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
  "slug": "angle-eq-angle-div-two-of-oangle-eq-of-ssameside--0ddbee79ab30ed75c8a63157",
  "source": {
    "blob": "403e9dfb32f4f11daabf70f6a88c1f254ef47444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 887,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ddbee79ab30ed75c8a63157c97ab01fd6a8968f0126974dda395e3e48de467a",
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

Occurrence: `result:c8f657d2-78e8-862c-aca9-c1e8f80b511c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 887–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma angle_eq_angle_div_two_of_oangle_eq_of_sSameSide {p₁ p₂ p₃ p₄ : P} (h₁₂ : p₁ ≠ p₂)
    (ha : ∡ p₁ p₂ p₃ = ∡ p₃ p₂ p₄) (hs : line[ℝ, p₁, p₂].SSameSide p₃ p₄) :
    ∠ p₁ p₂ p₃ = ∠ p₁ p₂ p₄ / 2 := by
  have h₃₂ : p₃ ≠ p₂ := by
    rintro rfl
    exact hs.left_notMem (right_mem_affineSpan_pair _ _ _)
  have h₄₂ : p₄ ≠ p₂ := by
    rintro rfl
    exact hs.right_notMem (right_mem_affineSpan_pair _ _ _)
  suffices ((∡ p₁ p₂ p₃).toReal + (∡ p₃ p₂ p₄).toReal) / 2 = (∡ p₁ p₂ p₄).toReal / 2 by
    rw [← ha, add_self_div_two] at this
    rw [angle_eq_abs_oangle_toReal h₁₂ h₃₂, angle_eq_abs_oangle_toReal h₁₂ h₄₂, this, abs_div]
    simp
  have hadd := oangle_add h₁₂ h₃₂ h₄₂
  rw [div_left_inj' (by norm_num), ← hadd]
  have h : ∡ p₁ p₂ p₃ ≠ π := fun h ↦ hs.left_notMem ((oangle_eq_zero_or_eq_pi_iff_collinear.1
    (.inr h)).mem_affineSpan_of_mem_of_ne (by grind) (by grind) (by grind) h₁₂)
  refine (Real.Angle.toReal_add_eq_toReal_add_toReal h (ha ▸ h) (.inr ?_)).symm
  rw [hadd, ← oangle_swap₂₃_sign p₁ p₃ p₂, ← oangle_swap₂₃_sign p₁ p₄ p₂, neg_inj, eq_comm]
  exact hs.oangle_sign_eq (left_mem_affineSpan_pair _ _ _) (right_mem_affineSpan_pair _ _ _)

/-- If `p₃` bisects the angle `∡ p₁ p₂ p₄`, and `p₃` and `p₄` lie on opposite sides of the line
`p₁ p₂`, then the unoriented angle `∠ p₁ p₂ p₃` is `π` minus half `∠ p₁ p₂ p₄`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean#L887).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `403e9dfb32f4f11daabf70f6a88c1f254ef47444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
