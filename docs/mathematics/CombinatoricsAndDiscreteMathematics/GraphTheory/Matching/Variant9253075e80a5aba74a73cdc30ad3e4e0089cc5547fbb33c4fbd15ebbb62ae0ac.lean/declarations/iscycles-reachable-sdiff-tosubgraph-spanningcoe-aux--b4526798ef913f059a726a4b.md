# IsCycles.reachable_sdiff_toSubgraph_spanningCoe_aux

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
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9253075e80a5aba74a73cdc30ad3e4e0089cc5547fbb33c4fbd15ebbb62ae0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91fc91eb-7439-feb3-5aac-d67b82e8d9f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2704a91d-050a-d42a-c8d4-d14a43e48a23",
  "kind": "lemma",
  "lexical_name": "IsCycles.reachable_sdiff_toSubgraph_spanningCoe_aux",
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
  "slug": "iscycles-reachable-sdiff-tosubgraph-spanningcoe-aux--b4526798ef913f059a726a4b",
  "source": {
    "blob": "79c5a902051d10d1a54cbdb07606e080c6fefa8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 447,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant9253075e80a5aba74a73cdc30ad3e4e0089cc5547fbb33c4fbd15ebbb62ae0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4526798ef913f059a726a4b98b16288a9b3fdbe81bfa926562cf6ff51757780",
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

Occurrence: `result:2704a91d-050a-d42a-c8d4-d14a43e48a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma IsCycles.reachable_sdiff_toSubgraph_spanningCoe_aux [Fintype V] {v w : V}
    (hcyc : G.IsCycles) (p : G.Walk v w) (hp : p.IsPath) :
    (G \ p.toSubgraph.spanningCoe).Reachable w v := by
  classical
  -- Consider the case when p is nil
  by_cases hvw : v = w
  · subst hvw
    use .nil
  have hpn : ¬p.Nil := Walk.not_nil_of_ne hvw
  obtain ⟨w', ⟨hw'1, hw'2⟩, hwu⟩ := hcyc.existsUnique_ne_adj
    (p.toSubgraph_adj_snd hpn).adj_sub
  -- The edge (v, w) can't be in p, because then it would be the second node
  have hnpvw' : ¬ p.toSubgraph.Adj v w' := by
    intro h
    exact hw'1 (hp.snd_of_toSubgraph_adj h)
  -- If w = w', then then the reachability can be proved with just one edge
  by_cases hww' : w = w'
  · subst hww'
    have : (G \  p.toSubgraph.spanningCoe).Adj w v := by
      simp only [sdiff_adj, Subgraph.spanningCoe_adj]
      exact ⟨hw'2.symm, fun h ↦ hnpvw' h.symm⟩
    exact this.reachable
  -- Construct the walk needed recursively by extending p
  have hle : (G \ (p.cons hw'2.symm).toSubgraph.spanningCoe) ≤ (G \ p.toSubgraph.spanningCoe) := by
    apply sdiff_le_sdiff (by rfl) ?hcd
    aesop
  have hp'p : (p.cons hw'2.symm).IsPath := by
    rw [Walk.cons_isPath_iff]
    refine ⟨hp, fun hw' ↦ ?_⟩
    exact hw'1 (hcyc.snd_of_mem_support_of_isPath_of_adj _ hww' hw' hp hw'2)
  have : (G \ p.toSubgraph.spanningCoe).Adj w' v := by
    simp only [sdiff_adj, Subgraph.spanningCoe_adj]
    refine ⟨hw'2.symm, fun h ↦ ?_⟩
    exact hnpvw' h.symm
  use (((hcyc.reachable_sdiff_toSubgraph_spanningCoe_aux
    (p.cons hw'2.symm) hp'p).some).mapLe hle).append this.toWalk
termination_by Fintype.card V + 1 - p.length
decreasing_by
  simp_wf
  have := Walk.IsPath.length_lt hp
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant9253075e80a5aba74a73cdc30ad3e4e0089cc5547fbb33c4fbd15ebbb62ae0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant9253075e80a5aba74a73cdc30ad3e4e0089cc5547fbb33c4fbd15ebbb62ae0ac.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79c5a902051d10d1a54cbdb07606e080c6fefa8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
