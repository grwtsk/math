# actualXiEarlyReturnedBudget_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:994163b8-83d2-5d21-fc9b-494e38ef8225",
  "kind": "theorem",
  "lexical_name": "actualXiEarlyReturnedBudget_tendsto_zero",
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
  "slug": "actualxiearlyreturnedbudget-tendsto-zero--b897ad59a8f421b7300d9d28",
  "source": {
    "blob": "3c75302c6e943ff6ba06cd7ac354cfd49c921370",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt07/Variant5d348471d325090f36b167ca1958fef9b0b9ddf02b8a52155b61f7bbbf19a4d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b897ad59a8f421b7300d9d28d7c253490430f995fab1867aff7210f7a9c2be3a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt07/Variant5d348471d325090f36b167ca1958fef9b0b9ddf02b8a52155b61f7bbbf19a4d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:994163b8-83d2-5d21-fc9b-494e38ef8225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiEarlyReturnedBudget_tendsto_zero :
    Tendsto actualXiEarlyReturnedBudget atTop (𝓝 (0 : ℝ)) := by
  have hlog : Tendsto (fun A : ℝ => Real.log A / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero, pow_one] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 (by norm_num)
  have hu : Tendsto (fun A : ℝ =>
      288 * actualDampedXiFiniteBudget * (Real.log A / A)) atTop (𝓝 (0 : ℝ)) := by
    simpa only [mul_zero] using hlog.const_mul (288 * actualDampedXiFiniteBudget)
  apply squeeze_zero' _ _ hu
  · filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
    unfold actualXiEarlyReturnedBudget actualDampedXiFiniteBudget
      RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant
    have hla : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
    have hp : 0 < A := by linarith
    positivity
  · filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
    have hp : 0 < A := by linarith
    have hla : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
    have hb : 0 ≤ actualDampedXiFiniteBudget := by
      unfold actualDampedXiFiniteBudget
        RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant
      positivity
    have hsq : 1 ≤ A ^ 2 := by nlinarith
    have hpow : A ≤ A ^ 3 := by
      calc
        A = A * 1 := by ring
        _ ≤ A * A ^ 2 := mul_le_mul_of_nonneg_left hsq hp.le
        _ = A ^ 3 := by ring
    have hq : 67 / A ^ 3 ≤ 67 / A :=
      div_le_div_of_nonneg_left (by norm_num) hp hpow
    unfold actualXiEarlyReturnedBudget
    calc
      _ ≤ 4 * actualDampedXiFiniteBudget * Real.log A * (67 / A + 5 / A) :=
        mul_le_mul_of_nonneg_left (add_le_add hq le_rfl) (by positivity)
      _ = _ := by ring

/-- Actual early returned work, rather than a surrogate budget, tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt07/Variant5d348471d325090f36b167ca1958fef9b0b9ddf02b8a52155b61f7bbbf19a4d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt07/Variant5d348471d325090f36b167ca1958fef9b0b9ddf02b8a52155b61f7bbbf19a4d2.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c75302c6e943ff6ba06cd7ac354cfd49c921370` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
