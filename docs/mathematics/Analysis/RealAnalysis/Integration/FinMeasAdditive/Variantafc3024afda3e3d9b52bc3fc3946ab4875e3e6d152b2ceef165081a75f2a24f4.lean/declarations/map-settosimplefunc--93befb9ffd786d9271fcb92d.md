# map_setToSimpleFunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b03dc6a255a28044d8e3f269005139e450514ee6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ab851e3-57f6-c95d-9d92-ce2a71eade72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c876267c-530b-e5ba-8889-69d7367f82db",
  "kind": "theorem",
  "lexical_name": "map_setToSimpleFunc",
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
  "slug": "map-settosimplefunc--93befb9ffd786d9271fcb92d",
  "source": {
    "blob": "b03dc6a255a28044d8e3f269005139e450514ee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93befb9ffd786d9271fcb92d9765fcca069d8de36108e98dbf869d9c3e802e5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c876267c-530b-e5ba-8889-69d7367f82db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_setToSimpleFunc (T : Set α → F →L[ℝ] F') (h_add : FinMeasAdditive μ T) {f : α →ₛ G}
    (hf : Integrable f μ) {g : G → F} (hg : g 0 = 0) :
    (f.map g).setToSimpleFunc T = ∑ x ∈ f.range, T (f ⁻¹' {x}) (g x) := by
  classical
  have T_empty : T ∅ = 0 := h_add.map_empty_eq_zero
  have hfp : ∀ x ∈ f.range, x ≠ 0 → μ (f ⁻¹' {x}) ≠ ∞ := fun x _ hx0 =>
    (measure_preimage_lt_top_of_integrable f hf hx0).ne
  simp only [setToSimpleFunc, range_map]
  refine Finset.sum_image' _ fun b hb => ?_
  rcases mem_range.1 hb with ⟨a, rfl⟩
  by_cases h0 : g (f a) = 0
  · simp_rw [h0]
    rw [ContinuousLinearMap.map_zero, Finset.sum_eq_zero fun x hx => ?_]
    rw [mem_filter] at hx
    rw [hx.2, ContinuousLinearMap.map_zero]
  have h_left_eq :
    T (map g f ⁻¹' {g (f a)}) (g (f a))
      = T (f ⁻¹' ({b ∈ f.range | g b = g (f a)} : Finset _)) (g (f a)) := by
    rw [map_preimage_singleton]
  rw [h_left_eq]
  have h_left_eq' :
    T (f ⁻¹' ({b ∈ f.range | g b = g (f a)} : Finset _)) (g (f a))
      = T (⋃ y ∈ {b ∈ f.range | g b = g (f a)}, f ⁻¹' {y}) (g (f a)) := by
    rw [← Finset.set_biUnion_preimage_singleton]
  rw [h_left_eq']
  rw [h_add.map_iUnion_fin_meas_set_eq_sum T T_empty]
  · simp only [sum_apply, ContinuousLinearMap.coe_sum']
    refine Finset.sum_congr rfl fun x hx => ?_
    rw [mem_filter] at hx
    rw [hx.2]
  · exact fun i => measurableSet_fiber _ _
  · intro i hi
    rw [mem_filter] at hi
    refine hfp i hi.1 fun hi0 => ?_
    rw [hi0, hg] at hi
    exact h0 hi.2.symm
  · intro i _ j _ hij
    rw [Set.disjoint_iff]
    intro x hx
    rw [Set.mem_inter_iff, Set.mem_preimage, Set.mem_preimage, Set.mem_singleton_iff,
      Set.mem_singleton_iff] at hx
    rw [← hx.1, ← hx.2] at hij
    exact absurd rfl hij

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FinMeasAdditive/Variantafc3024afda3e3d9b52bc3fc3946ab4875e3e6d152b2ceef165081a75f2a24f4.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03dc6a255a28044d8e3f269005139e450514ee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
