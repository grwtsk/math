# isIntTangent_iff_dist_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8587b5704cea9ebd2b1c294c5d42fff1cb668b0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b804c11b-8a99-e4f2-0c23-70b2f077e371",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef760f85-f11b-b021-1424-607ff2a158cb",
  "kind": "lemma",
  "lexical_name": "isIntTangent_iff_dist_center",
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
  "slug": "isinttangent-iff-dist-center--af6e7fd36ef0ade1729b2c17",
  "source": {
    "blob": "8587b5704cea9ebd2b1c294c5d42fff1cb668b0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 375,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af6e7fd36ef0ade1729b2c17dbfd3d56a8d99ff7b7dc190b9c6b88da5d86ee2b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef760f85-f11b-b021-1424-607ff2a158cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntTangent_iff_dist_center [Nontrivial V] {s₁ s₂ : Sphere P} : s₁.IsIntTangent s₂ ↔
    dist s₁.center s₂.center = s₂.radius - s₁.radius ∧ 0 ≤ s₁.radius ∧ 0 ≤ s₂.radius := by
  refine ⟨fun h ↦ ⟨h.dist_center, ?_⟩, ?_⟩
  · rcases h with ⟨p, h₁, h₂, h⟩
    exact ⟨radius_nonneg_of_mem h₁, radius_nonneg_of_mem h₂⟩
  · rintro ⟨h, h₁, h₂⟩
    by_cases h0 : s₁.center = s₂.center
    · rw [h0, dist_self, eq_comm, sub_eq_zero, eq_comm] at h
      have hs : s₁ = s₂ := by
        ext <;> assumption
      simp [hs, h₂]
    · rw [dist_comm] at h
      have ha : |s₂.radius - s₁.radius| = s₂.radius - s₁.radius := by
        refine abs_of_nonneg ?_
        rw [← h]
        exact dist_nonneg
      have hr0 : s₂.radius - s₁.radius ≠ 0 := by
        intro hr0
        rw [hr0, dist_eq_zero] at h
        exact h0 h.symm
      refine ⟨AffineMap.lineMap s₂.center s₁.center (s₂.radius / (s₂.radius - s₁.radius)),
              ?_, ?_, ?_⟩
      · simp only [mem_sphere, dist_lineMap_right, Real.norm_eq_abs, h, one_sub_div hr0, abs_div,
          sub_sub_cancel_left, abs_neg, abs_of_nonneg h₁, ha]
        field_simp
      · simp only [mem_sphere, dist_lineMap_left, norm_div, Real.norm_eq_abs, h, ha,
          abs_of_nonneg h₂]
        field_simp
      · rw [wbtw_iff_left_eq_or_right_mem_image_Ici]
        simp only [Ne.symm h0, Set.mem_image, Set.mem_Ici, AffineMap.lineMap_eq_lineMap_iff,
          false_or, exists_eq_right]
        rw [one_le_div]
        · linarith
        · rw [← h]
          simp [Ne.symm h0]

end Sphere

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8587b5704cea9ebd2b1c294c5d42fff1cb668b0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
