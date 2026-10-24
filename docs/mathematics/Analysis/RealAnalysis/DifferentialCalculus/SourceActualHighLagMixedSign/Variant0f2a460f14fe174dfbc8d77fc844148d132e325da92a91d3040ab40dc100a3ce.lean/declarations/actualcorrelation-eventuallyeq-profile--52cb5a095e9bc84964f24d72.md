# actualCorrelation_eventuallyEq_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5015abe2-4b9c-59c0-8544-0fd5c1c917b6",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_eventuallyEq_profile",
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
  "slug": "actualcorrelation-eventuallyeq-profile--52cb5a095e9bc84964f24d72",
  "source": {
    "blob": "2dbe840dc72cbba87f8cbc262d5930ed6e84fe23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variant0f2a460f14fe174dfbc8d77fc844148d132e325da92a91d3040ab40dc100a3ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52cb5a095e9bc84964f24d72f11f47b6842ad917f98adcf12dda269cbbbe4c12",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variant0f2a460f14fe174dfbc8d77fc844148d132e325da92a91d3040ab40dc100a3ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5015abe2-4b9c-59c0-8544-0fd5c1c917b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actualCorrelation_eventuallyEq_profile {t : ℝ}
    (ht0 : 0 < t) (ht20 : t < 20) :
    sourceCorrelation explicitSecondDerivative 10 =ᶠ[𝓝 t] fixedCorrelationProfile := by
  have h0 := actualPrimitive_eventuallyEq_jet ht0 ht20
  have h2 : deriv (deriv (primitiveCorrelationZero 10)) =ᶠ[𝓝 t] jet 2 := by
    simpa only [jet_deriv] using h0.deriv.deriv
  have h4 : deriv (deriv (deriv (deriv (primitiveCorrelationZero 10)))) =ᶠ[𝓝 t]
      jet 4 := by
    simpa only [jet_deriv] using h0.deriv.deriv.deriv.deriv
  filter_upwards [h0, h2, h4] with s hs0 hs2 hs4
  rw [actualCorrelation_eq_primitive_filter s, hs4, hs2, hs0]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variant0f2a460f14fe174dfbc8d77fc844148d132e325da92a91d3040ab40dc100a3ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variant0f2a460f14fe174dfbc8d77fc844148d132e325da92a91d3040ab40dc100a3ce.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dbe840dc72cbba87f8cbc262d5930ed6e84fe23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
