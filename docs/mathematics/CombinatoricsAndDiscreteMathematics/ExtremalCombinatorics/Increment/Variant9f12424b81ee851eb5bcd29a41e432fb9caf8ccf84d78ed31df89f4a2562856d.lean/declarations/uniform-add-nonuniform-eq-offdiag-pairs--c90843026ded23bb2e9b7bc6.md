# uniform_add_nonuniform_eq_offDiag_pairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c75d9f087c903034ba442eae9a5d851e66bc26d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e405ee31-c50c-3082-58bd-2a390ebf9873",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7eddc74b-6a6e-2ec1-a5cd-fbfadaf3832b",
  "kind": "theorem",
  "lexical_name": "uniform_add_nonuniform_eq_offDiag_pairs",
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
  "slug": "uniform-add-nonuniform-eq-offdiag-pairs--c90843026ded23bb2e9b7bc6",
  "source": {
    "blob": "c75d9f087c903034ba442eae9a5d851e66bc26d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c90843026ded23bb2e9b7bc6260630d2d888fd266b2da77068217f6c3fe53d90",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eddc74b-6a6e-2ec1-a5cd-fbfadaf3832b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_add_nonuniform_eq_offDiag_pairs [Nonempty α] (hε₁ : ε ≤ 1) (hP₇ : 7 ≤ P.parts.card)
    (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α) (hPε : ↑100 ≤ ↑4 ^ P.parts.card * ε ^ 5)
    (hPG : ¬P.IsUniform G ε) :
    (∑ x in P.parts.offDiag, (G.edgeDensity x.1 x.2 : ℝ) ^ 2 +
      ↑P.parts.card ^ 2 * (ε ^ 5 / 4) : ℝ) / (P.parts.card : ℝ) ^ 2 ≤
    ∑ x in P.parts.offDiag.attach,
      (pairContrib G ε hP x : ℝ) / ((increment hP G ε).parts.card : ℝ) ^ 2 := by
  conv_rhs =>
    rw [← sum_div, card_increment hPα hPG, stepBound, ← Nat.cast_pow, mul_pow, pow_right_comm,
      Nat.cast_mul, mul_comm, ← div_div, show 4 ^ 2 = 16 by norm_num, sum_div]
  rw [← Nat.cast_pow, Nat.cast_pow 16]
  refine' div_le_div_of_le_of_nonneg _ (Nat.cast_nonneg _)
  norm_num
  trans ∑ x in P.parts.offDiag.attach, ((G.edgeDensity x.1.1 x.1.2 : ℝ) ^ 2 - ε ^ 5 / ↑25 +
    if G.IsUniform ε x.1.1 x.1.2 then (0 : ℝ) else ε ^ 4 / 3 : ℝ)
  swap
  · exact sum_le_sum fun i _ => pairContrib_lower_bound i hε₁ hPα hPε
  have :
      ∑ x in P.parts.offDiag.attach, ((G.edgeDensity x.1.1 x.1.2 : ℝ) ^ 2 - ε ^ 5 / ↑25 +
        if G.IsUniform ε x.1.1 x.1.2 then (0 : ℝ) else ε ^ 4 / 3 : ℝ) =
      ∑ x in P.parts.offDiag, ((G.edgeDensity x.1 x.2 : ℝ) ^ 2 - ε ^ 5 / ↑25 +
        if G.IsUniform ε x.1 x.2 then (0 : ℝ) else ε ^ 4 / 3) := by
    convert sum_attach (β := ℝ); rfl
  rw [this, sum_add_distrib, sum_sub_distrib, sum_const, nsmul_eq_mul, sum_ite, sum_const_zero,
    zero_add, sum_const, nsmul_eq_mul, ← Finpartition.nonUniforms]
  rw [Finpartition.IsUniform, not_le] at hPG
  refine' le_trans _ (add_le_add_left (mul_le_mul_of_nonneg_right hPG.le <| by positivity) _)
  conv_rhs =>
    enter [1, 2]
    rw [offDiag_card]
    conv => enter [1, 1, 2]; rw [← mul_one P.parts.card]
    rw [← Nat.mul_sub_left_distrib]
  simp_rw [mul_assoc, sub_add_eq_add_sub, add_sub_assoc, ← mul_sub_left_distrib, mul_div_assoc' ε,
    ← pow_succ, show 4 + 1 = 5 by rfl, div_eq_mul_one_div (ε ^ 5), ← mul_sub_left_distrib,
    mul_left_comm _ (ε ^ 5), sq, Nat.cast_mul, mul_assoc, ← mul_assoc (ε ^ 5)]
  refine' add_le_add_left (mul_le_mul_of_nonneg_left _ <| by sz_positivity) _
  rw [Nat.cast_sub (P.parts_nonempty <| univ_nonempty.ne_empty).card_pos, mul_sub_right_distrib,
    Nat.cast_one, one_mul, le_sub_comm, ← mul_sub_left_distrib, ←
    div_le_iff (show (0 : ℝ) < 1 / 3 - 1 / 25 - 1 / 4 by norm_num)]
  exact le_trans (show _ ≤ (7 : ℝ) by norm_num) (by exact_mod_cast hP₇)
#align szemeredi_regularity.uniform_add_nonuniform_eq_off_diag_pairs SzemerediRegularity.uniform_add_nonuniform_eq_offDiag_pairs

/-- The increment partition has energy greater than the original one by a known fixed amount. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant9f12424b81ee851eb5bcd29a41e432fb9caf8ccf84d78ed31df89f4a2562856d.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c75d9f087c903034ba442eae9a5d851e66bc26d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
