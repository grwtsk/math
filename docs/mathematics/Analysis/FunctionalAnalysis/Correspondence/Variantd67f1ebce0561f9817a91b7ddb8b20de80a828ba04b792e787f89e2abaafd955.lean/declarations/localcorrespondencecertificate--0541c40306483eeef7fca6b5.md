# LocalCorrespondenceCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fef020fd586628744002cfc7cfa6c67bc7d523c2c8860939c70265cd6320d6b7",
  "kind": "structure",
  "lexical_name": "LocalCorrespondenceCertificate",
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
  "slug": "localcorrespondencecertificate--0541c40306483eeef7fca6b5",
  "source": {
    "blob": "e1068e8751ca0dfc5f2c890eb667160b03c501c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 39,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0541c40306483eeef7fca6b532eaf4591823c85e7b3eb7250d5606bb4225398a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fef020fd586628744002cfc7cfa6c67bc7d523c2c8860939c70265cd6320d6b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalCorrespondenceCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (analytic : CertifiedZeroRegion authority)
    (spectral : SpectralCandidate) where
  assessment :
    LocalMatchAssessment analytic spectral
  status_certified :
    assessment.status =
      .certifiedCorrespondence
  multiplicityEqual :
    analytic.count.count =
      spectral.multiplicity
  analyticWindowUnique : Prop
  analyticWindowUniqueProof :
    analyticWindowUnique
  spectralWindowUnique : Prop
  spectralWindowUniqueProof :
    spectralWindowUnique
  arithmeticContributionEqual : Prop
  arithmeticContributionEqualProof :
    arithmeticContributionEqual
  traceContributionEqual : Prop
  traceContributionEqualProof :
    traceContributionEqual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1068e8751ca0dfc5f2c890eb667160b03c501c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
