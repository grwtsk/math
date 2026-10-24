# chartAt_subtype_val_symm_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74c23f180d2dede9651863f616ffa757b9c3dd0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a089f141-94c4-aec1-b89c-c66ac583fdc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:856ddee5-6e88-4697-9c2b-cfc43eda44f7",
  "kind": "theorem",
  "lexical_name": "chartAt_subtype_val_symm_eventuallyEq",
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
  "slug": "chartat-subtype-val-symm-eventuallyeq--24a569995d3be2d59e07ffb2",
  "source": {
    "blob": "74c23f180d2dede9651863f616ffa757b9c3dd0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1321,
    "line": 1314,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24a569995d3be2d59e07ffb25f760ddf0fdb2e0b47919cdd98cab8d1f63b7794",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:856ddee5-6e88-4697-9c2b-cfc43eda44f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1314–1321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chartAt_subtype_val_symm_eventuallyEq (U : Opens M) {x : U} :
    (chartAt H x.val).symm =ᶠ[𝓝 (chartAt H x.val x.val)] Subtype.val ∘ (chartAt H x).symm := by
  set e := chartAt H x.val
  have heUx_nhds : (e.subtypeRestr ⟨x⟩).target ∈ 𝓝 (e x) := by
    apply (e.subtypeRestr ⟨x⟩).open_target.mem_nhds
    exact e.map_subtype_source ⟨x⟩ (mem_chart_source _ _)
  exact Filter.eventuallyEq_of_mem heUx_nhds (e.subtypeRestr_symm_eqOn ⟨x⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean#L1314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c23f180d2dede9651863f616ffa757b9c3dd0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
