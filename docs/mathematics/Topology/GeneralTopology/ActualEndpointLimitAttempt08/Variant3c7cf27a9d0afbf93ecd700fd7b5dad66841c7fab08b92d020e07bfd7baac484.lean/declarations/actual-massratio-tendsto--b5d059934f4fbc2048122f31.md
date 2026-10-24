# actual_massRatio_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:490809e0-3864-dd22-83a3-d16a05f38e8b",
  "kind": "theorem",
  "lexical_name": "actual_massRatio_tendsto",
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
  "slug": "actual-massratio-tendsto--b5d059934f4fbc2048122f31",
  "source": {
    "blob": "c3664c6461434d9c54bf6799b64a19855d1e475c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5d059934f4fbc2048122f31b1b6ba210325a00bf96f8b130f1d59de652a8e88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:490809e0-3864-dd22-83a3-d16a05f38e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_massRatio_tendsto :
    Tendsto (fun A : ℝ => positiveMass A/negativeMass A) atTop (𝓝 (1:ℝ)) := by
  have hi := tendsto_inv_atTop_zero.comp actual_negativeMass_tendsto
  have ht : Tendsto (fun A : ℝ => 1-(negativeMass A)⁻¹) atTop (𝓝 (1:ℝ)) := by
    simpa using (tendsto_const_nhds (x:=(1:ℝ))).sub hi
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  have hd := actual_massRatio_deficit hA
  simp only [one_div] at hd
  linarith

end ContinuousResearch.ActualEndpointLimit

/-! Complete trusted-closure audits, including the isolated normalization helper. -/
#check ContinuousResearch.ActualEndpointLimit.sourceNormalization_tendsto
#print axioms ContinuousResearch.ActualEndpointLimit.sourceNormalization_tendsto
#print ContinuousResearch.ActualEndpointLimit.sourceNormalization_tendsto
#check ContinuousResearch.ActualEndpointLimit.endpointPolynomialCorrelation_continuous
#print axioms ContinuousResearch.ActualEndpointLimit.endpointPolynomialCorrelation_continuous
#print ContinuousResearch.ActualEndpointLimit.endpointPolynomialCorrelation_continuous
#check ContinuousResearch.ActualEndpointLimit.endpointPolynomialCorrelation_at_zero
#print axioms ContinuousResearch.ActualEndpointLimit.endpointPolynomialCorrelation_at_zero
#print ContinuousResearch.ActualEndpointLimit.endpointPolynomialCorrelation_at_zero
#check ContinuousResearch.ActualEndpointLimit.actual_endpoint_scaled_tendsto
#print axioms ContinuousResearch.ActualEndpointLimit.actual_endpoint_scaled_tendsto
#print ContinuousResearch.ActualEndpointLimit.actual_endpoint_scaled_tendsto
#check ContinuousResearch.ActualEndpointLimit.actual_endpoint_normalized_tendsto
#print axioms ContinuousResearch.ActualEndpointLimit.actual_endpoint_normalized_tendsto
#print ContinuousResearch.ActualEndpointLimit.actual_endpoint_normalized_tendsto
#check ContinuousResearch.ActualEndpointLimit.actual_endpoint_excursion_tendsto
#print axioms ContinuousResearch.ActualEndpointLimit.actual_endpoint_excursion_tendsto
#print ContinuousResearch.ActualEndpointLimit.actual_endpoint_excursion_tendsto
#check ContinuousResearch.ActualEndpointLimit.actual_positiveMass_tendsto
#print axioms ContinuousResearch.ActualEndpointLimit.actual_positiveMass_tendsto
#print ContinuousResearch.ActualEndpointLimit.actual_positiveMass_tendsto
#check ContinuousResearch.ActualEndpointLimit.actual_negativeMass_tendsto
#print axioms ContinuousResearch.ActualEndpointLimit.actual_negativeMass_tendsto
#print ContinuousResearch.ActualEndpointLimit.actual_negativeMass_tendsto
#check ContinuousResearch.ActualEndpointLimit.actual_massRatio_tendsto
#print axioms ContinuousResearch.ActualEndpointLimit.actual_massRatio_tendsto
#print ContinuousResearch.ActualEndpointLimit.actual_massRatio_tendsto
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3664c6461434d9c54bf6799b64a19855d1e475c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
