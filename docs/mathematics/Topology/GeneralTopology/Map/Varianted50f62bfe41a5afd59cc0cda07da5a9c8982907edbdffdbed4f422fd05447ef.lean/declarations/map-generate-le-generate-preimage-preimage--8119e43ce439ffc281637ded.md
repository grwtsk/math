# map_generate_le_generate_preimage_preimage

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
      "line": 768,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e89afec-9646-51fc-cce0-31cc621a5d51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6cdc015-af9e-0bb3-0e06-f4047fe5f388",
  "kind": "lemma",
  "lexical_name": "map_generate_le_generate_preimage_preimage",
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
  "slug": "map-generate-le-generate-preimage-preimage--8119e43ce439ffc281637ded",
  "source": {
    "blob": "2a45f4159b214d8a468c8154783330e25b7f5219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 768,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8119e43ce439ffc281637ded43ca9366d0996bc52da48b930a8397292d2bdca1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6cdc015-af9e-0bb3-0e06-f4047fe5f388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 768–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_generate_le_generate_preimage_preimage (U : Set (Set β)) (f : β → α) :
    map f (generate U) ≤ generate ((f ⁻¹' ·) ⁻¹' U) := by
  rw [le_generate_iff]
  exact fun u hu ↦ mem_generate_of_mem hu

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.lean#L768).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a45f4159b214d8a468c8154783330e25b7f5219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
