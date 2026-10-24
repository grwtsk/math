# ScalingLaplacianQuadraticMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7b671d5af84d1f78a103c2f067168cdd07f5a018f2ab9626579ada837b475f0",
  "kind": "structure",
  "lexical_name": "ScalingLaplacianQuadraticMetric",
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
  "slug": "scalinglaplacianquadraticmetric--63d96ba3485b7fc40739ea30",
  "source": {
    "blob": "0ea9409bb694d1d8a69795fa8cdfe2ad1a18310c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/MetricQuadraticTorsionZetaCycle/Variant2b8cbad4cbe5e1da346f627b3894fddbc111270855bade44993698af77173624.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63d96ba3485b7fc40739ea303a2f5a47d81f82b78ea994309e39b752a62b6a9b",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/MetricQuadraticTorsionZetaCycle/Variant2b8cbad4cbe5e1da346f627b3894fddbc111270855bade44993698af77173624.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7b671d5af84d1f78a103c2f067168cdd07f5a018f2ab9626579ada837b475f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ScalingLaplacianQuadraticMetric
    (Spectral : Type u) (MetricValue : Type v) where
  deltaSpectrum : Spectral → MetricValue
  quadraticValue : Spectral → MetricValue
  reflect : Spectral → Spectral
  delta_eq_quadratic : ∀ z : Spectral, deltaSpectrum z = quadraticValue z
  quadratic_reflect : ∀ z : Spectral, quadraticValue (reflect z) = quadraticValue z

/-- Projection of the quadratic metric expression for the scaling Laplacian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/MetricQuadraticTorsionZetaCycle/Variant2b8cbad4cbe5e1da346f627b3894fddbc111270855bade44993698af77173624.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/MetricQuadraticTorsionZetaCycle/Variant2b8cbad4cbe5e1da346f627b3894fddbc111270855bade44993698af77173624.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ea9409bb694d1d8a69795fa8cdfe2ad1a18310c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
