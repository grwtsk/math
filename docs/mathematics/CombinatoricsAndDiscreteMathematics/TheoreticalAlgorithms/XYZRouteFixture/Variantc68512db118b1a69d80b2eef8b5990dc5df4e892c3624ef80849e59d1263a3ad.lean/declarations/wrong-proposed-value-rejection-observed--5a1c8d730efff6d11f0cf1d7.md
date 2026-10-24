# wrong_proposed_value_rejection_observed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eecacc15-be64-a781-fdb7-ad7626075fb1",
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
  "slug": "wrong-proposed-value-rejection-observed--5a1c8d730efff6d11f0cf1d7",
  "source": {
    "blob": "01c8856b6b40540129b706f43537cd3bdd4023a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 561,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantc68512db118b1a69d80b2eef8b5990dc5df4e892c3624ef80849e59d1263a3ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a1c8d730efff6d11f0cf1d7a930dcc61b6a9a9de3fc9d955d08a7d75abb77c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantc68512db118b1a69d80b2eef8b5990dc5df4e892c3624ef80849e59d1263a3ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eecacc15-be64-a781-fdb7-ad7626075fb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–589.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantc68512db118b1a69d80b2eef8b5990dc5df4e892c3624ef80849e59d1263a3ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantc68512db118b1a69d80b2eef8b5990dc5df4e892c3624ef80849e59d1263a3ad.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c8856b6b40540129b706f43537cd3bdd4023a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
