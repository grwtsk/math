# mem_comap_iff

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
      "line": 513,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d000de1-da56-99a3-0522-d38d779be58c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:617c6fc9-76db-9edf-ff32-54d701b0d88c",
  "kind": "theorem",
  "lexical_name": "mem_comap_iff",
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
  "slug": "mem-comap-iff--bf85215749406c55f527edb3",
  "source": {
    "blob": "2a45f4159b214d8a468c8154783330e25b7f5219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 513,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf85215749406c55f527edb339164f28d7a05db950019a123bb607ec9c6ba3de",
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

Occurrence: `result:617c6fc9-76db-9edf-ff32-54d701b0d88c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_comap_iff {f : Filter β} {m : α → β} (inj : Injective m) (large : Set.range m ∈ f)
    {S : Set α} : S ∈ comap m f ↔ m '' S ∈ f := by
  rw [← image_mem_map_iff inj, map_comap_of_mem large]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a45f4159b214d8a468c8154783330e25b7f5219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
