# FiniteInterRelianceGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a40752cfa4562002942b3cb7d39cfef644207591f4de83b471940fd81c5fd96",
  "kind": "structure",
  "lexical_name": "FiniteInterRelianceGraph",
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
  "slug": "finiteinterreliancegraph--caa567d0de25dc6a3a51896f",
  "source": {
    "blob": "6488fdf76964930f6f174ab397abef046de93e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2199,
    "line": 2167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variantf149f684e7a551941b33b01ee1db01189d10cc69284d2ba7f50b041dfb1d1a80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caa567d0de25dc6a3a51896f71febf0c80ca30d54f109767d92ac379d1d3ccdf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variantf149f684e7a551941b33b01ee1db01189d10cc69284d2ba7f50b041dfb1d1a80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a40752cfa4562002942b3cb7d39cfef644207591f4de83b471940fd81c5fd96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2167–2199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteInterRelianceGraph where
  nodeCount : Nat
  node : Fin nodeCount → AnyTypedArtifact
  edgeCount : Nat
  edgeSource : Fin edgeCount → Fin nodeCount
  edgeTarget : Fin edgeCount → Fin nodeCount
  edgeDependency : Fin edgeCount → DependencyId
  edgeKind : Fin edgeCount → InterRelianceKind
  edgeWitness : Fin edgeCount → AnyInterRelianceEdge
  edgeSourceExact : ∀ edge,
    node (edgeSource edge) = {
      stratum := (edgeWitness edge).leftStratum
      artifact := (edgeWitness edge).left
    }
  edgeTargetExact : ∀ edge,
    node (edgeTarget edge) = {
      stratum := (edgeWitness edge).rightStratum
      artifact := (edgeWitness edge).right
    }
  edgeDependencyExact : ∀ edge,
    edgeDependency edge = (edgeWitness edge).witness.dependency
  edgeKindExact : ∀ edge,
    edgeKind edge = (edgeWitness edge).witness.leftToRightKind
  reverseEdge : Fin edgeCount → Fin edgeCount
  reverseInvolutive : ∀ edge, reverseEdge (reverseEdge edge) = edge
  reverseSource : ∀ edge, edgeSource (reverseEdge edge) = edgeTarget edge
  reverseTarget : ∀ edge, edgeTarget (reverseEdge edge) = edgeSource edge
  reverseDependency : ∀ edge,
    edgeDependency (reverseEdge edge) = edgeDependency edge

namespace FiniteInterRelianceGraph

/-- The indexed relation kind is the left-to-right kind of its typed witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variantf149f684e7a551941b33b01ee1db01189d10cc69284d2ba7f50b041dfb1d1a80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variantf149f684e7a551941b33b01ee1db01189d10cc69284d2ba7f50b041dfb1d1a80.lean#L2167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6488fdf76964930f6f174ab397abef046de93e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
