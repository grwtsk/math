# sourceCorrelation_eq_normalizedOverlap_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb03aa28-3381-8404-d009-6e1672363f36",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_normalizedOverlap_filter",
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
  "slug": "sourcecorrelation-eq-normalizedoverlap-filter--010f0db3b6e440b4ff00ad7e",
  "source": {
    "blob": "755cb44f4b85cefbf379d141c24de384f59b1740",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantee3609624b8b00842b114e0f78fbcba260eb3655a2a7a2651c00a5d0e212e972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:010f0db3b6e440b4ff00ad7e0f0b84fd53e79318c3375e9b0600761045b8c3fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantee3609624b8b00842b114e0f78fbcba260eb3655a2a7a2651c00a5d0e212e972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb03aa28-3381-8404-d009-6e1672363f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_normalizedOverlap_filter {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A t =
      deriv (deriv (deriv (deriv (normalizedOverlapProfile A)))) t -
        deriv (deriv (normalizedOverlapProfile A)) t / 2 +
        normalizedOverlapProfile A t / 16 := by
  rw [sourceCorrelation_eq_primitive_filter hA,
    ← primitiveCorrelationZero_fourth_deriv hA,
    primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    ← neg_neg (primitiveCorrelationOne A t),
    ← primitiveCorrelationZero_second_deriv_eq_neg_one hA,
    primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    primitiveCorrelationZero_eq_profile hA ht0 ht2]
  unfold normalizedOverlapProfile
  ring

end FormalResearch.RiemannHypothesis.SourcePhysicalEndpointConvolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantee3609624b8b00842b114e0f78fbcba260eb3655a2a7a2651c00a5d0e212e972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantee3609624b8b00842b114e0f78fbcba260eb3655a2a7a2651c00a5d0e212e972.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `755cb44f4b85cefbf379d141c24de384f59b1740` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
