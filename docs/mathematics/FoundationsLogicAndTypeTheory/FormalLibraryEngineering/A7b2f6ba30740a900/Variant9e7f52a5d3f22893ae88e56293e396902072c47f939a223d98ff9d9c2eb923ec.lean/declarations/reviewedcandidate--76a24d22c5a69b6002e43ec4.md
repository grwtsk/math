# ReviewedCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:543f56c3505e97d6cca8a1c7649bc83d4b1c6fed5b3c0ebe0687ec4a54cbaec4",
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
  "slug": "reviewedcandidate--76a24d22c5a69b6002e43ec4",
  "source": {
    "blob": "523014c12339298cda0d8f36292753d6e3c4ea34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7b2f6ba30740a900/Variant9e7f52a5d3f22893ae88e56293e396902072c47f939a223d98ff9d9c2eb923ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76a24d22c5a69b6002e43ec4351f115421642b22b904b71b9777a92202661c0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7b2f6ba30740a900/Variant9e7f52a5d3f22893ae88e56293e396902072c47f939a223d98ff9d9c2eb923ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:543f56c3505e97d6cca8a1c7649bc83d4b1c6fed5b3c0ebe0687ec4a54cbaec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7b2f6ba30740a900/Variant9e7f52a5d3f22893ae88e56293e396902072c47f939a223d98ff9d9c2eb923ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A7b2f6ba30740a900/Variant9e7f52a5d3f22893ae88e56293e396902072c47f939a223d98ff9d9c2eb923ec.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `523014c12339298cda0d8f36292753d6e3c4ea34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
