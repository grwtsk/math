# toSubgraph_adj_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23141ed8-a1be-53cf-7ed5-86cb39764fdf",
  "kind": "theorem",
  "lexical_name": "toSubgraph_adj_iff",
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
  "slug": "tosubgraph-adj-iff--847818a844b807bf49a5bf0e",
  "source": {
    "blob": "3c4939311ce4a0f77d7b0fd930df759ae0ba0c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 245,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:847818a844b807bf49a5bf0e36a75e149e6e3ef62dd378a26172308c9f31a691",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23141ed8-a1be-53cf-7ed5-86cb39764fdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSubgraph_adj_iff {u v u' v'} (w : G.Walk u v) :
    w.toSubgraph.Adj u' v' ↔ ∃ i, s(w.getVert i, w.getVert (i + 1)) =
      s(u', v') ∧ i < w.length := by
  constructor
  · intro hadj
    unfold Walk.toSubgraph at hadj
    match w with
    | .nil =>
      simp only [singletonSubgraph_adj, Pi.bot_apply, Prop.bot_eq_false] at hadj
    | .cons h p =>
      simp only [Subgraph.sup_adj, subgraphOfAdj_adj, Sym2.eq, Sym2.rel_iff', Prod.mk.injEq,
        Prod.swap_prod_mk] at hadj
      cases hadj with
      | inl hl =>
        use 0
        simp only [Walk.getVert_zero, zero_add, getVert_cons_succ]
        refine ⟨?_, by simp only [length_cons, Nat.zero_lt_succ]⟩
        simp only [Sym2.eq, Sym2.rel_iff', Prod.mk.injEq, Prod.swap_prod_mk]
        cases hl with
        | inl h1 => left; exact ⟨h1.1, h1.2⟩
        | inr h2 => right; exact ⟨h2.1, h2.2⟩
      | inr hr =>
        obtain ⟨i, hi⟩ := (toSubgraph_adj_iff _).mp hr
        use i + 1
        simp only [getVert_cons_succ]
        constructor
        · exact hi.1
        · simp only [Walk.length_cons, add_lt_add_iff_right, Nat.add_lt_add_right hi.2 1]
  · rintro ⟨i, hi⟩
    rw [← Subgraph.mem_edgeSet, ← hi.1, Subgraph.mem_edgeSet]
    exact toSubgraph_adj_getVert _ hi.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c4939311ce4a0f77d7b0fd930df759ae0ba0c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
