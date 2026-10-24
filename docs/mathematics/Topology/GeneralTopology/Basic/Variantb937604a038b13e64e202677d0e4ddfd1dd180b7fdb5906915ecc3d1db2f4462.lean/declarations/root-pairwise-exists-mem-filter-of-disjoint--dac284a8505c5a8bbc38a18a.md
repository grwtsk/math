# _root_.Pairwise.exists_mem_filter_of_disjoint

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
      "line": 735,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e676294-adc2-00e0-fe41-f2b361362751",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:313e62c1-ea2f-3474-94b6-ba72d43219d8",
  "kind": "theorem",
  "lexical_name": "_root_.Pairwise.exists_mem_filter_of_disjoint",
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
  "slug": "root-pairwise-exists-mem-filter-of-disjoint--dac284a8505c5a8bbc38a18a",
  "source": {
    "blob": "515ff2aaf33ed7f005571558e8864c9ea206c988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 735,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dac284a8505c5a8bbc38a18a7f2da762fdc864b34c51c6b7c272e7382f1ad79e",
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

Occurrence: `result:313e62c1-ea2f-3474-94b6-ba72d43219d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Pairwise.exists_mem_filter_of_disjoint {ι : Type*} [Finite ι] {l : ι → Filter α}
    (hd : Pairwise (Disjoint on l)) :
    ∃ s : ι → Set α, (∀ i, s i ∈ l i) ∧ Pairwise (Disjoint on s) := by
  have : ∀ i j, i ≠ j → ∃ (s : {s // s ∈ l i}) (t : {t // t ∈ l j}), Disjoint s.1 t.1
  · simpa only [Pairwise, Function.onFun, Filter.disjoint_iff, exists_prop, Subtype.exists] using hd
  choose! s t hst using this
  refine' ⟨fun i => ⋂ j, s i j ∩ t j i, fun i => _, fun i j hij => _⟩
  exacts [iInter_mem.2 fun j => inter_mem (@s i j).2 (@t j i).2,
    (hst _ _ hij).mono ((iInter_subset _ j).trans (inter_subset_left _ _))
      ((iInter_subset _ i).trans (inter_subset_right _ _))]
#align pairwise.exists_mem_filter_of_disjoint Pairwise.exists_mem_filter_of_disjoint

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `515ff2aaf33ed7f005571558e8864c9ea206c988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
