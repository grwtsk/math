# DiracSpectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5eba8e9845b9a473e4403e070444e275232b8301456a1476b3717842a3343ff",
  "kind": "structure",
  "lexical_name": "DiracSpectrum",
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
  "slug": "diracspectrum--b79d83239ed60176f840f2c9",
  "source": {
    "blob": "21e8f444470e83ce87892baf3565b7b234e37df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 145,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b79d83239ed60176f840f2c998751c2e7ed6933c37b8401292ccb206b4dc17c5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5eba8e9845b9a473e4403e070444e275232b8301456a1476b3717842a3343ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DiracSpectrum where
  Operator : Type _
  eigen : Nat → Option DiracEigenDatum
  selfAdjointLike : Prop
  selfAdjointLike_certified : selfAdjointLike
  discreteSpectrum : Prop
  discreteSpectrum_certified : discreteSpectrum
  compactResolventLike : Prop
  compactResolventLike_certified : compactResolventLike
  sourceLabel : String

/--
A spectral tensor object enhanced with optional Dirac spectrum data.

This is the object that can later be mapped to K-theory.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Tensor/Variant5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21e8f444470e83ce87892baf3565b7b234e37df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
