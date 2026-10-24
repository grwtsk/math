# exists_isTutteViolator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d09d407176ff4701bac47e5494a1f302a79862b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fa5ab27-af07-fa45-b1ae-620c667371b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b91478a-e70a-2968-316e-462e4574afa3",
  "kind": "lemma",
  "lexical_name": "exists_isTutteViolator",
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
  "slug": "exists-istutteviolator--b7faae87379a755236cf59c2",
  "source": {
    "blob": "d09d407176ff4701bac47e5494a1f302a79862b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 269,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7faae87379a755236cf59c222ef292b7f01594226e8f460e8b212c215a0bc91",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b91478a-e70a-2968-316e-462e4574afa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isTutteViolator (h : ∀ (M : G.Subgraph), ¬M.IsPerfectMatching)
    (hvEven : Even (Nat.card V)) :
    ∃ u, G.IsTutteViolator u := by
  classical
  cases nonempty_fintype V
  -- It suffices to consider the edge-maximal case
  obtain ⟨Gmax, hSubgraph, hMatchingFree, hMaximal⟩ := exists_maximal_isMatchingFree h
  refine ⟨Gmax.universalVerts, .mono hSubgraph ?_⟩
  by_contra! hc
  simp only [IsTutteViolator, Set.ncard_eq_toFinset_card', Set.toFinset_card] at hc
  by_cases h' : ∀ (K : ConnectedComponent Gmax.deleteUniversalVerts.coe),
      Gmax.deleteUniversalVerts.coe.IsClique K.supp
  · -- Deleting universal vertices splits the graph into cliques
    rw [Fintype.card_eq_nat_card] at hc
    simp_rw [Fintype.card_eq_nat_card, Set.Nat.card_coe_set_eq] at hc
    push_neg at hc
    obtain ⟨M, hM⟩ := Subgraph.IsPerfectMatching.exists_of_isClique_supp hvEven
      (by simpa [IsTutteViolator] using hc) h'
    exact hMatchingFree M hM
  · -- Deleting universal vertices does not result in only cliques
    push_neg at h'
    obtain ⟨K, hK⟩ := h'
    obtain ⟨x, y, hxy⟩ := (not_isClique_iff _).mp hK
    obtain ⟨p , hp⟩ := Reachable.exists_path_of_dist (K.connected_induce_supp x y)
    obtain ⟨x, a, b, hxa, hxb, hnadjxb, hnxb⟩ := Walk.exists_adj_adj_not_adj_ne hp.2
      (p.reachable.one_lt_dist_of_ne_of_not_adj hxy.1 hxy.2)
    simp only [deleteUniversalVerts, universalVerts, ne_eq, Subgraph.induce_verts,
      Subgraph.verts_top, comap_adj, Function.Embedding.coe_subtype, Subgraph.coe_adj,
      Subgraph.induce_adj, Subtype.coe_prop, Subgraph.top_adj, true_and] at hxa hxb hnadjxb
    obtain ⟨c, hc⟩ : ∃ (c : V), (a : V) ≠ c ∧ ¬ Gmax.Adj c a := by
      simpa [universalVerts] using a.1.2.2
    have hbnec : b.val.val ≠ c := by rintro rfl; exact hc.2 hxb.symm
    obtain ⟨_, hG1⟩ := hMaximal _ <| left_lt_sup.mpr (by
      rw [edge_le_iff (v := x.1.1) (w := b.1.1)]
      simp [not_and, hnxb, hnadjxb, Subtype.val_injective.ne <| Subtype.val_injective.ne hnxb])
    obtain ⟨_, hG2⟩ := hMaximal _ <| left_lt_sup.mpr (by
      rwa [edge_le_iff (v := a.1.1) (w := c), adj_comm, not_or])
    have hcnex : c ≠ x.val.val := by rintro rfl; exact hc.2 hxa
    obtain ⟨Mcon, hMcon⟩ := tutte_exists_isPerfectMatching_of_near_matchings hxa
      hxb hnadjxb (fun hadj ↦ hc.2 hadj.symm) (by aesop) hcnex.symm hc.1 hbnec hG1 hG2
    exact hMatchingFree Mcon hMcon

/-- **Tutte's theorem**

A graph has a perfect matching if and only if: For every subset `u` of vertices, removing this
subset induces at most `u.ncard` components of odd size. This is formally stated using the
predicate `IsTutteViolator`, which is satisfied exactly when this condition does not hold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d09d407176ff4701bac47e5494a1f302a79862b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
