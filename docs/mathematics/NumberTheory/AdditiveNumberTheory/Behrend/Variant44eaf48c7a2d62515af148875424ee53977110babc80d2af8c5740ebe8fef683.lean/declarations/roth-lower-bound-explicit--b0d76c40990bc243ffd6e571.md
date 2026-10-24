# roth_lower_bound_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbdcacd4-f0f7-b648-6117-854b51dc61b2",
  "kind": "theorem",
  "lexical_name": "roth_lower_bound_explicit",
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
  "slug": "roth-lower-bound-explicit--b0d76c40990bc243ffd6e571",
  "source": {
    "blob": "eba11409f746e83907ea713f3bf49fbd27f455b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 489,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0d76c40990bc243ffd6e57184bb2390aeecb8c0cf9fa1283fd40c320d777f41",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbdcacd4-f0f7-b648-6117-854b51dc61b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roth_lower_bound_explicit (hN : 4096 ≤ N) :
    (N : ℝ) * exp (-4 * sqrt (log N)) < rothNumberNat N := by
  let n := nValue N
  have hn : 0 < (n : ℝ) := cast_pos.2 (nValue_pos <| hN.trans' <| by norm_num1)
  have hd : 0 < dValue N := dValue_pos (hN.trans' <| by norm_num1)
  have hN₀ : 0 < (N : ℝ) := cast_pos.2 (hN.trans' <| by norm_num1)
  have hn₂ : 2 ≤ n := two_le_nValue (hN.trans' <| by norm_num1)
  have : (2 * dValue N - 1) ^ n ≤ N := le_N (hN.trans' <| by norm_num1)
  refine' ((bound_aux hd.ne' hn₂).trans <| cast_le.2 <| rothNumberNat.mono this).trans_lt' _
  conv_rhs => rw [← cast_two, ← cast_sub hn₂, rpow_nat_cast]
  refine' (div_lt_div_of_lt hn <| pow_lt_pow_of_lt_left (bound hN) _ _).trans_le' _
  · exact div_nonneg (rpow_nonneg_of_nonneg (cast_nonneg _) _) (exp_pos _).le
  · exact tsub_pos_of_lt (three_le_nValue <| hN.trans' <| by norm_num1)
  rw [← rpow_nat_cast, div_rpow (rpow_nonneg_of_nonneg hN₀.le _) (exp_pos _).le, ← rpow_mul hN₀.le,
    mul_comm (_ / _), mul_one_div, cast_sub hn₂, cast_two, same_sub_div hn.ne', exp_one_rpow,
    div_div, rpow_sub hN₀, rpow_one, div_div, div_eq_mul_inv]
  refine' mul_le_mul_of_nonneg_left _ (cast_nonneg _)
  rw [mul_inv, mul_inv, ← exp_neg, ← rpow_neg (cast_nonneg _), neg_sub, ← div_eq_mul_inv]
  have : exp (-4 * sqrt (log N)) = exp (-2 * sqrt (log N)) * exp (-2 * sqrt (log N)) := by
    rw [← exp_add, ← add_mul]
    norm_num
  rw [this]
  refine' mul_le_mul _ (exp_neg_two_mul_le <| Real.sqrt_pos.2 <| log_pos _).le (exp_pos _).le <|
      rpow_nonneg_of_nonneg (cast_nonneg _) _
  · rw [← le_log_iff_exp_le (rpow_pos_of_pos hN₀ _), log_rpow hN₀, ← le_div_iff, mul_div_assoc,
      div_sqrt, neg_mul, neg_le_neg_iff, div_mul_eq_mul_div, div_le_iff hn]
    · exact mul_le_mul_of_nonneg_left (le_ceil _) zero_le_two
    refine' Real.sqrt_pos.2 (log_pos _)
    rw [one_lt_cast]
    exact hN.trans_lt' (by norm_num1)
  · rw [one_lt_cast]
    exact hN.trans_lt' (by norm_num1)
#align behrend.roth_lower_bound_explicit Behrend.roth_lower_bound_explicit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba11409f746e83907ea713f3bf49fbd27f455b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
