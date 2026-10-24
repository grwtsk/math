# actualTiltBandState_moving_norm_sq_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:331469c6-6da1-d6d4-f790-a34a60b75d54",
  "kind": "theorem",
  "lexical_name": "actualTiltBandState_moving_norm_sq_tendsto_atTop",
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
  "slug": "actualtiltbandstate-moving-norm-sq-tendsto-attop--26df982490dfe2521fc4bcd7",
  "source": {
    "blob": "519daccbb2f12c684a02c6489d63aa253f3f3d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variant11485f38ec46e27b78d1a497c81ad8562e8dbea1800019b20674cf0e977aefc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26df982490dfe2521fc4bcd79b1032ff885e2a69d20bd5b059b0761627e1da33",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variant11485f38ec46e27b78d1a497c81ad8562e8dbea1800019b20674cf0e977aefc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:331469c6-6da1-d6d4-f790-a34a60b75d54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltBandState_moving_norm_sq_tendsto_atTop :
    Tendsto (fun A : ℝ => ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2)
      atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 10) atTop atTop := by
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 10)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hk : 0 < actualCentralFrequencyConstant / actualRightLineMass (3 / 2) :=
    div_pos actualCentralFrequencyConstant_pos right_mass_pos
  have hh : Tendsto (fun A : ℝ =>
      (actualCentralFrequencyConstant / actualRightLineMass (3 / 2)) *
        Real.exp (2 * A) / A ^ 10) atTop atTop := by
    convert ht.const_mul_atTop hk using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualTiltBandState_moving_norm_sq_eventually_lower hh

end FormalResearch.RiemannHypothesis.SourceActualTiltProjectedDivergence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variant11485f38ec46e27b78d1a497c81ad8562e8dbea1800019b20674cf0e977aefc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualTiltProjectedDivergence/Variant11485f38ec46e27b78d1a497c81ad8562e8dbea1800019b20674cf0e977aefc1.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519daccbb2f12c684a02c6489d63aa253f3f3d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
