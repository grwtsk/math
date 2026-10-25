# ReplaySafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:859b3bb5d71f3003efa4c2cba2d1cda8944985bfa477a53f702d27f42f2e07a9",
  "kind": "structure",
  "lexical_name": "ReplaySafe",
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
  "slug": "replaysafe--f9a532e09acdc1d1ac059e42",
  "source": {
    "blob": "ab7168cc31e1614279ce9ac3b74bd3d7696b34ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9a532e09acdc1d1ac059e42e18c89b76e3b0534643302ccb0024e97955b9ee2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrenced6e36faffda4f3eb7e1d39ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:859b3bb5d71f3003efa4c2cba2d1cda8944985bfa477a53f702d27f42f2e07a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReplaySafe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) : Prop where
  pending_issued : ledger.base.pending ⊆ ledger.base.issued
  verified_issued : ledger.base.verified ⊆ ledger.base.issued
  issued_covered : ledger.base.issued ⊆ ledger.base.pending ∪ ledger.base.verified
  statuses_disjoint : Disjoint ledger.base.pending ledger.base.verified
  verified_dependencies : ∀ claim ∈ ledger.base.verified,
    ∀ prerequisite ∈ schema.dependencies claim, prerequisite ∈ ledger.base.verified
  verified_evidence : ∀ claim ∈ ledger.base.verified,
    (∃ record ∈ ledger.base.archive, record.claim = claim ∧
      record.certificate.reads = schema.reads claim ∧
        record.certificate.Accepted ledger.base.snapshot) ∨
    (∃ record ∈ ledger.replayArchive, record.claim = claim ∧
      record.certificate.reads = schema.reads claim ∧
        record.certificate.Accepted ledger.base.snapshot)
  receipts_historical : ∀ receipt ∈ ledger.base.receipts,
    ReceiptValid policy receipt.source receipt
  corrections_exact : ∀ record ∈ ledger.base.corrections,
    correctionAffected schema record.before record.after record.withdrawn = record.affected

/-- Existing globally certified evidence enters the distinct ledger without a weaker upgrade. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrenced6e36faffda4f3eb7e1d39ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab7168cc31e1614279ce9ac3b74bd3d7696b34ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
