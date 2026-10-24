# IsTree.coe_subgraphOfAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca26968d-cf79-a623-e2b8-6310c72a2a39",
  "kind": "theorem",
  "lexical_name": "IsTree.coe_subgraphOfAdj",
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
  "slug": "istree-coe-subgraphofadj--74572ea085fc0c1887ede203",
  "source": {
    "blob": "ce7a0b545fb79a395061d82f7e312b84ebe085d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74572ea085fc0c1887ede203ea43758fd7ea838bb9af166c00bd0aad2103dd7e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca26968d-cf79-a623-e2b8-6310c72a2a39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTree.coe_subgraphOfAdj {u v : V} (h : G.Adj u v) : G.subgraphOfAdj h |>.coe.IsTree := by
  refine ⟨Subgraph.subgraphOfAdj_connected h, fun w p hp ↦ ?_⟩
  have : _ = _ := p.adj_snd hp.not_nil
  have : _ = _ := p.adj_penultimate hp.not_nil
  #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
  (replacing grind's canonicalizer with a type-directed normalizer), `grind` closed this goal.
  It is not yet clear whether this is due to defeq abuse in Mathlib or a problem in the new
  canonicalizer; a minimization would help. The original proof was:
  `grind [Sym2.eq_iff, IsCycle.snd_ne_penultimate]` -/
  simp_all
  grind [IsCycle.snd_ne_penultimate]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7a0b545fb79a395061d82f7e312b84ebe085d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
