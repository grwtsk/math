# positive_pole_shift_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb3a4e05d3ee70ba135372f1237d9522a157470",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:968679ed-1444-7b9c-52a3-9c017d6c34b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f0db47b-a8d9-d489-e1eb-3c09bbee90d1",
  "kind": "theorem",
  "lexical_name": "positive_pole_shift_tendsto",
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
  "slug": "positive-pole-shift-tendsto--bc9b485b78dfa183caa0a262",
  "source": {
    "blob": "9cb3a4e05d3ee70ba135372f1237d9522a157470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 20,
    "path": "GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc9b485b78dfa183caa0a262de67190e8f8dcb524fc11fb89b7ff028f4d533b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f0db47b-a8d9-d489-e1eb-3c09bbee90d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_pole_shift_tendsto :
    Tendsto (fun z : ℂ ↦ 1 / 2 + z) (𝓝[≠] (1 / 2)) (𝓝[≠] 1) := by
  apply tendsto_nhdsWithin_iff.mpr
  constructor
  · have h : Tendsto (fun z : ℂ ↦ (1 / 2 : ℂ) + z)
        (𝓝[≠] (1 / 2)) (𝓝 ((1 / 2 : ℂ) + 1 / 2)) :=
      tendsto_const_nhds.add (tendsto_id.mono_left nhdsWithin_le_nhds)
    convert h using 1
    norm_num
  · filter_upwards [self_mem_nhdsWithin] with z hz
    simp only [mem_compl_iff, mem_singleton_iff] at hz ⊢
    intro h
    apply hz
    linear_combination h

/-- The residue-one theorem is transported to the actual shifted source variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb3a4e05d3ee70ba135372f1237d9522a157470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
