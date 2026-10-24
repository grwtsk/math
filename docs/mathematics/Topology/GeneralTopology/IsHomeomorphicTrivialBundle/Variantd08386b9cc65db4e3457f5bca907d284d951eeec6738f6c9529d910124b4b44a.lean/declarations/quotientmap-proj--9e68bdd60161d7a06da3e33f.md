# quotientMap_proj

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
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2076c228-f29c-9fca-2fb2-cd1c5c09fd0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10d4bfe4-963b-abea-b7e5-3eed90b55fcf",
  "kind": "theorem",
  "lexical_name": "quotientMap_proj",
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
  "slug": "quotientmap-proj--9e68bdd60161d7a06da3e33f",
  "source": {
    "blob": "92c6f369cee2f03cd387fd2240711c5fcc371e83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e68bdd60161d7a06da3e33f5104ca0de24d8fe73fa4143fb061c65e2ce2fbf5",
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

Occurrence: `result:10d4bfe4-963b-abea-b7e5-3eed90b55fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem quotientMap_proj [Nonempty F] (h : IsHomeomorphicTrivialFiberBundle F proj) :
    QuotientMap proj :=
  h.isOpenMap_proj.to_quotientMap h.continuous_proj h.surjective_proj
#align is_homeomorphic_trivial_fiber_bundle.quotient_map_proj IsHomeomorphicTrivialFiberBundle.quotientMap_proj

end IsHomeomorphicTrivialFiberBundle

/-- The first projection in a product is a trivial fiber bundle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsHomeomorphicTrivialBundle/Variantd08386b9cc65db4e3457f5bca907d284d951eeec6738f6c9529d910124b4b44a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92c6f369cee2f03cd387fd2240711c5fcc371e83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
