# AutomorphicLFunctionObjectDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbe2b1f9f25134a211188d4c2212451abce42e3d0467f7c0fca943a1cf985885",
  "kind": "structure",
  "lexical_name": "AutomorphicLFunctionObjectDescriptor",
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
  "slug": "automorphiclfunctionobjectdescriptor--c63f7e334279413a6d663f2d",
  "source": {
    "blob": "8019f6161736cbaa58e37f9667fe91c6ac2e91b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2817,
    "line": 2738,
    "path": "GRWTSK/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c63f7e334279413a6d663f2d0122734c243467342d1d54d7191d436e4dc0583d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbe2b1f9f25134a211188d4c2212451abce42e3d0467f7c0fca943a1cf985885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2738–2817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AutomorphicLFunctionObjectDescriptor
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (scope : AutomorphicProvenanceScope) where
  scopeSupport :
    AutomorphicScopeSupportCertificate N L scope
  scopeSupportCertified :
    scopeSupport.certifiedForBSD
  objectKind :
    AutomorphicObjectKind
  AutomorphicCarrier :
    Type u
  automorphicCarrier :
    AutomorphicCarrier
  CuspidalOrNewformStatus :
    Type u
  cuspidalOrNewformStatus :
    CuspidalOrNewformStatus
  CohomologicalWeightData :
    Type u
  cohomologicalWeightData :
    CohomologicalWeightData
  CoefficientFieldData :
    Type u
  coefficientFieldData :
    CoefficientFieldData
  CentralCharacterData :
    Type u
  centralCharacterData :
    CentralCharacterData
  LevelOrConductorData :
    Type u
  levelOrConductorData :
    LevelOrConductorData
  FiniteLocalComponent :
    Type u
  finiteLocalComponents :
    List FiniteLocalComponent
  ArchimedeanLocalComponent :
    Type u
  archimedeanLocalComponents :
    List ArchimedeanLocalComponent
  AutomorphicNormalizationData :
    Type u
  automorphicLFunctionNormalization :
    AutomorphicNormalizationData
  automorphicCarrierMatchesObjectKind : Prop
  automorphicCarrierMatchesObjectKindCertified :
    automorphicCarrierMatchesObjectKind
  cuspidalOrNewformStatusMatchesObjectKind : Prop
  cuspidalOrNewformStatusMatchesObjectKindCertified :
    cuspidalOrNewformStatusMatchesObjectKind
  cohomologicalWeightOrParallelWeightTwoMatchesObjectKind : Prop
  cohomologicalWeightOrParallelWeightTwoMatchesObjectKindCertified :
    cohomologicalWeightOrParallelWeightTwoMatchesObjectKind
  coefficientFieldActsOnCarrier : Prop
  coefficientFieldActsOnCarrierCertified :
    coefficientFieldActsOnCarrier
  centralCharacterMatchesCoefficientField : Prop
  centralCharacterMatchesCoefficientFieldCertified :
    centralCharacterMatchesCoefficientField
  levelOrConductorMatchesGlobalConductor : Prop
  levelOrConductorMatchesGlobalConductorCertified :
    levelOrConductorMatchesGlobalConductor
  finiteLocalComponentsMatchLocalFactors : Prop
  finiteLocalComponentsMatchLocalFactorsCertified :
    finiteLocalComponentsMatchLocalFactors
  archimedeanLocalComponentsMatchGammaFactors : Prop
  archimedeanLocalComponentsMatchGammaFactorsCertified :
    archimedeanLocalComponentsMatchGammaFactors
  automorphicLFunctionNormalizationMatchesCompletedLFunction : Prop
  automorphicLFunctionNormalizationMatchesCompletedLFunctionCertified :
    automorphicLFunctionNormalizationMatchesCompletedLFunction
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for typed automorphic L-function descriptors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/LFunction/Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694.lean#L2738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8019f6161736cbaa58e37f9667fe91c6ac2e91b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
