# SemanticRecoveryCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02c0881c244e9c06e856dad4b552470f3b3f9668f1d9eeb7957eea9146a72634",
  "kind": "structure",
  "lexical_name": "SemanticRecoveryCandidate",
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
  "slug": "semanticrecoverycandidate--14dbba30d8b18f9da8dcf358",
  "source": {
    "blob": "e1c4660b7fea1e76d434ded2017168f985b4f7ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recovery/Variantb99598c4552c3cd9c0ef807a2796b24b0a317acd5f6a20e84f667b11e44080a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14dbba30d8b18f9da8dcf358c8420b05dbbe4de9f9de80a58041661626061724",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recovery/Variantb99598c4552c3cd9c0ef807a2796b24b0a317acd5f6a20e84f667b11e44080a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02c0881c244e9c06e856dad4b552470f3b3f9668f1d9eeb7957eea9146a72634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemanticRecoveryCandidate
    (Context : Type u) (N D : Nat) where
  mode : SemanticRecoveryMode
  sourceState : TensorState N D
  resultState : TensorState N D
  exactSkeletonDigest : String
  chainizationDigest : String
  semanticProfileDigest : String
  representationDigest : String
  sourceReceiptDigest : String
  resultReceiptDigest : String
  rollbackDigest : String
  exactSkeletonCertified : exactSkeletonDigest ≠ ""
  chainizationCertified : chainizationDigest ≠ ""
  semanticProfileCertified : semanticProfileDigest ≠ ""
  representationCertified : representationDigest ≠ ""
  receiptPreserved : resultReceiptDigest = sourceReceiptDigest
  continuityClaim : Prop
  continuityCertified : continuityClaim
  authorityBound : Prop
  authorityBoundCertified : authorityBound
  modeLaw :
    match mode with
    | .stable => resultState = sourceState
    | .gaugeNormalized => resultState = sourceState
    | .unitaryRecovered => True
    | .anchorReborn => True

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recovery/Variantb99598c4552c3cd9c0ef807a2796b24b0a317acd5f6a20e84f667b11e44080a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recovery/Variantb99598c4552c3cd9c0ef807a2796b24b0a317acd5f6a20e84f667b11e44080a8.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c4660b7fea1e76d434ded2017168f985b4f7ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
