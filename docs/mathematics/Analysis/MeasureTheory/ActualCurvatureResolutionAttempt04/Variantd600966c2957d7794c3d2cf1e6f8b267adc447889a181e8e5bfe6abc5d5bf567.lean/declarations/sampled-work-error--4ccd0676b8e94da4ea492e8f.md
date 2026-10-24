# sampled_work_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d3ef702-168f-c048-4a58-2519ca9ab951",
  "kind": "theorem",
  "lexical_name": "sampled_work_error",
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
  "slug": "sampled-work-error--4ccd0676b8e94da4ea492e8f",
  "source": {
    "blob": "c6908d28763393c2a04c7836e46a04e0a1820894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 39,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ccd0676b8e94da4ea492e8f27b6032d404a18665ef738319e31f9db36a7ff19",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d3ef702-168f-c048-4a58-2519ca9ab951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampled_work_error {A h : ℝ} {s : ℝ → ℝ} (hA : 1≤A) (_hh : 0≤h)
    (hs : Measurable s)
    (hrange : ∀ u∈Icc (0:ℝ) (2*A),s u∈Icc (0:ℝ) (2*A))
    (hmesh : ∀ u∈Icc (0:ℝ) (2*A),|s u-u|≤h) :
    |sampledCurvatureWork A s-criticalRemovedPairedWork A|≤
      (389/40:ℝ)*h*curvatureVariation A := by
  have hp : 0<A := by linarith
  have his := sampled_integrand_intervalIntegrable hA hs hrange
  have hia := actual_bridge_curvature_intervalIntegrable hA
  have hide := his.sub hia
  rw [sampledCurvatureWork,actual_second_Abel hA,←intervalIntegral.integral_sub his hia]
  calc
    _ ≤ ∫ u in 0..2*A, |criticalDiscrepancyBridge A (s u)*pairedTailCurvature A u-
        criticalDiscrepancyBridge A u*pairedTailCurvature A u| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ u in 0..2*A, ((389/40:ℝ)*h)*|pairedTailCurvature A u| := by
      apply intervalIntegral.integral_mono_on (by linarith) hide.abs
        ((pairedTailCurvature_intervalIntegrable hA 0 (2*A)).abs.const_mul _)
      intro u hu
      rw [←sub_mul,abs_mul]
      have hb := actual_bridge_lipschitz hp hu (hrange u hu)
      have hb2 : |criticalDiscrepancyBridge A (s u)-criticalDiscrepancyBridge A u|≤
          (389/40:ℝ)*h := hb.trans (mul_le_mul_of_nonneg_left (hmesh u hu) (by norm_num))
      exact mul_le_mul_of_nonneg_right hb2 (abs_nonneg _)
    _ = _ := by rw [intervalIntegral.integral_const_mul];rfl

/-- Uniform left grid, including the closed upper point; outside-domain values are irrelevant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6908d28763393c2a04c7836e46a04e0a1820894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
