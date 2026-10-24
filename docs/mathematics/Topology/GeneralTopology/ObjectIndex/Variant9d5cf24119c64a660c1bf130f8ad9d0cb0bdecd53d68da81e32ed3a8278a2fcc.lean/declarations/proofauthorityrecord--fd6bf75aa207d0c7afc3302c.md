# ProofAuthorityRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c49d8f0ce730f702ead9fe9698c85dfe5eba0403ff3ba360a0bed5d0ad0e5196",
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
  "slug": "proofauthorityrecord--fd6bf75aa207d0c7afc3302c",
  "source": {
    "blob": "36cfd976b43911adfc903f6bcf33f8f868e71dd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd6bf75aa207d0c7afc3302cc192c0dbb66833fe7c4487d2c01e2294cd45cc86",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c49d8f0ce730f702ead9fe9698c85dfe5eba0403ff3ba360a0bed5d0ad0e5196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36cfd976b43911adfc903f6bcf33f8f868e71dd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
