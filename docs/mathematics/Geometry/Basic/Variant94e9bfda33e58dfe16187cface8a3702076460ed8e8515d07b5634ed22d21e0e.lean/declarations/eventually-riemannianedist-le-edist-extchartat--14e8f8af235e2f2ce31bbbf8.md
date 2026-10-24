# eventually_riemannianEDist_le_edist_extChartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7756ee06d680a2cb53d78d4399be69426dfe4785",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:104adaf1-9ac8-0da8-03e4-06df4de29051",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5404a543-711b-4e93-885a-c1f5fe04c212",
  "kind": "lemma",
  "lexical_name": "eventually_riemannianEDist_le_edist_extChartAt",
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
  "slug": "eventually-riemannianedist-le-edist-extchartat--14e8f8af235e2f2ce31bbbf8",
  "source": {
    "blob": "7756ee06d680a2cb53d78d4399be69426dfe4785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 305,
    "path": "GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14e8f8af235e2f2ce31bbbf8843143dc6c2fe77fde86257116f4dfb81c19e888",
  "verification": {
    "reference": "docs/verification/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5404a543-711b-4e93-885a-c1f5fe04c212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_riemannianEDist_le_edist_extChartAt (x : M) :
    ∃ C > (0 : ℝ≥0), ∀ᶠ y in 𝓝 x,
    riemannianEDist I x y ≤ C * edist (extChartAt I x x) (extChartAt I x y) := by
  /- To construct a path with controlled distance from `x` to `y`, we consider the segment from
  `extChartAt x x` to `extChartAt x y` in the chart, and we push it by `(extChartAt x).symm`. As
  the derivative of the latter is locally bounded, this only multiplies the length by a bounded
  amount. -/
  -- first start from a bound on the derivative
  rcases eventually_enorm_mfderivWithin_symm_extChartAt_lt I x with ⟨C, C_pos, hC⟩
  refine ⟨C, C_pos, ?_⟩
  -- consider a small convex set around `extChartAt x x` where everything is controlled.
  obtain ⟨r, r_pos, hr⟩ : ∃ r > 0,
      ball (extChartAt I x x) r ∩ range I ⊆ (extChartAt I x).target ∩
        {y | ‖mfderiv[range I] (extChartAt I x).symm y‖ₑ < C} :=
    mem_nhdsWithin_iff.1 (inter_mem (extChartAt_target_mem_nhdsWithin x) hC)
  -- pull this set inside `M`: this is the set where we will get the estimate.
  have A : (extChartAt I x) ⁻¹' (ball (extChartAt I x x) r ∩ range I) ∈ 𝓝 x := by
    apply extChartAt_preimage_mem_nhds_of_mem_nhdsWithin (by simp)
    rw [inter_comm]
    exact inter_mem_nhdsWithin _ (ball_mem_nhds _ r_pos)
  -- consider `y` in this good set. Let `η` be the segment in the extended chart, and
  -- `γ` its composition with `(extChartAt x).symm`.
  filter_upwards [A, chart_source_mem_nhds H x] with y hy h'y
  let η := ContinuousAffineMap.lineMap (R := ℝ) (extChartAt I x x) (extChartAt I x y)
  set γ := (extChartAt I x).symm ∘ η
  -- by convexity, the whole segment between `extChartAt x x` and `extChartAt x y` is in the
  -- controlled set.
  have hη : Icc 0 1 ⊆ ⇑η ⁻¹' ((extChartAt I x).target ∩
        {y | ‖mfderiv[range I] (extChartAt I x).symm y‖ₑ < C}) := by
    simp only [← image_subset_iff, ContinuousAffineMap.coe_lineMap_eq,
     ← segment_eq_image_lineMap, η]
    apply Subset.trans _ hr
    exact ((convex_ball _ _).inter I.convex_range).segment_subset (by simp [r_pos]) hy
  simp only [preimage_inter, subset_inter_iff] at hη
  have η_smooth : CMDiff[Icc 0 1] 1 η := by
    apply ContMDiff.contMDiffOn
    rw [contMDiff_iff_contDiff]
    exact ContinuousAffineMap.contDiff _
  -- we can bound the Riemannian distance using the specific path `γ`.
  have : riemannianEDist I x y ≤ pathELength I γ 0 1 := by
    apply riemannianEDist_le_pathELength _ _ _ zero_le_one
    · exact (contMDiffOn_extChartAt_symm x).comp η_smooth hη.1
    · simp [γ, η, ContinuousAffineMap.coe_lineMap_eq]
    · simp [γ, η, ContinuousAffineMap.coe_lineMap_eq, h'y]
  apply this.trans
  -- Finally, we control the length of `γ` thanks to the boundedness of the derivative of
  -- `(extChartAt x).symm` on the whole controlled set.
  rw [← lintegral_fderiv_lineMap_eq_edist, pathELength_eq_lintegral_mfderivWithin_Icc,
    ← lintegral_const_mul' _ _ ENNReal.coe_ne_top]
  apply setLIntegral_mono' measurableSet_Icc (fun t ht ↦ ?_)
  have : mfderiv[Icc 0 1] γ t =
      (mfderiv[range I] (extChartAt I x).symm (η t)) ∘L (mfderiv[Icc 0 1] η t) := by
    apply mfderivWithin_comp
    · exact mdifferentiableWithinAt_extChartAt_symm (hη.1 ht)
    · exact η_smooth.mdifferentiableOn one_ne_zero t ht
    · exact hη.1.trans (preimage_mono (extChartAt_target_subset_range x))
    · rw [uniqueMDiffWithinAt_iff_uniqueDiffWithinAt]
      exact uniqueDiffOn_Icc zero_lt_one t ht
  have : mfderiv[Icc 0 1] γ t 1 =
      (mfderiv[range I] (extChartAt I x).symm (η t)) (mfderiv[Icc 0 1] η t 1) := congr($this 1)
  rw [this]
  apply (ContinuousLinearMap.le_opENorm _ _).trans
  gcongr
  · exact (hη.2 ht).le
  · simp only [mfderivWithin_eq_fderivWithin]
    exact le_of_eq rfl

/-- If points are close for the topology, then their Riemannian distance is small. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7756ee06d680a2cb53d78d4399be69426dfe4785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
