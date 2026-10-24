# IsSubgraph.not_isInducedSubgraph_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ede22de8653477081bd8b38a9c0fdb7facc1fb6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11b4f8d73e1214a8746f2b763aac3cc22d4fe29d672aaf72ef8fa123c6d2bbce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03116411-25e0-68cc-ebba-7a185d0123b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e72d3f32-6065-1571-a025-2912808f85ef",
  "kind": "lemma",
  "lexical_name": "IsSubgraph.not_isInducedSubgraph_iff",
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
  "slug": "issubgraph-not-isinducedsubgraph-iff--087b5bf3c58bef64f47bc12a",
  "source": {
    "blob": "ede22de8653477081bd8b38a9c0fdb7facc1fb6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subgraph/Variant11b4f8d73e1214a8746f2b763aac3cc22d4fe29d672aaf72ef8fa123c6d2bbce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:087b5bf3c58bef64f47bc12a0062fbb14034ab702914ae5d52c583e7d4ee8d2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subgraph/Variant11b4f8d73e1214a8746f2b763aac3cc22d4fe29d672aaf72ef8fa123c6d2bbce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e72d3f32-6065-1571-a025-2912808f85ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSubgraph.not_isInducedSubgraph_iff (hHG : H ≤ G) :
    ¬ H ≤i G ↔ ∃ e x y, G.IsLink e x y ∧ x ∈ V(H) ∧ y ∈ V(H) ∧ e ∉ E(H) := by
  contrapose!; symm
  exact ⟨fun hnind ↦ ⟨hHG, fun e x y hxy hx hy => hxy.anti_of_mem hHG (hnind e x y hxy hx hy)⟩,
    fun hind _ _ _ hexy hx hy ↦ hind.isLink_of_mem_mem hexy hx hy |>.edge_mem⟩

end InducedSubgraph

section ClosedSubgraph

/-! ### Closed Subgraphs -/

/-- `H ≤c G` (`Graph.IsClosedSubgraph`) is a union of components of `G`. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subgraph/Variant11b4f8d73e1214a8746f2b763aac3cc22d4fe29d672aaf72ef8fa123c6d2bbce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subgraph/Variant11b4f8d73e1214a8746f2b763aac3cc22d4fe29d672aaf72ef8fa123c6d2bbce.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede22de8653477081bd8b38a9c0fdb7facc1fb6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
