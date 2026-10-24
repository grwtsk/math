# AnalyticLaw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f005791a2994ef2c77de6acd36421cc652177d6fd248ed444228d512f8ea1f33",
  "kind": "structure",
  "lexical_name": "AnalyticLaw",
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
  "slug": "analyticlaw--84a473d40c7e77b61b9ed7e1",
  "source": {
    "blob": "0e95ac54b46ee626bb275a5067b7d720c3b65e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84a473d40c7e77b61b9ed7e1a57d2c64b8d2efedfea86e51a6a26436acf36502",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f005791a2994ef2c77de6acd36421cc652177d6fd248ed444228d512f8ea1f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalyticLaw [Fintype I] [Nonempty I] (parameters : Parameters I) where
  referenceMeasure : Measure (InteriorSimplexPoint I)
  measure : Measure (InteriorSimplexPoint I)
  density_identity :
    measure = referenceMeasure.withDensity
      (fun point => ENNReal.ofReal (normalizedGammaDensity parameters point))
  probability : IsProbabilityMeasure measure

/-- A law with an explicitly supplied simplex-valued mean.  For anisotropic
normalized-Gamma parameters this mean is generally not `αᵢ / α₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrationTheorems/RadonNikodymTheorem/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/SuppliedAnalyticMomentAndTransportLaws.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e95ac54b46ee626bb275a5067b7d720c3b65e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
