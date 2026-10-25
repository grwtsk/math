# ReviewedCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1095674a746e128dd38f3ef8875ecbea155353bc617cf8a184c4ba6386f959f4",
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
  "slug": "reviewedcandidate--bf7f7af386d37896e79f7f7d",
  "source": {
    "blob": "eeb8a3338e8756311acba2705dbd1ff19c4d3972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7b2f6ba30740a900/Variantefaa0bc54abb1c874e7efb02e72793373c0dd85315033a1121c272587b5f600f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf7f7af386d37896e79f7f7dca03dd1406bf9015a924887420e101f21d8bb3ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7b2f6ba30740a900/Variantefaa0bc54abb1c874e7efb02e72793373c0dd85315033a1121c272587b5f600f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1095674a746e128dd38f3ef8875ecbea155353bc617cf8a184c4ba6386f959f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

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

end Mathematics.Discovery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7b2f6ba30740a900/Variantefaa0bc54abb1c874e7efb02e72793373c0dd85315033a1121c272587b5f600f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7b2f6ba30740a900/Variantefaa0bc54abb1c874e7efb02e72793373c0dd85315033a1121c272587b5f600f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeb8a3338e8756311acba2705dbd1ff19c4d3972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
