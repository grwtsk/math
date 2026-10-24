# actual_bump_complete_endpoint_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2ee9e8a-3ccb-e3ae-9a24-ad460af77e3b",
  "kind": "theorem",
  "lexical_name": "actual_bump_complete_endpoint_norm_le",
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
  "slug": "actual-bump-complete-endpoint-norm-le--c1d8dacec61c46bb9e73dd2a",
  "source": {
    "blob": "087f10fa63867eecf5225055eec5eaec02206b0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 71,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualSharpZeroTail/Varianteeafc8b8192badf004d136dba75a013b58f9f394ed089bdf4cfe1c784f3620cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d8dacec61c46bb9e73dd2aa73da7918c6d77de5b9bcda8dcd54c95496b6873",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualSharpZeroTail/Varianteeafc8b8192badf004d136dba75a013b58f9f394ed089bdf4cfe1c784f3620cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ee9e8a-3ccb-e3ae-9a24-ad460af77e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bump_complete_endpoint_norm_le (z : ℂ) (hz : z ≠ 0) :
    ‖bumpLaplace z‖ ≤
      384 * (Real.exp z.re + Real.exp (-z.re)) *
        (‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105) / ‖z‖ ^ 9 := by
  rw [bump_laplace_endpoint_formula z hz, norm_mul, norm_div, norm_pow]
  norm_num
  have h := norm_sub_le
    (Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105))
    (Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105))
  simp only [norm_mul, Complex.norm_exp, Complex.neg_re] at h
  have hm := mul_le_mul_of_nonneg_left (endpoint_minus_norm_le z) (Real.exp_pos _).le
  have hp := mul_le_mul_of_nonneg_left (endpoint_plus_norm_le z) (Real.exp_pos _).le
  have hi :
      ‖Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
        Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)‖ ≤
      (Real.exp z.re + Real.exp (-z.re)) *
        (‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105) := by
    nlinarith only [h, hm, hp]
  have hd : 0 < ‖z‖ ^ 9 := pow_pos (norm_pos_iff.mpr hz) _
  apply (div_le_iff₀ hd).mpr
  field_simp
  exact mul_le_mul_of_nonneg_left hi (by norm_num : (0 : ℝ) ≤ 384)

end RH16ActualSharpZeroTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualSharpZeroTail/Varianteeafc8b8192badf004d136dba75a013b58f9f394ed089bdf4cfe1c784f3620cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualSharpZeroTail/Varianteeafc8b8192badf004d136dba75a013b58f9f394ed089bdf4cfe1c784f3620cf.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `087f10fa63867eecf5225055eec5eaec02206b0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
