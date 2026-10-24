# changeOrigin_toFormalMultilinearSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8298a49809df177c2399108cdc29aad29172c363",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 568,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8509a23b-0bc3-54c8-931d-1e4b2c6f0027",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d121010e-457b-56f5-0b3d-b3ec755ce46f",
  "kind": "theorem",
  "lexical_name": "changeOrigin_toFormalMultilinearSeries",
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
  "slug": "changeorigin-toformalmultilinearseries--1cec510373fa2d6e67fbb09f",
  "source": {
    "blob": "8298a49809df177c2399108cdc29aad29172c363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 568,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cec510373fa2d6e67fbb09fb0d9ffb992941df697e16d421d123a07a275614a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d121010e-457b-56f5-0b3d-b3ec755ce46f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changeOrigin_toFormalMultilinearSeries [DecidableEq ι] :
    continuousMultilinearCurryFin1 𝕜 (∀ i, E i) F (f.toFormalMultilinearSeries.changeOrigin x 1) =
    f.linearDeriv x := by
  ext y
  rw [continuousMultilinearCurryFin1_apply, linearDeriv_apply,
      changeOrigin, FormalMultilinearSeries.sum]
  cases isEmpty_or_nonempty ι
  · have (l) : 1 + l ≠ Fintype.card ι := by
      rw [add_comm, Fintype.card_eq_zero]; exact Nat.succ_ne_zero _
    simp_rw [Fintype.sum_empty, changeOriginSeries_support _ (this _), zero_apply _, tsum_zero]; rfl
  rw [tsum_eq_single (Fintype.card ι - 1), changeOriginSeries]; swap
  · intro m hm
    rw [Ne, eq_tsub_iff_add_eq_of_le (by exact Fintype.card_pos), add_comm] at hm
    rw [f.changeOriginSeries_support hm, zero_apply]
  rw [sum_apply, ContinuousMultilinearMap.sum_apply, Fin.snoc_zero]
  simp_rw [changeOriginSeriesTerm_apply]
  refine (Fintype.sum_bijective (?_ ∘ Fintype.equivFinOfCardEq (Nat.add_sub_of_le
    Fintype.card_pos).symm) (.comp ?_ <| Equiv.bijective _) _ _ fun i ↦ ?_).symm
  · exact (⟨{·}ᶜ, by
      rw [card_compl, Fintype.card_fin, Finset.card_singleton, Nat.add_sub_cancel_left]⟩)
  · use fun _ _ ↦ (singleton_injective <| compl_injective <| Subtype.ext_iff.mp ·)
    intro ⟨s, hs⟩
    have h : #sᶜ = 1 := by rw [card_compl, hs, Fintype.card_fin, Nat.add_sub_cancel]
    obtain ⟨a, ha⟩ := card_eq_one.mp h
    exact ⟨a, Subtype.ext (compl_eq_comm.mp ha)⟩
  rw [Function.comp_apply, Subtype.coe_mk, compl_singleton, piecewise_erase_univ,
    toFormalMultilinearSeries, dif_pos (Nat.add_sub_of_le Fintype.card_pos).symm]
  simp_rw [domDomCongr_apply, compContinuousLinearMap_apply, ContinuousLinearMap.proj_apply,
    Function.update_apply, (Equiv.injective _).eq_iff, ite_apply]
  congr; ext j
  obtain rfl | hj := eq_or_ne j i
  · rw [Function.update_self, if_pos rfl]
  · rw [Function.update_of_ne hj, if_neg hj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8298a49809df177c2399108cdc29aad29172c363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
