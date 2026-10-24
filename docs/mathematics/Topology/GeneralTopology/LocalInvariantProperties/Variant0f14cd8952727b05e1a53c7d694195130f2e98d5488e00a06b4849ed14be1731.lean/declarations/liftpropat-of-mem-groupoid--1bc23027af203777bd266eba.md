# liftPropAt_of_mem_groupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a66e4adeee7c4c3f5627f275887e818099cff6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1399bfa-afe1-64d0-d95f-07fd39d90569",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6705e9f-4d59-84cd-7db4-45e60c0e81b1",
  "kind": "theorem",
  "lexical_name": "liftPropAt_of_mem_groupoid",
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
  "slug": "liftpropat-of-mem-groupoid--1bc23027af203777bd266eba",
  "source": {
    "blob": "6a66e4adeee7c4c3f5627f275887e818099cff6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 529,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bc23027af203777bd266eba22e1c6a1d321555c54b6f236c453ecb4a5d3940d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6705e9f-4d59-84cd-7db4-45e60c0e81b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPropAt_of_mem_groupoid (hG : G.LocalInvariantProp G Q) (hQ : ∀ y, Q id univ y)
    {f : LocalHomeomorph H H} (hf : f ∈ G) {x : H} (hx : x ∈ f.source) : LiftPropAt Q f x :=
  liftPropAt_of_mem_maximalAtlas hG hQ (G.mem_maximalAtlas_of_mem_groupoid hf) hx
#align structure_groupoid.local_invariant_prop.lift_prop_at_of_mem_groupoid StructureGroupoid.LocalInvariantProp.liftPropAt_of_mem_groupoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a66e4adeee7c4c3f5627f275887e818099cff6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
