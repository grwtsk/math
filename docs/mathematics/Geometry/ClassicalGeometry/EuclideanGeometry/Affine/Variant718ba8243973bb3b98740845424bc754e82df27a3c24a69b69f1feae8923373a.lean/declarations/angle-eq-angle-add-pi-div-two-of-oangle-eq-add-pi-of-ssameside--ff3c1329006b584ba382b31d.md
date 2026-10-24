# angle_eq_angle_add_pi_div_two_of_oangle_eq_add_pi_of_sSameSide

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1690ff3-4ff6-f66c-69cb-3423e57aade6",
  "kind": "lemma",
  "lexical_name": "angle_eq_angle_add_pi_div_two_of_oangle_eq_add_pi_of_sSameSide",
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
  "slug": "angle-eq-angle-add-pi-div-two-of-oangle-eq-add-pi-of-ssameside--ff3c1329006b584ba382b31d",
  "source": {
    "blob": "403e9dfb32f4f11daabf70f6a88c1f254ef47444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 950,
    "line": 931,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff3c1329006b584ba382b31de8dee8ef0db0236cc330b075d278a4eafaa0aed6",
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

Occurrence: `result:e1690ff3-4ff6-f66c-69cb-3423e57aade6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–950.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma angle_eq_angle_add_pi_div_two_of_oangle_eq_add_pi_of_sSameSide {p₁ p₂ p₃ p₄ : P}
    (h₁₂ : p₁ ≠ p₂) (ha : ∡ p₁ p₂ p₃ = ∡ p₃ p₂ p₄ + π) (hs : line[ℝ, p₁, p₂].SSameSide p₃ p₄) :
    ∠ p₁ p₂ p₃ = (∠ p₁ p₂ p₄ + π) / 2 := by
  have h₃₂ : p₃ ≠ p₂ := by
    rintro rfl
    exact hs.left_notMem (right_mem_affineSpan_pair _ _ _)
  have h₄₂ : p₄ ≠ p₂ := by
    rintro rfl
    exact hs.right_notMem (right_mem_affineSpan_pair _ _ _)
  have ha' : ∡ p₁ p₂ p₃ = ∡ p₃ p₂ (AffineEquiv.pointReflection ℝ p₂ p₄) := by
    rw [oangle_pointReflection_right h₃₂ h₄₂]
    exact ha
  have hs' : line[ℝ, p₁, p₂].SOppSide p₄ (AffineEquiv.pointReflection ℝ p₂ p₄) :=
    AffineSubspace.sOppSide_pointReflection (right_mem_affineSpan_pair _ _ _) (hs.right_notMem)
  obtain h := angle_eq_pi_sub_angle_div_two_of_oangle_eq_of_sOppSide h₁₂ ha' (hs.trans_sOppSide hs')
  rw [angle_pointReflection_right] at h
  linear_combination h

/-- If `p₃` bisects the angle `∡ p₁ p₂ p₄` externally, and `p₃` and `p₄` lie on opposite sides of
the line `p₁ p₂`, then the unoriented angle `∠ p₁ p₂ p₃` is `π / 2` minus half `∠ p₁ p₂ p₄`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `403e9dfb32f4f11daabf70f6a88c1f254ef47444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
