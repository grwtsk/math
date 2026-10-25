# FiniteOSAuthorityWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdb4d0c56e1b29f1df9caf22a1cf895ba6aaa6916a3dc67ee16588404f06d77d",
  "kind": "structure",
  "lexical_name": "FiniteOSAuthorityWitness",
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
  "slug": "finiteosauthoritywitness--7c93a9d8f817e71fb114ac1e",
  "source": {
    "blob": "cf259d8c0ea4df22badbb493b547e032e702487e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Varianta7d0b7641dad389b6b44432143aa1d46b445a5d679196435a643ace63320dfb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c93a9d8f817e71fb114ac1e90e6f9e1a6bb8a47d37137fd2bcfeccca2f775ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Varianta7d0b7641dad389b6b44432143aa1d46b445a5d679196435a643ace63320dfb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdb4d0c56e1b29f1df9caf22a1cf895ba6aaa6916a3dc67ee16588404f06d77d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteOSAuthorityWitness where
  object :
    FiniteOS.Expression String

  criteria :
    FiniteOSHomologyStabilityCriteria

  criteriaCertified :
    criteria.certifiedForHomologyStability

  isCategoricalObject : Prop
  isCategoricalObjectCertified :
    isCategoricalObject

  isFiniteHomologicalSystem : Prop
  isFiniteHomologicalSystemCertified :
    isFiniteHomologicalSystem

  isProofCarrying : Prop
  isProofCarryingCertified :
    isProofCarrying

  isCertificateGated : Prop
  isCertificateGatedCertified :
    isCertificateGated

  finiteSyntaxAccepted : Prop
  finiteSyntaxAcceptedCertified :
    finiteSyntaxAccepted

  noAuthorityFromSyntaxAlone : Prop
  noAuthorityFromSyntaxAloneCertified :
    noAuthorityFromSyntaxAlone

  noPrismaticComparisonFromFiniteOSAlone : Prop
  noPrismaticComparisonFromFiniteOSAloneCertified :
    noPrismaticComparisonFromFiniteOSAlone

  noAnalyticPDEFromFiniteOSAlone : Prop
  noAnalyticPDEFromFiniteOSAloneCertified :
    noAnalyticPDEFromFiniteOSAlone

  noHilbertSpectralEvidenceFromFiniteOSAlone : Prop
  noHilbertSpectralEvidenceFromFiniteOSAloneCertified :
    noHilbertSpectralEvidenceFromFiniteOSAlone

  boundary : List String

/-- Certificate predicate for finite OS authority. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Varianta7d0b7641dad389b6b44432143aa1d46b445a5d679196435a643ace63320dfb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Varianta7d0b7641dad389b6b44432143aa1d46b445a5d679196435a643ace63320dfb2.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf259d8c0ea4df22badbb493b547e032e702487e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
