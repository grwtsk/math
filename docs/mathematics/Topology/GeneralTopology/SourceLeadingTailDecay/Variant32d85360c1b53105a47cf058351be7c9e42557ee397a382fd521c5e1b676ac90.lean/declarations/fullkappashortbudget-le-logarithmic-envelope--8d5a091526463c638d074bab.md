# fullKappaShortBudget_le_logarithmic_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1541e7f-ad87-1fc6-b66a-c4481b3b7deb",
  "kind": "theorem",
  "lexical_name": "fullKappaShortBudget_le_logarithmic_envelope",
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
  "slug": "fullkappashortbudget-le-logarithmic-envelope--8d5a091526463c638d074bab",
  "source": {
    "blob": "6782405422c3b04a2aeb2de95c8c44ca7004fe85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d5a091526463c638d074bab1ea02b3a719a4abc4596999ac819d6218f73154e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1541e7f-ad87-1fc6-b66a-c4481b3b7deb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullKappaShortBudget_le_logarithmic_envelope {A : ℝ} (hA : 91 ≤ A) :
    fullKappaShortBudget A ≤ logarithmicLeadingErrorEnvelope A := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have hU1 := (actual_cutoff_order A hA1).1
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_nonneg hU1
  have hl0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ht : Real.log (vaughanCutoff A : ℝ) ≤ 2 * Real.log A := by
    have hh := Real.log_le_log (by linarith : 0 < (vaughanCutoff A : ℝ)) hf
    simpa only [Real.log_pow, Nat.cast_ofNat] using hh
  have ht2 : (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 4 * (Real.log A) ^ 2 := by
    nlinarith
  have hAc : A ≤ A ^ 3 := by nlinarith [sq_nonneg (A - 1)]
  rw [fullKappaShortBudget_eq hp]
  calc
    _ ≤ (80 * |fullPositiveKappa 1| * (Real.log A) ^ 2 +
        80 * |fullPositiveKappa 2| * Real.log A + 20 * |fullPositiveKappa 3|) / A +
        (134 / 3 : ℝ) * |fullPositiveKappa 4| * Real.log A / A ^ 3 := by
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        nlinarith [mul_le_mul_of_nonneg_left ht2 (show 0 ≤ 20 * |fullPositiveKappa 1|
          by positivity), mul_le_mul_of_nonneg_left ht (show 0 ≤ 40 * |fullPositiveKappa 2|
          by positivity)]
      · apply div_le_div_of_nonneg_right _ (by positivity : 0 ≤ A ^ 3)
        nlinarith [mul_le_mul_of_nonneg_left ht
          (show 0 ≤ (67 / 3 : ℝ) * |fullPositiveKappa 4| by positivity)]
    _ ≤ (80 * |fullPositiveKappa 1| * (Real.log A) ^ 2 +
        80 * |fullPositiveKappa 2| * Real.log A + 20 * |fullPositiveKappa 3|) / A +
        (134 / 3 : ℝ) * |fullPositiveKappa 4| * Real.log A / A := by
      apply add_le_add_left
      exact div_le_div_of_nonneg_left (by positivity) hp hAc
    _ = _ := by unfold logarithmicLeadingErrorEnvelope; ring

/-- The true coefficient envelope vanishes along the original real scale domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6782405422c3b04a2aeb2de95c8c44ca7004fe85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
