# boundaryViolation_rejects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4077616d-fe27-ea32-666a-843567bad6d5",
  "kind": "theorem",
  "lexical_name": "boundaryViolation_rejects",
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
  "slug": "boundaryviolation-rejects--2800b63f68d56d3f06c7b68e",
  "source": {
    "blob": "65de9bca006a8d2de779f6f671d609dfb17ac7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 699,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant99a3b62af3b2a73fd0b106ab8bef0e6f8df5fd706d4754fdec214e7854f07e77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2800b63f68d56d3f06c7b68e5dcc289e6210ff048ff5cef4cc89109b17f352d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant99a3b62af3b2a73fd0b106ab8bef0e6f8df5fd706d4754fdec214e7854f07e77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4077616d-fe27-ea32-666a-843567bad6d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryViolation_rejects :
    verifyNetworkSurgeryProposal context boundaryViolation =
      .rejected .boundaryLedgerUnbalanced := by
  classical
  have pieces := piecesDeclared_of_sameSelection boundaryViolation rfl
  have edges := edgesDeclared_of_sameEdges boundaryViolation rfl
  apply rejectInBaseContext
  · intro valid
    exact residualBoundary_is_unbalanced valid.boundaryBalanced
  · exact firstProposalFailure_of_boundaryLedgerUnbalanced
      context boundaryViolation rfl rfl rfl rfl rfl
      (proposalRevisionFresh_of_sameRevision boundaryViolation rfl)
      (baseContext_has_no_equalRevisionConflict boundaryViolation)
      pieces edges rfl rfl rfl residualBoundary_is_unbalanced

@[surface_candidate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant99a3b62af3b2a73fd0b106ab8bef0e6f8df5fd706d4754fdec214e7854f07e77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant99a3b62af3b2a73fd0b106ab8bef0e6f8df5fd706d4754fdec214e7854f07e77.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65de9bca006a8d2de779f6f671d609dfb17ac7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
