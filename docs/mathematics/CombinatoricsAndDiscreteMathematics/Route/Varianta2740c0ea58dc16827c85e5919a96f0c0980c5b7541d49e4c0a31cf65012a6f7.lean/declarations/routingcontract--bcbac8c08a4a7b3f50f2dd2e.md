# RoutingContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f487eb50d91a8056bb4583996a94cf583921cb8428e4688b65b1932ac02c4d87",
  "kind": "structure",
  "lexical_name": "RoutingContract",
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
  "slug": "routingcontract--bcbac8c08a4a7b3f50f2dd2e",
  "source": {
    "blob": "04dc91043f2e0e5d96a144dac5d7ca90d0c4a1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcbac8c08a4a7b3f50f2dd2e4b70b790b47bf343282a71c0f1d1ac77c528c973",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f487eb50d91a8056bb4583996a94cf583921cb8428e4688b65b1932ac02c4d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RoutingContract (Host EdgeId : Type*)
    [Fintype Host] [Fintype EdgeId]
    [DecidableEq Host] [DecidableEq EdgeId] where
  schemaVersion : Nat
  algorithmVersion : Nat
  serializationVersion : Nat
  traversalMode : TraversalMode
  hostCode : StableFiniteCode Host
  edgeCode : StableFiniteCode EdgeId
  tensionMin : Int
  tensionMax : Int
  tieBreakBound : Nat
  edges : Finset (DeclaredEdge Host EdgeId)
  fixedFormat : FixedFormat
  invariantId : String
  expectedUpdateId : String
  contractHash : Hash256

namespace RoutingContract

variable {Host EdgeId : Type*}
variable [Fintype Host] [DecidableEq Host]
variable [Fintype EdgeId] [DecidableEq EdgeId]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04dc91043f2e0e5d96a144dac5d7ca90d0c4a1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
