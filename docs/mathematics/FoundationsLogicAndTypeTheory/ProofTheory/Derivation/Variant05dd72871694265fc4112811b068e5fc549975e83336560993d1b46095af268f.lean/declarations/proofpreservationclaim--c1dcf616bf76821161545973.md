# ProofPreservationClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a90184076fd0dd81c65123b8365fa20f5eb9b15f7f3bfb60f5a2eb669a2104b2",
  "kind": "structure",
  "lexical_name": "ProofPreservationClaim",
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
  "slug": "proofpreservationclaim--c1dcf616bf76821161545973",
  "source": {
    "blob": "7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1dcf616bf76821161545973e302480d580a99da2bf0387ef66622fedb5a9fcd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a90184076fd0dd81c65123b8365fa20f5eb9b15f7f3bfb60f5a2eb669a2104b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProofPreservationClaim
    {source : Theory.{uSO, uSP}}
    {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (sourceTheorem : CertifiedTheorem sourceVersion sourceAssumptions)
    (targetTheorem : CertifiedTheorem targetVersion targetAssumptions) where
  evidenceArtifact : VersionId
  targetPropositionExact : targetTheorem.proposition =
    translation.mapProposition sourceTheorem.proposition
  encodeProof : source.ProofObject sourceTheorem.proposition →
    target.ProofObject targetTheorem.proposition
  decodeProof : target.ProofObject targetTheorem.proposition →
    source.ProofObject sourceTheorem.proposition
  sourceProofRoundTrip : ∀ proofObject,
    decodeProof (encodeProof proofObject) = proofObject
  certifiedProofExact : ∀ sourceAssumptionsHold targetAssumptionsHold,
    encodeProof (sourceTheorem.proofObject sourceAssumptionsHold) =
      targetTheorem.proofObject targetAssumptionsHold

/-- Syntactic status requires a durable, nonempty external evidence inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
