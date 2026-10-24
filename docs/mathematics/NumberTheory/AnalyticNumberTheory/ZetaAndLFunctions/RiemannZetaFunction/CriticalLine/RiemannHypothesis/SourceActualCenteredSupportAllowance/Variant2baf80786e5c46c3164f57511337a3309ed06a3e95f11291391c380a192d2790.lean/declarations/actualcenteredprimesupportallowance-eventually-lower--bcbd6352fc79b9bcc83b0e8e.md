# actualCenteredPrimeSupportAllowance_eventually_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef3f5243-5119-5009-0356-d21bdcdc3437",
  "kind": "theorem",
  "lexical_name": "actualCenteredPrimeSupportAllowance_eventually_lower",
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
  "slug": "actualcenteredprimesupportallowance-eventually-lower--bcbd6352fc79b9bcc83b0e8e",
  "source": {
    "blob": "81f6fe1b3f95789700f80a6421de0d51fa7fd320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant2baf80786e5c46c3164f57511337a3309ed06a3e95f11291391c380a192d2790.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcbd6352fc79b9bcc83b0e8eaea4dd3f42f212c0edb39a577550d27c66a7e4e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant2baf80786e5c46c3164f57511337a3309ed06a3e95f11291391c380a192d2790.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef3f5243-5119-5009-0356-d21bdcdc3437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredPrimeSupportAllowance_eventually_lower :
    ∀ᶠ A : ℝ in atTop,
      (5184 * Real.exp (-(3 / 2) * Real.log 2) / Real.pi) *
        Real.exp (2 * A) / A ^ 9 ≤ actualCenteredPrimeSupportAllowance A := by
  filter_upwards [actualEulerMellinSlope_moving_variation_eventually_lower,
    eventually_ge_atTop (max 1 (endpointConstant (3 / 2)))] with A hV hA
  have h1 : 1 ≤ A := (le_max_left _ _).trans hA
  let T := actualBumpMovingHeight A (3 / 2)
  have hT : 0 < T := Real.exp_pos _
  have hin := actualEulerMellinSlope_norm_intervalIntegrable A (3 / 2) (-T) 0
  have hip := actualEulerMellinSlope_norm_intervalIntegrable A (3 / 2) 0 T
  norm_num at hin hip
  have hsplit := intervalIntegral.integral_add_adjacent_intervals hin hip
  have hneg : 0 ≤ ∫ t in -T..0,
      ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ :=
    intervalIntegral.integral_nonneg (by linarith) (fun _ _ => norm_nonneg _)
  have hfull : 20736 * Real.exp (2 * A) / A ^ 9 ≤ ∫ t in -T..T,
      ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ := by
    change 20736 * Real.exp (2 * A) / A ^ 9 ≤ ∫ t in 0..T, _ at hV
    linarith
  have hp := moving_endpoint_budget A hA T (abs_of_pos hT)
  have hm := moving_endpoint_budget A hA (-T) (by rw [abs_neg, abs_of_pos hT])
  simp only [Complex.ofReal_neg] at hm
  have hpi : (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (T : ℂ) * I)).im ≤
      5184 * Real.exp (2 * A) / A ^ 9 :=
    (le_abs_self _).trans ((Complex.abs_im_le_norm _).trans hp)
  have hmi : -(5184 * Real.exp (2 * A) / A ^ 9) ≤
      (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (-T : ℂ) * I)).im := by
    exact (neg_le_neg hm).trans
      ((neg_le_neg (Complex.abs_im_le_norm _)).trans (neg_abs_le _))
  have hbracket : 10368 * Real.exp (2 * A) / A ^ 9 ≤
      (∫ t in -T..T, ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖) -
        (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (T : ℂ) * I)).im +
        (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (-T : ℂ) * I)).im := by
    have h4 : 20736 * Real.exp (2 * A) / A ^ 9 =
        4 * (5184 * Real.exp (2 * A) / A ^ 9) := by ring
    have h2 : 10368 * Real.exp (2 * A) / A ^ 9 =
        2 * (5184 * Real.exp (2 * A) / A ^ 9) := by ring
    rw [h4] at hfull
    rw [h2]
    linarith
  have hM := mass_prime_two_lower A (3 / 2) h1
  have hMn := actualClosedPrimeLogMass_nonneg A (3 / 2)
  unfold actualCenteredPrimeSupportAllowance
  change _ ≤ (actualClosedPrimeLogMass A (3 / 2) / (2 * Real.pi)) * _
  calc
    _ = (Real.exp (-(3 / 2) * Real.log 2) / (2 * Real.pi)) *
        (10368 * Real.exp (2 * A) / A ^ 9) := by ring
    _ ≤ (actualClosedPrimeLogMass A (3 / 2) / (2 * Real.pi)) *
        (10368 * Real.exp (2 * A) / A ^ 9) :=
      mul_le_mul_of_nonneg_right (div_le_div_of_nonneg_right hM (by positivity))
        (by positivity)
    _ ≤ _ := mul_le_mul_of_nonneg_left hbracket (by positivity)

/-- This absolute-method support allowance diverges along all real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant2baf80786e5c46c3164f57511337a3309ed06a3e95f11291391c380a192d2790.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant2baf80786e5c46c3164f57511337a3309ed06a3e95f11291391c380a192d2790.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f6fe1b3f95789700f80a6421de0d51fa7fd320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
