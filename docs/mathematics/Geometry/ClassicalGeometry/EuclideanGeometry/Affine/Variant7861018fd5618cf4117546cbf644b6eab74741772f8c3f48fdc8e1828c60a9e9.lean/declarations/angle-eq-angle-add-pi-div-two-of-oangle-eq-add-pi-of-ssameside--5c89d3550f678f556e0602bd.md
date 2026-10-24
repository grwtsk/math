# angle_eq_angle_add_pi_div_two_of_oangle_eq_add_pi_of_sSameSide

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
      "line": 923,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d59306e-3cea-7d17-05f0-94406f2dafe6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef95ab23-edc1-3696-3830-64911d395e36",
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
  "slug": "angle-eq-angle-add-pi-div-two-of-oangle-eq-add-pi-of-ssameside--5c89d3550f678f556e0602bd",
  "source": {
    "blob": "d6bbb2d113b04bf13da394357e0496d7ca2b86ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 942,
    "line": 923,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c89d3550f678f556e0602bd6c5f9f9366e43dd0286c374ea22b402871d430eb",
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

Occurrence: `result:ef95ab23-edc1-3696-3830-64911d395e36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 923–942.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean#L923).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6bbb2d113b04bf13da394357e0496d7ca2b86ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
