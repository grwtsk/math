# comap_neBot_iff_frequently

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
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8a5a532-a7f7-1f56-dabb-d9161a12237a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:678c5a4b-1b4d-e5fa-8622-558fc71cafbd",
  "kind": "theorem",
  "lexical_name": "comap_neBot_iff_frequently",
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
  "slug": "comap-nebot-iff-frequently--06fcf360e342aed540bd95c1",
  "source": {
    "blob": "2a45f4159b214d8a468c8154783330e25b7f5219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 546,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06fcf360e342aed540bd95c19be9eea2ca8235a75947b31520b203e0c5083bcd",
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

Occurrence: `result:678c5a4b-1b4d-e5fa-8622-558fc71cafbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_neBot_iff_frequently {f : Filter β} {m : α → β} :
    NeBot (comap m f) ↔ ∃ᶠ y in f, y ∈ range m := by
  simp only [comap_neBot_iff, frequently_iff, mem_range, @and_comm (_ ∈ _), exists_exists_eq_and]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a45f4159b214d8a468c8154783330e25b7f5219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
