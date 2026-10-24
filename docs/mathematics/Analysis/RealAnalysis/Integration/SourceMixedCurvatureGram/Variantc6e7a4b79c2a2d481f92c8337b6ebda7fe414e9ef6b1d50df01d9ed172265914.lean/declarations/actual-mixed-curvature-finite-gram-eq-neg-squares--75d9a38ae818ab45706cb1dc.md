# actual_mixed_curvature_finite_gram_eq_neg_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89cdcbe5-797e-e068-ba4e-cfe3d9c0d113",
  "kind": "theorem",
  "lexical_name": "actual_mixed_curvature_finite_gram_eq_neg_squares",
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
  "slug": "actual-mixed-curvature-finite-gram-eq-neg-squares--75d9a38ae818ab45706cb1dc",
  "source": {
    "blob": "1ad5c582b170a2ab0ad3c26c5b5654dcfb665c28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variantc6e7a4b79c2a2d481f92c8337b6ebda7fe414e9ef6b1d50df01d9ed172265914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75d9a38ae818ab45706cb1dc94bcac5246949e77372d9d3c3592165bdbdeac3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variantc6e7a4b79c2a2d481f92c8337b6ebda7fe414e9ef6b1d50df01d9ed172265914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89cdcbe5-797e-e068-ba4e-cfe3d9c0d113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mixed_curvature_finite_gram_eq_neg_squares
    {ι : Type*} (s : Finset ι) (c x : ι → ℝ) {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ s, c i * c j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - x j) -
        sourceCorrelation explicitSecondDerivative A (x i - x j) / 4)) =
      -(∫ v : ℝ, (∑ i ∈ s, c i * deriv (normalizedTest explicitSecondDerivative A)
          (v + x i)) ^ 2) -
        (1 / 4 : ℝ) * (∫ v : ℝ,
          (∑ i ∈ s, c i * normalizedTest explicitSecondDerivative A (v + x i)) ^ 2) := by
  have hp := integral_finite_square s c
    (fun i v => normalizedTest explicitSecondDerivative A (v + x i))
    (fun i _ j _ => actual_source_shift_product_integrable hA (x i) (x j))
  have hd := integral_finite_square s c
    (fun i v => deriv (normalizedTest explicitSecondDerivative A) (v + x i))
    (fun i _ j _ => actual_deriv_shift_product_integrable hA (x i) (x j))
  rw [hd, hp]
  simp_rw [actual_curvature_at_difference_eq hA, actual_correlation_at_difference_eq,
    mul_sub, mul_neg, mul_div, Finset.sum_sub_distrib, Finset.sum_neg_distrib,
    Finset.sum_div]
  ring

/-- Nonpositivity applies to the same finite coefficients on both stationary axes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variantc6e7a4b79c2a2d481f92c8337b6ebda7fe414e9ef6b1d50df01d9ed172265914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variantc6e7a4b79c2a2d481f92c8337b6ebda7fe414e9ef6b1d50df01d9ed172265914.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ad5c582b170a2ab0ad3c26c5b5654dcfb665c28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
