# contMDiffWithinAt_iff_contMDiffOn_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a3eff42180012a8a159b383691e742e500022f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 814,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ba10648-8d68-1b4f-cb27-1c14feb388e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c5e2ea6-4992-53c9-e4fb-512699448f62",
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
  "slug": "contmdiffwithinat-iff-contmdiffon-nhds--e2bff4cab8c3651d994ddcbf",
  "source": {
    "blob": "0a3eff42180012a8a159b383691e742e500022f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 845,
    "line": 814,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2bff4cab8c3651d994ddcbfb08fbdf9fe527e53d30d229eb5a39fd58655f991",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c5e2ea6-4992-53c9-e4fb-512699448f62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 814–845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffWithinAt_iff_contMDiffOn_nhds {n : ℕ} :
    ContMDiffWithinAt I I' n f s x ↔ ∃ u ∈ 𝓝[insert x s] x, ContMDiffOn I I' n f u := by
  -- WLOG, `x ∈ s`, otherwise we add `x` to `s`
  wlog hxs : x ∈ s generalizing s
  · rw [← contMDiffWithinAt_insert_self, this (mem_insert _ _), insert_idem]
  rw [insert_eq_of_mem hxs]
  -- The `←` implication is trivial
  refine ⟨fun h ↦ ?_, fun ⟨u, hmem, hu⟩ ↦ (hu _ (mem_of_mem_nhdsWithin hxs hmem)).mono_of_mem hmem⟩
  -- The property is true in charts. Let `v` be a good neighborhood in the chart where the function
  -- is smooth.
  rcases (contMDiffWithinAt_iff'.1 h).2.contDiffOn le_rfl with ⟨v, hmem, hsub, hv⟩
  have hxs' : extChartAt I x x ∈ (extChartAt I x).target ∩
      (extChartAt I x).symm ⁻¹' (s ∩ f ⁻¹' (extChartAt I' (f x)).source) :=
    ⟨(extChartAt I x).map_source (mem_extChartAt_source _ _), by rwa [extChartAt_to_inv], by
      rw [extChartAt_to_inv]; apply mem_extChartAt_source⟩
  rw [insert_eq_of_mem hxs'] at hmem hsub
  -- Then `(extChartAt I x).symm '' v` is the neighborhood we are looking for.
  refine ⟨(extChartAt I x).symm '' v, ?_, ?_⟩
  · rw [← map_extChartAt_symm_nhdsWithin I,
      h.1.nhdsWithin_extChartAt_symm_preimage_inter_range I I']
    exact image_mem_map hmem
  · have hv₁ : (extChartAt I x).symm '' v ⊆ (extChartAt I x).source :=
      image_subset_iff.2 fun y hy ↦ (extChartAt I x).map_target (hsub hy).1
    have hv₂ : MapsTo f ((extChartAt I x).symm '' v) (extChartAt I' (f x)).source := by
      rintro _ ⟨y, hy, rfl⟩
      exact (hsub hy).2.2
    rwa [contMDiffOn_iff_of_subset_source' hv₁ hv₂, LocalEquiv.image_symm_image_of_subset_target]
    exact hsub.trans (inter_subset_left _ _)
#align cont_mdiff_within_at_iff_cont_mdiff_on_nhds contMDiffWithinAt_iff_contMDiffOn_nhds

/-- A function is `C^n` at a point, for `n : ℕ`, if and only if it is `C^n` on
a neighborhood of this point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean#L814).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3eff42180012a8a159b383691e742e500022f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
