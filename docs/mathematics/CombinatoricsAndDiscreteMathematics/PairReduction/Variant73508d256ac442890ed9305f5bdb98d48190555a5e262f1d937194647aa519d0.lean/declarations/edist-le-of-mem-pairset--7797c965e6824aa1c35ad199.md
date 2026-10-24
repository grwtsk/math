# edist_le_of_mem_pairSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff5af122-1d5f-54f2-99e5-7b28f0d13564",
  "kind": "lemma",
  "lexical_name": "edist_le_of_mem_pairSet",
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
  "slug": "edist-le-of-mem-pairset--7797c965e6824aa1c35ad199",
  "source": {
    "blob": "b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 389,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7797c965e6824aa1c35ad199e433733afd7d08bafcc4471aab22178fc5b1b9d8",
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

Occurrence: `result:ff5af122-1d5f-54f2-99e5-7b28f0d13564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma edist_le_of_mem_pairSet (ha : 1 < a) (hJ_card : #J ≤ a ^ n) {s t : T}
    (h : (s, t) ∈ pairSet J a c) : edist s t ≤ n * c := by
  obtain ⟨i, hiJ, h'⟩ : ∃ i < #J, (s, t) ∈ pairSetSeq J a c i := by simpa [pairSet] using h
  have hJ : J.Nonempty := Finset.card_pos.mp (Nat.zero_lt_of_lt hiJ)
  wlog! hn : 1 ≤ n
  · suffices s = t by simp [this]
    simp only [Nat.lt_one_iff.mp hn, pow_zero, Nat.cast_le_one] at hJ_card
    have ⟨hs, ht⟩ := Finset.mem_product.mp (pairSet_subset h)
    exact Finset.card_le_one_iff.mp hJ_card hs ht
  simp only [pairSetSeq, hJ, ↓reduceDIte, logSizeBallStruct.ball, Finset.product_eq_sprod,
    Finset.singleton_product, Finset.mem_map, Finset.mem_filter, Function.Embedding.sectR_apply,
    Prod.mk.injEq, exists_eq_right_right] at h'
  obtain ⟨⟨ht, hdist⟩, rfl⟩ := h'
  grw [hdist, radius_logSizeBallSeq_le hJ ha hn hJ_card i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
