# actual_source_amplitude_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0812ba11-2bbd-dce0-5cc1-5e10ff05281d",
  "kind": "theorem",
  "lexical_name": "actual_source_amplitude_sharp",
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
  "slug": "actual-source-amplitude-sharp--e64d6493feed9ab155ccfdf5",
  "source": {
    "blob": "2e28d7e33932f88592cfbd109bc30cff93b4bc19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 288,
    "path": "GRWTSK/Topology/GeneralTopology/ComplexBoundaryPaths/Variantf744cea911433bc87230c916d259af289ebe6e8d4faf1293127d4f2c5dc4cb60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e64d6493feed9ab155ccfdf5115679ab6d1b403fe4d8b43adc536ccb757ef9a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ComplexBoundaryPaths/Variantf744cea911433bc87230c916d259af289ebe6e8d4faf1293127d4f2c5dc4cb60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0812ba11-2bbd-dce0-5cc1-5e10ff05281d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_amplitude_sharp {A delta : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {z : ℂ} (hz : delta ≤ z.re) :
    ‖scaledAmplitude A z-leadingCoefficient z‖ ≤
      ‖leadingCoefficient z‖*sharpError A delta := by
  by_cases hf : z^2-1/4 ≠ 0
  · have hc := leadingCoefficient_ne_zero
      (half_plane_ne_zero (lt_of_lt_of_le hdelta hz)) hf
    have he : scaledAmplitude A z-leadingCoefficient z =
        leadingCoefficient z*(scaledAmplitude A z/leadingCoefficient z-1) := by field_simp
    rw [he,norm_mul]
    gcongr
    exact actual_source_ratio_sharp hA hdelta hz hf
  · obtain ⟨ht,hc⟩ := filter_zero_amplitude hA
      (half_plane_ne_zero (lt_of_lt_of_le hdelta hz)) (not_ne_iff.mp hf)
    simp [ht,hc]

end ContinuousResearch.ComplexBoundaryPaths

-- Every public root: exact statement, complete proof term, transitive axioms.
#check ContinuousResearch.ComplexBoundaryPaths.inverse_power_bound_sharp
#print axioms ContinuousResearch.ComplexBoundaryPaths.inverse_power_bound_sharp
#print ContinuousResearch.ComplexBoundaryPaths.inverse_power_bound_sharp
#check ContinuousResearch.ComplexBoundaryPaths.positiveEndpoint_error_sharp
#print axioms ContinuousResearch.ComplexBoundaryPaths.positiveEndpoint_error_sharp
#print ContinuousResearch.ComplexBoundaryPaths.positiveEndpoint_error_sharp
#check ContinuousResearch.ComplexBoundaryPaths.reflectedEndpoint_bound_sharp
#print axioms ContinuousResearch.ComplexBoundaryPaths.reflectedEndpoint_bound_sharp
#print ContinuousResearch.ComplexBoundaryPaths.reflectedEndpoint_bound_sharp
#check ContinuousResearch.ComplexBoundaryPaths.negative_endpoint_envelope
#print axioms ContinuousResearch.ComplexBoundaryPaths.negative_endpoint_envelope
#print ContinuousResearch.ComplexBoundaryPaths.negative_endpoint_envelope
#check ContinuousResearch.ComplexBoundaryPaths.actual_normalization_deficit_544
#print axioms ContinuousResearch.ComplexBoundaryPaths.actual_normalization_deficit_544
#print ContinuousResearch.ComplexBoundaryPaths.actual_normalization_deficit_544
#check ContinuousResearch.ComplexBoundaryPaths.sharpError
#print axioms ContinuousResearch.ComplexBoundaryPaths.sharpError
#print ContinuousResearch.ComplexBoundaryPaths.sharpError
#check ContinuousResearch.ComplexBoundaryPaths.actual_source_ratio_sharp
#print axioms ContinuousResearch.ComplexBoundaryPaths.actual_source_ratio_sharp
#print ContinuousResearch.ComplexBoundaryPaths.actual_source_ratio_sharp
#check ContinuousResearch.ComplexBoundaryPaths.sharpError_nonneg
#print axioms ContinuousResearch.ComplexBoundaryPaths.sharpError_nonneg
#print ContinuousResearch.ComplexBoundaryPaths.sharpError_nonneg
#check ContinuousResearch.ComplexBoundaryPaths.errorPolynomial_path_tendsto
#print axioms ContinuousResearch.ComplexBoundaryPaths.errorPolynomial_path_tendsto
#print ContinuousResearch.ComplexBoundaryPaths.errorPolynomial_path_tendsto
#check ContinuousResearch.ComplexBoundaryPaths.negative_endpoint_path_tendsto
#print axioms ContinuousResearch.ComplexBoundaryPaths.negative_endpoint_path_tendsto
#print ContinuousResearch.ComplexBoundaryPaths.negative_endpoint_path_tendsto
#check ContinuousResearch.ComplexBoundaryPaths.sharpError_path_tendsto
#print axioms ContinuousResearch.ComplexBoundaryPaths.sharpError_path_tendsto
#print ContinuousResearch.ComplexBoundaryPaths.sharpError_path_tendsto
#check ContinuousResearch.ComplexBoundaryPaths.actual_source_ratio_path_tendsto
#print axioms ContinuousResearch.ComplexBoundaryPaths.actual_source_ratio_path_tendsto
#print ContinuousResearch.ComplexBoundaryPaths.actual_source_ratio_path_tendsto
#check ContinuousResearch.ComplexBoundaryPaths.boundary_ratio_exact
#print axioms ContinuousResearch.ComplexBoundaryPaths.boundary_ratio_exact
#print ContinuousResearch.ComplexBoundaryPaths.boundary_ratio_exact
#check ContinuousResearch.ComplexBoundaryPaths.actual_boundary_ratio_path_tendsto
#print axioms ContinuousResearch.ComplexBoundaryPaths.actual_boundary_ratio_path_tendsto
#print ContinuousResearch.ComplexBoundaryPaths.actual_boundary_ratio_path_tendsto
#check ContinuousResearch.ComplexBoundaryPaths.leadingEnvelope
#print axioms ContinuousResearch.ComplexBoundaryPaths.leadingEnvelope
#print ContinuousResearch.ComplexBoundaryPaths.leadingEnvelope
#check ContinuousResearch.ComplexBoundaryPaths.leadingCoefficient_half_plane_bound
#print axioms ContinuousResearch.ComplexBoundaryPaths.leadingCoefficient_half_plane_bound
#print ContinuousResearch.ComplexBoundaryPaths.leadingCoefficient_half_plane_bound
#check ContinuousResearch.ComplexBoundaryPaths.half_plane_absolute_amplitude_rate
#print axioms ContinuousResearch.ComplexBoundaryPaths.half_plane_absolute_amplitude_rate
#print ContinuousResearch.ComplexBoundaryPaths.half_plane_absolute_amplitude_rate
#check ContinuousResearch.ComplexBoundaryPaths.actual_source_amplitude_sharp
#print axioms ContinuousResearch.ComplexBoundaryPaths.actual_source_amplitude_sharp
#print ContinuousResearch.ComplexBoundaryPaths.actual_source_amplitude_sharp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ComplexBoundaryPaths/Variantf744cea911433bc87230c916d259af289ebe6e8d4faf1293127d4f2c5dc4cb60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ComplexBoundaryPaths/Variantf744cea911433bc87230c916d259af289ebe6e8d4faf1293127d4f2c5dc4cb60.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e28d7e33932f88592cfbd109bc30cff93b4bc19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
