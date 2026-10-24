# weightedCenteredInterval_abs_le_scaled_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc337d78a4207621e5620c4abcb9cbf5c9a41e0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca2514c3-d506-aaf2-4428-e26f8eb638d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14dd1014-2ce7-34aa-7c25-d08d45cf8a71",
  "kind": "theorem",
  "lexical_name": "weightedCenteredInterval_abs_le_scaled_variation",
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
  "slug": "weightedcenteredinterval-abs-le-scaled-variation--e23919badd785aaea3e2beea",
  "source": {
    "blob": "cc337d78a4207621e5620c4abcb9cbf5c9a41e0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e23919badd785aaea3e2beea04707edbb7e21b956cf4dab2db617b3db501b189",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14dd1014-2ce7-34aa-7c25-d08d45cf8a71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCenteredInterval_abs_le_scaled_variation (A : ℝ) (m U L H : ℕ)
    (hA : 1 ≤ A) (hm : 1 ≤ m) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |weightedCenteredInterval A m U L H| ≤
      betaPrefixBudget U / Real.sqrt (m : ℝ) * sourceVariationCost A m L H := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have hL0 : 0 < (L : ℝ) := by exact_mod_cast (by omega : 0 < L)
  have hH0 : 0 < (H : ℝ) := hL0.trans_le (by exact_mod_cast hLH)
  have he : |rowWeight A m (H : ℝ)| =
      1/Real.sqrt (m : ℝ) *
        (|sourceCorrelation explicitSecondDerivative A (Real.log ((m : ℝ)*(H : ℝ)))| /
          Real.sqrt (H : ℝ)) := by
    unfold rowWeight EstimatePlainKernel.sourcePlainWeight
    rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _), Real.sqrt_mul hm0.le]
    ring
  have hi : (∫ x in Ioc (L : ℝ) (H : ℝ), |deriv (rowWeight A m) x|) =
      1/Real.sqrt (m : ℝ) *
        ∫ x in Ioc (L : ℝ) (H : ℝ),
          |correlationSlope A (Real.log ((m : ℝ)*x))|/(x*Real.sqrt x) := by
    rw [← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    have hx0 : 0 < x := hL0.trans hx.1
    dsimp only
    rw [rowWeight_deriv A x m (by linarith) hm hx0, abs_div,
      abs_of_nonneg (by positivity : 0 ≤ x*Real.sqrt ((m : ℝ)*x)), Real.sqrt_mul hm0.le]
    ring
  have hb := weightedCenteredInterval_abs_le_variation A m U L H hA hm hU hUL hLH
  rw [he, hi] at hb
  simpa only [sourceVariationCost, div_eq_mul_inv, mul_add, mul_assoc, one_mul] using hb

end
end EstimateWeightedBetaVariation
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc337d78a4207621e5620c4abcb9cbf5c9a41e0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
