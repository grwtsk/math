# setOfIdeal_ofSet_eq_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9070af05da546ea5f420110123a6dcf95a8edaa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e83e552d-5edb-1073-647d-bfd6516ef0c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26c98500-52ed-6ba5-90f4-677b4ab4e6e5",
  "kind": "theorem",
  "lexical_name": "setOfIdeal_ofSet_eq_interior",
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
  "slug": "setofideal-ofset-eq-interior--cc32c4741748d7ec7fd4f4c9",
  "source": {
    "blob": "9070af05da546ea5f420110123a6dcf95a8edaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 298,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc32c4741748d7ec7fd4f4c9ed868ec926c6c31ca2d3ff891dc73cadee0afd79",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26c98500-52ed-6ba5-90f4-677b4ab4e6e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setOfIdeal_ofSet_eq_interior (s : Set X) : setOfIdeal (idealOfSet 𝕜 s) = interior s := by
  refine
    Set.Subset.antisymm
      ((setOfIdeal_open (idealOfSet 𝕜 s)).subset_interior_iff.mpr fun x hx =>
        let ⟨f, hf, hfx⟩ := mem_setOfIdeal.mp hx
        Set.notMem_compl_iff.mp (mt (@hf x) hfx))
      fun x hx => ?_
  -- If `x ∉ closure sᶜ`, we must produce `f : C(X, 𝕜)` which is zero on `sᶜ` and `f x ≠ 0`.
  rw [← compl_compl (interior s), ← closure_compl] at hx
  simp_rw [mem_setOfIdeal, mem_idealOfSet]
  /- Apply Urysohn's lemma to get `g : C(X, ℝ)` which is zero on `sᶜ` and `g x ≠ 0`, then compose
    with the natural embedding `ℝ ↪ 𝕜` to produce the desired `f`. -/
  obtain ⟨g, hgs, hgx : Set.EqOn g 1 {x}, -⟩ :=
    exists_continuous_zero_one_of_isClosed isClosed_closure isClosed_singleton
      (Set.disjoint_singleton_right.mpr hx)
  exact
    ⟨⟨fun x => g x, continuous_ofReal.comp (map_continuous g)⟩, by
      simpa only [coe_mk, ofReal_eq_zero] using fun x hx => hgs (subset_closure hx), by
      simpa only [coe_mk, hgx (Set.mem_singleton x), Pi.one_apply, RCLike.ofReal_one] using
        one_ne_zero⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9070af05da546ea5f420110123a6dcf95a8edaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
