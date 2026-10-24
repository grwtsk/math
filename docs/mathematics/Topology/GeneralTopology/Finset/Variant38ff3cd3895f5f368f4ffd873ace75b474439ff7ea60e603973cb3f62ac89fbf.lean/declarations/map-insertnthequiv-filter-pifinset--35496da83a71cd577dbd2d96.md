# map_insertNthEquiv_filter_piFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcc7b56a896a71d437b3d4240a1a5638c4d0fd29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2aba8cf6-5c5d-baa6-2589-a149ea15e8fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f865a057-3c7d-f31d-7d9a-494ab0f5736a",
  "kind": "lemma",
  "lexical_name": "map_insertNthEquiv_filter_piFinset",
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
  "slug": "map-insertnthequiv-filter-pifinset--35496da83a71cd577dbd2d96",
  "source": {
    "blob": "bcc7b56a896a71d437b3d4240a1a5638c4d0fd29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35496da83a71cd577dbd2d965d15b38b686f56fa99b21d28d0ff084b90829e80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f865a057-3c7d-f31d-7d9a-494ab0f5736a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_insertNthEquiv_filter_piFinset (P : (∀ i, α (p.succAbove i)) → Prop) [DecidablePred P] :
    {r ∈ piFinset S | P (p.removeNth r)}.map (p.insertNthEquiv α).symm.toEmbedding =
      S p ×ˢ {r ∈ piFinset (p.removeNth  S) | P r} := by
  unfold removeNth; ext; simp [Fin.forall_iff_succAbove p, and_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finset/Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc7b56a896a71d437b3d4240a1a5638c4d0fd29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
