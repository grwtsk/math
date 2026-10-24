# FanoutBranch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dec9328b8f042dc70218f4d68913d4c9a159d7f0bf99db2661cba7c806ab3c63",
  "kind": "structure",
  "lexical_name": "FanoutBranch",
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
  "slug": "fanoutbranch--003dc53591bfbaa9b24e06cc",
  "source": {
    "blob": "8cc5c2240fbcd1458b04adf6752064758cd6af55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:003dc53591bfbaa9b24e06cc8fa087bc8222b5b3bb99a0edfcd900efdeb0b4d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dec9328b8f042dc70218f4d68913d4c9a159d7f0bf99db2661cba7c806ab3c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FanoutBranch where
  branchId : FanoutBranchId
  parentBranchId : Option FanoutBranchId
  purposeId : StableId
  oracleId : OracleId
  pointUniverseId : StableId
  snapshotId : StableId
  budget : FanoutBudget
  authorityCeiling : OracleAuthorityCeiling
  depth : Nat
  responseDigest : Digest
  producedPointIds : List ElementId
  producedRelationIds : List RelationId
  closedObligationIds : List StableId
  newObligationIds : List StableId
  disposition : FanoutDisposition
  mergeStatus : FanoutMergeStatus
  diagnosticIds : List StableId
  deriving DecidableEq, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cc5c2240fbcd1458b04adf6752064758cd6af55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
