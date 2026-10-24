# sourceVariationCost_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c945207b3057821a4c54fd95f31eef05b1d1d3bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65654a6d-1990-abd9-1db3-aa44602016f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e14c539c-3bc3-0d34-eeff-be8710b75fb8",
  "kind": "theorem",
  "lexical_name": "sourceVariationCost_le",
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
  "slug": "sourcevariationcost-le--f3e373329354ac80d4c2d6d4",
  "source": {
    "blob": "c945207b3057821a4c54fd95f31eef05b1d1d3bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3e373329354ac80d4c2d6d463ca6af214604fcdcc7210f128aecf51fcba04de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e14c539c-3bc3-0d34-eeff-be8710b75fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceVariationCost_le (A K : ℝ) (m L H : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) (hL : 1 ≤ L) (hLH : L ≤ H) (hK : 0 ≤ K)
    (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    sourceVariationCost A m L H ≤ (1+2*K)/Real.sqrt (L : ℝ) := by
  have hL0 : 0 < (L : ℝ) := by exact_mod_cast (by omega : 0 < L)
  have hHR : (L : ℝ) ≤ H := by exact_mod_cast hLH
  have hH0 : 0 < (H : ℝ) := hL0.trans_le hHR
  have hmR : (1 : ℝ) ≤ m := by exact_mod_cast hm
  have hLR : (1 : ℝ) ≤ L := by exact_mod_cast hL
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hG : Continuous (correlationSlope A) := by
    exact (hc.continuous_deriv (by norm_num)).sub (hc.continuous.div_const 2)
  have hiG : IntegrableOn
      (fun x : ℝ ↦ |correlationSlope A (Real.log ((m : ℝ)*x))|/(x*Real.sqrt x))
      (Icc (L : ℝ) (H : ℝ)) := by
    apply ContinuousOn.integrableOn_Icc
    apply (hG.abs.continuousOn.comp
      ((continuousOn_const.mul continuousOn_id).log (by
        intro x hx; exact (mul_pos (by positivity) (hL0.trans_le hx.1)).ne'))
      (fun _ _ ↦ mem_univ _)).div
      (continuousOn_id.mul Real.continuous_sqrt.continuousOn)
    intro x hx
    exact (mul_pos (hL0.trans_le hx.1) (Real.sqrt_pos.2 (hL0.trans_le hx.1))).ne'
  have hiR : IntegrableOn (fun x : ℝ ↦ K/(x*Real.sqrt x))
      (Icc (L : ℝ) (H : ℝ)) := by
    apply ContinuousOn.integrableOn_Icc
    apply continuousOn_const.div (continuousOn_id.mul Real.continuous_sqrt.continuousOn)
    intro x hx
    exact (mul_pos (hL0.trans_le hx.1) (Real.sqrt_pos.2 (hL0.trans_le hx.1))).ne'
  have hi : (∫ x in Ioc (L : ℝ) (H : ℝ),
      |correlationSlope A (Real.log ((m : ℝ)*x))|/(x*Real.sqrt x)) ≤
      2*K*(1/Real.sqrt (L : ℝ)-1/Real.sqrt (H : ℝ)) := by
    calc
      _ ≤ ∫ x in Ioc (L : ℝ) (H : ℝ), K/(x*Real.sqrt x) := by
        apply integral_mono_ae (hiG.mono_set Ioc_subset_Icc_self)
          (hiR.mono_set Ioc_subset_Icc_self)
        filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
        apply div_le_div_of_nonneg_right
        · exact hSlope _ (Real.log_nonneg (by nlinarith [hLR.trans hx.1.le]))
        · exact mul_nonneg (hL0.trans hx.1).le (Real.sqrt_nonneg x)
      _ = _ := by
        simp_rw [div_eq_mul_inv]
        rw [integral_const_mul]
        have hr := reciprocalWeight_integral (L : ℝ) H hL0 hHR
        simp only [one_div] at hr
        rw [hr]
        ring
  have he := div_le_div_of_nonneg_right
    (actual_correlation_abs_le_one A (Real.log ((m : ℝ)*(H : ℝ))) hA)
    (Real.sqrt_nonneg (H : ℝ))
  have hs : 1/Real.sqrt (H : ℝ) ≤ 1/Real.sqrt (L : ℝ) := by
    exact one_div_le_one_div_of_le (Real.sqrt_pos.2 hL0) (Real.sqrt_le_sqrt hHR)
  unfold sourceVariationCost
  simp only [div_eq_mul_inv] at he hs hi ⊢
  nlinarith [inv_nonneg.mpr (Real.sqrt_nonneg (H : ℝ))]

end
end EstimateWeightedBetaScale
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c945207b3057821a4c54fd95f31eef05b1d1d3bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
