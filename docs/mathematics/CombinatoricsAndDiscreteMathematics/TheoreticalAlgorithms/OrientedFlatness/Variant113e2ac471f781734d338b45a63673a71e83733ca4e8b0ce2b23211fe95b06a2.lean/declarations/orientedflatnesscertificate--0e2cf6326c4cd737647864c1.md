# OrientedFlatnessCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62d6a8f2f29549f083bb1157d8a16289a55f0469e62be08167b3820c89774d56",
  "kind": "structure",
  "lexical_name": "OrientedFlatnessCertificate",
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
  "slug": "orientedflatnesscertificate--0e2cf6326c4cd737647864c1",
  "source": {
    "blob": "518684005eb57186e315519b6f9cf1b7049c57aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e2cf6326c4cd737647864c1677d91ea71f3ae6181764caae61432ab61a48796",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62d6a8f2f29549f083bb1157d8a16289a55f0469e62be08167b3820c89774d56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrientedFlatnessCertificate where
  cover : KakeyaTubeCover
  coverCertificate : KakeyaTubeCoverCertificate cover
  coverCertified :
    coverCertificate.certifiedForMajorProof

  scale : DyadicScaleDescriptor
  rawTransport : TransportCoefficientDescriptor
  normalizedTransport : NormalizedTransportDescriptor

  normalization : MultiscaleNormalizationCertificate
  orientation : TubeOrientationCertificate
  plankGluing : PlankGluingCertificate
  homologicalRelaxation : HomologicalRelaxationCertificate

  orientedFlatness : Prop
  orientedFlatnessCertified : orientedFlatness

  noAnalyticKakeyaEstimateClaim : Prop
  noAnalyticKakeyaEstimateClaimCertified :
    noAnalyticKakeyaEstimateClaim

  noPrismaticSheafSurfaceClaim : Prop
  noPrismaticSheafSurfaceClaimCertified :
    noPrismaticSheafSurfaceClaim

  noHilbertFlowTheoremReadyClaim : Prop
  noHilbertFlowTheoremReadyClaimCertified :
    noHilbertFlowTheoremReadyClaim

  boundary : List String

/--
Major-proof quality predicate for oriented flatness.

It unpacks only propositions stored on the certificate and on its
subcertificates.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `518684005eb57186e315519b6f9cf1b7049c57aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
