# addContent_eq_add_disjointOfDiffUnion_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a43ac2c1-ab0f-a744-f53b-39bd0e3e30c7",
  "kind": "lemma",
  "lexical_name": "addContent_eq_add_disjointOfDiffUnion_of_subset",
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
  "slug": "addcontent-eq-add-disjointofdiffunion-of-subset--56b96f01f78bf8a8863afc31",
  "source": {
    "blob": "c0b19556dfa96013b0e4a458b01e54beefe0b8d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 132,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56b96f01f78bf8a8863afc3115a70092ee29e6d28dd4a5d6dee2e16bfda289fb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a43ac2c1-ab0f-a744-f53b-39bd0e3e30c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addContent_eq_add_disjointOfDiffUnion_of_subset (hC : IsSetSemiring C)
    (hs : s ∈ C) (hI : ↑I ⊆ C) (hI_ss : ∀ t ∈ I, t ⊆ s)
    (h_dis : PairwiseDisjoint (I : Set (Set α)) id) :
    m s = ∑ i ∈ I, m i + ∑ i ∈ hC.disjointOfDiffUnion hs hI, m i := by
  classical
  conv_lhs => rw [← hC.sUnion_union_disjointOfDiffUnion_of_subset hs hI hI_ss]
  rw [addContent_sUnion]
  · rw [sum_union]
    exact hC.disjoint_disjointOfDiffUnion hs hI
  · rw [coe_union]
    exact Set.union_subset hI (hC.disjointOfDiffUnion_subset hs hI)
  · rw [coe_union]
    exact hC.pairwiseDisjoint_union_disjointOfDiffUnion hs hI h_dis
  · rwa [hC.sUnion_union_disjointOfDiffUnion_of_subset hs hI hI_ss]

/-- For an `m : addContent C` on a `SetSemiring C`, if `I` is a `Finset` of pairwise disjoint
  sets in `C` and `⋃₀ I ⊆ t` for `t ∈ C`, then `∑ s ∈ I, m s ≤ m t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b19556dfa96013b0e4a458b01e54beefe0b8d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
