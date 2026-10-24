# ExactSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8990b1325841402ca31a746aa1e09710d2a43bb0af419adffb64a32a43e18d63",
  "kind": "structure",
  "lexical_name": "ExactSquare",
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
  "slug": "exactsquare--ae1ae8986abc7e61865388d7",
  "source": {
    "blob": "cdc0f68126c18cf03482130dde3934f6e89e9a41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 48,
    "path": "GRWTSK/Topology/MetricTopology/AnalyticSquare/Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae1ae8986abc7e61865388d7818e337c26e18fafe6f18b4ff2496d608bfb834c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/AnalyticSquare/Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8990b1325841402ca31a746aa1e09710d2a43bb0af419adffb64a32a43e18d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactSquare
    (A : Type u₁) (B : Type u₂) (A' : Type u₃) (B' : Type u₄)
    extends DiagramSquare A B A' B' where
  commutes : ∀ x, toDiagramSquare.topRight x = toDiagramSquare.leftBottom x

namespace ExactSquare

variable {A : Type u₁} {B : Type u₂} {A' : Type u₃} {B' : Type u₄}

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AnalyticSquare/Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AnalyticSquare/Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc0f68126c18cf03482130dde3934f6e89e9a41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
