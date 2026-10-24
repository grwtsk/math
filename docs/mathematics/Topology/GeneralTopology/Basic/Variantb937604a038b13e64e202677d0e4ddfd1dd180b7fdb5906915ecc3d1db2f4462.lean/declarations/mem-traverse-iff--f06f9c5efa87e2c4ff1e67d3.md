# mem_traverse_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "515ff2aaf33ed7f005571558e8864c9ea206c988",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2896,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8cd51b0-a93e-048b-887d-548edb0bb5ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:352342da-b0c3-0d68-24a8-619336f4ab6c",
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
  "slug": "mem-traverse-iff--f06f9c5efa87e2c4ff1e67d3",
  "source": {
    "blob": "515ff2aaf33ed7f005571558e8864c9ea206c988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2920,
    "line": 2896,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f06f9c5efa87e2c4ff1e67d36c56be2cada3ff668ae1193d762e4dbfb209c857",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:352342da-b0c3-0d68-24a8-619336f4ab6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2896–2920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_traverse_iff (fs : List β') (t : Set (List α')) :
    t ∈ traverse f fs ↔
      ∃ us : List (Set α'), Forall₂ (fun b (s : Set α') => s ∈ f b) fs us ∧ sequence us ⊆ t := by
  constructor
  · induction fs generalizing t
    case nil =>
      simp only [sequence, mem_pure, imp_self, forall₂_nil_left_iff, exists_eq_left, Set.pure_def,
        singleton_subset_iff, traverse_nil]
    case cons b fs ih =>
      intro ht
      rcases mem_seq_iff.1 ht with ⟨u, hu, v, hv, ht⟩
      rcases mem_map_iff_exists_image.1 hu with ⟨w, hw, hwu⟩
      rcases ih v hv with ⟨us, hus, hu⟩
      exact ⟨w::us, Forall₂.cons hw hus, (Set.seq_mono hwu hu).trans ht⟩
  · rintro ⟨us, hus, hs⟩
    exact mem_of_superset (mem_traverse _ _ hus) hs
#align filter.mem_traverse_iff Filter.mem_traverse_iff

end ListTraverse

/-! ### Limits -/

/-- `Filter.Tendsto` is the generic "limit of a function" predicate.
  `Tendsto f l₁ l₂` asserts that for every `l₂` neighborhood `a`,
  the `f`-preimage of `a` is an `l₁` neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean#L2896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `515ff2aaf33ed7f005571558e8864c9ea206c988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
