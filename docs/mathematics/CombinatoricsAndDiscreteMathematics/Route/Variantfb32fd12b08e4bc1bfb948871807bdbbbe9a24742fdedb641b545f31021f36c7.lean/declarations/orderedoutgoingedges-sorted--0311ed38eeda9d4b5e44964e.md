# orderedOutgoingEdges_sorted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c12d6ecc394bd70f1c512552be0886224107d68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db9d5046-fffe-6e1f-3b85-dfb9191ceee0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70186b48-0056-207f-e2a1-24bddcfdab7f",
  "kind": "theorem",
  "lexical_name": "orderedOutgoingEdges_sorted",
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
  "slug": "orderedoutgoingedges-sorted--0311ed38eeda9d4b5e44964e",
  "source": {
    "blob": "0c12d6ecc394bd70f1c512552be0886224107d68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 329,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0311ed38eeda9d4b5e44964ebae6b14a0c34cd66478e3ef49064737d93666b12",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70186b48-0056-207f-e2a1-24bddcfdab7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderedOutgoingEdges_sorted
    (contract : RoutingContract Host EdgeId) (host : Host) :
    (contract.orderedOutgoingEdges host).Pairwise
      (fun left right ↦
        EdgeKey.LE (contract.edgeKey left) (contract.edgeKey right)) := by
  unfold orderedOutgoingEdges outgoingEdges
  have canonicalPairwise := (Finset.pairwise_sort (s := contract.edges)
    (r := contract.canonicalEdgeLE)).filter
      (fun edge ↦ decide (edge.source = host))
  apply canonicalPairwise.imp_of_mem
  intro left right leftMember rightMember ordered
  have sameSource : left.source = right.source := by
    exact (of_decide_eq_true (List.mem_filter.mp leftMember).2).trans
      (of_decide_eq_true (List.mem_filter.mp rightMember).2).symm
  unfold canonicalEdgeLE canonicalEdgeLexValue at ordered
  unfold EdgeKey.LE EdgeKey.lexValue edgeKey
  simp only [Prod.Lex.toLex_le_toLex, sameSource, lt_self_iff_false,
    false_or, true_and] at ordered ⊢
  grind

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c12d6ecc394bd70f1c512552be0886224107d68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
