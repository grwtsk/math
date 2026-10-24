# weightedCenteredInterval_abs_le_scaled_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:188aab9e-8eba-55dc-af67-6d903d11c4a4",
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
  "slug": "weightedcenteredinterval-abs-le-scaled-variation--474dadaabff93f1ba35e06f6",
  "source": {
    "blob": "82cbab17ce4b3f02d8c1af11c69fab9f04604de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantdb6577fcbe353ff5dc95b5037c9b1ccb4bd12440995913f6a19b4be3d9163c52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:474dadaabff93f1ba35e06f635739b295438556a3b8166cc33c8da8372b537b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantdb6577fcbe353ff5dc95b5037c9b1ccb4bd12440995913f6a19b4be3d9163c52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:188aab9e-8eba-55dc-af67-6d903d11c4a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–139.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantdb6577fcbe353ff5dc95b5037c9b1ccb4bd12440995913f6a19b4be3d9163c52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantdb6577fcbe353ff5dc95b5037c9b1ccb4bd12440995913f6a19b4be3d9163c52.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82cbab17ce4b3f02d8c1af11c69fab9f04604de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
