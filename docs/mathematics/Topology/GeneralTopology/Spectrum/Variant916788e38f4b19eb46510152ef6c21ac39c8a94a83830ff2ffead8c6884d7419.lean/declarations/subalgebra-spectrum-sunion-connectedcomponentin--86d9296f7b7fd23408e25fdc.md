# Subalgebra.spectrum_sUnion_connectedComponentIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0056c6dd-77a9-0517-173a-d72b81ebe31d",
  "kind": "lemma",
  "lexical_name": "Subalgebra.spectrum_sUnion_connectedComponentIn",
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
  "slug": "subalgebra-spectrum-sunion-connectedcomponentin--86d9296f7b7fd23408e25fdc",
  "source": {
    "blob": "9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 673,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86d9296f7b7fd23408e25fdcbbb982794bcb9955f4690a1587ef760e2d3cfd39",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0056c6dd-77a9-0517-173a-d72b81ebe31d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subalgebra.spectrum_sUnion_connectedComponentIn :
    σ 𝕜 x = σ 𝕜 (x : A) ∪ (⋃ z ∈ (σ 𝕜 x \ σ 𝕜 (x : A)), connectedComponentIn (σ 𝕜 (x : A))ᶜ z) := by
  suffices IsClopen ((σ 𝕜 (x : A))ᶜ ↓∩ (σ 𝕜 x \ σ 𝕜 (x : A))) by
    rw [← this.biUnion_connectedComponentIn (sdiff_subset_compl _ _),
      union_sdiff_cancel (spectrum.subset_subalgebra x)]
  have : CompleteSpace S := hS.completeSpace_coe
  have h_open : IsOpen (σ 𝕜 x \ σ 𝕜 (x : A)) := by
    rw [← (spectrum.isClosed (𝕜 := 𝕜) x).closure_eq, closure_eq_interior_union_frontier,
      union_sdiff_distrib, sdiff_eq_empty.mpr (frontier_spectrum S x),
      sdiff_eq_compl_inter, union_empty]
    exact (spectrum.isClosed _).isOpen_compl.inter isOpen_interior
  apply isClopen_preimage_val h_open
  suffices h_frontier : frontier (σ 𝕜 x \ σ 𝕜 (x : A)) ⊆ frontier (σ 𝕜 (x : A)) from
    disjoint_of_subset_left h_frontier <| disjoint_compl_right.frontier_left
      (spectrum.isClosed _).isOpen_compl
  grw [sdiff_eq_compl_inter, frontier_inter_subset, inter_subset_left, inter_subset_right,
    frontier_compl, frontier_subset_frontier, union_self]

/-- Let `S` be a closed subalgebra of a Banach algebra `A`, and let `x : S`. If `z` is in the
spectrum of `x`, then the connected component of `z` in the complement of the spectrum of `↑x : A`
is bounded (or else `z` actually belongs to the spectrum of `↑x : A`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
