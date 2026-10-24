# actualComplexEndpoint_integral_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b496c81d-92f0-480b-f96f-ef1387ce3f08",
  "kind": "theorem",
  "lexical_name": "actualComplexEndpoint_integral_tendsto",
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
  "slug": "actualcomplexendpoint-integral-tendsto--5366bbd50580a6e23a377853",
  "source": {
    "blob": "bc514ecb8c8890a6349575eb35078e8b6174a003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5366bbd50580a6e23a3778531a7322c1116d6f3a215836265eefccfd50c0a540",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b496c81d-92f0-480b-f96f-ef1387ce3f08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplexEndpoint_integral_tendsto {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => ∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u)
      atTop (𝓝 (actualLeadingComplexCoefficient z)) := by
  have hm : ∀ᶠ A : ℝ in atTop, AEStronglyMeasurable
      (actualComplexEndpointIntegrand A z) (volume.restrict (Ioi 0)) :=
    Eventually.of_forall (fun A => actualComplexEndpointIntegrand_aestronglyMeasurable A z)
  have hb : ∀ᶠ A : ℝ in atTop, ∀ᵐ u ∂volume.restrict (Ioi 0),
      ‖actualComplexEndpointIntegrand A z u‖ ≤
        (192 * u ^ 2 + 4 * u ^ 4) * Real.exp (-z.re * u) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact Eventually.of_forall (actualComplexEndpointIntegrand_norm_le hA z)
  have hl : ∀ᵐ u ∂volume.restrict (Ioi (0 : ℝ)),
      Tendsto (fun A : ℝ => actualComplexEndpointIntegrand A z u) atTop
        (𝓝 ((actualLeadingEndpointPolynomial u : ℂ) * Complex.exp (-z * (u : ℂ)))) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    exact actualComplexEndpointIntegrand_tendsto hu.le z
  exact tendsto_integral_filter_of_dominated_convergence _ hm hb
    (actualEndpointMajorant_integrable hz) hl

end
end FormalResearch.RiemannHypothesis.SourceActualComplexEndpointAsymptotic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc514ecb8c8890a6349575eb35078e8b6174a003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
