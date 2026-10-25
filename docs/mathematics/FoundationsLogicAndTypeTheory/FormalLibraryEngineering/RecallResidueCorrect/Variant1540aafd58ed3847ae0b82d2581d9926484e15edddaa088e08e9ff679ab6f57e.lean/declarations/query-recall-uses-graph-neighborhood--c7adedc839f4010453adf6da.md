# query_recall_uses_graph_neighborhood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e61401d8-755f-6d5d-8352-b2efe85185c0",
  "kind": "theorem",
  "lexical_name": "query_recall_uses_graph_neighborhood",
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
  "slug": "query-recall-uses-graph-neighborhood--c7adedc839f4010453adf6da",
  "source": {
    "blob": "2ebae1f86903343d265b2865d02e0d241b96eb0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecallResidueCorrect/Variant1540aafd58ed3847ae0b82d2581d9926484e15edddaa088e08e9ff679ab6f57e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7adedc839f4010453adf6daa1b574a7fa59d986d1d64ea6dcc055abb7af74dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecallResidueCorrect/Variant1540aafd58ed3847ae0b82d2581d9926484e15edddaa088e08e9ff679ab6f57e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e61401d8-755f-6d5d-8352-b2efe85185c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem query_recall_uses_graph_neighborhood
    (r : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryRecallRequest)
    (h : r.operator = Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryRecallOperator.queryRAG) :
    r.usesGraphNeighborhood = true :=
  Think.RadoProjectedModularHeatflow.MemoryCore.queryRAG_uses_graph_neighborhood r h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecallResidueCorrect/Variant1540aafd58ed3847ae0b82d2581d9926484e15edddaa088e08e9ff679ab6f57e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecallResidueCorrect/Variant1540aafd58ed3847ae0b82d2581d9926484e15edddaa088e08e9ff679ab6f57e.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ebae1f86903343d265b2865d02e0d241b96eb0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
