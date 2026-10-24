# binomialRandom_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1120963-cb90-d0c8-3332-cd428d315e10",
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
  "slug": "binomialrandom-singleton--a478a22bcf7dfb1092a637ea",
  "source": {
    "blob": "78813ba78f0ee25c22b402d15c713621262843db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 95,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/Defs/Variant447a0e568aba54382c392818cbc521736f940f5abf98b797557ddb2e2a4b4859.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a478a22bcf7dfb1092a637ea22a2d15b10651d61b931f0b0dee94c3f6b388c1d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/Defs/Variant447a0e568aba54382c392818cbc521736f940f5abf98b797557ddb2e2a4b4859.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1120963-cb90-d0c8-3332-cd428d315e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–107.

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

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/Defs/Variant447a0e568aba54382c392818cbc521736f940f5abf98b797557ddb2e2a4b4859.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/Defs/Variant447a0e568aba54382c392818cbc521736f940f5abf98b797557ddb2e2a4b4859.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78813ba78f0ee25c22b402d15c713621262843db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
