# SubstitutionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5263e4c6b47cd6636717020043d162a2a9f928eede7d24ecf157793c95e3c0f8",
  "kind": "structure",
  "lexical_name": "SubstitutionCertificate",
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
  "slug": "substitutioncertificate--455dc8fdcee6476df23c64d2",
  "source": {
    "blob": "74a46edcbe9c705da8591623e3a73e317fa820b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 7,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variantdea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:455dc8fdcee6476df23c64d2186e0ecb6b6ab74b0546e87dcf07e414a35c3423",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variantdea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5263e4c6b47cd6636717020043d162a2a9f928eede7d24ecf157793c95e3c0f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SubstitutionCertificate
    (text : TextCarrier)
    (left right : ConceptProfile text) where
  sourceExpressionId : StableId
  replacementExpressionId : StableId
  sentenceFrameDigest : Digest
  sentence_digest_valid : sentenceFrameDigest.Valid
  context_exact :
    left.context.contextId = right.context.contextId
  registerPreserved : Prop
  domainPreserved : Prop
  pragmaticEffectPreserved : Prop
  register_preserved : registerPreserved
  domain_preserved : domainPreserved
  pragmatic_preserved : pragmaticEffectPreserved
  evidence : EvidenceBundle text

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variantdea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Substitution/Variantdea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a46edcbe9c705da8591623e3a73e317fa820b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
