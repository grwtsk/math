# dist_orthocenter_reflection_circumcenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4d2703969d31a741d3efdaac74017241183473c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:339fa051-1cd1-b076-d817-c508cd480306",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8decc9b2-464d-ab58-a25c-a2b9348fc417",
  "kind": "theorem",
  "lexical_name": "dist_orthocenter_reflection_circumcenter",
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
  "slug": "dist-orthocenter-reflection-circumcenter--1a676d3ced0574693800b91d",
  "source": {
    "blob": "c4d2703969d31a741d3efdaac74017241183473c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 375,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a676d3ced0574693800b91dc9dd2f37eb2f5bc6b4b5415c64cfeaa429c26c56",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8decc9b2-464d-ab58-a25c-a2b9348fc417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_orthocenter_reflection_circumcenter (t : Triangle ℝ P) {i₁ i₂ : Fin 3} (h : i₁ ≠ i₂) :
    dist t.orthocenter (reflection (affineSpan ℝ (t.points '' {i₁, i₂})) t.circumcenter) =
      t.circumradius := by
  rw [← mul_self_inj_of_nonneg dist_nonneg t.circumradius_nonneg,
    t.reflection_circumcenter_eq_affineCombination_of_pointsWithCircumcenter h,
    t.orthocenter_eq_mongePoint, mongePoint_eq_affineCombination_of_pointsWithCircumcenter,
    dist_affineCombination t.pointsWithCircumcenter (sum_mongePointWeightsWithCircumcenter _)
      (sum_reflectionCircumcenterWeightsWithCircumcenter h)]
  simp_rw [sum_pointsWithCircumcenter, Pi.sub_apply, mongePointWeightsWithCircumcenter,
    reflectionCircumcenterWeightsWithCircumcenter]
  have hu : ({i₁, i₂} : Finset (Fin 3)) ⊆ univ := subset_univ _
  obtain ⟨i₃, hi₃, hi₃₁, hi₃₂⟩ :
      ∃ i₃, univ \ ({i₁, i₂} : Finset (Fin 3)) = {i₃} ∧ i₃ ≠ i₁ ∧ i₃ ≠ i₂ := by
    decide +revert
  simp_rw [← sum_sdiff hu, hi₃]
  norm_num [hi₃₁, hi₃₂]

/-- The distance from the orthocenter to the reflection of the
circumcenter in a side equals the circumradius, variant using a
`Finset`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d2703969d31a741d3efdaac74017241183473c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
