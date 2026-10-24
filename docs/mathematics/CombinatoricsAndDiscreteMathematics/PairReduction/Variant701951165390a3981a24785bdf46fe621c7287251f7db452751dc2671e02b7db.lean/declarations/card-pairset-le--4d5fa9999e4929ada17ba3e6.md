# card_pairSet_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa9a0345e8f8bb40ece9f794eeb8fc539879f458",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78ced506-f534-de3e-d5c9-9d99d8ed1879",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81e06d4d-1440-1123-0b79-f2b539f28703",
  "kind": "lemma",
  "lexical_name": "card_pairSet_le",
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
  "slug": "card-pairset-le--4d5fa9999e4929ada17ba3e6",
  "source": {
    "blob": "aa9a0345e8f8bb40ece9f794eeb8fc539879f458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 363,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d5fa9999e4929ada17ba3e6808e645a50f161527c7421d0f5a1f690b45573a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81e06d4d-1440-1123-0b79-f2b539f28703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_pairSet_le (ha : 1 < a) : #(pairSet J a c) ≤ a * #J := by
  wlog hJ : J.Nonempty
  · simp [Finset.not_nonempty_iff_eq_empty.mp hJ]
  unfold pairSet
  grw [Finset.card_biUnion_le, Nat.cast_sum,
    Finset.sum_le_sum fun i _ ↦ card_pairSetSeq_le_logSizeRadius_mul hJ i ha,
    Finset.sum_le_sum fun _ _ ↦ mul_le_mul_right (pow_le_pow_right₀ ha.le le_tsub_add) _]
  conv_lhs => enter [2]; ext _; rw [pow_add, pow_one, ← mul_assoc, mul_comm]
  grw [← Finset.mul_sum]
  gcongr
  grw [Finset.sum_le_sum fun i _ ↦ logSizeRadius_le_card_smallBall hJ i ha, ← Nat.cast_sum,
    ← Finset.card_biUnion fun _ _ _ _ ↦ disjoint_smallBall_logSizeBallSeq hJ]
  gcongr
  unfold logSizeBallStruct.smallBall
  rw [Finset.biUnion_subset_iff_forall_subset]
  intro i _
  exact (Finset.filter_subset _ _).trans (finset_logSizeBallSeq_subset_logSizeBallSeq_init _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9a0345e8f8bb40ece9f794eeb8fc539879f458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
