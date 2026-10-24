# plainSourceSum_eq_moment_add_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7de8dd7c-df65-4e34-60d2-0d3d70d5b21a",
  "kind": "theorem",
  "lexical_name": "plainSourceSum_eq_moment_add_error",
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
  "slug": "plainsourcesum-eq-moment-add-error--1b73826bbe3309647c44c638",
  "source": {
    "blob": "5627ded9790ea30809e1b68c6d4a18eb6b747569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantc172b42f378335bc88bf853dd0d92eef3bf92793ff247ee53e2c56336e57bc2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b73826bbe3309647c44c638b62d786b7b07e7a731c8e46f741d931e40616a74",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantc172b42f378335bc88bf853dd0d92eef3bf92793ff247ee53e2c56336e57bc2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7de8dd7c-df65-4e34-60d2-0d3d70d5b21a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainSourceSum_eq_moment_add_error (A : ℝ) (hA : 1 ≤ A) :
    plainSourceSum A = criticalContinuousMoment A + quadratureError A := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hp
  have hf : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hu : F (2 * A) = 0 := by
    dsimp [F, exponentialTest, C]
    rw [sourceCorrelation_upper_endpoint A hp, mul_zero]
  have hz : F 0 = 1 := by
    simp [F, exponentialTest, C, actual_correlation_at_zero A hA]
  have hfd : deriv F = fun s => -Real.exp (-s / 2) * kapitzaKernel A s := by
    ext s
    rw [exponentialTest_deriv C hc]
    dsimp [kapitzaKernel, C]
    ring
  have hweight : (fun s => (Real.exp s - 1) * deriv F s) =
      fun s => -kapitzaWeight A s - deriv F s := by
    ext s
    rw [hfd]
    have he : Real.exp s * Real.exp (-s / 2) = Real.exp (s / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    calc
      _ = -(Real.exp s * Real.exp (-s / 2)) * kapitzaKernel A s +
          Real.exp (-s / 2) * kapitzaKernel A s := by ring
      _ = _ := by rw [he]; unfold kapitzaWeight; ring
  have hi := unitPrefix_mul_deriv_intervalIntegrable (2 * A) (by linarith) F hf
  have hd := hf.continuous_deriv_one.intervalIntegrable (μ := volume) 0 (2 * A)
  have hw := (kapitzaWeight_continuous A hp).intervalIntegrable (μ := volume) 0 (2 * A)
  have hx : IntervalIntegrable (fun s => (Real.exp s - 1) * deriv F s)
      volume 0 (2 * A) := by
    rw [hweight]
    exact hw.neg.sub hd
  have hphase : IntervalIntegrable (fun s => cutoffPhase s * deriv F s)
      volume 0 (2 * A) := by
    apply (hx.sub hi).congr
    intro s hs
    have hs0 : 0 ≤ s := (uIoc_of_le (by linarith : 0 ≤ 2 * A) ▸ hs).1.le
    dsimp only
    rw [unitPrefix_eq_phase s hs0]
    ring
  have hint : (∫ s in 0..2 * A, unitPrefix s * deriv F s) =
      (∫ s in 0..2 * A, (Real.exp s - 1) * deriv F s) -
        ∫ s in 0..2 * A, cutoffPhase s * deriv F s := by
    rw [← intervalIntegral.integral_sub hx hphase]
    apply intervalIntegral.integral_congr
    intro s hs
    dsimp only
    rw [unitPrefix_eq_phase s ((uIcc_of_le (by linarith : 0 ≤ 2 * A) ▸ hs).1)]
    ring
  have hparts := intervalIntegral.integral_deriv_eq_sub
    (fun s _ => hf.differentiable (by norm_num) s) hd
  rw [hu, hz] at hparts
  have hab := unitPrefix_abel (2 * A) (by linarith) F hf
  rw [hu] at hab
  simp only [zero_sub] at hab
  rw [Finset.sum_neg_distrib] at hab
  have hsum : (∑ n ∈ primePowerInventory (2 * A), F (Real.log n)) = plainSourceSum A := rfl
  have hsub := intervalIntegral.integral_sub hw.neg hd
  simp only [Pi.neg_apply] at hsub
  rw [hsum, hint, hweight, hsub,
    intervalIntegral.integral_neg, hparts] at hab
  have he : (∫ s in 0..2 * A, cutoffPhase s * deriv F s) = quadratureError A := by
    rw [hfd]
    unfold quadratureError
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro s _
    ring
  rw [he] at hab
  change -kernelMomentZero A - (0 - 1) - quadratureError A = -plainSourceSum A at hab
  rw [kernelMomentZero_eq A hA] at hab
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantc172b42f378335bc88bf853dd0d92eef3bf92793ff247ee53e2c56336e57bc2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantc172b42f378335bc88bf853dd0d92eef3bf92793ff247ee53e2c56336e57bc2d.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5627ded9790ea30809e1b68c6d4a18eb6b747569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
