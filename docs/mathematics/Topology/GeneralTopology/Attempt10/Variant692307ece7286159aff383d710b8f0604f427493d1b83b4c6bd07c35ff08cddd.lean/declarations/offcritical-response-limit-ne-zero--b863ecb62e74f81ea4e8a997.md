# offcritical_response_limit_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14e4e3ca-93c8-521e-49e7-5d8c76ca65bf",
  "kind": "theorem",
  "lexical_name": "offcritical_response_limit_ne_zero",
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
  "slug": "offcritical-response-limit-ne-zero--b863ecb62e74f81ea4e8a997",
  "source": {
    "blob": "ab20a50a4a971ad0deaf5fad9512c2efaed69a56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 282,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt10/Variant692307ece7286159aff383d710b8f0604f427493d1b83b4c6bd07c35ff08cddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b863ecb62e74f81ea4e8a9974c5334e002c5a13a62caaa586e3d626a9e58852e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt10/Variant692307ece7286159aff383d710b8f0604f427493d1b83b4c6bd07c35ff08cddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e4e3ca-93c8-521e-49e7-5d8c76ca65bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem offcritical_response_limit_ne_zero (rho : ℂ)
    (hr : (1/2 : ℝ) < rho.re) (hi : rho.im ≠ 0) :
    (1-rho)*leadingCoefficient (rho-1/2)^2 ≠ 0 := by
  have hz : 0 < (rho-(1/2 : ℂ)).re := by
    norm_num [Complex.sub_re,Complex.div_re]
    linarith
  have him : (rho-(1/2 : ℂ)).im ≠ 0 := by
    simpa using hi
  have hc := leadingCoefficient_ne_zero (half_plane_ne_zero hz)
    (nonreal_pole_filter_ne_zero him)
  apply mul_ne_zero _ (pow_ne_zero _ hc)
  intro he
  have hh := congrArg Complex.im he
  apply hi
  simpa using hh

#check scaledAmplitude
#print axioms scaledAmplitude
#print scaledAmplitude

#check leadingCoefficient
#print axioms leadingCoefficient
#print leadingCoefficient

#check transformPolynomial_ratio
#print axioms transformPolynomial_ratio
#print transformPolynomial_ratio

#check transformPolynomial_ratio_tendsto
#print axioms transformPolynomial_ratio_tendsto
#print transformPolynomial_ratio_tendsto

#check negative_endpoint_exponential_tendsto
#print axioms negative_endpoint_exponential_tendsto
#print negative_endpoint_exponential_tendsto

#check sqrt_normalization_tendsto
#print axioms sqrt_normalization_tendsto
#print sqrt_normalization_tendsto

#check scaledAmplitude_exact
#print axioms scaledAmplitude_exact
#print scaledAmplitude_exact

#check half_plane_ne_zero
#print axioms half_plane_ne_zero
#print half_plane_ne_zero

#check scaledAmplitude_tendsto
#print axioms scaledAmplitude_tendsto
#print scaledAmplitude_tendsto

#check leadingCoefficient_ne_zero
#print axioms leadingCoefficient_ne_zero
#print leadingCoefficient_ne_zero

#check nonreal_pole_filter_ne_zero
#print axioms nonreal_pole_filter_ne_zero
#print nonreal_pole_filter_ne_zero

#check scaledAmplitude_ratio_tendsto
#print axioms scaledAmplitude_ratio_tendsto
#print scaledAmplitude_ratio_tendsto

#check amplitude_scale_rpow
#print axioms amplitude_scale_rpow
#print amplitude_scale_rpow

#check actual_complex_amplitude_tendsto
#print axioms actual_complex_amplitude_tendsto
#print actual_complex_amplitude_tendsto

#check scaledAmplitude_square
#print axioms scaledAmplitude_square
#print scaledAmplitude_square

#check complex_scaled_square_tendsto
#print axioms complex_scaled_square_tendsto
#print complex_scaled_square_tendsto

#check boundary_eq_scaledAmplitude
#print axioms boundary_eq_scaledAmplitude
#print boundary_eq_scaledAmplitude

#check boundary_transform_tendsto
#print axioms boundary_transform_tendsto
#print boundary_transform_tendsto

#check boundary_limit_coefficient
#print axioms boundary_limit_coefficient
#print boundary_limit_coefficient

#check boundary_transform_rational_limit
#print axioms boundary_transform_rational_limit
#print boundary_transform_rational_limit

#check boundary_limit_ne_zero
#print axioms boundary_limit_ne_zero
#print boundary_limit_ne_zero

#check offcritical_response_tendsto
#print axioms offcritical_response_tendsto
#print offcritical_response_tendsto

#check offcritical_response_limit_ne_zero
#print axioms offcritical_response_limit_ne_zero
#print offcritical_response_limit_ne_zero


end ContinuousResearch.ComplexBoundaryAsymptotic
end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt10/Variant692307ece7286159aff383d710b8f0604f427493d1b83b4c6bd07c35ff08cddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt10/Variant692307ece7286159aff383d710b8f0604f427493d1b83b4c6bd07c35ff08cddd.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab20a50a4a971ad0deaf5fad9512c2efaed69a56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
