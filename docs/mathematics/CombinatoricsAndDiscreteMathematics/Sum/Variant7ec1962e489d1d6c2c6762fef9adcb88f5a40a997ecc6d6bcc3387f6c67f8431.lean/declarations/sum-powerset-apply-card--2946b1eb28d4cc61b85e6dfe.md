# sum_powerset_apply_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcd60f8f-bc47-312b-ef78-97252f80c114",
  "kind": "theorem",
  "lexical_name": "sum_powerset_apply_card",
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
  "slug": "sum-powerset-apply-card--2946b1eb28d4cc61b85e6dfe",
  "source": {
    "blob": "892d2afebab874869572cb8af55e2431a20672d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 160,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2946b1eb28d4cc61b85e6dfe7ef0803adb566e84bd6a38d153a515f6eb62bd00",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcd60f8f-bc47-312b-ef78-97252f80c114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_powerset_apply_card {α β : Type*} [AddCommMonoid α] (f : ℕ → α) {x : Finset β} :
    ∑ m in x.powerset, f m.card = ∑ m in range (x.card + 1), x.card.choose m • f m := by
  trans ∑ m in range (x.card + 1), ∑ j in x.powerset.filter fun z ↦ z.card = m, f j.card
  · refine' (sum_fiberwise_of_maps_to _ _).symm
    intro y hy
    rw [mem_range, Nat.lt_succ_iff]
    rw [mem_powerset] at hy
    exact card_le_of_subset hy
  · refine' sum_congr rfl fun y _ ↦ _
    rw [← card_powersetLen, ← sum_const]
    refine' sum_congr powersetLen_eq_filter.symm fun z hz ↦ _
    rw [(mem_powersetLen.1 hz).2]
#align finset.sum_powerset_apply_card Finset.sum_powerset_apply_card

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `892d2afebab874869572cb8af55e2431a20672d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
