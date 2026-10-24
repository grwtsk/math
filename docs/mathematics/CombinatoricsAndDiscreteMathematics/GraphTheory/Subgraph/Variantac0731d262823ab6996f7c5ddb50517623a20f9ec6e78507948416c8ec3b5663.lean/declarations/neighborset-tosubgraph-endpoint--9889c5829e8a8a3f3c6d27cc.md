# neighborSet_toSubgraph_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19ffc80dc494ae5c89f9ef5cf63cbdc2693c442b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8b183c0-5e86-cc51-e61f-f68c3474628a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14dfa962-b5b3-8b9c-dd03-836a0b7d2888",
  "kind": "lemma",
  "lexical_name": "neighborSet_toSubgraph_endpoint",
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
  "slug": "neighborset-tosubgraph-endpoint--9889c5829e8a8a3f3c6d27cc",
  "source": {
    "blob": "19ffc80dc494ae5c89f9ef5cf63cbdc2693c442b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 339,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9889c5829e8a8a3f3c6d27cc0413488f5dd5679eb469ead0a7bc7d836e597afb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14dfa962-b5b3-8b9c-dd03-836a0b7d2888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma neighborSet_toSubgraph_endpoint {u} {p : G.Walk u u} (hpc : p.IsCycle) :
    p.toSubgraph.neighborSet u = {p.snd, p.penultimate} := by
  have hadj1 := p.toSubgraph_adj_snd hpc.not_nil
  have hadj2 := (p.toSubgraph_adj_penultimate hpc.not_nil).symm
  ext v
  simp_all only [Subgraph.mem_neighborSet, Set.mem_insert_iff, Set.mem_singleton_iff,
    SimpleGraph.Walk.toSubgraph_adj_iff, Sym2.eq, Sym2.rel_iff', Prod.mk.injEq, Prod.swap_prod_mk]
  refine ⟨?_, by aesop⟩
  rintro ⟨i, hl | hr⟩
  · rw [hpc.getVert_endpoint_iff (by omega)] at hl
    cases hl.1 <;> aesop
  · rcases (hpc.getVert_endpoint_iff (by omega)).mp hr.2 with h1 | h2
    · contradiction
    · simp only [penultimate, ← h2, add_tsub_cancel_right]
      aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19ffc80dc494ae5c89f9ef5cf63cbdc2693c442b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
