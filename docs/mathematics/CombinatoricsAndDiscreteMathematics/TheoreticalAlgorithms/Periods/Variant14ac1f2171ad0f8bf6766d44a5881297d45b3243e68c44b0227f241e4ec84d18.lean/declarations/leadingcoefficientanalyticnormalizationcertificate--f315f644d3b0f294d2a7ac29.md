# LeadingCoefficientAnalyticNormalizationCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:124ea905e828192bf26e8555a3261b10d5f91e6e49671a8ee78ad0f58f0dc5ac",
  "kind": "structure",
  "lexical_name": "LeadingCoefficientAnalyticNormalizationCertificate",
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
  "slug": "leadingcoefficientanalyticnormalizationcertificate--f315f644d3b0f294d2a7ac29",
  "source": {
    "blob": "650b69126001d078176620c3167af06dd98d5ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f315f644d3b0f294d2a7ac2955302ce882c30927b2046b7d3cfaab7d302ca23a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:124ea905e828192bf26e8555a3261b10d5f91e6e49671a8ee78ad0f58f0dc5ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LeadingCoefficientAnalyticNormalizationCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (MW : MordellWeilGroup.{u})
    (S₁ : FirstPartStatement L MW)
    (S₂ : SecondPartStatement L MW)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (LC : LeadingCoefficientCertificate L MW S₁ S₂) where
  leadingCoefficientCertified :
    LC.certifiedForBSD
  eulerProductDirichletSeries :
    EulerProductDirichletSeriesCompatibilityCertificate N L
  eulerProductDirichletSeriesCertified :
    eulerProductDirichletSeries.certifiedForBSD
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquationCertified :
    completedFunctionalEquation.certifiedForBSD
  taylorGermUsesAnalyticContinuationFromCoefficientSeries : Prop
  taylorGermUsesAnalyticContinuationFromCoefficientSeriesCertified :
    taylorGermUsesAnalyticContinuationFromCoefficientSeries
  orderCertificateUsesSameAnalyticGerm : Prop
  orderCertificateUsesSameAnalyticGermCertified :
    orderCertificateUsesSameAnalyticGerm
  leadingTermConvention :
    LeadingTermConventionData LC
  leadingCoefficientMatchesLimitQuotientAtSEqOne : Prop
  leadingCoefficientMatchesLimitQuotientAtSEqOneCertified :
    leadingCoefficientMatchesLimitQuotientAtSEqOne
  completedToUncompletedNormalizationNonzeroAtSEqOne : Prop
  completedToUncompletedNormalizationNonzeroAtSEqOneCertified :
    completedToUncompletedNormalizationNonzeroAtSEqOne
  coefficientSystemAnalyticGermCompatibleWithSecondPart : Prop
  coefficientSystemAnalyticGermCompatibleWithSecondPartCertified :
    coefficientSystemAnalyticGermCompatibleWithSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
Leading-coefficient analytic normalization required by theorem-facing BSD input.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650b69126001d078176620c3167af06dd98d5ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
