# archimedean_difference_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a156b55-7f31-7731-24d1-2a519b9cf43a",
  "kind": "theorem",
  "lexical_name": "archimedean_difference_pointwise",
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
  "slug": "archimedean-difference-pointwise--afc51a8be67e00f8cbde4b0a",
  "source": {
    "blob": "2b5a8de66c0ee85990d8e72c350fc43024183922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4fa442dd9473e8fe335b94e2921cb54ce9035bd250e2d2e51579636031083fcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afc51a8be67e00f8cbde4b0a912dc9f954113416b63f4da4c2b420437fb638cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4fa442dd9473e8fe335b94e2921cb54ce9035bd250e2d2e51579636031083fcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a156b55-7f31-7731-24d1-2a519b9cf43a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedean_difference_pointwise {f g : ℝ → ℝ}
    (hf : Integrable f volume) (hg : Integrable g volume) (ξ : ℝ) :
    |(archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
        archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi)| ≤
      (|archimedeanConstant| + 4) * weightedFourierNorm (fun x ↦ f x - g x) ξ *
        (weightedFourierNorm f ξ + weightedFourierNorm g ξ) := by
  have hdiff := normSq_sub_abs_le (sourceFourier f ξ) (sourceFourier g ξ)
  rw [← sourceFourier_sub hf hg ξ] at hdiff
  have hp : 0 < 2 * Real.pi := by positivity
  rw [← mul_sub, abs_div, abs_mul, abs_of_pos hp]
  calc
    _ ≤ ((|archimedeanConstant| + 4) * logarithmicWeight ξ) *
        (‖sourceFourier (fun x ↦ f x - g x) ξ‖ *
          (‖sourceFourier f ξ‖ + ‖sourceFourier g ξ‖)) / (2 * Real.pi) := by
      apply div_le_div_of_nonneg_right _ hp.le
      exact mul_le_mul (multiplier_abs_le_weight ξ) hdiff (abs_nonneg _)
        (mul_nonneg (by positivity) (logarithmicWeight_nonneg ξ))
    _ = _ := by
      rw [mul_assoc (|archimedeanConstant| + 4)
        (weightedFourierNorm (fun x ↦ f x - g x) ξ), weighted_product_eq]
      ring

/-- Weighted Cauchy–Schwarz controls the source archimedean term by the actual function error.
The three weighted admission premises establish genuine integrability of both forms and error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4fa442dd9473e8fe335b94e2921cb54ce9035bd250e2d2e51579636031083fcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4fa442dd9473e8fe335b94e2921cb54ce9035bd250e2d2e51579636031083fcd.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b5a8de66c0ee85990d8e72c350fc43024183922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
