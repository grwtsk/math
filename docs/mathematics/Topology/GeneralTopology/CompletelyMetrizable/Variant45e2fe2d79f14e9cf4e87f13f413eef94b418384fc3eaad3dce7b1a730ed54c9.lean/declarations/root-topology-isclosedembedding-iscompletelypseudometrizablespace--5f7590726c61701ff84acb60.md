# _root_.Topology.IsClosedEmbedding.IsCompletelyPseudoMetrizableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a09f9b3b228345d4c4648901cbaa79885a10349f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1581d9f6-bbd0-c29d-8dd0-d34205d4bec3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99b843de-4f4b-102d-9f76-f1d05ded4559",
  "kind": "theorem",
  "lexical_name": "_root_.Topology.IsClosedEmbedding.IsCompletelyPseudoMetrizableSpace",
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
  "slug": "root-topology-isclosedembedding-iscompletelypseudometrizablespace--5f7590726c61701ff84acb60",
  "source": {
    "blob": "a09f9b3b228345d4c4648901cbaa79885a10349f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f7590726c61701ff84acb606f35a6f4bb11a487d508b7a1eae0e98b852aeb44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyMetrizable/Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99b843de-4f4b-102d-9f76-f1d05ded4559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Topology.IsClosedEmbedding.IsCompletelyPseudoMetrizableSpace [TopologicalSpace X]
    [TopologicalSpace Y] [IsCompletelyPseudoMetrizableSpace Y] {f : X → Y}
    (hf : IsClosedEmbedding f) :
    IsCompletelyPseudoMetrizableSpace X := by
  let := upgradeIsCompletelyPseudoMetrizable Y
  let : PseudoMetricSpace X := hf.isEmbedding.comapPseudoMetricSpace
  have : CompleteSpace X := by
    rw [completeSpace_iff_isComplete_range hf.isEmbedding.to_isometry.isUniformInducing]
    exact hf.isClosed_range.isComplete
  infer_instance

/-- A closed subset of a completely pseudometrizable space is also completely pseudometrizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyMetrizable/Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a09f9b3b228345d4c4648901cbaa79885a10349f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
