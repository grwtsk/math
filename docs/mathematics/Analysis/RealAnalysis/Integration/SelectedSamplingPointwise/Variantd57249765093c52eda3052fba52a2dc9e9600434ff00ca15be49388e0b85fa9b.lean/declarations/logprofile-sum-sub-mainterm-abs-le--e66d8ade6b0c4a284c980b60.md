# logProfile_sum_sub_mainTerm_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35512ae9b5d1f4fed0fd6e97d30d4a92d8f66787",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:240cedc8-aaad-3afe-7c5b-a659a1b265b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a595195f-4a50-68a4-471c-b4339b9e4e61",
  "kind": "theorem",
  "lexical_name": "logProfile_sum_sub_mainTerm_abs_le",
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
  "slug": "logprofile-sum-sub-mainterm-abs-le--e66d8ade6b0c4a284c980b60",
  "source": {
    "blob": "35512ae9b5d1f4fed0fd6e97d30d4a92d8f66787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e66d8ade6b0c4a284c980b60750419ced5cda1724bd3eccdb92cde8e2b061afc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a595195f-4a50-68a4-471c-b4339b9e4e61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logProfile_sum_sub_mainTerm_abs_le {A k : ℝ} (hA : 1 ≤ A) (hk : 1 ≤ k) :
    |(∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) -
      sourceLogSamplingMainTerm A k| ≤ 96 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) := by
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
  let c : ℝ := (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k)
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
          ((162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
            (3 / 2 * (Real.log u) ^ 2 + |Real.log u| ^ 3 / 4)) :=
        mul_le_mul_of_nonneg_left (log_derivative_difference_abs_le hA hkp hu)
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

end FormalResearch.RiemannHypothesis.SourceSamplingPointwise
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35512ae9b5d1f4fed0fd6e97d30d4a92d8f66787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
