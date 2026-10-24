# ContinuousWithinAt.mem_closure_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a989847-b87f-06c8-b225-3d4b0f818848",
  "kind": "theorem",
  "lexical_name": "ContinuousWithinAt.mem_closure_image",
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
  "slug": "continuouswithinat-mem-closure-image--78fd99dd60c646b44bc1241a",
  "source": {
    "blob": "78fa17151b24c9e17a4a36e3393621f136245392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 567,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78fd99dd60c646b44bc1241ab532dfcec4f7ebcf51094340fa4bd7f72a914e52",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a989847-b87f-06c8-b225-3d4b0f818848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousWithinAt.mem_closure_image
    (h : ContinuousWithinAt f s x) (hx : x ∈ closure s) : f x ∈ closure (f '' s) :=
  haveI := mem_closure_iff_nhdsWithin_neBot.1 hx
  mem_closure_of_tendsto h <| mem_of_superset self_mem_nhdsWithin (subset_preimage_image f s)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78fa17151b24c9e17a4a36e3393621f136245392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
