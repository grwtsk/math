# supSum_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef703a0b-566c-bc66-c8b9-31664f9f822c",
  "kind": "lemma",
  "lexical_name": "supSum_singleton",
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
  "slug": "supsum-singleton--457738ec9a70b0f281253cf0",
  "source": {
    "blob": "09b166105a051c4d3a46fb93325ced37ddb8f1aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 385,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:457738ec9a70b0f281253cf09ef1349ce3b53dd47dab6f6a9e19a11baf8492d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef703a0b-566c-bc66-c8b9-31664f9f822c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma supSum_singleton (hs : s ≠ univ) :
    supSum ({s} : Finset (Finset α)) = card α * ∑ k ∈ range (card α), (k : ℚ)⁻¹ := by
  have : ∀ t : Finset α,
    (card α - #(truncatedSup {s} t) : ℚ) / ((card α - #t) * (card α).choose #t) =
    if t ⊆ s then (card α - #s : ℚ) / ((card α - #t) * (card α).choose #t) else 0 := by
    rintro t
    simp_rw [truncatedSup_singleton, le_iff_subset]
    split_ifs <;> simp
  simp_rw [← sub_eq_of_eq_add (Fintype.sum_div_mul_card_choose_card α), eq_sub_iff_add_eq,
    ← eq_sub_iff_add_eq', supSum, ← sum_sub_distrib, ← sub_div]
  rw [sum_congr rfl fun t _ ↦ this t, sum_ite, sum_const_zero, add_zero, filter_subset_univ,
    sum_powerset, ← binomial_sum_eq ((card_lt_iff_ne_univ _).2 hs), eq_comm]
  refine sum_congr rfl fun n _ ↦ ?_
  rw [mul_div_assoc, ← nsmul_eq_mul]
  exact sum_powersetCard n s fun m ↦ (card α - #s : ℚ) / ((card α - m) * (card α).choose m)

/-- The **Ahlswede-Zhang Identity**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b166105a051c4d3a46fb93325ced37ddb8f1aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
