# LocalCorrespondenceCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddb101717c4324758f6cacf68cf84670ff5efc2187e8d4cbb973547eecb4278d",
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
  "slug": "localcorrespondencecertificate--d38f2b6e205d353dec9c39eb",
  "source": {
    "blob": "fe52972acdac79849985f1e5e37e8bee86bca487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 31,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Correspondence/Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d38f2b6e205d353dec9c39ebc439363a494367a62da8510f7aedf2676b77095d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Correspondence/Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddb101717c4324758f6cacf68cf84670ff5efc2187e8d4cbb973547eecb4278d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–58.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Correspondence/Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Correspondence/Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe52972acdac79849985f1e5e37e8bee86bca487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
