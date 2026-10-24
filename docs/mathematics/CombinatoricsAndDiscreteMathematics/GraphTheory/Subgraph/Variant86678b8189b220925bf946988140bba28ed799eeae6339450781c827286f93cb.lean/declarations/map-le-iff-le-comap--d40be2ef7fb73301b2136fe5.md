# map_le_iff_le_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9518e8ea4199211e36db009cb674e98f86e02642",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 696,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7963e22-3488-6dd3-bb24-5b446f41dade",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:767ca882-1dfd-d9db-0508-c4af1228c8e5",
  "kind": "theorem",
  "lexical_name": "map_le_iff_le_comap",
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
  "slug": "map-le-iff-le-comap--d40be2ef7fb73301b2136fe5",
  "source": {
    "blob": "9518e8ea4199211e36db009cb674e98f86e02642",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 696,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d40be2ef7fb73301b2136fe50df3fcac26f8c960555e8f2b56db9730ca60e419",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:767ca882-1dfd-d9db-0508-c4af1228c8e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_le_iff_le_comap {G' : SimpleGraph W} (f : G →g G') (H : G.Subgraph) (H' : G'.Subgraph) :
    H.map f ≤ H' ↔ H ≤ H'.comap f := by
  refine' ⟨fun h ↦ ⟨fun v hv ↦ _, fun v w hvw ↦ _⟩, fun h ↦ ⟨fun v ↦ _, fun v w ↦ _⟩⟩
  · simp only [comap_verts, Set.mem_preimage]
    exact h.1 ⟨v, hv, rfl⟩
  · simp only [H.adj_sub hvw, comap_Adj, true_and_iff]
    exact h.2 ⟨v, w, hvw, rfl, rfl⟩
  · simp only [map_verts, Set.mem_image, forall_exists_index, and_imp]
    rintro w hw rfl
    exact h.1 hw
  · simp only [Relation.Map, map_Adj, forall_exists_index, and_imp]
    rintro u u' hu rfl rfl
    exact (h.2 hu).2
#align simple_graph.subgraph.map_le_iff_le_comap SimpleGraph.Subgraph.map_le_iff_le_comap

/-- Given two subgraphs, one a subgraph of the other, there is an induced injective homomorphism of
the subgraphs as graphs. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9518e8ea4199211e36db009cb674e98f86e02642` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
