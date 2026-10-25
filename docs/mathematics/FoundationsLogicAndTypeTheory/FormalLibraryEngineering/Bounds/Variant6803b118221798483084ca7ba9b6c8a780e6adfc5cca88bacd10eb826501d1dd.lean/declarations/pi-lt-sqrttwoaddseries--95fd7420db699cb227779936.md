# pi_lt_sqrtTwoAddSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75385003-678f-1fd4-dc27-534e5dd6450f",
  "kind": "theorem",
  "lexical_name": "pi_lt_sqrtTwoAddSeries",
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
  "slug": "pi-lt-sqrttwoaddseries--95fd7420db699cb227779936",
  "source": {
    "blob": "13925628247ba7c9ac93755701ba0c9b4842a8f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95fd7420db699cb22777993602f19d9e8d74180dc89ff305f825b322d26f96be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75385003-678f-1fd4-dc27-534e5dd6450f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_lt_sqrtTwoAddSeries (n : ℕ) :
    π < (2 : ℝ) ^ (n + 1) * sqrt (2 - sqrtTwoAddSeries 0 n) + 1 / (4 : ℝ) ^ n := by
  have : π <
      (sqrt (2 - sqrtTwoAddSeries 0 n) / (2 : ℝ) + (1 : ℝ) / ((2 : ℝ) ^ n) ^ 3 / 4) *
      (2 : ℝ) ^ (n + 2) := by
    rw [← div_lt_iff, ← sin_pi_over_two_pow_succ]
    refine' lt_of_lt_of_le (lt_add_of_sub_right_lt (sin_gt_sub_cube _ _)) _
    · apply div_pos pi_pos; apply pow_pos; norm_num
    · rw [div_le_iff']
      · refine' le_trans pi_le_four _
        simp only [show (4 : ℝ) = (2 : ℝ) ^ 2 by norm_num, mul_one]
        apply pow_le_pow; norm_num; apply le_add_of_nonneg_left; apply Nat.zero_le
      · apply pow_pos; norm_num
    apply add_le_add_left; rw [div_le_div_right]
    rw [le_div_iff, ← mul_pow]
    refine' le_trans _ (le_of_eq (one_pow 3)); apply pow_le_pow_of_le_left
    · apply le_of_lt; apply mul_pos; apply div_pos pi_pos; apply pow_pos; norm_num; apply pow_pos
      norm_num
    rw [← le_div_iff]
    refine' le_trans ((div_le_div_right _).mpr pi_le_four) _; apply pow_pos; norm_num
    rw [pow_succ, pow_succ, ← mul_assoc, ← div_div]
    -- Porting note: removed `convert le_rfl`
    all_goals (repeat' apply pow_pos); norm_num
  apply lt_of_lt_of_le this (le_of_eq _); rw [add_mul]; congr 1
  · rw [pow_succ _ (n + 1), ← mul_assoc, div_mul_cancel, mul_comm]; norm_num
  rw [pow_succ, ← pow_mul, mul_comm n 2, pow_mul, show (2 : ℝ) ^ 2 = 4 by norm_num, pow_succ,
    pow_succ, ← mul_assoc (2 : ℝ), show (2 : ℝ) * 2 = 4 by norm_num, ← mul_assoc, div_mul_cancel,
    mul_comm ((2 : ℝ) ^ n), ← div_div, div_mul_cancel]
  apply pow_ne_zero; norm_num; norm_num
#align real.pi_lt_sqrt_two_add_series Real.pi_lt_sqrtTwoAddSeries

/-- From an upper bound on `sqrtTwoAddSeries 0 n = 2 cos (π / 2 ^ (n+1))` of the form
`sqrtTwoAddSeries 0 n ≤ 2 - (a / 2 ^ (n + 1)) ^ 2)`, one can deduce the lower bound `a < π`
thanks to basic trigonometric inequalities as expressed in `pi_gt_sqrtTwoAddSeries`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant6803b118221798483084ca7ba9b6c8a780e6adfc5cca88bacd10eb826501d1dd.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13925628247ba7c9ac93755701ba0c9b4842a8f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
