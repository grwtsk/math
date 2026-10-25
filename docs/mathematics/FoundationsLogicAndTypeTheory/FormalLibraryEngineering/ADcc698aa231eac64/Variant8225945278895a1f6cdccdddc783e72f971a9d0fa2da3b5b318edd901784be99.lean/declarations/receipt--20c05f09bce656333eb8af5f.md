# Receipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f23f45506c07de2600187fd1d164fab252e359efa5fddcfe45281720f963d5de",
  "kind": "structure",
  "lexical_name": "Receipt",
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
  "slug": "receipt--20c05f09bce656333eb8af5f",
  "source": {
    "blob": "455220267227a87783a3acce1f1d36e9d6e5fada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ADcc698aa231eac64/Variant8225945278895a1f6cdccdddc783e72f971a9d0fa2da3b5b318edd901784be99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20c05f09bce656333eb8af5fb8d20a94c9f7c32ced81fdd3a6e034be11d0a926",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ADcc698aa231eac64/Variant8225945278895a1f6cdccdddc783e72f971a9d0fa2da3b5b318edd901784be99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f23f45506c07de2600187fd1d164fab252e359efa5fddcfe45281720f963d5de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Receipt where
  transactionId : RefactorTransactionId
  status : TransactionStatus
  baselineDigest : Digest
  sourceAnalysisDigest : Digest
  millingProfileDigest : Digest
  partitionProfileDigest : Digest
  planDigest : Digest
  stagedEnvironmentDigest : Digest
  appliedEnvironmentDigest : Digest
  milledUnitCount : Nat
  movedUnitCount : Nat
  unchangedUnitCount : Nat
  blockedUnitCount : Nat
  publicStatementChanges : Nat
  trustClosureChanges : Nat
  cleanBuild : Bool
  freshKernelCheck : Bool
  fullAssurance : Bool
  idempotent : Bool
  rollbackReceipt : String
  deriving DecidableEq, Repr

end Mathematics.Refactor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ADcc698aa231eac64/Variant8225945278895a1f6cdccdddc783e72f971a9d0fa2da3b5b318edd901784be99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ADcc698aa231eac64/Variant8225945278895a1f6cdccdddc783e72f971a9d0fa2da3b5b318edd901784be99.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `455220267227a87783a3acce1f1d36e9d6e5fada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
