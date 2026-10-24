# bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e9a8fb4-8a19-e9ad-1d4a-c5e9b5b422b8",
  "kind": "theorem",
  "lexical_name": "bound",
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
  "slug": "bound--019de4dec0668b6deb349e3e",
  "source": {
    "blob": "eba11409f746e83907ea713f3bf49fbd27f455b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 453,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:019de4dec0668b6deb349e3e3fe21faed4de16dcf941e6a393792ef48d75cb03",
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

Occurrence: `result:4e9a8fb4-8a19-e9ad-1d4a-c5e9b5b422b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bound (hN : 4096 ≤ N) : (N : ℝ) ^ (1 / nValue N : ℝ) / exp 1 < dValue N := by
  apply div_lt_floor _
  rw [← log_le_log, log_rpow, mul_comm, ← div_eq_mul_one_div]
  · apply le_trans _ (div_le_div_of_le_left _ _ (ceil_lt_mul _).le)
    rw [mul_comm, ← div_div, div_sqrt, le_div_iff]
    · norm_num; exact le_sqrt_log hN
    · norm_num1
    · apply log_nonneg
      rw [one_le_cast]
      exact hN.trans' (by norm_num1)
    · rw [cast_pos, lt_ceil, cast_zero, Real.sqrt_pos]
      refine' log_pos _
      rw [one_lt_cast]
      exact hN.trans_lt' (by norm_num1)
    apply le_sqrt_of_sq_le
    have : ((12 : ℕ) : ℝ) * log 2 ≤ log N := by
      rw [← log_rpow zero_lt_two, log_le_log, rpow_nat_cast]
      · norm_num1
        exact_mod_cast hN
      · exact rpow_pos_of_pos zero_lt_two _
      rw [cast_pos]
      exact hN.trans_lt' (by norm_num1)
    refine' le_trans _ this
    rw [← div_le_iff']
    · exact log_two_gt_d9.le.trans' (by norm_num1)
    · norm_num1
  · rw [cast_pos]
    exact hN.trans_lt' (by norm_num1)
  · refine' div_pos zero_lt_two _
    rw [sub_pos, div_lt_one (exp_pos _)]
    exact lt_of_le_of_lt (by norm_num1) exp_one_gt_d9
  apply rpow_pos_of_pos
  rw [cast_pos]
  exact hN.trans_lt' (by norm_num1)
#align behrend.bound Behrend.bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba11409f746e83907ea713f3bf49fbd27f455b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
