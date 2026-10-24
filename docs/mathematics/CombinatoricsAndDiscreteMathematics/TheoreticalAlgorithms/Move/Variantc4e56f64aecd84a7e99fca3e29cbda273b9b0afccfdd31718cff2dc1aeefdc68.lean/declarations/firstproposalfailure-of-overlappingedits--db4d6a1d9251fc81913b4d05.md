# firstProposalFailure_of_overlappingEdits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2994dd8b-4f27-aee4-cc00-bda74d4befca",
  "kind": "theorem",
  "lexical_name": "firstProposalFailure_of_overlappingEdits",
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
  "slug": "firstproposalfailure-of-overlappingedits--db4d6a1d9251fc81913b4d05",
  "source": {
    "blob": "bd81b1d6be1be5152930e1c05180214273a61dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 418,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Variantc4e56f64aecd84a7e99fca3e29cbda273b9b0afccfdd31718cff2dc1aeefdc68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db4d6a1d9251fc81913b4d0538a0dceb4feefe6fd4ae96571db80ede686618d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Variantc4e56f64aecd84a7e99fca3e29cbda273b9b0afccfdd31718cff2dc1aeefdc68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2994dd8b-4f27-aee4-cc00-bda74d4befca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstProposalFailure_of_overlappingEdits
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (overlap : proposal.operationsOrderedAndNonoverlapping = false) :
    firstProposalFailure context proposal = .overlappingEdits := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, edges, ranges, overlap]

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Variantc4e56f64aecd84a7e99fca3e29cbda273b9b0afccfdd31718cff2dc1aeefdc68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Variantc4e56f64aecd84a7e99fca3e29cbda273b9b0afccfdd31718cff2dc1aeefdc68.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd81b1d6be1be5152930e1c05180214273a61dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
