# wrong_proposed_value_rejection_observed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "283fd74d0ce481cc6998dc0329134b69f37d02b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 528,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab5c30cb-7143-679a-1e94-dd50a2680733",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d329502d-d4a1-b85e-2777-0dd18f9d68a2",
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
  "slug": "wrong-proposed-value-rejection-observed--995a88c11b2a9ebdf7a4da20",
  "source": {
    "blob": "283fd74d0ce481cc6998dc0329134b69f37d02b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 528,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:995a88c11b2a9ebdf7a4da20db02e4e33165445236bbe7a26cf39e1453e901b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d329502d-d4a1-b85e-2777-0dd18f9d68a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–556.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283fd74d0ce481cc6998dc0329134b69f37d02b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
