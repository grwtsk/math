# MordellWeilHeightDescentProvenanceCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d41575bd79124fb380ce30628e3cae9932e14d732dcf6e40bd4b4e1bc95e393",
  "kind": "structure",
  "lexical_name": "MordellWeilHeightDescentProvenanceCertificate",
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
  "slug": "mordellweilheightdescentprovenancecertificate--5dcccfd9f2d5127922bbd560",
  "source": {
    "blob": "416768821aa54767a123cfa871d4c9afd63099de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1218,
    "line": 1183,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dcccfd9f2d5127922bbd56059b2e0040c577d0539022656f6626c415efe75c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d41575bd79124fb380ce30628e3cae9932e14d732dcf6e40bd4b4e1bc95e393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1183–1218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MordellWeilHeightDescentProvenanceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (D : WeakMordellWeilDescentCertificate M) where
  canonicalHeight :
    CanonicalHeightFunctionCertificate M
  canonicalHeightCertified :
    canonicalHeight.certifiedForBSD
  localHeightDecomposition :
    CanonicalHeightLocalDecompositionCertificate canonicalHeight
  localHeightDecompositionCertified :
    localHeightDecomposition.certifiedForBSD
  weakDescentCertified :
    D.certifiedForBSD
  northcottFiniteHeightBalls : Prop
  northcottFiniteHeightBallsCertified :
    northcottFiniteHeightBalls
  descentInequalityCompatibleWithKummerLevel : Prop
  descentInequalityCompatibleWithKummerLevelCertified :
    descentInequalityCompatibleWithKummerLevel
  descentReducesHeightOutsideGeneratorSet : Prop
  descentReducesHeightOutsideGeneratorSetCertified :
    descentReducesHeightOutsideGeneratorSet
  boundedSearchTerminates : Prop
  boundedSearchTerminatesCertified :
    boundedSearchTerminates
  generatedSubgroupContainsAllRationalPoints : Prop
  generatedSubgroupContainsAllRationalPointsCertified :
    generatedSubgroupContainsAllRationalPoints
  compatibleWithFiniteGenerationCertificate : Prop
  compatibleWithFiniteGenerationCertificateCertified :
    compatibleWithFiniteGenerationCertificate
  sourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Height-descent provenance quality required by theorem-facing BSD input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean#L1183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416768821aa54767a123cfa871d4c9afd63099de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
