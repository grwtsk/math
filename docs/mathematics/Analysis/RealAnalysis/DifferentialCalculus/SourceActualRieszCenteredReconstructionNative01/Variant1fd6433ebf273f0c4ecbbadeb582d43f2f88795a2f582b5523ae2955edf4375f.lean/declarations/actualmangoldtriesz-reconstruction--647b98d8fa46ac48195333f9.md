# actualMangoldtRiesz_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7aff69c9-10bb-a6b8-c70c-8db0dfd2f695",
  "kind": "theorem",
  "lexical_name": "actualMangoldtRiesz_reconstruction",
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
  "slug": "actualmangoldtriesz-reconstruction--647b98d8fa46ac48195333f9",
  "source": {
    "blob": "8225d44b41a05bd1b36f3adb5a242453ef3f67ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:647b98d8fa46ac48195333f94b4628aef472e4a2063d81dc76ff245036fb11f2",
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

Occurrence: `result:7aff69c9-10bb-a6b8-c70c-8db0dfd2f695`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtRiesz_reconstruction {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A +
      ∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        actualMangoldtRieszPrimitive t := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let S := fun t => ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)
  have hC'' := (sourceCorrelation_deriv_contDiff hp).continuous_deriv_one
  have hS : Continuous S := by
    exact continuous_finset_sum _ (fun n _ => (ramp_continuous (Real.log n)).const_mul _)
  have he : (∫ t in 0..2 * A, deriv (deriv C) t * actualMangoldtRieszPrimitive t) =
      (∫ t in 0..2 * A, deriv (deriv C) t * S t) -
        (∫ t in 0..2 * A, deriv (deriv C) t * actualRieszContinuousRamp t) := by
    rw [← intervalIntegral.integral_sub ((hC''.mul hS).intervalIntegrable 0 (2 * A))
      ((hC''.mul continuousRamp_contDiff.continuous).intervalIntegrable 0 (2 * A))]
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)] at ht
    rw [actualMangoldtRieszPrimitive_eq_fixed_ramps ht.2]
    change _ = deriv (deriv C) t * S t - _
    ring
  have hs : (∫ t in 0..2 * A, deriv (deriv C) t * S t) = closedPrimeMoment A := by
    have heq : (fun t => deriv (deriv C) t * S t) =
        ∑ n ∈ primePowerInventory (2 * A), fun t =>
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
            (deriv (deriv C) t * max 0 (t - Real.log n)) := by
      funext t
      simp only [S, Finset.sum_apply, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      ring
    rw [heq, intervalIntegral.integral_finset_sum]
    · unfold closedPrimeMoment
      apply Finset.sum_congr rfl
      intro n hn
      rw [intervalIntegral.integral_const_mul,
        ramp_integral hp (mangoldtInventory_log_bounds _ _ hn).1
          (mangoldtInventory_log_bounds _ _ hn).2]
      exact coefficient_transport (by have hn' := Finset.mem_Icc.mp hn; omega)
    · intro n _
      exact ((hC''.mul (ramp_continuous (Real.log n))).const_mul _).intervalIntegrable 0 (2 * A)
  rw [he, hs, continuousRamp_pairing hp, mertensResidual_eq_closedPrimeMoment A hA]
  ring

/-- The actual positive rational center is evaluated independently of the residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variant1fd6433ebf273f0c4ecbbadeb582d43f2f88795a2f582b5523ae2955edf4375f.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8225d44b41a05bd1b36f3adb5a242453ef3f67ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
