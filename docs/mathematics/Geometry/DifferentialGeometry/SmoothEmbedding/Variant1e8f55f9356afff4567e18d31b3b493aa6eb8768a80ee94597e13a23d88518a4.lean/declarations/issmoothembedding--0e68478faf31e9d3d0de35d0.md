# IsSmoothEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dcc2ba3e55df43955c6f99ba5b7e7c26b347fd81d8b8a1c989c07ca4df418f6",
  "kind": "structure",
  "lexical_name": "IsSmoothEmbedding",
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
  "slug": "issmoothembedding--0e68478faf31e9d3d0de35d0",
  "source": {
    "blob": "4bc4992ec04f09e37c86dd195efc1ffb5266d043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 73,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e68478faf31e9d3d0de35d096081dc2b8fe4f6f43a4b244ca269b3c7ea43424",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dcc2ba3e55df43955c6f99ba5b7e7c26b347fd81d8b8a1c989c07ca4df418f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsSmoothEmbedding (f : M → N) where
  isImmersion : IsImmersion I J n f
  isEmbedding : IsEmbedding f

namespace IsSmoothEmbedding

variable {f g : M → N}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothEmbedding/Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc4992ec04f09e37c86dd195efc1ffb5266d043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
