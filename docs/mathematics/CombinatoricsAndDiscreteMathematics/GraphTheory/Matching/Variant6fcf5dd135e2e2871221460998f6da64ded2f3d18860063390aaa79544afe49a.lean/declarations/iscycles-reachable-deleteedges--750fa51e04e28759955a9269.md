# IsCycles.reachable_deleteEdges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fea91fa1-3694-720f-3c3f-8c2026dfd6bd",
  "kind": "lemma",
  "lexical_name": "IsCycles.reachable_deleteEdges",
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
  "slug": "iscycles-reachable-deleteedges--750fa51e04e28759955a9269",
  "source": {
    "blob": "35cff9f57255083c87a7ba8a712d87e26aaf0c7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 524,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant6fcf5dd135e2e2871221460998f6da64ded2f3d18860063390aaa79544afe49a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:750fa51e04e28759955a926968eee9ae5d7cf25768b28cb4b1cd85266b532b77",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant6fcf5dd135e2e2871221460998f6da64ded2f3d18860063390aaa79544afe49a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fea91fa1-3694-720f-3c3f-8c2026dfd6bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCycles.reachable_deleteEdges [Finite V] (hadj : G.Adj v w)
    (hcyc : G.IsCycles) : (G.deleteEdges {s(v, w)}).Reachable v w := by
  have : fromEdgeSet {s(v, w)} = hadj.toWalk.toSubgraph.spanningCoe := by
    simp only [Walk.toSubgraph, singletonSubgraph_le_iff, subgraphOfAdj_verts, Set.mem_insert_iff,
      Set.mem_singleton_iff, or_true, sup_of_le_left]
    exact (Subgraph.spanningCoe_subgraphOfAdj hadj).symm
  rw [show G.deleteEdges {s(v, w)} = G \ fromEdgeSet {s(v, w)} by rfl]
  exact this ▸ (hcyc.reachable_sdiff_toSubgraph_spanningCoe hadj.toWalk
    (Walk.IsPath.of_adj hadj)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant6fcf5dd135e2e2871221460998f6da64ded2f3d18860063390aaa79544afe49a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant6fcf5dd135e2e2871221460998f6da64ded2f3d18860063390aaa79544afe49a.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35cff9f57255083c87a7ba8a712d87e26aaf0c7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
