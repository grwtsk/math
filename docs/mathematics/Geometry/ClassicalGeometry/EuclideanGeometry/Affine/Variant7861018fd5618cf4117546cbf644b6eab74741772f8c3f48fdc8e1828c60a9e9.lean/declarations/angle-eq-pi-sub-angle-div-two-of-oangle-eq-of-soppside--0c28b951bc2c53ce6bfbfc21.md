# angle_eq_pi_sub_angle_div_two_of_oangle_eq_of_sOppSide

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6bbb2d113b04bf13da394357e0496d7ca2b86ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 902,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b4dc258-ec13-1260-c78d-090a53316a2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdc47cf2-24e1-f448-6640-094bd8a44f85",
  "kind": "lemma",
  "lexical_name": "angle_eq_pi_sub_angle_div_two_of_oangle_eq_of_sOppSide",
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
  "slug": "angle-eq-pi-sub-angle-div-two-of-oangle-eq-of-soppside--0c28b951bc2c53ce6bfbfc21",
  "source": {
    "blob": "d6bbb2d113b04bf13da394357e0496d7ca2b86ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 922,
    "line": 902,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c28b951bc2c53ce6bfbfc2100a561de22ef4c1327c873901792f477c05a25a5",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdc47cf2-24e1-f448-6640-094bd8a44f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 902–922.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma angle_eq_pi_sub_angle_div_two_of_oangle_eq_of_sOppSide {p₁ p₂ p₃ p₄ : P} (h₁₂ : p₁ ≠ p₂)
    (ha : ∡ p₁ p₂ p₃ = ∡ p₃ p₂ p₄) (hs : line[ℝ, p₁, p₂].SOppSide p₃ p₄) :
    ∠ p₁ p₂ p₃ = π - ∠ p₁ p₂ p₄ / 2 := by
  have h₃₂ : p₃ ≠ p₂ := by
    rintro rfl
    exact hs.left_notMem (right_mem_affineSpan_pair _ _ _)
  have h₄₂ : p₄ ≠ p₂ := by
    rintro rfl
    exact hs.right_notMem (right_mem_affineSpan_pair _ _ _)
  have ha' : ∡ p₁ p₂ (AffineEquiv.pointReflection ℝ p₂ p₃) =
      ∡ (AffineEquiv.pointReflection ℝ p₂ p₃) p₂ p₄ := by
    rw [oangle_pointReflection_left h₃₂ h₄₂, oangle_pointReflection_right h₁₂ h₃₂]
    simpa using ha
  have hs' : line[ℝ, p₁, p₂].SOppSide p₃ (AffineEquiv.pointReflection ℝ p₂ p₃) :=
    AffineSubspace.sOppSide_pointReflection (right_mem_affineSpan_pair _ _ _) (hs.left_notMem)
  obtain h := angle_eq_angle_div_two_of_oangle_eq_of_sSameSide h₁₂ ha' (hs'.symm.trans hs)
  rw [angle_pointReflection_right] at h
  linear_combination -h

/-- If `p₃` bisects the angle `∡ p₁ p₂ p₄` externally, and `p₃` and `p₄` lie on the same side of
the line `p₁ p₂`, then the unoriented angle `∠ p₁ p₂ p₃` is half `∠ p₁ p₂ p₄` plus `π / 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean#L902).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6bbb2d113b04bf13da394357e0496d7ca2b86ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
