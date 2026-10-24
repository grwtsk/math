# Candidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:723303b63566fc341c5df8455624470b8efbc1e4b2c1b439a8d2c2defa12b3ea",
  "kind": "structure",
  "lexical_name": "Candidate",
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
  "slug": "candidate--0e221e21dd9f2d3f8eddae4a",
  "source": {
    "blob": "e6d896bb0f9cd61fb61cca63e927981f82530cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 21,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidate/Variantf3c0e77ec80ec1c568972bed5fa3cd1999682531a7f1092931c0731bc8c0234f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e221e21dd9f2d3f8eddae4a097499a65e77a4808e58fac4e8128309126848fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidate/Variantf3c0e77ec80ec1c568972bed5fa3cd1999682531a7f1092931c0731bc8c0234f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:723303b63566fc341c5df8455624470b8efbc1e4b2c1b439a8d2c2defa12b3ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Candidate where
  candidateId : StableId
  evidenceSource : Ecosystem.ProjectSnapshotKey
  destination : Destination
  targetSnapshot : Ecosystem.ProjectSnapshot
  targetCapsule : Toolchain.CapsuleKey
  target_capsule_project :
    targetCapsule.project = targetSnapshot.identity.projectId
  target_capsule_revision :
    targetCapsule.revisionId = targetSnapshot.revision.revisionId
  target_capsule_identity :
    targetCapsule.capsuleId = targetSnapshot.toolchainCapsuleId
  workPackage : Relaxation.WorkPackage
  overlayElementIds : List StableId
  rationaleDigest : Digest
  authority : String

end Mathematics.Reflection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidate/Variantf3c0e77ec80ec1c568972bed5fa3cd1999682531a7f1092931c0731bc8c0234f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidate/Variantf3c0e77ec80ec1c568972bed5fa3cd1999682531a7f1092931c0731bc8c0234f.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d896bb0f9cd61fb61cca63e927981f82530cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
