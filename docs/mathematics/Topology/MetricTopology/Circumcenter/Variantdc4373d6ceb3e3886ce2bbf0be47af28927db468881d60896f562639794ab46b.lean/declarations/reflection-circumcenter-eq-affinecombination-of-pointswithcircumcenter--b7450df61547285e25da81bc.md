# reflection_circumcenter_eq_affineCombination_of_pointsWithCircumcenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 689,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b1c34d1-0fd4-d5cb-ed29-7c1663b7c2d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:706904ff-56eb-398f-b762-83dd0c4e088e",
  "kind": "theorem",
  "lexical_name": "reflection_circumcenter_eq_affineCombination_of_pointsWithCircumcenter",
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
  "slug": "reflection-circumcenter-eq-affinecombination-of-pointswithcircumcenter--b7450df61547285e25da81bc",
  "source": {
    "blob": "7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 689,
    "path": "GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7450df61547285e25da81bc24c8882947e1e9028e8969529f5129cfceb597fc",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:706904ff-56eb-398f-b762-83dd0c4e088e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_circumcenter_eq_affineCombination_of_pointsWithCircumcenter {n : ℕ}
    (s : Simplex ℝ P n) {i₁ i₂ : Fin (n + 1)} (h : i₁ ≠ i₂) :
    reflection (affineSpan ℝ (s.points '' {i₁, i₂})) s.circumcenter =
      (univ : Finset (PointsWithCircumcenterIndex n)).affineCombination ℝ s.pointsWithCircumcenter
        (reflectionCircumcenterWeightsWithCircumcenter i₁ i₂) := by
  have hc : card ({i₁, i₂} : Finset (Fin (n + 1))) = 2 := by simp [h]
  -- Making the next line a separate definition helps the elaborator:
  set W : AffineSubspace ℝ P := affineSpan ℝ (s.points '' {i₁, i₂})
  have h_faces :
    (orthogonalProjection W s.circumcenter : P) =
      ↑((s.face hc).orthogonalProjectionSpan s.circumcenter) := by
    apply eq_orthogonalProjection_of_eq_subspace
    simp
  rw [EuclideanGeometry.reflection_apply, h_faces, s.orthogonalProjection_circumcenter hc,
    circumcenter_eq_centroid, s.face_centroid_eq_centroid hc,
    centroid_eq_affineCombination_of_pointsWithCircumcenter,
    circumcenter_eq_affineCombination_of_pointsWithCircumcenter, ← @vsub_eq_zero_iff_eq V,
    affineCombination_vsub, weightedVSub_vadd_affineCombination, affineCombination_vsub,
    weightedVSub_apply, sum_pointsWithCircumcenter]
  simp_rw [Pi.sub_apply, Pi.add_apply, Pi.sub_apply, sub_smul, add_smul, sub_smul,
    centroidWeightsWithCircumcenter, circumcenterWeightsWithCircumcenter,
    reflectionCircumcenterWeightsWithCircumcenter, ite_smul, zero_smul, sub_zero,
    apply_ite₂ (· + ·), add_zero, ← add_smul, hc, zero_sub, neg_smul, sub_self, add_zero]
  -- Porting note: was `convert sum_const_zero`
  rw [← sum_const_zero]
  congr
  norm_num
#align affine.simplex.reflection_circumcenter_eq_affine_combination_of_points_with_circumcenter Affine.Simplex.reflection_circumcenter_eq_affineCombination_of_pointsWithCircumcenter

end Simplex

end Affine

namespace EuclideanGeometry

open Affine AffineSubspace FiniteDimensional

variable {V : Type*} {P : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P]

/-- Given a nonempty affine subspace, whose direction is complete,
that contains a set of points, those points are cospherical if and
only if they are equidistant from some point in that subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
