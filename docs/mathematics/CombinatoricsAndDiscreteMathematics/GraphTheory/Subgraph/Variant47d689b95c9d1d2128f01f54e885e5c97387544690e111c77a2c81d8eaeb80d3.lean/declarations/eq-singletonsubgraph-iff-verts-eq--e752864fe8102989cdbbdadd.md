# eq_singletonSubgraph_iff_verts_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc2787d9-16f3-447c-e71f-cc6a166c61ee",
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
  "slug": "eq-singletonsubgraph-iff-verts-eq--e752864fe8102989cdbbdadd",
  "source": {
    "blob": "9d908d52aa1c3cbd46d39162122afa608ab746c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 894,
    "line": 881,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant47d689b95c9d1d2128f01f54e885e5c97387544690e111c77a2c81d8eaeb80d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e752864fe8102989cdbbdadde838a76404c517ef0fc7914a98481336ff4f4192",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant47d689b95c9d1d2128f01f54e885e5c97387544690e111c77a2c81d8eaeb80d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc2787d9-16f3-447c-e71f-cc6a166c61ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–894.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant47d689b95c9d1d2128f01f54e885e5c97387544690e111c77a2c81d8eaeb80d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant47d689b95c9d1d2128f01f54e885e5c97387544690e111c77a2c81d8eaeb80d3.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d908d52aa1c3cbd46d39162122afa608ab746c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
