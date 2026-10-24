# continuousRamp_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50263955-a2a9-f2cb-131f-ec978e9224c1",
  "kind": "theorem",
  "lexical_name": "continuousRamp_pairing",
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
  "slug": "continuousramp-pairing--c9b09d3d8d399fe85f69178b",
  "source": {
    "blob": "8225d44b41a05bd1b36f3adb5a242453ef3f67ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9b09d3d8d399fe85f69178bd84ba4c8f6dd9188ef943fd8476a7275a40a8e9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50263955-a2a9-f2cb-131f-ec978e9224c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem continuousRamp_pairing {A : ℝ} (hA : 0 < A) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualRieszContinuousRamp t) = criticalContinuousMoment A := by
  let C := sourceCorrelation explicitSecondDerivative A
  let Q' := fun t : ℝ => 2 * Real.exp (t / 2) - 2
  have hC : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hC' : ContDiff ℝ 1 (deriv C) := sourceCorrelation_deriv_contDiff hA
  have hQ' : Continuous Q' := by fun_prop
  have hp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := actualRieszContinuousRamp) (u' := Q') (v := deriv C)
    (v' := deriv (deriv C)) (fun t _ => continuousRamp_deriv t)
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (hQ'.intervalIntegrable 0 (2 * A)) (hC'.continuous_deriv_one.intervalIntegrable 0 (2 * A))
  have hq := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := Q') (u' := fun t => Real.exp (t / 2)) (v := C) (v' := deriv C)
    (fun t _ => continuousRamp_first_deriv t)
    (fun t _ => (hC.differentiable (by norm_num) t).hasDerivAt)
    ((Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable 0 (2 * A))
    (hC'.continuous.intervalIntegrable 0 (2 * A))
  have hz : C (2 * A) = 0 := sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA
    (by rw [abs_of_nonneg (by linarith : 0 ≤ 2 * A)])
  have hz' : deriv C (2 * A) = 0 :=
    sourceCorrelation_deriv_zero_of_two_mul_le A _ hA le_rfl
  have hq0 : Q' 0 = 0 := by simp [Q']
  have hQ0 : actualRieszContinuousRamp 0 = 0 := by simp [actualRieszContinuousRamp]
  rw [hz', hQ0, mul_zero, zero_mul, zero_sub] at hp
  rw [hz, hq0, mul_zero, zero_mul, zero_sub] at hq
  have hc : (∫ t in 0..2 * A, deriv (deriv C) t * actualRieszContinuousRamp t) =
      ∫ t in 0..2 * A, actualRieszContinuousRamp t * deriv (deriv C) t := by
    apply intervalIntegral.integral_congr
    intro t _
    ring
  rw [hc]
  change _ = ∫ t in 0..2 * A, Real.exp (t / 2) * C t
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8225d44b41a05bd1b36f3adb5a242453ef3f67ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
