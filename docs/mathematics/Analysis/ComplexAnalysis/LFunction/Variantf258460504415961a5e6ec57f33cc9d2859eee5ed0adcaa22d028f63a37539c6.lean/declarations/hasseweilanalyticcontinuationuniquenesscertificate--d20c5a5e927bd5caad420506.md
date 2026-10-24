# HasseWeilAnalyticContinuationUniquenessCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6b1cb1433703cb5088bd7785aa84aea2084feeebafb51992d2fbe80218e01e6",
  "kind": "structure",
  "lexical_name": "HasseWeilAnalyticContinuationUniquenessCertificate",
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
  "slug": "hasseweilanalyticcontinuationuniquenesscertificate--d20c5a5e927bd5caad420506",
  "source": {
    "blob": "71bbf346b0fa6dca7768cb204fefec97a1d230e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2334,
    "line": 2278,
    "path": "GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d20c5a5e927bd5caad42050604b8c9d08d73ea85e872f78e006ac4ee43789620",
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

Occurrence: `declaration:c6b1cb1433703cb5088bd7785aa84aea2084feeebafb51992d2fbe80218e01e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2278–2334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HasseWeilAnalyticContinuationUniquenessCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L) where
  analyticFunctionInterfaceCertified :
    A.certifiedForBSD
  coefficientSystemGerm :
    A.analyticObject.AnalyticFunction
  coefficientSystemGerm_eq :
    coefficientSystemGerm = A.analyticObject.coefficientSeriesGerm
  eulerProductGerm :
    A.analyticObject.AnalyticFunction
  eulerProductGerm_eq :
    eulerProductGerm = A.analyticObject.eulerProductGerm
  convergenceDomainConnected :
    Prop
  convergenceDomainConnectedCertified :
    convergenceDomainConnected
  analyticContinuationDomainConnected :
    Prop
  analyticContinuationDomainConnectedCertified :
    analyticContinuationDomainConnected
  coefficientAndEulerProductGermsAgreeOnNonemptyDomain :
    Prop
  coefficientAndEulerProductGermsAgreeOnNonemptyDomainCertified :
    coefficientAndEulerProductGermsAgreeOnNonemptyDomain
  analyticContinuationUniqueFromCoefficientGerm :
    Prop
  analyticContinuationUniqueFromCoefficientGermCertified :
    analyticContinuationUniqueFromCoefficientGerm
  completedFunctionalEquationUsesSameContinuation :
    Prop
  completedFunctionalEquationUsesSameContinuationCertified :
    completedFunctionalEquationUsesSameContinuation
  centralGermObtainedFromUniqueContinuation :
    Prop
  centralGermObtainedFromUniqueContinuationCertified :
    centralGermObtainedFromUniqueContinuation
  IdentityTheoremBoundaryData :
    Type u
  identityTheoremBoundaryData :
    IdentityTheoremBoundaryData
  identityTheoremBoundaryAppliesToContinuationDomain :
    Prop
  identityTheoremBoundaryAppliesToContinuationDomainCertified :
    identityTheoremBoundaryAppliesToContinuationDomain
  sourceStatus :
    AnalyticCertificateSourceStatus
  boundary :
    List String

/--
Analytic-continuation uniqueness quality required by theorem-facing BSD input.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean#L2278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71bbf346b0fa6dca7768cb204fefec97a1d230e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
