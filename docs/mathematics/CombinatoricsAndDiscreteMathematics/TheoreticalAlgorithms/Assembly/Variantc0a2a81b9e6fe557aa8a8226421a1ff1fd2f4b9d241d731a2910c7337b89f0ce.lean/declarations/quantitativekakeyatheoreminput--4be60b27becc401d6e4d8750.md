# QuantitativeKakeyaTheoremInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a15f3fa11c17084a203d4a98bf193e4143ce50778f5f178dabb7db1e37e06cc",
  "kind": "structure",
  "lexical_name": "QuantitativeKakeyaTheoremInput",
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
  "slug": "quantitativekakeyatheoreminput--4be60b27becc401d6e4d8750",
  "source": {
    "blob": "0c5fd83efe51d0256c90c39255618e2ad4c156bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variantc0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4be60b27becc401d6e4d87504d22fb71fadf0df9d74e888535f44b444d4e0873",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variantc0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a15f3fa11c17084a203d4a98bf193e4143ce50778f5f178dabb7db1e37e06cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuantitativeKakeyaTheoremInput
    (K : TubeConfiguration) where
  shadings : List (Shading K)
  wolffAxioms : WolffAxioms K
  convexWolffFactorization : ConvexWolffFactorization K
  stickyKakeya : StickyKakeyaTheoremInput K
  tubeVolumeLowerBound : TubeVolumeLowerBound K
  dimensionLowerBound : DimensionLowerBoundInput K
  noFiniteStructuralSurrogate : Prop
  noFiniteStructuralSurrogateCertified : noFiniteStructuralSurrogate
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variantc0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variantc0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c5fd83efe51d0256c90c39255618e2ad4c156bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
