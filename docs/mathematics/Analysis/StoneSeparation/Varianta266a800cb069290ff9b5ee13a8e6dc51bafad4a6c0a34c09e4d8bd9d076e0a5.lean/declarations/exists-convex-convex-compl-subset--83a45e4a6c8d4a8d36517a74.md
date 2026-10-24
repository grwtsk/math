# exists_convex_convex_compl_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4417a4b90b5983039e89cbe79680bae20188c44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a266a800cb069290ff9b5ee13a8e6dc51bafad4a6c0a34c09e4d8bd9d076e0a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a9d4530-2b86-6eba-971f-163e48609d88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54b638f1-6305-6028-0df7-90dad4af8a85",
  "kind": "theorem",
  "lexical_name": "exists_convex_convex_compl_subset",
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
  "slug": "exists-convex-convex-compl-subset--83a45e4a6c8d4a8d36517a74",
  "source": {
    "blob": "c4417a4b90b5983039e89cbe79680bae20188c44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 83,
    "path": "GRWTSK/Analysis/StoneSeparation/Varianta266a800cb069290ff9b5ee13a8e6dc51bafad4a6c0a34c09e4d8bd9d076e0a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83a45e4a6c8d4a8d36517a7454d2bd5e90763dbbd7e7ef21cb2d86eb155f4599",
  "verification": {
    "reference": "docs/verification/Analysis/StoneSeparation/Varianta266a800cb069290ff9b5ee13a8e6dc51bafad4a6c0a34c09e4d8bd9d076e0a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54b638f1-6305-6028-0df7-90dad4af8a85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_convex_convex_compl_subset (hs : Convex 𝕜 s) (ht : Convex 𝕜 t) (hst : Disjoint s t) :
    ∃ C : Set E, Convex 𝕜 C ∧ Convex 𝕜 Cᶜ ∧ s ⊆ C ∧ t ⊆ Cᶜ := by
  let S : Set (Set E) := { C | Convex 𝕜 C ∧ Disjoint C t }
  obtain ⟨C, hC, hsC, hCmax⟩ :=
    zorn_subset_nonempty S
      (fun c hcS hc ⟨_, _⟩ =>
        ⟨⋃₀ c,
          ⟨hc.directedOn.convex_sUnion fun s hs => (hcS hs).1,
            disjoint_sUnion_left.2 fun c hc => (hcS hc).2⟩,
          fun s => subset_sUnion_of_mem⟩)
      s ⟨hs, hst⟩
  refine'
    ⟨C, hC.1, convex_iff_segment_subset.2 fun x hx y hy z hz hzC => _, hsC, hC.2.subset_compl_left⟩
  suffices h : ∀ c ∈ Cᶜ, ∃ a ∈ C, (segment 𝕜 c a ∩ t).Nonempty
  · obtain ⟨p, hp, u, hu, hut⟩ := h x hx
    obtain ⟨q, hq, v, hv, hvt⟩ := h y hy
    refine'
      not_disjoint_segment_convexHull_triple hz hu hv
        (hC.2.symm.mono (ht.segment_subset hut hvt) <| convexHull_min _ hC.1)
    simpa [insert_subset_iff, hp, hq, singleton_subset_iff.2 hzC]
  rintro c hc
  by_contra' h
  suffices h : Disjoint (convexHull 𝕜 (insert c C)) t
  · rw [←
      hCmax _ ⟨convex_convexHull _ _, h⟩ ((subset_insert _ _).trans <| subset_convexHull _ _)] at hc
    exact hc (subset_convexHull _ _ <| mem_insert _ _)
  rw [convexHull_insert ⟨z, hzC⟩, convexJoin_singleton_left]
  refine' disjoint_iUnion₂_left.2 fun a ha => disjoint_iff_inf_le.mpr fun b hb => h a _ ⟨b, hb⟩
  rwa [← hC.1.convexHull_eq]
#align exists_convex_convex_compl_subset exists_convex_convex_compl_subset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/StoneSeparation/Varianta266a800cb069290ff9b5ee13a8e6dc51bafad4a6c0a34c09e4d8bd9d076e0a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/StoneSeparation/Varianta266a800cb069290ff9b5ee13a8e6dc51bafad4a6c0a34c09e4d8bd9d076e0a5.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4417a4b90b5983039e89cbe79680bae20188c44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
