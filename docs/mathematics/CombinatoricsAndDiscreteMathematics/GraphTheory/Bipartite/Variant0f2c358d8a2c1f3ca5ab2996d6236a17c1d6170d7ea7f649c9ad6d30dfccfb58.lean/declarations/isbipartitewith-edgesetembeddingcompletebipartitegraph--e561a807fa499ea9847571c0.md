# IsBipartiteWith.edgeSetEmbeddingCompleteBipartiteGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c66586a8e802676ba80e0b134830036dcc9b006ba00c028eea25ad46c5fe47a",
  "kind": "def",
  "lexical_name": "IsBipartiteWith.edgeSetEmbeddingCompleteBipartiteGraph",
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
  "slug": "isbipartitewith-edgesetembeddingcompletebipartitegraph--e561a807fa499ea9847571c0",
  "source": {
    "blob": "fbf216e964a59127e6a1b2c1a91c80ce906d8f40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 508,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e561a807fa499ea9847571c0ce7498c8c2acb03d6e90fa545bb96a39c1fab97e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c66586a8e802676ba80e0b134830036dcc9b006ba00c028eea25ad46c5fe47a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsBipartiteWith.edgeSetEmbeddingCompleteBipartiteGraph [DecidableRel (· ∈ · : V → Set V → _)]
    (hG : G.IsBipartiteWith s t) : G.edgeSet ↪ (completeBipartiteGraph s t).edgeSet where
  toFun := fun ⟨e, he⟩ ↦
    e.fromRelNdrec he (sym := G.symm) (fun u v h ↦ hG.mem_of_adj h |>.by_cases
      (fun h ↦ ⟨s(.inl ⟨u, h.left⟩, .inr ⟨v, h.right⟩), .inl ⟨rfl, rfl⟩⟩)
      (fun h ↦ ⟨s(.inl ⟨v, h.right⟩, .inr ⟨u, h.left⟩), .inl ⟨rfl, rfl⟩⟩)
    ) <| by grind [Or.by_cases, hG.disjoint]
  inj' := by
    rintro ⟨⟨⟩⟩ ⟨⟨⟩⟩
    change (dite ..) = (dite ..) → _
    grind

end completeBipartiteGraph

section

/-- The cardinality of the edge set of a bipartite graph is upper bounded by the product
of the cardinality of the two partitions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf216e964a59127e6a1b2c1a91c80ce906d8f40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
