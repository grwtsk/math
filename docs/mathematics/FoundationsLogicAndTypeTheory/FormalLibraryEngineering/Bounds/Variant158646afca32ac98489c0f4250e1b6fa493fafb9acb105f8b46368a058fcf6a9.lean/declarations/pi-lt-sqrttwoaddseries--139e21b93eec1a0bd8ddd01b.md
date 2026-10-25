# pi_lt_sqrtTwoAddSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34d0be3eeddaefd40f133d088b77cca2c41b1b05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa427e65-03e0-bc48-d60c-e89ab55b49b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e860483b-a7a3-3b38-c144-cc951025b8a9",
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
  "slug": "pi-lt-sqrttwoaddseries--139e21b93eec1a0bd8ddd01b",
  "source": {
    "blob": "34d0be3eeddaefd40f133d088b77cca2c41b1b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:139e21b93eec1a0bd8ddd01bb3f99fa8b9b7c091d31212d10a883ef47301ac2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e860483b-a7a3-3b38-c144-cc951025b8a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–72.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant158646afca32ac98489c0f4250e1b6fa493fafb9acb105f8b46368a058fcf6a9.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34d0be3eeddaefd40f133d088b77cca2c41b1b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
