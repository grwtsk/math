# compact_boundary_transform_rate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03e289f8-a987-ec7a-04cc-1666f530d7a0",
  "kind": "theorem",
  "lexical_name": "compact_boundary_transform_rate",
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
  "slug": "compact-boundary-transform-rate--92f2c9635085fe1f3b1cb2e3",
  "source": {
    "blob": "cae52dd0d395967da727ee2d35dbede4f5d2449f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 426,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92f2c9635085fe1f3b1cb2e320e5b847ae480b7fec5bda2ffe55ba75ce9dce18",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03e289f8-a987-ec7a-04cc-1666f530d7a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_boundary_transform_rate {A delta M : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {lambda : ℂ} (hz : delta ≤ (lambda+1/2).re)
    (hM : ‖lambda‖ ≤ M) :
    ‖ContinuousResearch.SourceBoundaryTransform.boundaryTransform A lambda-
        (-lambda*leadingCoefficient (lambda+1/2)^2)‖ ≤
      M*(coefficientBound delta (M+1/2))^2*
        (rateConstant delta^2+2*rateConstant delta)/A := by
  have hK := rateConstant_nonneg hdelta
  have hm : ‖lambda+(1/2 : ℂ)‖ ≤ M+1/2 := by
    have ht := norm_add_le lambda (1/2 : ℂ)
    norm_num only [norm_div,norm_one,Complex.norm_ofNat] at ht
    linarith
  have hcoef := leadingCoefficient_bound hdelta hz hm
  have hnonneg : 0 ≤ coefficientBound delta (M+1/2) := by
    unfold coefficientBound
    positivity
  calc
    _ ≤ ‖lambda‖*‖leadingCoefficient (lambda+1/2)‖^2*
        (rateConstant delta^2+2*rateConstant delta)/A :=
      boundary_transform_rate hA hdelta hz
    _ ≤ _ := by gcongr

end ContinuousResearch.ComplexBoundaryRate

-- Exact declaration, proof-term and transitive-axiom audit of every public root.
#check ContinuousResearch.ComplexBoundaryRate.errorPolynomial
#print axioms ContinuousResearch.ComplexBoundaryRate.errorPolynomial
#print ContinuousResearch.ComplexBoundaryRate.errorPolynomial
#check ContinuousResearch.ComplexBoundaryRate.normalizationRatio
#print axioms ContinuousResearch.ComplexBoundaryRate.normalizationRatio
#print ContinuousResearch.ComplexBoundaryRate.normalizationRatio
#check ContinuousResearch.ComplexBoundaryRate.positiveEndpoint
#print axioms ContinuousResearch.ComplexBoundaryRate.positiveEndpoint
#print ContinuousResearch.ComplexBoundaryRate.positiveEndpoint
#check ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint
#print axioms ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint
#print ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint
#check ContinuousResearch.ComplexBoundaryRate.errorPolynomial_nonneg
#print axioms ContinuousResearch.ComplexBoundaryRate.errorPolynomial_nonneg
#print ContinuousResearch.ComplexBoundaryRate.errorPolynomial_nonneg
#check ContinuousResearch.ComplexBoundaryRate.normalization_bounds
#print axioms ContinuousResearch.ComplexBoundaryRate.normalization_bounds
#print ContinuousResearch.ComplexBoundaryRate.normalization_bounds
#check ContinuousResearch.ComplexBoundaryRate.normalizationRatio_bounds
#print axioms ContinuousResearch.ComplexBoundaryRate.normalizationRatio_bounds
#print ContinuousResearch.ComplexBoundaryRate.normalizationRatio_bounds
#check ContinuousResearch.ComplexBoundaryRate.normalizationRatio_deficit
#print axioms ContinuousResearch.ComplexBoundaryRate.normalizationRatio_deficit
#print ContinuousResearch.ComplexBoundaryRate.normalizationRatio_deficit
#check ContinuousResearch.ComplexBoundaryRate.source_ratio_exact
#print axioms ContinuousResearch.ComplexBoundaryRate.source_ratio_exact
#print ContinuousResearch.ComplexBoundaryRate.source_ratio_exact
#check ContinuousResearch.ComplexBoundaryRate.inverse_power_bound
#print axioms ContinuousResearch.ComplexBoundaryRate.inverse_power_bound
#print ContinuousResearch.ComplexBoundaryRate.inverse_power_bound
#check ContinuousResearch.ComplexBoundaryRate.positiveEndpoint_error
#print axioms ContinuousResearch.ComplexBoundaryRate.positiveEndpoint_error
#print ContinuousResearch.ComplexBoundaryRate.positiveEndpoint_error
#check ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint_bound
#print axioms ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint_bound
#print ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint_bound
#check ContinuousResearch.ComplexBoundaryRate.negative_endpoint_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.negative_endpoint_rate
#print ContinuousResearch.ComplexBoundaryRate.negative_endpoint_rate
#check ContinuousResearch.ComplexBoundaryRate.rateConstant
#print axioms ContinuousResearch.ComplexBoundaryRate.rateConstant
#print ContinuousResearch.ComplexBoundaryRate.rateConstant
#check ContinuousResearch.ComplexBoundaryRate.rateConstant_nonneg
#print axioms ContinuousResearch.ComplexBoundaryRate.rateConstant_nonneg
#print ContinuousResearch.ComplexBoundaryRate.rateConstant_nonneg
#check ContinuousResearch.ComplexBoundaryRate.normalizationRatio_norm_deficit
#print axioms ContinuousResearch.ComplexBoundaryRate.normalizationRatio_norm_deficit
#print ContinuousResearch.ComplexBoundaryRate.normalizationRatio_norm_deficit
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_ratio_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_ratio_rate
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_ratio_rate
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate
#check ContinuousResearch.ComplexBoundaryRate.filter_zero_amplitude
#print axioms ContinuousResearch.ComplexBoundaryRate.filter_zero_amplitude
#print ContinuousResearch.ComplexBoundaryRate.filter_zero_amplitude
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate_all
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate_all
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate_all
#check ContinuousResearch.ComplexBoundaryRate.coefficientBound
#print axioms ContinuousResearch.ComplexBoundaryRate.coefficientBound
#print ContinuousResearch.ComplexBoundaryRate.coefficientBound
#check ContinuousResearch.ComplexBoundaryRate.leadingCoefficient_bound
#print axioms ContinuousResearch.ComplexBoundaryRate.leadingCoefficient_bound
#print ContinuousResearch.ComplexBoundaryRate.leadingCoefficient_bound
#check ContinuousResearch.ComplexBoundaryRate.compact_source_amplitude_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.compact_source_amplitude_rate
#print ContinuousResearch.ComplexBoundaryRate.compact_source_amplitude_rate
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate_all
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate_all
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate_all
#check ContinuousResearch.ComplexBoundaryRate.boundary_transform_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.boundary_transform_rate
#print ContinuousResearch.ComplexBoundaryRate.boundary_transform_rate
#check ContinuousResearch.ComplexBoundaryRate.actual_complex_amplitude_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.actual_complex_amplitude_rate
#print ContinuousResearch.ComplexBoundaryRate.actual_complex_amplitude_rate
#check ContinuousResearch.ComplexBoundaryRate.compact_boundary_transform_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.compact_boundary_transform_rate
#print ContinuousResearch.ComplexBoundaryRate.compact_boundary_transform_rate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae52dd0d395967da727ee2d35dbede4f5d2449f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
