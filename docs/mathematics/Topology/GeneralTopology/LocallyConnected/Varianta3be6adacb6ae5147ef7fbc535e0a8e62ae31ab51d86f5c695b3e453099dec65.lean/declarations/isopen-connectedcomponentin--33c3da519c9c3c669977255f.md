# IsOpen.connectedComponentIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afd96aafe30a89a89cc000ac6322f2c07b6883c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:110dc660-d959-2ce3-f3a3-54d440a331b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b9245b2-069b-eb49-afcd-4a46dab6ea0a",
  "kind": "theorem",
  "lexical_name": "IsOpen.connectedComponentIn",
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
  "slug": "isopen-connectedcomponentin--33c3da519c9c3c669977255f",
  "source": {
    "blob": "afd96aafe30a89a89cc000ac6322f2c07b6883c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33c3da519c9c3c669977255fced2a3a95f6d4996c43573a6c5425df6f1356186",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b9245b2-069b-eb49-afcd-4a46dab6ea0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsOpen.connectedComponentIn [LocallyConnectedSpace α] {F : Set α} {x : α}
    (hF : IsOpen F) : IsOpen (connectedComponentIn F x) := by
  rw [isOpen_iff_mem_nhds]
  intro y hy
  rw [connectedComponentIn_eq hy]
  exact connectedComponentIn_mem_nhds (hF.mem_nhds <| connectedComponentIn_subset F x hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd96aafe30a89a89cc000ac6322f2c07b6883c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
