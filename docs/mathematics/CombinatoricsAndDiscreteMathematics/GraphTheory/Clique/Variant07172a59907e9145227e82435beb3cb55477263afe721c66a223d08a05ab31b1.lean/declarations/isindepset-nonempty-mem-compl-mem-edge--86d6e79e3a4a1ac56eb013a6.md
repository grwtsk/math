# IsIndepSet.nonempty_mem_compl_mem_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee917cb3-97ff-7af5-7449-4fe5e05fe078",
  "kind": "lemma",
  "lexical_name": "IsIndepSet.nonempty_mem_compl_mem_edge",
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
  "slug": "isindepset-nonempty-mem-compl-mem-edge--86d6e79e3a4a1ac56eb013a6",
  "source": {
    "blob": "5dc19580174aabe33fed24944c87b5ccf551fa74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 803,
    "line": 789,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86d6e79e3a4a1ac56eb013a68259b34d77208bb5a243d063c434f00949fbf9c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee917cb3-97ff-7af5-7449-4fe5e05fe078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–803.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsIndepSet.nonempty_mem_compl_mem_edge
    [Fintype α] [DecidableEq α] {s : Finset α} (indA : G.IsIndepSet s) {e} (he : e ∈ G.edgeSet) :
    { b ∈ sᶜ | b ∈ e }.Nonempty := by
  obtain ⟨v , w⟩ := e
  by_contra c
  rw [IsIndepSet] at indA
  rw [mem_edgeSet] at he
  rw [not_nonempty_iff_eq_empty, filter_eq_empty_iff] at c
  simp_rw [mem_compl, Sym2.mem_iff, not_or] at c
  by_cases vins : v ∈ s
  · have wins : w ∈ s := by by_contra wnins; exact (c wnins).right rfl
    exact (indA vins wins (Adj.ne he)) he
  · exact (c vins).left rfl

/-- The neighbors of a vertex `v` form an independent set in a triangle free graph `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dc19580174aabe33fed24944c87b5ccf551fa74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
