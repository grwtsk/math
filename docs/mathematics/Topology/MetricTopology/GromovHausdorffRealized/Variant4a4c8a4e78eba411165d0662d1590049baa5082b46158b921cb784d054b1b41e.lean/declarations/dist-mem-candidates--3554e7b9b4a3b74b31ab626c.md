# dist_mem_candidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f554c13e90b90b506b2b80187f766c837c76fa45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36483e2d-4c48-7f22-8c05-5e0da6f8b973",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c5115e9-da0a-7b69-1ef5-35d87e2664f0",
  "kind": "theorem",
  "lexical_name": "dist_mem_candidates",
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
  "slug": "dist-mem-candidates--3554e7b9b4a3b74b31ab626c",
  "source": {
    "blob": "f554c13e90b90b506b2b80187f766c837c76fa45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 218,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3554e7b9b4a3b74b31ab626c2370f64aa8625dfa51d48cde707c9cad85841e23",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c5115e9-da0a-7b69-1ef5-35d87e2664f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem dist_mem_candidates :
    (fun p : (X ⊕ Y) × (X ⊕ Y) => dist p.1 p.2) ∈ candidates X Y := by
  simp_rw [candidates, Set.mem_setOf_eq, dist_comm, dist_triangle, dist_self, maxVar_bound,
    forall_const, and_true]
  exact ⟨fun x y => rfl, fun x y => rfl⟩

/-- The distance on `X ⊕ Y` as a candidate -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f554c13e90b90b506b2b80187f766c837c76fa45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
