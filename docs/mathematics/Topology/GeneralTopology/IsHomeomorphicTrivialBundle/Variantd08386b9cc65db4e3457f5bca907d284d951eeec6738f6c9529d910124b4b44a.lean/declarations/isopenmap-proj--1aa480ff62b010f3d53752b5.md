# isOpenMap_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92c6f369cee2f03cd387fd2240711c5fcc371e83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3804c159-5a81-efb4-d917-2f0b165eb1bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de4b5d5c-8cb8-607b-64d5-da0837c71e5f",
  "kind": "theorem",
  "lexical_name": "isOpenMap_proj",
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
  "slug": "isopenmap-proj--1aa480ff62b010f3d53752b5",
  "source": {
    "blob": "92c6f369cee2f03cd387fd2240711c5fcc371e83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa480ff62b010f3d53752b5b79dcae9395dc6aff0f1f6798229cc1d96fba45f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de4b5d5c-8cb8-607b-64d5-da0837c71e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isOpenMap_proj (h : IsHomeomorphicTrivialFiberBundle F proj) : IsOpenMap proj :=
  by obtain ⟨e, rfl⟩ := h.proj_eq; exact isOpenMap_fst.comp e.isOpenMap
#align is_homeomorphic_trivial_fiber_bundle.is_open_map_proj IsHomeomorphicTrivialFiberBundle.isOpenMap_proj

/-- The projection from a trivial fiber bundle to its base is open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92c6f369cee2f03cd387fd2240711c5fcc371e83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
