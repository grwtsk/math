# SurgeryAuthorizationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:727c727f44a4b89bb26c4f6c23d248af8e5b9272e0acc9cd29e6b8350110801c",
  "kind": "structure",
  "lexical_name": "SurgeryAuthorizationRecord",
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
  "slug": "surgeryauthorizationrecord--e46aa4518ea2878412b38e87",
  "source": {
    "blob": "1cdca2de1e7999d6842f760037c1020832fafad5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Governance/Variantdec88817a54f88653ff279e15a2cd02bb9380060c7803e2a4da12227550d2caa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e46aa4518ea2878412b38e87dea8dde0ffa800319a4f92a45a919217acad5221",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Governance/Variantdec88817a54f88653ff279e15a2cd02bb9380060c7803e2a4da12227550d2caa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:727c727f44a4b89bb26c4f6c23d248af8e5b9272e0acc9cd29e6b8350110801c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SurgeryAuthorizationRecord where
  identity : ArtifactIdentity
  review : SurgeryReviewRecord
  proposal : ArtifactIdentity
  patch : ArtifactIdentity
  sourceDigest : ArtifactIdentity
  activeRegion : ArtifactIdentity
  reductionTrace : ArtifactIdentity
  authorizer : HumanIdentity
  reviewApproved : review.decision = .approve
  proposalMatches : review.proposal = proposal
  patchMatches : review.patch = patch
  sourceMatches : review.sourceDigest = sourceDigest
  regionMatches : review.activeRegion = activeRegion
  traceMatches : review.reductionTrace = reductionTrace
  proposerAuthorizerSeparated : review.proposer ≠ authorizer

namespace SurgeryAuthorizationRecord

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Governance/Variantdec88817a54f88653ff279e15a2cd02bb9380060c7803e2a4da12227550d2caa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Governance/Variantdec88817a54f88653ff279e15a2cd02bb9380060c7803e2a4da12227550d2caa.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cdca2de1e7999d6842f760037c1020832fafad5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
