# preimage_connectedComponent_connected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d10509c-4d6d-dc41-0229-f2c17149ce07",
  "kind": "theorem",
  "lexical_name": "preimage_connectedComponent_connected",
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
  "slug": "preimage-connectedcomponent-connected--6cef3e6ea064ee54478ff2f5",
  "source": {
    "blob": "b8acb47e4588e836c15e517cee37cb8a60018219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1229,
    "line": 1153,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cef3e6ea064ee54478ff2f580ff53d3addf3148a479b58ff247e69e447acdc3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d10509c-4d6d-dc41-0229-f2c17149ce07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1153–1229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_connectedComponent_connected [TopologicalSpace β] {f : α → β}
    (connected_fibers : ∀ t : β, IsConnected (f ⁻¹' {t}))
    (hcl : ∀ T : Set β, IsClosed T ↔ IsClosed (f ⁻¹' T)) (t : β) :
    IsConnected (f ⁻¹' connectedComponent t) := by
  -- The following proof is essentially https://stacks.math.columbia.edu/tag/0377
  -- although the statement is slightly different
  have hf : Surjective f := Surjective.of_comp fun t : β => (connected_fibers t).1
  refine ⟨Nonempty.preimage connectedComponent_nonempty hf, ?_⟩
  have hT : IsClosed (f ⁻¹' connectedComponent t) :=
    (hcl (connectedComponent t)).1 isClosed_connectedComponent
  -- To show it's preconnected we decompose (f ⁻¹' connectedComponent t) as a subset of two
  -- closed disjoint sets in α. We want to show that it's a subset of either.
  rw [isPreconnected_iff_subset_of_fully_disjoint_closed hT]
  intro u v hu hv huv uv_disj
  -- To do this we decompose connectedComponent t into T₁ and T₂
  -- we will show that connectedComponent t is a subset of either and hence
  -- (f ⁻¹' connectedComponent t) is a subset of u or v
  let T₁ := { t' ∈ connectedComponent t | f ⁻¹' {t'} ⊆ u }
  let T₂ := { t' ∈ connectedComponent t | f ⁻¹' {t'} ⊆ v }
  have fiber_decomp : ∀ t' ∈ connectedComponent t, f ⁻¹' {t'} ⊆ u ∨ f ⁻¹' {t'} ⊆ v := by
    intro t' ht'
    apply isPreconnected_iff_subset_of_disjoint_closed.1 (connected_fibers t').2 u v hu hv
    · exact Subset.trans (preimage_mono (singleton_subset_iff.2 ht')) huv
    rw [uv_disj.inter_eq, inter_empty]
  have T₁_u : f ⁻¹' T₁ = f ⁻¹' connectedComponent t ∩ u := by
    apply eq_of_subset_of_subset
    · rw [← biUnion_preimage_singleton]
      refine' iUnion₂_subset fun t' ht' => subset_inter _ ht'.2
      rw [hf.preimage_subset_preimage_iff, singleton_subset_iff]
      exact ht'.1
    rintro a ⟨hat, hau⟩
    constructor
    · exact mem_preimage.1 hat
    refine (fiber_decomp (f a) (mem_preimage.1 hat)).resolve_right fun h => ?_
    exact uv_disj.subset_compl_right hau (h rfl)
  -- This proof is exactly the same as the above (modulo some symmetry)
  have T₂_v : f ⁻¹' T₂ = f ⁻¹' connectedComponent t ∩ v := by
    apply eq_of_subset_of_subset
    · rw [← biUnion_preimage_singleton]
      refine' iUnion₂_subset fun t' ht' => subset_inter _ ht'.2
      rw [hf.preimage_subset_preimage_iff, singleton_subset_iff]
      exact ht'.1
    rintro a ⟨hat, hav⟩
    constructor
    · exact mem_preimage.1 hat
    · refine (fiber_decomp (f a) (mem_preimage.1 hat)).resolve_left fun h => ?_
      exact uv_disj.subset_compl_left hav (h rfl)
  -- Now we show T₁, T₂ are closed, cover connectedComponent t and are disjoint.
  have hT₁ : IsClosed T₁ := (hcl T₁).2 (T₁_u.symm ▸ IsClosed.inter hT hu)
  have hT₂ : IsClosed T₂ := (hcl T₂).2 (T₂_v.symm ▸ IsClosed.inter hT hv)
  have T_decomp : connectedComponent t ⊆ T₁ ∪ T₂ := fun t' ht' => by
    rw [mem_union t' T₁ T₂]
    cases' fiber_decomp t' ht' with htu htv
    · left
      exact ⟨ht', htu⟩
    right
    exact ⟨ht', htv⟩
  have T_disjoint : Disjoint T₁ T₂ := by
    refine' Disjoint.of_preimage hf _
    rw [T₁_u, T₂_v, disjoint_iff_inter_eq_empty, ← inter_inter_distrib_left, uv_disj.inter_eq,
      inter_empty]
  -- Now we do cases on whether (connectedComponent t) is a subset of T₁ or T₂ to show
  -- that the preimage is a subset of u or v.
  cases' (isPreconnected_iff_subset_of_fully_disjoint_closed isClosed_connectedComponent).1
    isPreconnected_connectedComponent T₁ T₂ hT₁ hT₂ T_decomp T_disjoint with h h
  · left
    rw [Subset.antisymm_iff] at T₁_u
    suffices f ⁻¹' connectedComponent t ⊆ f ⁻¹' T₁
      from (this.trans T₁_u.1).trans (inter_subset_right _ _)
    exact preimage_mono h
  · right
    rw [Subset.antisymm_iff] at T₂_v
    suffices f ⁻¹' connectedComponent t ⊆ f ⁻¹' T₂
      from (this.trans T₂_v.1).trans (inter_subset_right _ _)
    exact preimage_mono h
#align preimage_connected_component_connected preimage_connectedComponent_connected

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean#L1153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8acb47e4588e836c15e517cee37cb8a60018219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
