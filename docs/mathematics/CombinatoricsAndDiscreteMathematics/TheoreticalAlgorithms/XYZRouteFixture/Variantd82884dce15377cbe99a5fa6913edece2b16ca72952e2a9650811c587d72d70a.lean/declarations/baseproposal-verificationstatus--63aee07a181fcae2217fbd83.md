# baseProposal_verificationStatus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa499542-5d8e-d12c-9fc4-aa23a4855444",
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
  "slug": "baseproposal-verificationstatus--63aee07a181fcae2217fbd83",
  "source": {
    "blob": "07428bfb7615cd9615b63f0c9ed5a0ac0ecb5871",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 448,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63aee07a181fcae2217fbd832e799b93727359ad6a68cb13a55ed0e5f4f54dfa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa499542-5d8e-d12c-9fc4-aa23a4855444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–475.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07428bfb7615cd9615b63f0c9ed5a0ac0ecb5871` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
