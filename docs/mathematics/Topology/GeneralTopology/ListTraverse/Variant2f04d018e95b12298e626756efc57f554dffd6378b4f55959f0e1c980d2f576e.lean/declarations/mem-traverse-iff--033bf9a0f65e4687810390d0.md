# mem_traverse_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "392ccfec14112aabd1b114ac11f8e2f688620d99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36d7d22a-f1a3-bde2-6edb-19fb7fc5d607",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e8d62d2-07a0-6ae3-d726-82f5aad497b8",
  "kind": "theorem",
  "lexical_name": "mem_traverse_iff",
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
  "slug": "mem-traverse-iff--033bf9a0f65e4687810390d0",
  "source": {
    "blob": "392ccfec14112aabd1b114ac11f8e2f688620d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:033bf9a0f65e4687810390d0e5e5c63192976e06d5024e1f0e8f30779845c93b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e8d62d2-07a0-6ae3-d726-82f5aad497b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_traverse_iff (fs : List β) (t : Set (List α)) :
    t ∈ traverse f fs ↔
      ∃ us : List (Set α), Forall₂ (fun b (s : Set α) => s ∈ f b) fs us ∧ sequence us ⊆ t := by
  constructor
  · induction fs generalizing t with
    | nil =>
      simp only [sequence, mem_pure, imp_self, forall₂_nil_left_iff, exists_eq_left, Set.pure_def,
        singleton_subset_iff, traverse_nil]
    | cons b fs ih =>
      intro ht
      rcases mem_seq_iff.1 ht with ⟨u, hu, v, hv, ht⟩
      rcases mem_map_iff_exists_image.1 hu with ⟨w, hw, hwu⟩
      rcases ih v hv with ⟨us, hus, hu⟩
      exact ⟨w::us, Forall₂.cons hw hus, (Set.seq_mono hwu hu).trans ht⟩
  · rintro ⟨us, hus, hs⟩
    exact mem_of_superset (mem_traverse _ _ hus) hs

end Filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392ccfec14112aabd1b114ac11f8e2f688620d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
