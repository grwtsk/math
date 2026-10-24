# actualSourceComplexTransform_normalized_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5adfd14c-c2c5-e4c9-4454-6bdea72688de",
  "kind": "theorem",
  "lexical_name": "actualSourceComplexTransform_normalized_tendsto",
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
  "slug": "actualsourcecomplextransform-normalized-tendsto--839c16196d00a3cb2f39f3a1",
  "source": {
    "blob": "e6db26346785cc8a355a38ec4661d966aea9e018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 192,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:839c16196d00a3cb2f39f3a15b569e997f845c7de4dc3eeeac925e44a749db24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5adfd14c-c2c5-e4c9-4454-6bdea72688de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceComplexTransform_normalized_tendsto {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun A : ℝ =>
      ((A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A) : ℝ) : ℂ) *
        Complex.exp (-z * (A : ℂ)) * actualSourceComplexTransform A z)
      atTop (𝓝 (actualLeadingComplexCoefficient z)) := by
  have he : (fun A : ℝ =>
      ((A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A) : ℝ) : ℂ) *
        Complex.exp (-z * (A : ℂ)) * actualSourceComplexTransform A z) =ᶠ[atTop]
      fun A : ℝ => ∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact actualSourceComplexTransform_normalized_eq_endpoint hA z
  exact (actualComplexEndpoint_integral_tendsto hz).congr' he.symm

end
end FormalResearch.RiemannHypothesis.SourceActualComplexEndpointAsymptotic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6db26346785cc8a355a38ec4661d966aea9e018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
