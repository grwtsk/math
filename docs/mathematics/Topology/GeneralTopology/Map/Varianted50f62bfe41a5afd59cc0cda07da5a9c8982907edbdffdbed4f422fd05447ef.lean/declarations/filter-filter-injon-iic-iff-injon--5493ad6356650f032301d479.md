# Filter.filter_injOn_Iic_iff_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a45f4159b214d8a468c8154783330e25b7f5219",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 959,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a7829f2-de6c-1f4c-7cf3-162c39a17553",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21516f95-3a7d-c659-ed7d-c69f6b4e4783",
  "kind": "theorem",
  "lexical_name": "Filter.filter_injOn_Iic_iff_injOn",
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
  "slug": "filter-filter-injon-iic-iff-injon--5493ad6356650f032301d479",
  "source": {
    "blob": "2a45f4159b214d8a468c8154783330e25b7f5219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 966,
    "line": 959,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5493ad6356650f032301d479ad296ac52bf92b620d1428212046ca3e5a48e157",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21516f95-3a7d-c659-ed7d-c69f6b4e4783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 959–966.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.filter_injOn_Iic_iff_injOn {s : Set α} {m : α → β} :
    InjOn (map m) (Iic <| 𝓟 s) ↔ InjOn m s := by
  refine ⟨fun hm x hx y hy hxy ↦ ?_, fun hm F hF G hG ↦ ?_⟩
  · rwa [← pure_injective.eq_iff, ← map_pure, ← map_pure, hm.eq_iff, pure_injective.eq_iff]
      at hxy <;> rwa [mem_Iic, pure_le_principal]
  · simp [map_eq_map_iff_of_injOn (le_principal_iff.mp hF) (le_principal_iff.mp hG) hm]

alias ⟨_, Set.InjOn.filter_map_Iic⟩ := Filter.filter_injOn_Iic_iff_injOn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean#L959).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a45f4159b214d8a468c8154783330e25b7f5219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
