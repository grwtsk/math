# Sphere.dist_center_lt_radius_of_sbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65e60c522aa7a6ed8b00ff637f51a8e3530c2a47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cbe2259-f8a4-8ae9-4cb8-58eb7d5700ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b332c3d6-047b-746a-c54d-10462e8d9847",
  "kind": "theorem",
  "lexical_name": "Sphere.dist_center_lt_radius_of_sbtw",
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
  "slug": "sphere-dist-center-lt-radius-of-sbtw--82db32b606fd729ff1e0a861",
  "source": {
    "blob": "65e60c522aa7a6ed8b00ff637f51a8e3530c2a47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 460,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82db32b606fd729ff1e0a861bb93d3a688e748e11ae30956f55a66ea025aeb54",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b332c3d6-047b-746a-c54d-10462e8d9847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sphere.dist_center_lt_radius_of_sbtw {p₁ p₂ p : P} {s : Sphere P}
    (hp₁ : p₁ ∈ s) (hp₂ : p₂ ∈ s) (hp : Sbtw ℝ p₁ p p₂) :
    dist s.center p < s.radius := by
  set o := s.center
  obtain ⟨⟨t, ⟨ht₀, ht₁⟩, hpt⟩, hne₁, hne₂⟩ := hp
  have ht₀' : 0 < t := lt_of_le_of_ne ht₀ fun h => hne₁ <| by
    rw [← hpt, ← h, AffineMap.lineMap_apply_zero]
  have ht₁' : t < 1 := lt_of_le_of_ne ht₁ fun h => hne₂ <| by
    rw [← hpt, h, AffineMap.lineMap_apply_one]
  set u := p₁ -ᵥ o; set v := p₂ -ᵥ o
  have hu : ‖u‖ = s.radius := norm_vsub_center_eq_radius hp₁
  have hv : ‖v‖ = s.radius := norm_vsub_center_eq_radius hp₂
  have huv : u ≠ v := fun h => hne₁ <| by
    rw [← hpt, vsub_left_cancel h, AffineMap.lineMap_same, AffineMap.const_apply]
  have hpo : p -ᵥ o = (1 - t) • u + t • v := by
    rw [show p = (AffineMap.lineMap p₁ p₂) t from hpt.symm, AffineMap.lineMap_apply,
      vadd_vsub_assoc, show (p₂ -ᵥ p₁ : V) = v - u from
      (vsub_sub_vsub_cancel_right p₂ p₁ o).symm]
    module
  rw [dist_comm, dist_eq_norm_vsub, hpo]
  have hmem := (strictConvex_closedBall ℝ (0 : V) s.radius)
    (by simp [Metric.mem_closedBall, hu]) (by simp [Metric.mem_closedBall, hv])
    huv (sub_pos.mpr ht₁') ht₀' (sub_add_cancel 1 t)
  rwa [interior_closedBall _ (fun h : s.radius = 0 => huv <|
      (norm_eq_zero.mp (hu.trans h)).trans (norm_eq_zero.mp (hv.trans h)).symm),
    Metric.mem_ball, dist_zero_right] at hmem

/-- The distance from the center of a sphere to the midpoint of a chord
with distinct endpoints is strictly less than the radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e60c522aa7a6ed8b00ff637f51a8e3530c2a47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
