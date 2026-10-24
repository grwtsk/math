# PrimeCutGraphAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30ca243a4fd2c4b3719aa778ce57fa89c001141237d1d4f883f4b05ead0147b6",
  "kind": "structure",
  "lexical_name": "PrimeCutGraphAdapter",
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
  "slug": "primecutgraphadapter--1bcb9ad6a5e3cbef4e2afffe",
  "source": {
    "blob": "58cac87297eaeafd0bbd9e432c9b0374d3eb9966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bcb9ad6a5e3cbef4e2afffe230b6329d7bb8740a125203913ee96a645b1374d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30ca243a4fd2c4b3719aa778ce57fa89c001141237d1d4f883f4b05ead0147b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimeCutGraphAdapter
    (primeUniverse :
      FinitePrimeUniverse.{uPrime}) where
  graph : GraphCut.{uPrime, uPrime, 0}
  nodeEquiv :
    graph.Node ≃ Finset primeUniverse.Prime
  edgeEquiv :
    graph.Edge ≃ PrimeInsertionEdge primeUniverse
  source_coherent :
    ∀ edge,
      nodeEquiv (graph.source edge) =
        (edgeEquiv edge).source
  target_coherent :
    ∀ edge,
      nodeEquiv (graph.target edge) =
        (edgeEquiv edge).target
  nodeCount :
    Fintype.card graph.Node =
      2 ^ Fintype.card primeUniverse.Prime
  edgeCount :
    Fintype.card graph.Edge =
      Fintype.card primeUniverse.Prime *
        2 ^ (Fintype.card primeUniverse.Prime - 1)
  digestBindsUniverse : Prop
  digestBindsUniverseProof :
    digestBindsUniverse

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant17b0e94831b390ee6be009fd579380ed3d24ea71e8f310a2d894f69c948bc670.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cac87297eaeafd0bbd9e432c9b0374d3eb9966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
