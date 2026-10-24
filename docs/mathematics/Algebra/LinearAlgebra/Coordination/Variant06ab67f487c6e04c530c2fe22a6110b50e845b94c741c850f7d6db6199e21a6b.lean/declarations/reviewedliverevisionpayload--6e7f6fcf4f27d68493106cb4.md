# ReviewedLiveRevisionPayload

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:975d8ad6a1abd12af2be08e94fb2f87af71b8b94697eb84a09347edd9afb9e7a",
  "kind": "structure",
  "lexical_name": "ReviewedLiveRevisionPayload",
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
  "slug": "reviewedliverevisionpayload--6e7f6fcf4f27d68493106cb4",
  "source": {
    "blob": "048951543949cdb5edc103196f1798c198a4dd8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1279,
    "line": 1254,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coordination/Variant06ab67f487c6e04c530c2fe22a6110b50e845b94c741c850f7d6db6199e21a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e7f6fcf4f27d68493106cb49e9965812a383b4cf3102775deb82a12f93df423",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coordination/Variant06ab67f487c6e04c530c2fe22a6110b50e845b94c741c850f7d6db6199e21a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:975d8ad6a1abd12af2be08e94fb2f87af71b8b94697eb84a09347edd9afb9e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1254–1279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReviewedLiveRevisionPayload where
  id : RecordId
  idPresent : id.value ≠ 0
  proposal : RecordId
  proposalPresent : proposal.value ≠ 0
  review : RecordId
  reviewPresent : review.value ≠ 0
  directHumanDecision : RecordId
  directHumanDecisionPresent : directHumanDecision.value ≠ 0
  beforeTree : ExactOntologyTreeBinding
  afterTree : ExactOntologyTreeBinding
  externalStage : ExternalStagedOntologyTransactionInput
  stagedAfterExact : externalStage.stagedAfter = afterTree
  beforeAfterDistinct : beforeTree ≠ afterTree
  beforeAfterHashDistinct : beforeTree.contentHash ≠ afterTree.contentHash
  candidateAbsence : CandidateAbsenceWitness
  publicationMode : LiveRevisionPublicationMode
  compensatingPublication :
    publicationMode = .repositoryLocalReplacementWithCompensatingRollback
  rollback : LiveRevisionRollbackScope
  rollbackBeforeExact : rollback.beforeTree = beforeTree
  rollbackPublishedExact : rollback.publishedTree = afterTree

namespace ReviewedLiveRevisionPayload

/-- A reviewed live revision binds the external staged after-tree exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coordination/Variant06ab67f487c6e04c530c2fe22a6110b50e845b94c741c850f7d6db6199e21a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coordination/Variant06ab67f487c6e04c530c2fe22a6110b50e845b94c741c850f7d6db6199e21a6b.lean#L1254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048951543949cdb5edc103196f1798c198a4dd8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
