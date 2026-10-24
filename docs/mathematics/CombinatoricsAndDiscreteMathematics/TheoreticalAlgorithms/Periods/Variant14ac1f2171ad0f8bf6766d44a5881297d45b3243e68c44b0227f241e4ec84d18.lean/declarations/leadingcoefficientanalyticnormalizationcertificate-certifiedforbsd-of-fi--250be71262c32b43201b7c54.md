# LeadingCoefficientAnalyticNormalizationCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6852483-7cf7-a357-1e63-3b083be8c8b1",
  "kind": "theorem",
  "lexical_name": "LeadingCoefficientAnalyticNormalizationCertificate.certifiedForBSD_of_fields",
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
  "slug": "leadingcoefficientanalyticnormalizationcertificate-certifiedforbsd-of-fi--250be71262c32b43201b7c54",
  "source": {
    "blob": "650b69126001d078176620c3167af06dd98d5ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:250be71262c32b43201b7c54c768832518f871430659473a0fb4f18471cdf574",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6852483-7cf7-a357-1e63-3b083be8c8b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LeadingCoefficientAnalyticNormalizationCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {MW : MordellWeilGroup.{u}}
    {S₁ : FirstPartStatement L MW}
    {S₂ : SecondPartStatement L MW}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {LC : LeadingCoefficientCertificate L MW S₁ S₂}
    (A : LeadingCoefficientAnalyticNormalizationCertificate
      L MW S₁ S₂ N P LC)
    (hsource :
      A.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    A.certifiedForBSD := by
  exact
    ⟨A.leadingCoefficientCertified,
      A.eulerProductDirichletSeriesCertified,
      A.completedFunctionalEquationCertified,
      A.taylorGermUsesAnalyticContinuationFromCoefficientSeriesCertified,
      A.orderCertificateUsesSameAnalyticGermCertified,
      A.leadingTermConvention.leadingIndex_eq_order,
      A.leadingCoefficientMatchesLimitQuotientAtSEqOneCertified,
      A.completedToUncompletedNormalizationNonzeroAtSEqOneCertified,
      A.coefficientSystemAnalyticGermCompatibleWithSecondPartCertified,
      hsource⟩

/-- Typed archimedean place kind used by period certificate metadata. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650b69126001d078176620c3167af06dd98d5ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
