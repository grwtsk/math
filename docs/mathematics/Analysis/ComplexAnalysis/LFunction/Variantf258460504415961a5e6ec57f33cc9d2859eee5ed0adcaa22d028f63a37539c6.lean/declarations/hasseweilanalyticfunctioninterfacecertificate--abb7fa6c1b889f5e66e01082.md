# HasseWeilAnalyticFunctionInterfaceCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da0076653e5e15dffb56f4593f6b3cedd91f365b5b59b268ec8d6f0f59dae7bb",
  "kind": "structure",
  "lexical_name": "HasseWeilAnalyticFunctionInterfaceCertificate",
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
  "slug": "hasseweilanalyticfunctioninterfacecertificate--abb7fa6c1b889f5e66e01082",
  "source": {
    "blob": "71bbf346b0fa6dca7768cb204fefec97a1d230e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2210,
    "line": 2158,
    "path": "GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abb7fa6c1b889f5e66e01082923284f5fe880f9047bf43b729aa447137df9165",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da0076653e5e15dffb56f4593f6b3cedd91f365b5b59b268ec8d6f0f59dae7bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2158–2210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HasseWeilAnalyticFunctionInterfaceCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E) where
  lFunctionMetadataCertified :
    L.certifiedForBSD
  coefficientSystem :
    DirichletCoefficientSystemCertificate N L
  coefficientSystemCertified :
    coefficientSystem.certifiedForBSD
  eulerProductDirichletSeries :
    EulerProductDirichletSeriesCompatibilityCertificate N L
  eulerProductDirichletSeriesCertified :
    eulerProductDirichletSeries.certifiedForBSD
  analyticContinuation :
    AnalyticContinuationCertificate L
  analyticContinuationCertified :
    analyticContinuation.certifiedForBSD
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquationCertified :
    completedFunctionalEquation.certifiedForBSD
  analyticObject :
    HasseWeilAnalyticObjectData N P L
  uncompletedFunctionMatchesCoefficientSeries : Prop
  uncompletedFunctionMatchesCoefficientSeriesCertified :
    uncompletedFunctionMatchesCoefficientSeries
  uncompletedFunctionMatchesEulerProductInConvergenceRegion : Prop
  uncompletedFunctionMatchesEulerProductInConvergenceRegionCertified :
    uncompletedFunctionMatchesEulerProductInConvergenceRegion
  analyticContinuationExtendsUncompletedFunction : Prop
  analyticContinuationExtendsUncompletedFunctionCertified :
    analyticContinuationExtendsUncompletedFunction
  completedFunctionBuiltFromUncompletedGammaAndConductor : Prop
  completedFunctionBuiltFromUncompletedGammaAndConductorCertified :
    completedFunctionBuiltFromUncompletedGammaAndConductor
  centralGerm :
    CentralGermAtSEqOneData analyticObject
  centralGermUsesSameAnalyticContinuation : Prop
  centralGermUsesSameAnalyticContinuationCertified :
    centralGermUsesSameAnalyticContinuation
  completedAndUncompletedNormalizationsCompatibleAtSEqOne : Prop
  completedAndUncompletedNormalizationsCompatibleAtSEqOneCertified :
    completedAndUncompletedNormalizationsCompatibleAtSEqOne
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
Analytic Hasse-Weil function-interface quality required by theorem-facing BSD
input.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean#L2158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71bbf346b0fa6dca7768cb204fefec97a1d230e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
