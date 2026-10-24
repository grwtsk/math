# neighborSet_toSubgraph_internal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2df490050c69136b472eb58a5b51c08ea03e0a71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c82c7378-bf8c-4682-df14-72c27ccff295",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a75a923-2835-556b-eb4d-f821bd7b3cfa",
  "kind": "lemma",
  "lexical_name": "neighborSet_toSubgraph_internal",
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
  "slug": "neighborset-tosubgraph-internal--4676f578c37e2ee9226511b1",
  "source": {
    "blob": "2df490050c69136b472eb58a5b51c08ea03e0a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 420,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4676f578c37e2ee9226511b1299f0c7603f8ce54b9c7869260e5cdd22af42a3b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a75a923-2835-556b-eb4d-f821bd7b3cfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma neighborSet_toSubgraph_internal {u} {i : ℕ} {p : G.Walk u u} (hpc : p.IsCycle)
    (h : i ≠ 0) (h' : i < p.length) :
    p.toSubgraph.neighborSet (p.getVert i) = {p.getVert (i - 1), p.getVert (i + 1)} := by
  have hadj1 := ((show i - 1 + 1 = i by lia) ▸
    p.toSubgraph_adj_getVert (by lia : (i - 1) < p.length)).symm
  ext v
  simp_all only [ne_eq, Subgraph.mem_neighborSet, Set.mem_insert_iff, Set.mem_singleton_iff,
    SimpleGraph.Walk.toSubgraph_adj_iff, Sym2.eq, Sym2.rel_iff', Prod.mk.injEq,
    Prod.swap_prod_mk]
  refine ⟨?_, by aesop⟩
  rintro ⟨i', ⟨hl1, hl2⟩ | ⟨hr1, hr2⟩⟩
  · apply hpc.getVert_injOn' (by rw [Set.mem_ofPred_eq]; lia)
      (by rw [Set.mem_ofPred_eq]; lia) at hl1
    simp_all
  · apply hpc.getVert_injOn (by rw [Set.mem_ofPred_eq]; lia)
      (by rw [Set.mem_ofPred_eq]; lia) at hr2
    aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2df490050c69136b472eb58a5b51c08ea03e0a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
