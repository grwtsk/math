# IsCycles.exists_cycle_toSubgraph_verts_eq_connectedComponentSupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79c5a902051d10d1a54cbdb07606e080c6fefa8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 504,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9253075e80a5aba74a73cdc30ad3e4e0089cc5547fbb33c4fbd15ebbb62ae0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72df91ff-898a-4d67-f8b5-08e3ab9b97c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54f53e55-6f4e-06ff-6f04-1068ba1183b2",
  "kind": "lemma",
  "lexical_name": "IsCycles.exists_cycle_toSubgraph_verts_eq_connectedComponentSupp",
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
  "slug": "iscycles-exists-cycle-tosubgraph-verts-eq-connectedcomponentsupp--65c00412d68a553a82ebcc81",
  "source": {
    "blob": "79c5a902051d10d1a54cbdb07606e080c6fefa8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 504,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant9253075e80a5aba74a73cdc30ad3e4e0089cc5547fbb33c4fbd15ebbb62ae0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65c00412d68a553a82ebcc81a2f8f935fb7052ed9ce84567408c5c67a1c22db9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant9253075e80a5aba74a73cdc30ad3e4e0089cc5547fbb33c4fbd15ebbb62ae0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54f53e55-6f4e-06ff-6f04-1068ba1183b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCycles.exists_cycle_toSubgraph_verts_eq_connectedComponentSupp [Finite V]
    {c : G.ConnectedComponent} (h : G.IsCycles) (hv : v ∈ c.supp)
    (hn : (G.neighborSet v).Nonempty) :
    ∃ (p : G.Walk v v), p.IsCycle ∧ p.toSubgraph.verts = c.supp := by
  classical
  obtain ⟨w, hw⟩ := hn
  obtain ⟨u, p, hp⟩ := SimpleGraph.adj_and_reachable_delete_edges_iff_exists_cycle.mp
    ⟨hw, h.reachable_deleteEdges hw⟩
  have hvp : v ∈ p.support := SimpleGraph.Walk.fst_mem_support_of_mem_edges _ hp.2
  have : p.toSubgraph.verts = c.supp := by
    obtain ⟨c', hc'⟩ := p.toSubgraph_connected.exists_verts_eq_connectedComponentSupp (by
      intro v hv w hadj
      refine (Subgraph.adj_iff_of_neighborSet_equiv ?_ (Set.toFinite _)).mpr hadj
      have : (G.neighborSet v).Nonempty := by
        rw [Walk.mem_verts_toSubgraph] at hv
        refine (Set.nonempty_of_ncard_ne_zero ?_).mono (p.toSubgraph.neighborSet_subset v)
        rw [hp.1.ncard_neighborSet_toSubgraph_eq_two hv]
        omega
      refine @Classical.ofNonempty _ ?_
      rw [← Cardinal.eq, ← Set.cast_ncard (Set.toFinite _), ← Set.cast_ncard (Set.toFinite _),
        h this, hp.1.ncard_neighborSet_toSubgraph_eq_two (p.mem_verts_toSubgraph.mp hv)])
    rw [hc']
    have : v ∈ c'.supp := by
      rw [← hc', Walk.mem_verts_toSubgraph]
      exact hvp
    simp_all
  use p.rotate hvp
  rw [← this]
  exact ⟨hp.1.rotate _, by simp_all⟩

/--
A graph `G` is alternating with respect to some other graph `G'`, if exactly every other edge in
`G` is in `G'`. Note that the degree of each vertex needs to be at most 2 for this to be
possible. This property is used to create new matchings using `symmDiff`.
The definition of `symmDiff` that makes sense is the one for `SimpleGraph`. The `symmDiff`
for `SimpleGraph.Subgraph` deriving from the lattice structure also affects the vertices included,
which we do not want in this case. This is why this property, just like `IsCycles`, is defined
for `SimpleGraph` rather than `SimpleGraph.Subgraph`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant9253075e80a5aba74a73cdc30ad3e4e0089cc5547fbb33c4fbd15ebbb62ae0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant9253075e80a5aba74a73cdc30ad3e4e0089cc5547fbb33c4fbd15ebbb62ae0ac.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79c5a902051d10d1a54cbdb07606e080c6fefa8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
