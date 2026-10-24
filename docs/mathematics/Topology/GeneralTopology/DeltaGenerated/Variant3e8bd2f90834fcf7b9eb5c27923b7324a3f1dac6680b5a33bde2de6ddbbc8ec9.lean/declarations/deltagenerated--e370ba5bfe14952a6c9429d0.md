# DeltaGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86392d154a9bc170a0610b5c554139843caf3c71ed73248e2572a288995f40b7",
  "kind": "structure",
  "lexical_name": "DeltaGenerated",
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
  "slug": "deltagenerated--e370ba5bfe14952a6c9429d0",
  "source": {
    "blob": "881e5c75b5ae9b34d4d6546576f62f9c31f3503d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaGenerated/Variant3e8bd2f90834fcf7b9eb5c27923b7324a3f1dac6680b5a33bde2de6ddbbc8ec9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e370ba5bfe14952a6c9429d047bec8c03d4295c13cf494e9ae7effef35fe7063",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaGenerated/Variant3e8bd2f90834fcf7b9eb5c27923b7324a3f1dac6680b5a33bde2de6ddbbc8ec9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86392d154a9bc170a0610b5c554139843caf3c71ed73248e2572a288995f40b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeltaGenerated where
  /-- the underlying topological space -/
  toTop : TopCat.{u}
  /-- The underlying topological space is delta-generated. -/
  deltaGenerated : DeltaGeneratedSpace toTop := by infer_instance

namespace DeltaGenerated

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaGenerated/Variant3e8bd2f90834fcf7b9eb5c27923b7324a3f1dac6680b5a33bde2de6ddbbc8ec9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaGenerated/Variant3e8bd2f90834fcf7b9eb5c27923b7324a3f1dac6680b5a33bde2de6ddbbc8ec9.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `881e5c75b5ae9b34d4d6546576f62f9c31f3503d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
