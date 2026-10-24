# OrderClosedTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3a15a251d1a0db53a9075808228b1a0af9be90b6277d1d6123a32696be72e58",
  "kind": "class",
  "lexical_name": "OrderClosedTopology",
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
  "slug": "orderclosedtopology--28e41129591251ba9aff98da",
  "source": {
    "blob": "04fbe5b1fddf1f2206d288243edfadae02fc7931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28e41129591251ba9aff98dacf4b64666df284b050f2a8d4bbc423557cf3f96f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3a15a251d1a0db53a9075808228b1a0af9be90b6277d1d6123a32696be72e58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class OrderClosedTopology (α : Type*) [TopologicalSpace α] [Preorder α] : Prop where
  /-- The set `{ (x, y) | x ≤ y }` is a closed set. -/
  isClosed_le' : IsClosed { p : α × α | p.1 ≤ p.2 }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04fbe5b1fddf1f2206d288243edfadae02fc7931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
