# unbalancedPreview_rejects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f71c469f8207bcd926a1bdd3ed020d8d26bb40c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d59ea51f-2bf1-c1f8-0cad-4d01f75ed84f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d586708d-9e6a-92ec-68d5-18f3103d2e6c",
  "kind": "theorem",
  "lexical_name": "unbalancedPreview_rejects",
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
  "slug": "unbalancedpreview-rejects--62cc452858fb9a48aebc7ac2",
  "source": {
    "blob": "6f71c469f8207bcd926a1bdd3ed020d8d26bb40c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 422,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62cc452858fb9a48aebc7ac28663f0642689035d18d0003781fcc7aafc493c69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d586708d-9e6a-92ec-68d5-18f3103d2e6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unbalancedPreview_rejects :
    verifyNetworkSurgeryProposal context unbalancedPreview =
      .rejected .bracketProjectionInvalid := by
  classical
  have notBalanced : ¬ balanced unbalancedPreview.afterProjection := by
    intro projection
    have final := projection.2
    norm_num [unbalancedPreview, finalDepth, prefixDepth, BracketBit.toDyck] at final
  have noConflict :
      ¬ unbalancedPreview.HasEqualRevisionConflict context := by
    simp [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict, context]
  have pieces : unbalancedPreview.PiecesDeclared context := by
    simp [PreparedNetworkSurgeryProposal.PiecesDeclared, unbalancedPreview,
      legalDeclarationMove, context, board, RepositoryBoard.containsPiece,
      declarationA]
  have edges : unbalancedPreview.EdgesDeclared context := by
    simp [PreparedNetworkSurgeryProposal.EdgesDeclared, unbalancedPreview,
      legalDeclarationMove, context, board]
  have boundary : BoundaryBalanced unbalancedPreview.boundary := by
    simpa [unbalancedPreview] using legalDeclarationMove_valid.boundaryBalanced
  apply verifyNetworkSurgeryProposal_rejected_of_invalid
  · intro valid
    exact notBalanced valid.bracketProjectionValid
  · simp [PreparedNetworkSurgeryProposal.IsReplay, unbalancedPreview, context]
  · exact firstProposalFailure_of_bracketProjectionInvalid
      context unbalancedPreview rfl rfl rfl rfl rfl
      (by norm_num [unbalancedPreview, legalDeclarationMove, context,
        baseRevision, proposalRevision, code, revisionModulus])
      noConflict pieces edges rfl rfl rfl boundary notBalanced

@[surface_candidate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f71c469f8207bcd926a1bdd3ed020d8d26bb40c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
