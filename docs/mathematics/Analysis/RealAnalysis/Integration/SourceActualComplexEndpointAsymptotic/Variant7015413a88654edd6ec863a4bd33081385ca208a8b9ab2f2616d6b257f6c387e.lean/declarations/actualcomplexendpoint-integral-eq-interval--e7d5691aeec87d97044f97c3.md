# actualComplexEndpoint_integral_eq_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ac7cae6-0119-bc7c-cd61-d08dc30fe21e",
  "kind": "theorem",
  "lexical_name": "actualComplexEndpoint_integral_eq_interval",
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
  "slug": "actualcomplexendpoint-integral-eq-interval--e7d5691aeec87d97044f97c3",
  "source": {
    "blob": "d4ff8492fb125a566c1db7f45e1e0ce9f8ac7bf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7d5691aeec87d97044f97c3d4ba2ed630f6bd4dac973885488a80420b727ef3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ac7cae6-0119-bc7c-cd61-d08dc30fe21e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplexEndpoint_integral_eq_interval {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u) =
      ∫ u in 0..(2 * A), (endpointPolynomial A u : ℂ) *
        Complex.exp (-z * (u : ℂ)) := by
  have he : actualComplexEndpointIntegrand A z = (Icc 0 (2 * A)).indicator
      (fun u : ℝ => (endpointPolynomial A u : ℂ) * Complex.exp (-z * (u : ℂ))) := by
    funext u
    by_cases hu : u ∈ Icc 0 (2 * A) <;>
      simp [actualComplexEndpointIntegrand, actualEndpointExtension, hu]
  have hs : Ioi (0 : ℝ) ∩ Icc 0 (2 * A) = Ioc 0 (2 * A) := by
    ext u
    simp only [mem_inter_iff, mem_Ioi, mem_Icc, mem_Ioc]
    constructor
    · rintro ⟨hu, _, hv⟩
      exact ⟨hu, hv⟩
    · rintro ⟨hu, hv⟩
      exact ⟨hu, hu.le, hv⟩
  rw [he, setIntegral_indicator measurableSet_Icc, hs,
    intervalIntegral.integral_of_le (show (0 : ℝ) ≤ 2 * A by linarith)]

/-- Exact exponential reflection keeps all three literal source scale factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4ff8492fb125a566c1db7f45e1e0ce9f8ac7bf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
