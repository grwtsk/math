# eq_singletonSubgraph_iff_verts_eq

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
      "line": 873,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03495da8-572f-6b0d-9aaf-2a6766b686a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3620ce70-d68a-9265-2348-3c0bb72e02ac",
  "kind": "theorem",
  "lexical_name": "eq_singletonSubgraph_iff_verts_eq",
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
  "slug": "eq-singletonsubgraph-iff-verts-eq--e7eca15810978f1a0eefc35c",
  "source": {
    "blob": "9518e8ea4199211e36db009cb674e98f86e02642",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 886,
    "line": 873,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7eca15810978f1a0eefc35c202c04166f7312dc8ba278b829690cf18650fbf0",
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

Occurrence: `result:3620ce70-d68a-9265-2348-3c0bb72e02ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 873–886.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_singletonSubgraph_iff_verts_eq (H : G.Subgraph) {v : V} :
    H = G.singletonSubgraph v ↔ H.verts = {v} := by
  refine' ⟨fun h ↦ by rw [h, singletonSubgraph_verts], fun h ↦ _⟩
  ext
  · rw [h, singletonSubgraph_verts]
  · simp only [Prop.bot_eq_false, singletonSubgraph_Adj, Pi.bot_apply, iff_false_iff]
    intro ha
    have ha1 := ha.fst_mem
    have ha2 := ha.snd_mem
    rw [h, Set.mem_singleton_iff] at ha1 ha2
    subst_vars
    exact ha.ne rfl
#align simple_graph.eq_singleton_subgraph_iff_verts_eq SimpleGraph.eq_singletonSubgraph_iff_verts_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant86678b8189b220925bf946988140bba28ed799eeae6339450781c827286f93cb.lean#L873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9518e8ea4199211e36db009cb674e98f86e02642` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
