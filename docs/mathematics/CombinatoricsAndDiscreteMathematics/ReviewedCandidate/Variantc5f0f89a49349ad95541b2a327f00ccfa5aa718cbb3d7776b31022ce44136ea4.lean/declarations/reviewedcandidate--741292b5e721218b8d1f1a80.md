# ReviewedCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99a08f8552436366953cd2ba7835198f32b26d44209c9867c7513fc33c36318e",
  "kind": "structure",
  "lexical_name": "ReviewedCandidate",
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
  "slug": "reviewedcandidate--741292b5e721218b8d1f1a80",
  "source": {
    "blob": "36d9fd91b2ad3722e395ee414575ab2b4be99759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:741292b5e721218b8d1f1a8049605feb4196528f591b93d25c880b84e3f1b146",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99a08f8552436366953cd2ba7835198f32b26d44209c9867c7513fc33c36318e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReviewedCandidate where
  candidate : KernelCandidate
  entityProfile : EntityProfile
  concept : Record
  boundaryAccepted : concept.AcceptsEntity entityProfile
  evidence : AssignmentEvidence
  definitionDigestCurrent : evidence.reviewedDefinitionDigest = concept.definitionDigest
  boundaryDigestCurrent : evidence.reviewedBoundaryDigest = concept.boundaryDigest
  authorityDigestCurrent : evidence.reviewedAuthorityDigest = concept.authorityDigest

/-- Promote a reviewed candidate to a primary assignment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantc5f0f89a49349ad95541b2a327f00ccfa5aa718cbb3d7776b31022ce44136ea4.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36d9fd91b2ad3722e395ee414575ab2b4be99759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
