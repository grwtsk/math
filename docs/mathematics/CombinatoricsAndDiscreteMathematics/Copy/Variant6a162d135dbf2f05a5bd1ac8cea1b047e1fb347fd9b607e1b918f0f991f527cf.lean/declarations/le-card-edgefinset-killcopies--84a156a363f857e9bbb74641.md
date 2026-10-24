# le_card_edgeFinset_killCopies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbe9cfb3-c022-b648-707e-245c41f4b9ac",
  "kind": "lemma",
  "lexical_name": "le_card_edgeFinset_killCopies",
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
  "slug": "le-card-edgefinset-killcopies--84a156a363f857e9bbb74641",
  "source": {
    "blob": "7a9fa3180b6d5008592a34210c71c77755024b46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 569,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84a156a363f857e9bbb74641e56af8dfc974a895a0a24a2a1ec863982962937b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbe9cfb3-c022-b648-707e-245c41f4b9ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_card_edgeFinset_killCopies [Fintype V] :
    #G.edgeFinset - G.copyCount H ≤ #(G.killCopies H).edgeFinset := by
  classical
  obtain rfl | hH := eq_or_ne H ⊥
  · simp
  let f (G' : {G' : G.Subgraph // Nonempty (H ≃g G'.coe)}) := (aux hH G'.2).some
  calc
    _ = #G.edgeFinset - card {G' : G.Subgraph // Nonempty (H ≃g G'.coe)} := ?_
    _ ≤ #G.edgeFinset - #(univ.image f) := Nat.sub_le_sub_left card_image_le _
    _ = #G.edgeFinset - #(Set.range f).toFinset := by rw [Set.toFinset_range]
    _ ≤ #(G.edgeFinset \ (Set.range f).toFinset) := le_card_sdiff ..
    _ = #(G.killCopies H).edgeFinset := ?_
  · simp only [Set.toFinset_card]
    rw [← Set.toFinset_card, ← edgeFinset, copyCount, ← card_subtype, subtype_univ, card_univ]
  simp only [killCopies_of_ne_bot, hH, Ne, not_false_iff, Set.iUnion_singleton_eq_range,
    Set.toFinset_card, Fintype.card_ofFinset, edgeSet_deleteEdges]
  simp only [Finset.sdiff_eq_inter_compl, Set.diff_eq, ← Set.iUnion_singleton_eq_range, coe_sdiff,
    Set.coe_toFinset, coe_filter, Set.sep_mem_eq, Set.iUnion_subtype, ← Fintype.card_coe,
    ← Finset.coe_sort_coe, coe_inter, coe_compl, Set.coe_toFinset, Set.compl_iUnion,
    Fintype.card_ofFinset, f]

/-- Removing an edge from `H` for each subgraph isomorphic to `G` means that the number of edges
we've removed is at most the number of copies of `G` in `H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9fa3180b6d5008592a34210c71c77755024b46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
