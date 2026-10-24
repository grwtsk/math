# primitiveCorrelationOne_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27b21c39-2351-02ba-ce5c-08dfb18babc6",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationOne_laplace",
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
  "slug": "primitivecorrelationone-laplace--93f33ab8ecb21e84d139adae",
  "source": {
    "blob": "84e8e0dd50a2eaab31556854585a1553e3c8fb58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant1569c2e95553dc09a8e36095a8d973f5fcf17f5fbb35b56fc07cbf90a39ca441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93f33ab8ecb21e84d139adae3d92cf1532e376ab8bf73f0c7f43dcc8f40eb491",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant1569c2e95553dc09a8e36095a8d973f5fcf17f5fbb35b56fc07cbf90a39ca441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27b21c39-2351-02ba-ce5c-08dfb18babc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCorrelationOne_laplace {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationOne A s) =
      -σ ^ 2 * ∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s := by
  have hc := normalizedPrimitiveBump_contDiff hA
  have hs := normalizedPrimitiveBump_hasCompactSupport hA
  have h1 := weighted_correlation_integral (deriv (normalizedPrimitiveBump A)) σ
    (weighted_compact_integrable hc.deriv'.continuous hs.deriv σ)
    (weighted_compact_integrable hc.deriv'.continuous hs.deriv (-σ))
  have h0 := weighted_correlation_integral (normalizedPrimitiveBump A) σ
    (weighted_compact_integrable hc.continuous hs σ)
    (weighted_compact_integrable hc.continuous hs (-σ))
  change (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationOne A s) = _ at h1
  change (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s) = _ at h0
  rw [primitive_deriv_laplace hA σ, primitive_deriv_laplace hA (-σ)] at h1
  rw [h1, h0]
  ring

/-- The second derivative transforms twice before the exact full correlation factorization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant1569c2e95553dc09a8e36095a8d973f5fcf17f5fbb35b56fc07cbf90a39ca441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant1569c2e95553dc09a8e36095a8d973f5fcf17f5fbb35b56fc07cbf90a39ca441.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e8e0dd50a2eaab31556854585a1553e3c8fb58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
