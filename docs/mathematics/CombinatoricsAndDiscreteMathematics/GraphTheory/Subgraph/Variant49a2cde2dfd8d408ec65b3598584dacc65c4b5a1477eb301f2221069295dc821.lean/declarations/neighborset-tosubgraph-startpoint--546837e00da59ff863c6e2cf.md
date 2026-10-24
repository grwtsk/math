# neighborSet_toSubgraph_startpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb91cd06-a636-0af9-9138-3bd301e38e43",
  "kind": "lemma",
  "lexical_name": "neighborSet_toSubgraph_startpoint",
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
  "slug": "neighborset-tosubgraph-startpoint--546837e00da59ff863c6e2cf",
  "source": {
    "blob": "3c4939311ce4a0f77d7b0fd930df759ae0ba0c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:546837e00da59ff863c6e2cfe709867340a386f9b038e945cd49b83836f0679e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb91cd06-a636-0af9-9138-3bd301e38e43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma neighborSet_toSubgraph_startpoint {u v} {p : G.Walk u v}
    (hp : p.IsPath) (hnp : ¬ p.Nil) : p.toSubgraph.neighborSet u = {p.snd} := by
  have hadj1 := p.toSubgraph_adj_snd hnp
  ext v
  simp_all only [Subgraph.mem_neighborSet, Set.mem_insert_iff, Set.mem_singleton_iff,
    SimpleGraph.Walk.toSubgraph_adj_iff, Sym2.eq, Sym2.rel_iff', Prod.mk.injEq, Prod.swap_prod_mk]
  refine ⟨?_, by aesop⟩
  rintro ⟨i, hl | hr⟩
  · have : i = 0 := by
      apply hp.getVert_injOn (by rw [Set.mem_setOf]; omega) (by rw [Set.mem_setOf]; omega)
      aesop
    aesop
  · have : i + 1 = 0 := by
      apply hp.getVert_injOn (by rw [Set.mem_setOf]; omega) (by rw [Set.mem_setOf]; omega)
      aesop
    contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c4939311ce4a0f77d7b0fd930df759ae0ba0c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
