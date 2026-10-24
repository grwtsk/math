# plainProfile_sum_sub_mainTerm_abs_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca2c62b5-a896-24da-c6bb-bc5bb30d5109",
  "kind": "theorem",
  "lexical_name": "plainProfile_sum_sub_mainTerm_abs_le_tail",
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
  "slug": "plainprofile-sum-sub-mainterm-abs-le-tail--efac55221f66a642dd643cbe",
  "source": {
    "blob": "ceec9745ec0d1e4cd1e95a1599d2ce1db4a3117b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant2df19bf8e2997ddaf3811563154bd9fb9215a3ce753ecaa4488d4986a3a773e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efac55221f66a642dd643cbea9ea7b336f0c2c1c8c8dffb1c991d630b9890b09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant2df19bf8e2997ddaf3811563154bd9fb9215a3ce753ecaa4488d4986a3a773e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca2c62b5-a896-24da-c6bb-bc5bb30d5109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainProfile_sum_sub_mainTerm_abs_le_tail {Q A k : ℝ}
    (hQ : 1 ≤ Q) (hQA : Q ≤ A) (hk : 1 ≤ k) :
    |(∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), plainProfile A k n) -
      sourcePlainSamplingMainTerm A k| ≤
        16 * (tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k) := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have hA : 1 ≤ A := hQ.trans hQA
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hkp : 0 < k := lt_of_lt_of_le (by norm_num) hk
  have hquad := positive_axis_quadrature (plainProfile A k) (plainProfile_contDiff hp k)
    (plainProfile_hasCompactSupport hp k) (sourceKernelCutoff A)
    (fun u hu ↦ by simp [plainProfile, not_lt.mpr hu])
    (fun u hu ↦ plainProfile_cutoff_tail hA hk hu)
  rw [plainProfile_positive_integral_zero hA k, sub_zero] at hquad
  rw [hquad, ← plain_model_integral_eq_mainTerm,
    ← integral_sub (fractional_derivative_integrable (plainProfile_contDiff hp k)
      (plainProfile_hasCompactSupport hp k)) (plain_model_integrand_integrable A k)]
  let c : ℝ := (tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k)
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hmaj : IntegrableOn (fun u ↦ c *
      (absoluteCoefficientWeight 1 u + absoluteCoefficientWeight 2 u / 4)) (Ioi (0 : ℝ)) :=
    ((absoluteCoefficientWeight_integrable 1).add
      ((absoluteCoefficientWeight_integrable 2).div_const 4)).const_mul c
  have hbound := norm_integral_le_of_norm_le
    (f := fun u ↦ Int.fract u * deriv (plainProfile A k) u -
      Int.fract u * plainModelDerivative A k u) hmaj (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, ← mul_sub, abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
    calc
      _ ≤ Int.fract u *
          ((tailEnergyCoefficient Q) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
            (|Real.log u| + (Real.log u) ^ 2 / 4)) :=
        mul_le_mul_of_nonneg_left (plain_derivative_difference_abs_le_tail hQ hQA hkp hu)
          (Int.fract_nonneg u)
      _ = _ := by
        dsimp [c, absoluteCoefficientWeight]
        rw [sq_abs]
        ring)
  rw [Real.norm_eq_abs] at hbound
  apply hbound.trans
  rw [integral_const_mul,
    integral_add (absoluteCoefficientWeight_integrable 1)
      ((absoluteCoefficientWeight_integrable 2).div_const 4), integral_div]
  change c * (absoluteCoefficientMoment 1 + absoluteCoefficientMoment 2 / 4) ≤ _
  have h1 := absoluteCoefficientMoment_le_factorial 1
  have h2 := absoluteCoefficientMoment_le_factorial 2
  norm_num at h1 h2
  calc
    _ ≤ c * (8 + 32 / 4) := by gcongr
    _ = _ := by dsimp [c]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant2df19bf8e2997ddaf3811563154bd9fb9215a3ce753ecaa4488d4986a3a773e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant2df19bf8e2997ddaf3811563154bd9fb9215a3ce753ecaa4488d4986a3a773e3.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceec9745ec0d1e4cd1e95a1599d2ce1db4a3117b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
