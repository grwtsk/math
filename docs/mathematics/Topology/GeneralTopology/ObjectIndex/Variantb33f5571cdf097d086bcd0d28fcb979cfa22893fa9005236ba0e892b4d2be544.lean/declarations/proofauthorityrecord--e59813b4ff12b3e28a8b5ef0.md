# ProofAuthorityRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:945997774b5ee9fd94cbbce7b65f7c0504576db354c08674779d991add08141c",
  "kind": "structure",
  "lexical_name": "ProofAuthorityRecord",
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
  "slug": "proofauthorityrecord--e59813b4ff12b3e28a8b5ef0",
  "source": {
    "blob": "6faf658ea126e014552f853cc9fb1b64376e4728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/ObjectIndex/Variantb33f5571cdf097d086bcd0d28fcb979cfa22893fa9005236ba0e892b4d2be544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e59813b4ff12b3e28a8b5ef0d0383ca978d1fbcce8d30343936f35f007c761ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ObjectIndex/Variantb33f5571cdf097d086bcd0d28fcb979cfa22893fa9005236ba0e892b4d2be544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:945997774b5ee9fd94cbbce7b65f7c0504576db354c08674779d991add08141c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProofAuthorityRecord where
  identity : String
  propositionId : PropositionId
  declarationId : FormalDeclarationId
  checker : ArtifactIdentity
  trustedBase : TrustedBaseClosure
  authority : AuthorityClass
  evidenceClass : EvidenceClass
  sourceDigest : ArtifactIdentity

/-- Positive finite example. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ObjectIndex/Variantb33f5571cdf097d086bcd0d28fcb979cfa22893fa9005236ba0e892b4d2be544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ObjectIndex/Variantb33f5571cdf097d086bcd0d28fcb979cfa22893fa9005236ba0e892b4d2be544.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6faf658ea126e014552f853cc9fb1b64376e4728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
