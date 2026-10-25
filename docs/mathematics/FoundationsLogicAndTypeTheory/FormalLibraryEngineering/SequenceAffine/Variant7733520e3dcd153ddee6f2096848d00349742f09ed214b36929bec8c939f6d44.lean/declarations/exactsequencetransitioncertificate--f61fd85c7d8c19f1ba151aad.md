# ExactSequenceTransitionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54c5e42cca07377b512017c9d25cea5e59f0078c15adad6554676d444c58c42e",
  "kind": "structure",
  "lexical_name": "ExactSequenceTransitionCertificate",
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
  "slug": "exactsequencetransitioncertificate--f61fd85c7d8c19f1ba151aad",
  "source": {
    "blob": "f72f9e2db1bea9c9be2cd281df0c293539c8cf99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SequenceAffine/Variant7733520e3dcd153ddee6f2096848d00349742f09ed214b36929bec8c939f6d44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f61fd85c7d8c19f1ba151aad45a9a8c7ee094cceaeec313ba3dc717de0384e49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SequenceAffine/Variant7733520e3dcd153ddee6f2096848d00349742f09ed214b36929bec8c939f6d44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54c5e42cca07377b512017c9d25cea5e59f0078c15adad6554676d444c58c42e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactSequenceTransitionCertificate
    (Digest : Type uDigest) (LayerId : Type uLayer) (TokenId : Type uToken) where
  layer : LayerId
  token : TokenId
  transition : AffineTransition R S
  inputState : S
  outputState : S
  inputDigest : Digest
  outputDigest : Digest
  kernelDigest : Digest
  snapshotDigest : Digest
  exactReplay : transition inputState = outputState

/-- Soundly enclosed receipt for one affine transition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SequenceAffine/Variant7733520e3dcd153ddee6f2096848d00349742f09ed214b36929bec8c939f6d44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SequenceAffine/Variant7733520e3dcd153ddee6f2096848d00349742f09ed214b36929bec8c939f6d44.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f72f9e2db1bea9c9be2cd281df0c293539c8cf99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
