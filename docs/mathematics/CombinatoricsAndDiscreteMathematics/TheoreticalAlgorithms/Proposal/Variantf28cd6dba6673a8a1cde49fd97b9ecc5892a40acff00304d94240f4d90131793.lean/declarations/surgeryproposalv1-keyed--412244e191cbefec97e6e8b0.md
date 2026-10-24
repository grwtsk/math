# SurgeryProposalV1.Keyed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e67bdfff34a843cb58dc6c5d81a47851d41f9b4dc4292eee9aa1d17382f787d4",
  "kind": "def",
  "lexical_name": "SurgeryProposalV1.Keyed",
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
  "slug": "surgeryproposalv1-keyed--412244e191cbefec97e6e8b0",
  "source": {
    "blob": "683c504991f4229435dbe4681987821e1d6b84d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variantf28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:412244e191cbefec97e6e8b05b76defa7f3670702b8907d01d87884293c431f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variantf28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e67bdfff34a843cb58dc6c5d81a47851d41f9b4dc4292eee9aa1d17382f787d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def SurgeryProposalV1.Keyed
    (proposal : SurgeryProposalV1) : Prop :=
  proposal.schemaVersion = 1 ∧
    proposal.transportContractHash.Valid ∧
    proposal.baseSourceSnapshotHash.Valid ∧
    proposal.structuralPacketHash.Valid ∧
    proposal.proposalHash.Valid ∧
    proposal.expectedAfterRepositorySnapshotHash.Valid ∧
    proposal.parserFingerprint.Valid ∧
    FitsU32 proposal.baseRepositoryRevision ∧
    FitsU32 proposal.proposalRevision ∧
    proposal.operationIds = proposal.resolvedOperationIds ∧
    proposal.resolvedAffectedFiles = proposal.affectedFileIds ∧
    proposal.operationIds.Nodup ∧
    (∀ affected ∈ proposal.orderedAffectedFiles, affected.Valid) ∧
    proposal.bundle.baseSnapshot.snapshotHash =
      proposal.baseSourceSnapshotHash ∧
    proposal.bundle.baseSnapshot.repositoryRevision =
      proposal.baseRepositoryRevision ∧
    proposal.bundle.afterSnapshot.snapshotHash =
      proposal.expectedAfterRepositorySnapshotHash

/-- Equal revision with the identical content-addressed proposal is a replay. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variantf28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variantf28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `683c504991f4229435dbe4681987821e1d6b84d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
