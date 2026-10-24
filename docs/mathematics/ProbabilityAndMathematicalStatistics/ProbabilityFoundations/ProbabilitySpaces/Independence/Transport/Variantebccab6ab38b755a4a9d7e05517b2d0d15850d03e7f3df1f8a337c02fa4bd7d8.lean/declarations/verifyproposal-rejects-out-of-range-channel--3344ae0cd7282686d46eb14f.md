# verifyProposal_rejects_out_of_range_channel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a6d11a944c586ac0fab88194e333fed35153cf8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcc15ae0-ed5c-45ec-43a3-4a2c7e11216a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7836d775-b217-3f62-75ff-89ec5e5d1f78",
  "kind": "theorem",
  "lexical_name": "verifyProposal_rejects_out_of_range_channel",
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
  "slug": "verifyproposal-rejects-out-of-range-channel--3344ae0cd7282686d46eb14f",
  "source": {
    "blob": "2a6d11a944c586ac0fab88194e333fed35153cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 533,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3344ae0cd7282686d46eb14fc51136f2ea08cc9d4d1a3be39bfa71a983fdee97",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7836d775-b217-3f62-75ff-89ec5e5d1f78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verifyProposal_rejects_out_of_range_channel
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal Host EdgeId)
    (edge : DeclaredEdge Host EdgeId)
    (hcontract : contract.Valid)
    (hschema : proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
      snapshot.schemaVersion = xyzRoutingSchemaVersionV1)
    (hframing : proposal.contractHash.Valid ∧
      proposal.sourceSnapshotHash.Valid ∧ snapshot.contractHash.Valid ∧
      snapshot.snapshotHash.Valid)
    (hcontractHash : proposal.contractHash = contract.contractHash ∧
      snapshot.contractHash = contract.contractHash)
    (hsnapshotHash : proposal.sourceSnapshotHash = snapshot.snapshotHash)
    (halgorithm : proposal.algorithmVersion = contract.algorithmVersion)
    (hfind : findDeclaredEdge contract proposal.edgeId = some edge)
    (hendpoints : edge.source = proposal.claimedSource ∧
      edge.target = proposal.claimedTarget ∧
      proposal.claimedSource = snapshot.sourceHost)
    (hrevision : proposal.revision < revisionModulus)
    (houtOfRange : rangeCheckedXYZ? proposal.source = none ∨
      rangeCheckedXYZ? proposal.proposed = none) :
    verifyProposal contract snapshot register proposal =
      .rejected .channelOutOfRange := by
  unfold verifyProposal
  rw [dif_pos hcontract, dif_pos hschema, dif_pos hframing,
    dif_pos hcontractHash, dif_pos hsnapshotHash, dif_pos halgorithm]
  split
  · rename_i hnone
    rw [hfind] at hnone
    contradiction
  · rename_i found hfound
    have foundEquals : found = edge := by
      rw [hfind] at hfound
      exact (Option.some.inj hfound).symm
    subst found
    simp only
    rw [dif_pos hendpoints, dif_pos hrevision]
    rcases houtOfRange with hsource | hproposed
    · rw [hsource]
    · cases hsource : rangeCheckedXYZ? proposal.source <;>
        simp [hproposed]

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a6d11a944c586ac0fab88194e333fed35153cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
