# actual_laplace_square_le_full_absolute_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d155a8ba-a4f8-ee99-1fe9-e1f5d94abf8d",
  "kind": "theorem",
  "lexical_name": "actual_laplace_square_le_full_absolute_norm",
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
  "slug": "actual-laplace-square-le-full-absolute-norm--ea42025130e66beb84158ed9",
  "source": {
    "blob": "ac073defd5ee3f5d5897294cd67dd1ed70970fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea42025130e66beb84158ed91896ea78d43ee4814aba8af1bd7d2873f70f93e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d155a8ba-a4f8-ee99-1fe9-e1f5d94abf8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_laplace_square_le_full_absolute_norm {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    (testMoment A σ) ^ 2 ≤ normPrice A σ := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have hf : Continuous (fun t ↦ Real.exp (σ * t) * C A t) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hc
  have hreflect : (∫ t in -(2 * A)..0, Real.exp (σ * t) * C A t) =
      ∫ t in (0 : ℝ)..2 * A, Real.exp ((-σ) * t) * C A t := by
    calc
      _ = ∫ t in (0 : ℝ)..2 * A, Real.exp (σ * (-t)) * C A (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg (fun t ↦ Real.exp (σ * t) * C A t)
            (a := 0) (b := 2 * A)).symm
      _ = _ := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        rw [sourceCorrelation_even A t]
        congr 2
        ring
  have hs := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (a := -(2 * A)) (b := 0) (c := 2 * A)
    (hf.intervalIntegrable _ _) (hf.intervalIntegrable _ _)
  rw [hreflect] at hs
  have hm := actual_full_moment_retains_negative_half hA σ
  have heq : (testMoment A σ) ^ 2 =
      ∫ t in (-2 * A)..2 * A, Real.exp (σ * t) * C A t := by
    have hn : -(2 * A) = -2 * A := by ring
    rw [hn] at hs
    linarith
  rw [heq]
  apply intervalIntegral.integral_mono_on (by linarith : -2 * A ≤ 2 * A)
    (hf.intervalIntegrable _ _) (full_weighted_norm_integrand_intervalIntegrable hA σ)
  intro t _
  simpa only [mul_comm] using
    mul_le_mul_of_nonneg_right (le_abs_self (C A t)) (Real.exp_pos (σ * t)).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac073defd5ee3f5d5897294cd67dd1ed70970fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
