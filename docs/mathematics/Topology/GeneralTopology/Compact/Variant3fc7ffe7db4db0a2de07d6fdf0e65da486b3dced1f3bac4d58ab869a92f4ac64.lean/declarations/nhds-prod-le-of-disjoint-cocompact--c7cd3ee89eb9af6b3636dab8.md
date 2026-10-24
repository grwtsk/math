# nhds_prod_le_of_disjoint_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30fc9322f4ce78f847a592b0035bf5edfc65f33c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 733,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c94a987d-938c-0679-081e-5f04f2414e70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a406b8c6-7332-1feb-9b04-647961f8af7b",
  "kind": "theorem",
  "lexical_name": "nhds_prod_le_of_disjoint_cocompact",
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
  "slug": "nhds-prod-le-of-disjoint-cocompact--c7cd3ee89eb9af6b3636dab8",
  "source": {
    "blob": "30fc9322f4ce78f847a592b0035bf5edfc65f33c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 737,
    "line": 733,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7cd3ee89eb9af6b3636dab8b67d0010c18d61d517918e9b0a8876e9056fc0e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a406b8c6-7332-1feb-9b04-647961f8af7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 733–737.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_prod_le_of_disjoint_cocompact {f : Filter Y} (x : X)
    (hf : Disjoint f (Filter.cocompact Y)) :
    𝓝 x ×ˢ f ≤ 𝓝ˢ ({x} ×ˢ Set.univ) := by
  simpa using nhdsSet_prod_le_of_disjoint_cocompact isCompact_singleton hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean#L733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30fc9322f4ce78f847a592b0035bf5edfc65f33c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
