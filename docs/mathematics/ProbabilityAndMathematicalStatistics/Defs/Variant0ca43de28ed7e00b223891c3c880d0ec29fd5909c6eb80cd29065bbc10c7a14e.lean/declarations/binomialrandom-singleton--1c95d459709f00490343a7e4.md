# binomialRandom_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0df3d1a6-f0e2-e244-47ad-363dfe6d00c0",
  "kind": "lemma",
  "lexical_name": "binomialRandom_singleton",
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
  "slug": "binomialrandom-singleton--1c95d459709f00490343a7e4",
  "source": {
    "blob": "96732967a25ac0797fe8104aee5468a5a7804b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 87,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/Defs/Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c95d459709f00490343a7e41d824b5085b6943e6f6eb7b39ef80372cf72d6df",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/Defs/Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0df3d1a6-f0e2-e244-47ad-363dfe6d00c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma binomialRandom_singleton [Finite V] (G : SimpleGraph V) :
    G(V, p) {G} = toNNReal p ^ G.edgeSet.ncard *
      toNNReal (σ p) ^ ((Nat.card V).choose 2 - G.edgeSet.ncard) := by
  classical
  cases nonempty_fintype V
  simp only [binomialRandom, measurableEmbedding_edgeSet.comap_apply, Set.image_singleton,
    edgeSet_subset_compl_diagSet, setBernoulli_singleton, Set.toFinite]
  rw [Set.ncard_sdiff (by simp)]
  congr!
  rw [Nat.card_eq_fintype_card, ← Sym2.card_diagSet_compl, Fintype.card_eq_nat_card,
    ← Nat.card_coe_set_eq]

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/Defs/Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/Defs/Variant0ca43de28ed7e00b223891c3c880d0ec29fd5909c6eb80cd29065bbc10c7a14e.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96732967a25ac0797fe8104aee5468a5a7804b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
