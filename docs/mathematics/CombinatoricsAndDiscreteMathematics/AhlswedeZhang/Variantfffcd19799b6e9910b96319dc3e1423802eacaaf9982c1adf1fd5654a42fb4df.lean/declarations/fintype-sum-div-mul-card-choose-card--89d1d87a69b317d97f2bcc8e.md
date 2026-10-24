# Fintype.sum_div_mul_card_choose_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16c805df-1cb9-5e74-d7c5-58fc85d98308",
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
  "slug": "fintype-sum-div-mul-card-choose-card--89d1d87a69b317d97f2bcc8e",
  "source": {
    "blob": "385bd4da9d443cad9539543994edbefa281f42a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89d1d87a69b317d97f2bcc8e385ea9896e15a1689f10b4c527923e8af2a29ca5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16c805df-1cb9-5e74-d7c5-58fc85d98308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–116.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `385bd4da9d443cad9539543994edbefa281f42a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
