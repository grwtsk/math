# baseProposal_verificationStatus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95da5c64-321f-e457-8852-ec7484a9cf7b",
  "kind": "theorem",
  "lexical_name": "baseProposal_verificationStatus",
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
  "slug": "baseproposal-verificationstatus--e357fb4209a57014b67e0ee8",
  "source": {
    "blob": "f9e711f22b909ca9622f86105fcb50fbbd7ed275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 450,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant2a4e12f162229fd383cac5d69d0f03444b2296972b49804bc97d943a3b24bb29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e357fb4209a57014b67e0ee8a0c29aa5252c88eb93ea5e157fd888a32d41687f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant2a4e12f162229fd383cac5d69d0f03444b2296972b49804bc97d943a3b24bb29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95da5c64-321f-e457-8852-ec7484a9cf7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem baseProposal_verificationStatus
    (register : LwwRegister xyzFormatV1) :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot register baseProposal) =
        mergeStatus (merge register sourceSnapshot.source) := by
  simp [verifyProposal, fixtureContract_valid,
    sourceSnapshot, baseProposal, proposalEdge,
    rangeCheckedXYZ?, InRawRange, xyzFormatV1, equalEnergyWhite,
    revisioned, leanExpectedUpdate, normalizedTristimulusInvariant]
  split
  · rename_i hfind
    simp [findDeclaredEdge_proposalEdge] at hfind
  · rename_i edge hfind
    have edgeEquals : edge = proposalEdge := by
      have found := hfind
      rw [findDeclaredEdge_proposalEdge] at found
      exact (Option.some.inj found).symm
    subst edge
    simp [sourceSnapshot, baseProposal,
      proposalEdge, fixtureEdge, rangeCheckedXYZ?, InRawRange, xyzFormatV1,
      equalEnergyWhite, revisioned, leanExpectedUpdate,
      normalizedTristimulusInvariant, revisionModulus]
    split
    all_goals
      simp only [verificationStatus]
      simp_all only [mergeStatus]

@[surface_candidate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant2a4e12f162229fd383cac5d69d0f03444b2296972b49804bc97d943a3b24bb29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant2a4e12f162229fd383cac5d69d0f03444b2296972b49804bc97d943a3b24bb29.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9e711f22b909ca9622f86105fcb50fbbd7ed275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
