# pinnedPrimeWeightCriterion_to_featureNormCriterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd415d86-7aaa-0dfd-7081-0e1559100c55",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightCriterion_to_featureNormCriterion",
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
  "slug": "pinnedprimeweightcriterion-to-featurenormcriterion--1db95eb482eadda82b28afdc",
  "source": {
    "blob": "7d0cd42f0377d3f56a23feab36cdf984c86d350e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 330,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1db95eb482eadda82b28afdc3595ce90527c28a23e02941686cec8a727d7ddac",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd415d86-7aaa-0dfd-7081-0e1559100c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightCriterion_to_featureNormCriterion
    {ρ : ℝ}
    (hcriterion : PinnedPrimeWeightCriterionAt ρ) :
    PrimeThetaFeatureNormCriterionAt ρ := by
  intro η hη
  obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  let K : ℝ := C * primeCoefficientL1Budget^2
  have hK : 0 ≤ K := by
    dsimp [K]
    exact mul_nonneg hC (sq_nonneg _)
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj
  obtain ⟨targetCoefficient, residual, hresidual,
      hcoefficient, hresidualBound, hsource⟩ :=
    hstages j hj
  let stage :=
    pinnedPrimeWeightStage (dyadicScale j)
      targetCoefficient residual hresidual
  let certificate :=
    pinnedPrimeWeightNormCertificate
      (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) targetCoefficient residual hresidual
  refine ⟨stage, certificate, ?_, ?_, ?_⟩
  · intro v hv
    have hcv := hcoefficient v hv
    calc
      stage.certifiedFeatureBudget certificate v
          = |targetCoefficient v| *
              primeCoefficientL1Budget^2 := by
            simpa [stage, certificate] using
              (pinnedPrimeWeightStage_certifiedFeatureBudget_eq
                (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) targetCoefficient residual
                hresidual v)
      _ ≤ C * primeCoefficientL1Budget^2 :=
        mul_le_mul_of_nonneg_right hcv (sq_nonneg _)
      _ = K := rfl
  · intro v hv
    exact hresidualBound v hv
  · intro v hv
    have h := hsource v hv
    have hresponse :
        stage.toKernelStage.response v =
          targetCoefficient v *
            (pinnedPrimeWeightedAmplitude (dyadicScale j))^2 := by
      simpa [stage] using
        (pinnedPrimeWeightStage_response_eq
          (dyadicScale j) targetCoefficient residual
          hresidual v)
    change |thetaError v| + 1 ≤ |stage.toKernelStage.response v| /
      (dyadicScale j : ℝ) + residual v
    rw [hresponse, abs_mul, abs_of_nonneg
      (sq_nonneg (pinnedPrimeWeightedAmplitude (dyadicScale j)))]
    simpa only [abs_mul, abs_of_nonneg
      (sq_nonneg (pinnedPrimeWeightedAmplitude (dyadicScale j)))] using h

/-- The pinned source criterion supplies the existing nonlinear recurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d0cd42f0377d3f56a23feab36cdf984c86d350e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
