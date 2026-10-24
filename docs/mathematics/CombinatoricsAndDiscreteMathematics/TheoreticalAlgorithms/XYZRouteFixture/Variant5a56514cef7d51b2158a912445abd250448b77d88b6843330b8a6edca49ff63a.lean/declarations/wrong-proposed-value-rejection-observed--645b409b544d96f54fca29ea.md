# wrong_proposed_value_rejection_observed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "266eeed3645d905ab60ad63c6c0f1260372d27d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 530,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a515941-2599-50fa-1cc1-6be1a8dbb97c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80aa5cf7-cd2b-67c3-6db6-fa572138ab22",
  "kind": "theorem",
  "lexical_name": "wrong_proposed_value_rejection_observed",
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
  "slug": "wrong-proposed-value-rejection-observed--645b409b544d96f54fca29ea",
  "source": {
    "blob": "266eeed3645d905ab60ad63c6c0f1260372d27d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 530,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:645b409b544d96f54fca29ea426274be10356b9e01d3bda64ce4bd4f40db6d9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80aa5cf7-cd2b-67c3-6db6-fa572138ab22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wrong_proposed_value_rejection_observed :
    verificationStatus (verifyProposal fixtureContract sourceSnapshot
      baseRegister wrongProposedValueProposal) =
        .rejected .expectedUpdateMismatch := by
  simp [verifyProposal, fixtureContract_valid, sourceSnapshot,
    wrongProposedValueProposal, baseProposal, rangeCheckedXYZ?, InRawRange,
    xyzFormatV1, equalEnergyWhite, asymmetricNormalized, revisioned,
    leanExpectedUpdate, normalizedTristimulusInvariant]
  split
  · rename_i hfind
    simp [findDeclaredEdge_proposalEdge] at hfind
  · rename_i edge hfind
    have edgeEquals : edge = proposalEdge := by
      have found := hfind
      rw [findDeclaredEdge_proposalEdge] at found
      exact (Option.some.inj found).symm
    subst edge
    simp [verificationStatus, sourceSnapshot, wrongProposedValueProposal,
      baseProposal, proposalEdge, fixtureEdge, rangeCheckedXYZ?, InRawRange,
      xyzFormatV1, equalEnergyWhite, asymmetricNormalized, revisioned,
      leanExpectedUpdate, normalizedTristimulusInvariant, revisionModulus]

/-! ## SharedArrayBuffer V1 golden metadata

These constants mirror the finite browser/Rust frame layout.  They specify
byte and word offsets only and carry no browser, memory-model, or theorem
authority beyond the arithmetic equality proved below.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `266eeed3645d905ab60ad63c6c0f1260372d27d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
