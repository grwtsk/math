# scottHausdorff_le_scott

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5a67008-a3b6-f3ba-fe5c-aa776e0e9099",
  "kind": "lemma",
  "lexical_name": "scottHausdorff_le_scott",
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
  "slug": "scotthausdorff-le-scott--d7f33df2430d83089cd9d52a",
  "source": {
    "blob": "f8db7f5e2b621ae27669acbf50fa85b7473b59e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7f33df2430d83089cd9d52a640ab0b6bbda1ffb5698359e379e6d83c7e676cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5a67008-a3b6-f3ba-fe5c-aa776e0e9099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma scottHausdorff_le_scott [Preorder α] : scottHausdorff α univ ≤ scott α univ := le_sup_right

variable (α) (D) [Preorder α] [TopologicalSpace α]

/-- Predicate for an ordered topological space to be equipped with its Scott topology.

The Scott topology is defined as the join of the topology of upper sets and the Scott Hausdorff
topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8db7f5e2b621ae27669acbf50fa85b7473b59e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
