# actualLogFourthKernel_at_zero_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07ebc847-e7e1-2e49-f681-081947e5f16f",
  "kind": "theorem",
  "lexical_name": "actualLogFourthKernel_at_zero_ge",
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
  "slug": "actuallogfourthkernel-at-zero-ge--3d60906105426e785cc2a427",
  "source": {
    "blob": "4d70f32b4cd934df9f6a666bccc66633e6ef28bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variant92185368960f33188c465d569a7cba5c7313132ffb7c108fcafad4c62ec05364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d60906105426e785cc2a427d3755ac999d325f30a4db0a056c30b9f24b5b2df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variant92185368960f33188c465d569a7cba5c7313132ffb7c108fcafad4c62ec05364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07ebc847-e7e1-2e49-f681-081947e5f16f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogFourthKernel_at_zero_ge (A : ℝ) (hA : 1 ≤ A) :
    1 / 16 ≤ actualLogFourthKernel A 0 := by
  rw [actualLogFourthKernel_at_zero A hA]
  have h1 : 0 ≤ ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 :=
    integral_nonneg fun x => sq_nonneg _
  have h2 : 0 ≤ ∫ x : ℝ,
      (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2 :=
    integral_nonneg fun x => sq_nonneg _
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualDoubleMixedKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variant92185368960f33188c465d569a7cba5c7313132ffb7c108fcafad4c62ec05364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variant92185368960f33188c465d569a7cba5c7313132ffb7c108fcafad4c62ec05364.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d70f32b4cd934df9f6a666bccc66633e6ef28bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
