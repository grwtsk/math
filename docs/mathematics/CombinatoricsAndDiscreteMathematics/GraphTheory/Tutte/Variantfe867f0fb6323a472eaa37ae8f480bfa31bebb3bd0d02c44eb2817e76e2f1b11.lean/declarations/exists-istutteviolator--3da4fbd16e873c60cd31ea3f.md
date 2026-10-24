# exists_isTutteViolator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08dd3064-cf33-e712-4c4f-497587465563",
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
  "slug": "exists-istutteviolator--3da4fbd16e873c60cd31ea3f",
  "source": {
    "blob": "179c143888869dcba807b277c2f36b27ef736769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 280,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3da4fbd16e873c60cd31ea3f5299c04b480d8b994daf59f5460412f60994b8b8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08dd3064-cf33-e712-4c4f-497587465563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–326.

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
  by_cases! h' : ∀ (K : ConnectedComponent Gmax.deleteUniversalVerts.coe),
      Gmax.deleteUniversalVerts.coe.IsClique K.supp
  · -- Deleting universal vertices splits the graph into cliques
    rw [Fintype.card_eq_nat_card] at hc
    simp_rw [Fintype.card_eq_nat_card, Nat.card_coe_set_eq] at hc
    push Not at hc
    obtain ⟨M, hM⟩ := Subgraph.IsPerfectMatching.exists_of_isClique_supp hvEven
      (by simpa [IsTutteViolator] using hc) h'
    exact hMatchingFree M hM
  · -- Deleting universal vertices does not result in only cliques
    obtain ⟨K, hK⟩ := h'
    obtain ⟨x, y, hxy⟩ := (not_isClique_iff _).mp hK
    obtain ⟨p, hp⟩ := Reachable.exists_path_of_dist (K.connected_toSimpleGraph x y)
    obtain ⟨x, a, b, hxa, hxb, hnadjxb, hnxb⟩ := Walk.exists_adj_adj_not_adj_ne hp.2
      (p.reachable.one_lt_dist_of_ne_of_not_adj hxy.1 hxy.2)
    simp only [ConnectedComponent.toSimpleGraph, deleteUniversalVerts, universalVerts,
      Subgraph.verts_top, comap_adj, Function.Embedding.coe_subtype,
      Subgraph.coe_adj, Subgraph.induce_adj, Subtype.coe_prop, Subgraph.top_adj, true_and]
      at hxa hxb hnadjxb
    obtain ⟨c, hc⟩ : ∃ (c : V), (a : V) ≠ c ∧ ¬ Gmax.Adj a c := by
      simpa [universalVerts, IsUniversal] using a.1.2.2
    have hbnec : b.val.val ≠ c := by rintro rfl; exact hc.2 hxb
    obtain ⟨_, hG1⟩ := hMaximal _ <| left_lt_sup.mpr (by
      rw [edge_le_iff (v := x.1.1) (w := b.1.1)]
      simp [hnadjxb, Subtype.val_injective.ne <| Subtype.val_injective.ne hnxb])
    obtain ⟨_, hG2⟩ := hMaximal _ <| left_lt_sup.mpr (by
      rwa [edge_le_iff (v := a.1.1) (w := c), not_or])
    have hcnex : x.val.val ≠ c := by rintro rfl; exact hc.2 hxa.symm
    obtain ⟨Mcon, hMcon⟩ := tutte_exists_isPerfectMatching_of_near_matchings hxa
      hxb hnadjxb (fun hadj ↦ hc.2 hadj) (by lia) hcnex hc.1 hbnec hG1 hG2
    exact hMatchingFree Mcon hMcon

/-- **Tutte's theorem**

A graph has a perfect matching if and only if: For every subset `u` of vertices, removing this
subset induces at most `u.ncard` components of odd size. This is formally stated using the
predicate `IsTutteViolator`, which is satisfied exactly when this condition does not hold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179c143888869dcba807b277c2f36b27ef736769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
