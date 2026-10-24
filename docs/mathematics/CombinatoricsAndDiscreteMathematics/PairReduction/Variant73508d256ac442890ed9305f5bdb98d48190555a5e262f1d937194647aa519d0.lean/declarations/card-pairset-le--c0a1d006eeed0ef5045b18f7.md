# card_pairSet_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6aec31e-ba79-bdc7-ffc1-07a0cc107095",
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
  "slug": "card-pairset-le--c0a1d006eeed0ef5045b18f7",
  "source": {
    "blob": "b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 371,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0a1d006eeed0ef5045b18f7176a392d2d9b6c0957081c031e092706bba1c54c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6aec31e-ba79-bdc7-ffc1-07a0cc107095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–388.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
