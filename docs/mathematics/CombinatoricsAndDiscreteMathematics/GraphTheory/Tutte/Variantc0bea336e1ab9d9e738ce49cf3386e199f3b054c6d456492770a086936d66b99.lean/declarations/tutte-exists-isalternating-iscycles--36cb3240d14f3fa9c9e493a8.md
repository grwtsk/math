# tutte_exists_isAlternating_isCycles

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
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81171079-7d9c-83cb-b85d-4f9814284cff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf9e94e0-ef0a-6d98-6526-57c9aa77e080",
  "kind": "lemma",
  "lexical_name": "tutte_exists_isAlternating_isCycles",
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
  "slug": "tutte-exists-isalternating-iscycles--36cb3240d14f3fa9c9e493a8",
  "source": {
    "blob": "5a38b5edd15c4705a22ded0e378e628b81e26f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36cb3240d14f3fa9c9e493a84a97d3dc0ed436733a1183e4fc1ee7575648d951",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf9e94e0-ef0a-6d98-6526-57c9aa77e080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tutte_exists_isAlternating_isCycles {x b a c : V} {M : Subgraph (G ⊔ edge a c)}
    (p : G'.Walk a x) (hp : p.IsPath) (hcalt : G'.IsAlternating M.spanningCoe)
    (hM2nadj : ¬M.Adj x a) (hpac : p.toSubgraph.Adj a c) (hnpxb : ¬p.toSubgraph.Adj x b)
    (hM2ac : M.Adj a c) (hgadj : G.Adj x a) (hnxc : x ≠ c) (hnab : a ≠ b)
    (hle : p.toSubgraph.spanningCoe ≤ G ⊔ edge a c)
    (aux : (c' : V) → c' ≠ a → p.toSubgraph.Adj c' x → M.Adj c' x) :
    ∃ G', G'.IsAlternating M.spanningCoe ∧ G'.IsCycles ∧
      ¬ G'.Adj x b ∧ G'.Adj a c ∧ G' ≤ G ⊔ edge a c := by
  refine ⟨p.toSubgraph.spanningCoe ⊔ edge x a, (hcalt.spanningCoe p.toSubgraph).sup_edge (by simpa)
    (fun u' hu'x hadj ↦ ?_) aux, ?_, ?_, by aesop, sup_le_iff.mpr ⟨hle, fun v w hvw ↦ ?_⟩⟩
  · simpa [← hp.snd_of_toSubgraph_adj hadj, hp.snd_of_toSubgraph_adj hpac]
  · refine hp.isCycles_spanningCoe_toSubgraph_sup_edge hgadj.ne.symm fun hadj ↦ ?_
    rw [← Walk.mem_edges_toSubgraph, Subgraph.mem_edgeSet] at hadj
    simp [← hp.snd_of_toSubgraph_adj hadj.symm, hp.snd_of_toSubgraph_adj hpac] at hnxc
  · simp +contextual [hnpxb, edge_adj, hnab.symm]
  · simpa [edge_adj, adj_congr_of_sym2 _ ((adj_edge _ _).mp hvw).1.symm] using .inl hgadj

variable [Finite V]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a38b5edd15c4705a22ded0e378e628b81e26f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
