# tutte_exists_isPerfectMatching_of_near_matchings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a38b5edd15c4705a22ded0e378e628b81e26f27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f17a168a-5399-bdab-f088-312b6291daf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a53ee1a8-2062-843f-254c-31c5cfebe593",
  "kind": "theorem",
  "lexical_name": "tutte_exists_isPerfectMatching_of_near_matchings",
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
  "slug": "tutte-exists-isperfectmatching-of-near-matchings--1db96367cc09a6f739b811e9",
  "source": {
    "blob": "5a38b5edd15c4705a22ded0e378e628b81e26f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1db96367cc09a6f739b811e9b23e00181f835dc6fe0abb18770eb8e6868ebf98",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a53ee1a8-2062-843f-254c-31c5cfebe593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tutte_exists_isPerfectMatching_of_near_matchings {x a b c : V}
    {M1 : Subgraph (G ⊔ edge x b)} {M2 : Subgraph (G ⊔ edge a c)} (hxa : G.Adj x a)
    (hab : G.Adj a b) (hnGxb : ¬G.Adj x b) (hnGac : ¬G.Adj a c) (hnxb : x ≠ b) (hnxc : x ≠ c)
    (hnac : a ≠ c) (hnbc : b ≠ c) (hM1 : M1.IsPerfectMatching) (hM2 : M2.IsPerfectMatching) :
    ∃ (M : Subgraph G), M.IsPerfectMatching := by
  classical
  -- If either matching does not contain their extra edge, we just use it as a perfect matching
  by_cases hM1xb : ¬M1.Adj x b
  · use G.toSubgraph M1.spanningCoe (M1.spanningCoe_sup_edge_le _ hM1xb)
    exact (Subgraph.IsPerfectMatching.toSubgraph_iff (M1.spanningCoe_sup_edge_le _ hM1xb)).mpr hM1
  by_cases hM2ac : ¬M2.Adj a c
  · use G.toSubgraph M2.spanningCoe (M2.spanningCoe_sup_edge_le _ hM2ac)
    exact (Subgraph.IsPerfectMatching.toSubgraph_iff (M2.spanningCoe_sup_edge_le _ hM2ac)).mpr hM2
  simp only [not_not] at hM1xb hM2ac
  -- Neither matching contains the edge that would make the other matching of G perfect
  have hM1nac : ¬M1.Adj a c := fun h ↦ by simpa [hnGac, edge_adj, hnac, hxa.ne, hnbc.symm, hab.ne]
    using h.adj_sub
  have hsupG : G ⊔ edge x b ⊔ (G ⊔ edge a c) = (G ⊔ edge a c) ⊔ edge x b := by grind
  -- We state conditions for our cycle that hold in all cases and show that this suffices
  suffices ∃ (G' : SimpleGraph V), G'.IsAlternating M2.spanningCoe ∧ G'.IsCycles ∧ ¬G'.Adj x b ∧
      G'.Adj a c ∧ G' ≤ G ⊔ edge a c by
    obtain ⟨G', hG', hG'cyc, hG'xb, hnG'ac, hle⟩ := this
    have : M2.spanningCoe ∆ G' ≤ G := by
      apply Disjoint.left_le_of_le_sup_right (symmDiff_le (le_sup_of_le_right M2.spanningCoe_le)
        (le_sup_of_le_right hle))
      simp [disjoint_edge, symmDiff_def, hM2ac, hnG'ac]
    use (G.toSubgraph (symmDiff M2.spanningCoe G') this)
    apply hM2.symmDiff_of_isAlternating hG' hG'cyc
  -- We consider the symmetric difference of the two matchings
  let cycles := M1.spanningCoe ∆ M2.spanningCoe
  have hcalt : cycles.IsAlternating M2.spanningCoe := hM1.isAlternating_symmDiff_right hM2
  have hcycles := Subgraph.IsPerfectMatching.symmDiff_isCycles hM1 hM2
  have hcac : cycles.Adj a c := by simp [cycles, symmDiff_def, hM2ac, hM1nac]
  have hM1sub := Subgraph.spanningCoe_le M1
  have hM2sub := Subgraph.spanningCoe_le M2
  -- We consider the cycle that contains the vertex `c`
  have induce_le : ((cycles.connectedComponentMk c).toSimpleGraph).spanningCoe ≤
      (G ⊔ edge a c) ⊔ edge x b := by
    refine le_trans (spanningCoe_induce_le cycles (cycles.connectedComponentMk c).supp) ?_
    simp only [← hsupG, cycles]
    exact le_trans (by apply symmDiff_le_sup) (sup_le_sup hM1sub hM2sub)
  -- If that cycle does not contain the vertex `x`, we use it as an alternating cycle
  by_cases! hxc : x ∉ (cycles.connectedComponentMk c).supp
  · use (cycles.connectedComponentMk c).toSimpleGraph.spanningCoe
    refine ⟨hcalt.mono (spanningCoe_induce_le cycles (cycles.connectedComponentMk c).supp), ?_⟩
    simp only [ConnectedComponent.adj_spanningCoe_toSimpleGraph, hxc, hcac, false_and,
      not_false_eq_true, ConnectedComponent.mem_supp_iff, ConnectedComponent.eq, and_true,
      true_and, hcac.reachable]
    refine ⟨hcycles.toSimpleGraph (cycles.connectedComponentMk c),
      Disjoint.left_le_of_le_sup_right induce_le ?_⟩
    rw [disjoint_edge]
    rw [ConnectedComponent.adj_spanningCoe_toSimpleGraph]
    simp_all
  have hacc := ((cycles.connectedComponentMk c).mem_supp_congr_adj hcac.symm).mp rfl
  have (G : SimpleGraph V) : LocallyFinite G := fun _ ↦ Fintype.ofFinite _
  have hnM2 (x' : V) (h : x' ≠ c) : ¬ M2.Adj x' a := by
    rw [M2.adj_comm]
    exact hM2.1.not_adj_left_of_ne h.symm hM2ac
  -- Else we construct a path that contain the edge `a c`, but not the edge `x b`
  obtain ⟨x', hx', p, hp, hpac, hnpxb⟩ :
      ∃ x' ∈ ({x, b} : Finset V), ∃ (p : cycles.Walk a x'), p.IsPath ∧
        p.toSubgraph.Adj a c ∧ ¬p.toSubgraph.Adj x b := by
    obtain ⟨p, hp⟩ := hcycles.exists_cycle_toSubgraph_verts_eq_connectedComponentSupp hacc
      ⟨_, hcac⟩
    obtain ⟨p', hp'⟩ := hp.1.exists_isCycle_snd_verts_eq (by
      rwa [hp.1.adj_toSubgraph_iff_of_isCycles hcycles (hp.2 ▸ hacc)])
    obtain ⟨x', hx', hx'p, htw⟩ := Walk.exists_mem_support_forall_mem_support_imp_eq {x, b} <| by
      use x
      simp only [Finset.mem_filter, Finset.mem_insert, Finset.mem_singleton, true_or, true_and]
      rwa [← @Walk.mem_verts_toSubgraph, hp'.2.2, hp.2]
    refine ⟨x', hx', p'.takeUntil x' hx'p, hp'.1.isPath_takeUntil hx'p, ?_, fun h ↦ ?_⟩; swap
    · simp [htw _ (by simp) (Walk.mem_support_of_adj_toSubgraph h.symm),
        htw _ (by simp) (Walk.mem_support_of_adj_toSubgraph h)] at hnxb
    have : (p'.takeUntil x' hx'p).toSubgraph.Adj a (p'.takeUntil x' hx'p).snd := by
      apply Walk.toSubgraph_adj_snd
      rw [Walk.nil_takeUntil]
      grind
    rwa [Walk.snd_takeUntil, hp'.2.1] at this
    simp only [Finset.mem_insert, Finset.mem_singleton] at hx'
    obtain rfl | rfl := hx'
    exacts [hxa.ne, hab.ne.symm]
  -- We show this path satisfies all requirements
  have hle : p.toSubgraph.spanningCoe ≤ G ⊔ edge a c := by
    rw [← sdiff_edge _ (by simpa : ¬p.toSubgraph.spanningCoe.Adj x b), sdiff_le_iff']
    intro v w hvw
    apply hsupG ▸ sup_le_sup hM1sub hM2sub
    have := p.toSubgraph.spanningCoe_le hvw
    simp only [cycles, symmDiff_def] at this
    aesop
  -- Helper condition to show that `p` ends with an edge in `M2`
  have aux {x' : V} (hx' : x' ∈ ({x, b} : Set V)) (c' : V) (hc : c' ≠ a)
      (hadj : p.toSubgraph.Adj c' x') : M2.Adj c' x' := by
    refine (hadj.adj_sub.resolve_left fun hl ↦ hnpxb ?_).1
    obtain ⟨w, -, hw⟩ := hM1.1 (hM1.2 x')
    obtain rfl | rfl := hx'
    · rw [hw _ hM1xb, ← hw _ hl.1.symm]
      exact hadj.symm
    · rw [hw _ hM1xb.symm, ← hw _ hl.1.symm]
      exact hadj
  simp only [Finset.mem_insert, Finset.mem_singleton] at hx'
  obtain rfl | rfl := hx'
  · exact tutte_exists_isAlternating_isCycles p hp hcalt (hnM2 x' hnxc) hpac hnpxb hM2ac
      hxa hnxc hab.ne hle (aux (by simp))
  · conv =>
      enter [1, G', 2, 2, 1, 1]
      rw [adj_comm]
    rw [Subgraph.adj_comm] at hnpxb
    exact tutte_exists_isAlternating_isCycles p hp hcalt (hnM2 _ hnbc) hpac hnpxb hM2ac
      hab.symm hnbc hxa.ne.symm hle (aux (by simp))

set_option backward.isDefEq.respectTransparency.types false in
/-- From a graph on an even number of vertices with no perfect matching, we can remove an odd number
of vertices such that there are more odd components in the resulting graph than vertices we removed.

This is the sufficiency side of Tutte's theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a38b5edd15c4705a22ded0e378e628b81e26f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
