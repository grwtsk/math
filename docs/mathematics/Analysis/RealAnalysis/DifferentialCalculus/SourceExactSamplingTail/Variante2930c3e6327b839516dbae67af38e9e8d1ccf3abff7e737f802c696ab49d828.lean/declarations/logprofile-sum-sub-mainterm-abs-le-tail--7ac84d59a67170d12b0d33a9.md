# logProfile_sum_sub_mainTerm_abs_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a3062eb-7957-e8cd-e3ea-704413974421",
  "kind": "theorem",
  "lexical_name": "logProfile_sum_sub_mainTerm_abs_le_tail",
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
  "slug": "logprofile-sum-sub-mainterm-abs-le-tail--7ac84d59a67170d12b0d33a9",
  "source": {
    "blob": "586c016114706d80eff6afbcc3344d08ca816c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ac84d59a67170d12b0d33a93fc3f9cf45973e4968ec66e2cf6eb06cdede0913",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a3062eb-7957-e8cd-e3ea-704413974421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logProfile_sum_sub_mainTerm_abs_le_tail {Q A k : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) (hk : 1 ≤ k) :
    |(∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) -
      sourceLogSamplingMainTerm A k| ≤ 96 * (tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k) := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hkp : 0 < k := lt_of_lt_of_le (by norm_num) hk
  have hquad := positive_axis_quadrature (logProfile A k) (logProfile_contDiff hp k)
    (logProfile_hasCompactSupport hp k) (sourceKernelCutoff A)
    (fun u hu ↦ by simp [logProfile, not_lt.mpr hu])
    (fun u hu ↦ logProfile_cutoff_tail hA hk hu)
  rw [logProfile_positive_integral_zero hA k, sub_zero] at hquad
  rw [hquad, ← log_model_integral_eq_mainTerm,
    ← integral_sub (fractional_derivative_integrable (logProfile_contDiff hp k)
      (logProfile_hasCompactSupport hp k)) (log_model_integrand_integrable A k)]
  let c : ℝ := (tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k)
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hmaj : IntegrableOn (fun u ↦ c *
      (3 / 2 * absoluteCoefficientWeight 2 u + absoluteCoefficientWeight 3 u / 4))
      (Ioi (0 : ℝ)) :=
    (((absoluteCoefficientWeight_integrable 2).const_mul (3 / 2 : ℝ)).add
      ((absoluteCoefficientWeight_integrable 3).div_const 4)).const_mul c
  have hbound := norm_integral_le_of_norm_le
    (f := fun u ↦ Int.fract u * deriv (logProfile A k) u -
      Int.fract u * logModelDerivative A k u) hmaj (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, ← mul_sub, abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
    calc
      _ ≤ Int.fract u *
          ((tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
            (3 / 2 * (Real.log u) ^ 2 + |Real.log u| ^ 3 / 4)) :=
        mul_le_mul_of_nonneg_left (log_derivative_difference_abs_le_tail hQ hQA hkp hu)
          (Int.fract_nonneg u)
      _ = _ := by
        dsimp [c, absoluteCoefficientWeight]
        rw [sq_abs]
        ring)
  rw [Real.norm_eq_abs] at hbound
  apply hbound.trans
  rw [integral_const_mul,
    integral_add ((absoluteCoefficientWeight_integrable 2).const_mul (3 / 2 : ℝ))
      ((absoluteCoefficientWeight_integrable 3).div_const 4),
    integral_const_mul, integral_div]
  change c * (3 / 2 * absoluteCoefficientMoment 2 + absoluteCoefficientMoment 3 / 4) ≤ _
  have h2 := absoluteCoefficientMoment_le_factorial 2
  have h3 := absoluteCoefficientMoment_le_factorial 3
  norm_num at h2 h3
  calc
    _ ≤ c * (3 / 2 * 32 + 192 / 4) := by gcongr
    _ = _ := by dsimp [c]; ring


/-- The literal closed plain kernel uses every admitted positive product shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586c016114706d80eff6afbcc3344d08ca816c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
