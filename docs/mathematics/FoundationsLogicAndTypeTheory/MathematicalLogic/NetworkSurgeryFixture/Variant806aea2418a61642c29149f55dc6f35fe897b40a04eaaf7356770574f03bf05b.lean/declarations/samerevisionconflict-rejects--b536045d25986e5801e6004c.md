# sameRevisionConflict_rejects

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
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e05528eb-f13d-b04a-dec0-f27c89351b8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:931d1ab2-176d-4df9-ddac-c53dc0141524",
  "kind": "theorem",
  "lexical_name": "sameRevisionConflict_rejects",
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
  "slug": "samerevisionconflict-rejects--b536045d25986e5801e6004c",
  "source": {
    "blob": "6f71c469f8207bcd926a1bdd3ed020d8d26bb40c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 401,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b536045d25986e5801e6004c56c232855bf54caaa810cb34dade04dda5227e95",
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

Occurrence: `result:931d1ab2-176d-4df9-ddac-c53dc0141524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sameRevisionConflict_rejects :
    verifyNetworkSurgeryProposal conflictContext sameRevisionConflict =
      .rejected .equalRevisionConflict := by
  classical
  have hashNeq : zeroHash ≠ oneHash := by
    intro equality
    have hexEquality := congrArg Hash256.hex equality
    simp [zeroHash, oneHash] at hexEquality
  have conflict : sameRevisionConflict.HasEqualRevisionConflict conflictContext :=
    ⟨zeroHash, rfl, hashNeq⟩
  apply verifyNetworkSurgeryProposal_rejected_of_invalid
  · intro valid
    exact valid.notEqualRevisionConflict conflict
  · simp [PreparedNetworkSurgeryProposal.IsReplay, conflictContext,
      sameRevisionConflict, legalDeclarationMove, context, hashNeq]
  · exact firstProposalFailure_of_equalRevisionConflict
      conflictContext sameRevisionConflict rfl rfl rfl rfl rfl
      (by norm_num [conflictContext, sameRevisionConflict, legalDeclarationMove,
        context, baseRevision, proposalRevision, code, revisionModulus]) conflict

@[surface_candidate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NetworkSurgeryFixture/Variant806aea2418a61642c29149f55dc6f35fe897b40a04eaaf7356770574f03bf05b.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f71c469f8207bcd926a1bdd3ed020d8d26bb40c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
