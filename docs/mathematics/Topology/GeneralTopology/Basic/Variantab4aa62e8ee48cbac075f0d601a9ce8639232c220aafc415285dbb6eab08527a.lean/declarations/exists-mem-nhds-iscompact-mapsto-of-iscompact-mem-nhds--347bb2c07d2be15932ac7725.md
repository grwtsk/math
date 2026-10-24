# exists_mem_nhds_isCompact_mapsTo_of_isCompact_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7869c22b117f30312b28f43d05e17de874c5006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1027,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f355904-5961-1411-764c-32d25589baa6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bee7d45e-ab10-ea92-bd27-68caf4190438",
  "kind": "theorem",
  "lexical_name": "exists_mem_nhds_isCompact_mapsTo_of_isCompact_mem_nhds",
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
  "slug": "exists-mem-nhds-iscompact-mapsto-of-iscompact-mem-nhds--347bb2c07d2be15932ac7725",
  "source": {
    "blob": "e7869c22b117f30312b28f43d05e17de874c5006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1043,
    "line": 1027,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:347bb2c07d2be15932ac77253cd753407e56dfb4b69a22e908c67dfb32751f4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bee7d45e-ab10-ea92-bd27-68caf4190438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1027–1043.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_nhds_isCompact_mapsTo_of_isCompact_mem_nhds
    {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [R1Space Y] {f : X → Y} {x : X}
    {K : Set X} {s : Set Y} (hf : Continuous f) (hs : s ∈ 𝓝 (f x)) (hKc : IsCompact K)
    (hKx : K ∈ 𝓝 x) : ∃ L ∈ 𝓝 x, IsCompact L ∧ MapsTo f L s := by
  have hc : IsCompact (f '' K \ interior s) := (hKc.image hf).diff isOpen_interior
  obtain ⟨U, V, Uo, Vo, hxU, hV, hd⟩ : SeparatedNhds {f x} (f '' K \ interior s) := by
    simp_rw [separatedNhds_iff_disjoint, nhdsSet_singleton, hc.disjoint_nhdsSet_right,
      disjoint_nhds_nhds_iff_not_inseparable]
    rintro y ⟨-, hys⟩ hxy
    refine hys <| (hxy.mem_open_iff isOpen_interior).1 ?_
    rwa [mem_interior_iff_mem_nhds]
  refine ⟨K \ f ⁻¹' V, diff_mem hKx ?_, hKc.diff <| Vo.preimage hf, fun y hy ↦ ?_⟩
  · filter_upwards [hf.continuousAt <| Uo.mem_nhds (hxU rfl)] with x hx
      using Set.disjoint_left.1 hd hx
  · by_contra hys
    exact hy.2 (hV ⟨mem_image_of_mem _ hy.1, notMem_subset interior_subset hys⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean#L1027).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7869c22b117f30312b28f43d05e17de874c5006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
