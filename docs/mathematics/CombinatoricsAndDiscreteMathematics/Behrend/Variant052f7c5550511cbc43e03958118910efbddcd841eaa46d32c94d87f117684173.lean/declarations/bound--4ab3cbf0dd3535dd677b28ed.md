# bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cb1f7c7-f83c-1974-4599-a7769d445ede",
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
  "slug": "bound--4ab3cbf0dd3535dd677b28ed",
  "source": {
    "blob": "e3b152982f972ac8125d780b5fec3c1d428682dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 397,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ab3cbf0dd3535dd677b28ed302a5a42595cc947c5c40484ea4ebfd3a0c7bbf2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cb1f7c7-f83c-1974-4599-a7769d445ede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bound (hN : 4096 ≤ N) : (N : ℝ) ^ (nValue N : ℝ)⁻¹ / exp 1 < dValue N := by
  apply div_lt_floor _
  rw [← log_le_log_iff, log_rpow, mul_comm, ← div_eq_mul_inv]
  · apply le_trans _ (div_le_div_of_nonneg_left _ _ (ceil_lt_mul _).le)
    · rw [mul_comm, ← div_div, div_sqrt, le_div_iff₀]
      · norm_num; exact le_sqrt_log hN
      · norm_num1
    · apply log_nonneg
      rw [one_le_cast]
      exact hN.trans' (by norm_num1)
    · rw [cast_pos, lt_ceil, cast_zero, Real.sqrt_pos]
      refine log_pos ?_
      rw [one_lt_cast]
      exact hN.trans_lt' (by norm_num1)
    apply le_sqrt_of_sq_le
    have : (12 : ℕ) * log 2 ≤ log N := by
      rw [← log_rpow zero_lt_two, rpow_natCast]
      exact log_le_log (by positivity) (mod_cast hN)
    refine le_trans ?_ this
    rw [← div_le_iff₀']
    · exact log_two_gt_d9.le.trans' (by norm_num1)
    · norm_num1
  · rw [cast_pos]
    exact hN.trans_lt' (by norm_num1)
  · refine div_pos zero_lt_two ?_
    rw [sub_pos, div_lt_one (exp_pos _)]
    exact lt_of_le_of_lt (by norm_num1) exp_one_gt_d9
  positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b152982f972ac8125d780b5fec3c1d428682dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
