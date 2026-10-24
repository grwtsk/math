# contMDiffWithinAt_iff_contMDiffOn_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69fa37ebbccee7994ac66cb978e35b2eff547e68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 781,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0acb4dd-2d67-cb46-c18b-62fc06376487",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01c17a02-4e54-f735-1ea7-97c46382000a",
  "kind": "theorem",
  "lexical_name": "contMDiffWithinAt_iff_contMDiffOn_nhds",
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
  "slug": "contmdiffwithinat-iff-contmdiffon-nhds--a79d96736b9aaf6c462370a9",
  "source": {
    "blob": "69fa37ebbccee7994ac66cb978e35b2eff547e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 813,
    "line": 781,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a79d96736b9aaf6c462370a9faac1680a45032579a62e74adab0409bc3e43d17",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01c17a02-4e54-f735-1ea7-97c46382000a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 781–813.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffWithinAt_iff_contMDiffOn_nhds
    [IsManifold I n M] [IsManifold I' n M'] (hn : n ≠ ∞) :
    ContMDiffWithinAt I I' n f s x ↔ ∃ u ∈ 𝓝[insert x s] x, ContMDiffOn I I' n f u := by
  -- WLOG, `x ∈ s`, otherwise we add `x` to `s`
  wlog hxs : x ∈ s generalizing s
  · rw [← contMDiffWithinAt_insert_self, this (mem_insert _ _), insert_idem]
  rw [insert_eq_of_mem hxs]
  -- The `←` implication is trivial
  refine ⟨fun h ↦ ?_, fun ⟨u, hmem, hu⟩ ↦
    (hu _ (mem_of_mem_nhdsWithin hxs hmem)).mono_of_mem_nhdsWithin hmem⟩
  -- The property is true in charts. Let `v` be a good neighborhood in the chart where the function
  -- is `Cⁿ`.
  rcases (contMDiffWithinAt_iff'.1 h).2.contDiffOn le_rfl (by simp [hn]) with ⟨v, hmem, hsub, hv⟩
  have hxs' : extChartAt I x x ∈ (extChartAt I x).target ∩
      (extChartAt I x).symm ⁻¹' (s ∩ f ⁻¹' (extChartAt I' (f x)).source) :=
    ⟨(extChartAt I x).map_source (mem_extChartAt_source _), by rwa [extChartAt_to_inv], by
      rw [extChartAt_to_inv]; apply mem_extChartAt_source⟩
  rw [insert_eq_of_mem hxs'] at hmem hsub
  -- Then `(extChartAt I x).symm '' v` is the neighborhood we are looking for.
  refine ⟨(extChartAt I x).symm '' v, ?_, ?_⟩
  · rw [← map_extChartAt_symm_nhdsWithin (I := I),
      h.1.nhdsWithin_extChartAt_symm_preimage_inter_range (I := I) (I' := I')]
    exact image_mem_map hmem
  · have hv₁ : (extChartAt I x).symm '' v ⊆ (extChartAt I x).source :=
      image_subset_iff.2 fun y hy ↦ (extChartAt I x).map_target (hsub hy).1
    have hv₂ : MapsTo f ((extChartAt I x).symm '' v) (extChartAt I' (f x)).source := by
      rintro _ ⟨y, hy, rfl⟩
      exact (hsub hy).2.2
    rwa [contMDiffOn_iff_of_subset_source' hv₁ hv₂, PartialEquiv.image_symm_image_of_subset_target]
    exact hsub.trans inter_subset_left

/-- If a function is `C^m` within a set at a point, for some finite `m`, then it is `C^m` within
this set on an open set around the basepoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean#L781).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69fa37ebbccee7994ac66cb978e35b2eff547e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
