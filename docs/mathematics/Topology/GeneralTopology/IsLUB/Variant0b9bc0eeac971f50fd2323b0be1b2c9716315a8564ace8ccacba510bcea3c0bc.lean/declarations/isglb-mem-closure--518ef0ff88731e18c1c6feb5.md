# IsGLB.mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df2188d74d0f987d6b8d760084b3b103fa36f015",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1731fc36-b7d9-f1c3-a501-39c53bfb47af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04540f15-2bbc-fb27-eb22-45851ee6e3ff",
  "kind": "theorem",
  "lexical_name": "IsGLB.mem_closure",
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
  "slug": "isglb-mem-closure--518ef0ff88731e18c1c6feb5",
  "source": {
    "blob": "df2188d74d0f987d6b8d760084b3b103fa36f015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:518ef0ff88731e18c1c6feb5604ec3730065f1af86db0cfba2141504bc2c9bd5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04540f15-2bbc-fb27-eb22-45851ee6e3ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsGLB.mem_closure {a : α} {s : Set α} (ha : IsGLB s a) (hs : s.Nonempty) : a ∈ closure s :=
  (ha.frequently_nhds_mem hs).mem_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df2188d74d0f987d6b8d760084b3b103fa36f015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
