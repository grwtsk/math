# IsTopologicalBasis.sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6525285-a91a-0980-6d89-4ea524921da1",
  "kind": "theorem",
  "lexical_name": "IsTopologicalBasis.sum",
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
  "slug": "istopologicalbasis-sum--a22cd9715868b92127327428",
  "source": {
    "blob": "39a4410f544346fbdcd3249f762842e98be612ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 925,
    "line": 908,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantc898eb2d3184543f0c64e6195bfff274f57a973769831068a1d5aef4bf2fa9b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a22cd9715868b92127327428e79ce9fd458808102a9194b1998753dc9460cd62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantc898eb2d3184543f0c64e6195bfff274f57a973769831068a1d5aef4bf2fa9b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6525285-a91a-0980-6d89-4ea524921da1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 908–925.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTopologicalBasis.sum {s : Set (Set α)} (hs : IsTopologicalBasis s) {t : Set (Set β)}
    (ht : IsTopologicalBasis t) :
    IsTopologicalBasis ((fun u => Sum.inl '' u) '' s ∪ (fun u => Sum.inr '' u) '' t) := by
  apply isTopologicalBasis_of_isOpen_of_nhds
  · rintro u (⟨w, hw, rfl⟩ | ⟨w, hw, rfl⟩)
    · exact IsOpenEmbedding.inl.isOpenMap w (hs.isOpen hw)
    · exact IsOpenEmbedding.inr.isOpenMap w (ht.isOpen hw)
  · rintro (x | x) u hxu u_open
    · obtain ⟨v, vs, xv, vu⟩ : ∃ v ∈ s, x ∈ v ∧ v ⊆ Sum.inl ⁻¹' u :=
        hs.exists_subset_of_mem_open hxu (isOpen_sum_iff.1 u_open).1
      exact ⟨Sum.inl '' v, mem_union_left _ (mem_image_of_mem _ vs), mem_image_of_mem _ xv,
        image_subset_iff.2 vu⟩
    · obtain ⟨v, vs, xv, vu⟩ : ∃ v ∈ t, x ∈ v ∧ v ⊆ Sum.inr ⁻¹' u :=
        ht.exists_subset_of_mem_open hxu (isOpen_sum_iff.1 u_open).2
      exact ⟨Sum.inr '' v, mem_union_right _ (mem_image_of_mem _ vs), mem_image_of_mem _ xv,
        image_subset_iff.2 vu⟩

/-- A sum type of two second countable spaces is second countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantc898eb2d3184543f0c64e6195bfff274f57a973769831068a1d5aef4bf2fa9b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantc898eb2d3184543f0c64e6195bfff274f57a973769831068a1d5aef4bf2fa9b5.lean#L908).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39a4410f544346fbdcd3249f762842e98be612ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
