# dValue_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c88d0cc6ea789f844c1965755e3aff73d42ed2f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:043b3fa2-63f8-34f8-fca9-b67f1cac5ac2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:475c0161-318e-f371-900b-c9400f6b74e5",
  "kind": "theorem",
  "lexical_name": "dValue_pos",
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
  "slug": "dvalue-pos--3355c74ef928dd2a8e15003d",
  "source": {
    "blob": "c88d0cc6ea789f844c1965755e3aff73d42ed2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 406,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3355c74ef928dd2a8e15003d92ccb490c4c55717af0a1d502ad0bd90c0c5cf22",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:475c0161-318e-f371-900b-c9400f6b74e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dValue_pos (hN₃ : 8 ≤ N) : 0 < dValue N := by
  have hN₀ : 0 < (N : ℝ) := cast_pos.2 (succ_pos'.trans_le hN₃)
  rw [dValue, floor_pos, ← log_le_log zero_lt_one, log_one, log_div _ two_ne_zero, log_rpow hN₀,
    div_mul_eq_mul_div, one_mul, sub_nonneg, le_div_iff]
  · have : (nValue N : ℝ) ≤ 2 * sqrt (log N) := by
      apply (ceil_lt_add_one <| sqrt_nonneg _).le.trans
      rw [two_mul, add_le_add_iff_left]
      apply le_sqrt_of_sq_le
      rw [one_pow, le_log_iff_exp_le hN₀]
      exact (exp_one_lt_d9.le.trans <| by norm_num).trans (cast_le.2 hN₃)
    apply (mul_le_mul_of_nonneg_left this <| log_nonneg one_le_two).trans _
    rw [← mul_assoc, ← le_div_iff (Real.sqrt_pos.2 <| log_pos <| one_lt_cast.2 _), div_sqrt]
    · apply log_two_mul_two_le_sqrt_log_eight.trans
      apply Real.sqrt_le_sqrt
      rw [log_le_log _ hN₀]
      · exact_mod_cast hN₃
      · norm_num
    exact hN₃.trans_lt' (by norm_num)
  · exact cast_pos.2 (nValue_pos <| hN₃.trans' <| by norm_num)
  · exact (rpow_pos_of_pos hN₀ _).ne'
  · exact div_pos (rpow_pos_of_pos hN₀ _) zero_lt_two
#align behrend.d_value_pos Behrend.dValue_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c88d0cc6ea789f844c1965755e3aff73d42ed2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
