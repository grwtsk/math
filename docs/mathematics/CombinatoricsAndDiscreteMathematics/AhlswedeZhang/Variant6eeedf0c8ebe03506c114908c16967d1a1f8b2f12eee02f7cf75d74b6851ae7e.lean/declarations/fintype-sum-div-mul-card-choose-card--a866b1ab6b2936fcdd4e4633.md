# Fintype.sum_div_mul_card_choose_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09b166105a051c4d3a46fb93325ced37ddb8f1aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe4d9ac0-6457-b78a-2fe4-fc8ae20f1dac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3efc2c3c-e942-761d-8780-2ac6e967cd43",
  "kind": "lemma",
  "lexical_name": "Fintype.sum_div_mul_card_choose_card",
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
  "slug": "fintype-sum-div-mul-card-choose-card--a866b1ab6b2936fcdd4e4633",
  "source": {
    "blob": "09b166105a051c4d3a46fb93325ced37ddb8f1aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a866b1ab6b2936fcdd4e463398fbb4d7b955e957fc0183c1c0cb44fc4a2b02c6",
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

Occurrence: `result:3efc2c3c-e942-761d-8780-2ac6e967cd43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Fintype.sum_div_mul_card_choose_card :
    ∑ s : Finset α, (card α / ((card α - #s) * (card α).choose #s) : ℚ) =
      card α * ∑ k ∈ range (card α), (↑k)⁻¹ + 1 := by
  rw [← powerset_univ, powerset_card_disjiUnion, sum_disjiUnion]
  have : ∀ {x : ℕ}, ∀ s ∈ powersetCard x (univ : Finset α),
    (card α / ((card α - #s) * (card α).choose #s) : ℚ) =
      card α / ((card α - x) * (card α).choose x) := by
    intros n s hs
    rw [mem_powersetCard_univ.1 hs]
  simp_rw [sum_congr rfl this, sum_const, card_powersetCard, card_univ, nsmul_eq_mul, mul_div,
    mul_comm, ← mul_div]
  rw [← mul_sum, ← mul_inv_cancel₀ (cast_ne_zero.mpr card_ne_zero : (card α : ℚ) ≠ 0), ← mul_add,
    add_comm _ ((card α)⁻¹ : ℚ), ← sum_insert (f := fun x : ℕ ↦ (x⁻¹ : ℚ)) notMem_range_self,
    ← range_succ]
  have (n) (hn : n ∈ range (card α + 1)) :
      ((card α).choose n / ((card α - n) * (card α).choose n) : ℚ) = (card α - n : ℚ)⁻¹ := by
    rw [div_mul_cancel_right₀]
    exact cast_ne_zero.2 (choose_pos <| mem_range_succ_iff.1 hn).ne'
  simp only [sum_congr rfl this, mul_eq_mul_left_iff, cast_eq_zero]
  convert Or.inl <| sum_range_reflect _ _ with a ha
  rw [add_tsub_cancel_right, cast_sub (mem_range_succ_iff.mp ha)]

end

open scoped FinsetFamily

namespace Finset
variable {α β : Type*}

/-! ### Truncated supremum, truncated infimum -/

section SemilatticeSup
variable [SemilatticeSup α] [SemilatticeSup β] [BoundedOrder β] {s t : Finset α} {a : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b166105a051c4d3a46fb93325ced37ddb8f1aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
