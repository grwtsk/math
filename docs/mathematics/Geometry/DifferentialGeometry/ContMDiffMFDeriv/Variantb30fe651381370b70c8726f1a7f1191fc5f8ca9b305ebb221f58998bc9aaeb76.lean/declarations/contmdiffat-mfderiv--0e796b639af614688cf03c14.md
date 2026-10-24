# ContMDiffAt.mfderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ba07e05f39d0f635cb34837afe54a28fd14fcab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f379ccf-ade6-a561-4f90-041d08132e36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3443481-5a05-7f7e-d4a2-12a3de329be6",
  "kind": "theorem",
  "lexical_name": "ContMDiffAt.mfderiv",
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
  "slug": "contmdiffat-mfderiv--0e796b639af614688cf03c14",
  "source": {
    "blob": "3ba07e05f39d0f635cb34837afe54a28fd14fcab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 78,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e796b639af614688cf03c141f028443026f82a561cd25967449319f553093a3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3443481-5a05-7f7e-d4a2-12a3de329be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ContMDiffAt.mfderiv {x₀ : N} (f : N → M → M') (g : N → M)
    (hf : ContMDiffAt (J.prod I) I' n (Function.uncurry f) (x₀, g x₀)) (hg : ContMDiffAt J I m g x₀)
    (hmn : m + 1 ≤ n) :
    ContMDiffAt J 𝓘(𝕜, E →L[𝕜] E') m
      (inTangentCoordinates I I' g (fun x => f x (g x)) (fun x => mfderiv I I' (f x) (g x)) x₀)
      x₀ := by
  have h4f : ContinuousAt (fun x => f x (g x)) x₀ :=
    ContinuousAt.comp_of_eq hf.continuousAt (continuousAt_id.prod hg.continuousAt) rfl
  have h4f := h4f.preimage_mem_nhds (extChartAt_source_mem_nhds I' (f x₀ (g x₀)))
  have h3f := contMDiffAt_iff_contMDiffAt_nhds.mp (hf.of_le <| (self_le_add_left 1 m).trans hmn)
  have h2f : ∀ᶠ x₂ in 𝓝 x₀, ContMDiffAt I I' 1 (f x₂) (g x₂) := by
    refine' ((continuousAt_id.prod hg.continuousAt).tendsto.eventually h3f).mono fun x hx => _
    exact hx.comp (g x) (contMDiffAt_const.prod_mk contMDiffAt_id)
  have h2g := hg.continuousAt.preimage_mem_nhds (extChartAt_source_mem_nhds I (g x₀))
  have :
    ContDiffWithinAt 𝕜 m
      (fun x =>
        fderivWithin 𝕜
          (extChartAt I' (f x₀ (g x₀)) ∘ f ((extChartAt J x₀).symm x) ∘ (extChartAt I (g x₀)).symm)
          (range I) (extChartAt I (g x₀) (g ((extChartAt J x₀).symm x))))
      (range J) (extChartAt J x₀ x₀) := by
    rw [contMDiffAt_iff] at hf hg
    simp_rw [Function.comp, uncurry, extChartAt_prod, LocalEquiv.prod_coe_symm,
      ModelWithCorners.range_prod] at hf ⊢
    refine' ContDiffWithinAt.fderivWithin _ hg.2 I.unique_diff hmn (mem_range_self _) _
    · simp_rw [extChartAt_to_inv]; exact hf.2
    · rw [← image_subset_iff]
      rintro _ ⟨x, -, rfl⟩
      exact mem_range_self _
  have :
    ContMDiffAt J 𝓘(𝕜, E →L[𝕜] E') m
      (fun x =>
        fderivWithin 𝕜 (extChartAt I' (f x₀ (g x₀)) ∘ f x ∘ (extChartAt I (g x₀)).symm) (range I)
          (extChartAt I (g x₀) (g x)))
      x₀ := by
    simp_rw [contMDiffAt_iff_source_of_mem_source (mem_chart_source G x₀),
      contMDiffWithinAt_iff_contDiffWithinAt, Function.comp]
    exact this
  have :
    ContMDiffAt J 𝓘(𝕜, E →L[𝕜] E') m
      (fun x =>
        fderivWithin 𝕜
          (extChartAt I' (f x₀ (g x₀)) ∘
            (extChartAt I' (f x (g x))).symm ∘
              writtenInExtChartAt I I' (g x) (f x) ∘
                extChartAt I (g x) ∘ (extChartAt I (g x₀)).symm)
          (range I) (extChartAt I (g x₀) (g x))) x₀ := by
    refine' this.congr_of_eventuallyEq _
    filter_upwards [h2g, h2f]
    intro x₂ hx₂ h2x₂
    have :
        ∀ x ∈ (extChartAt I (g x₀)).symm ⁻¹' (extChartAt I (g x₂)).source ∩
          (extChartAt I (g x₀)).symm ⁻¹' (f x₂ ⁻¹' (extChartAt I' (f x₂ (g x₂))).source),
          (extChartAt I' (f x₀ (g x₀)) ∘ (extChartAt I' (f x₂ (g x₂))).symm ∘
            writtenInExtChartAt I I' (g x₂) (f x₂) ∘ extChartAt I (g x₂) ∘
            (extChartAt I (g x₀)).symm) x =
          extChartAt I' (f x₀ (g x₀)) (f x₂ ((extChartAt I (g x₀)).symm x)) := by
      rintro x ⟨hx, h2x⟩
      simp_rw [writtenInExtChartAt, Function.comp_apply]
      rw [(extChartAt I (g x₂)).left_inv hx, (extChartAt I' (f x₂ (g x₂))).left_inv h2x]
    refine' Filter.EventuallyEq.fderivWithin_eq_nhds _
    refine' eventually_of_mem (inter_mem _ _) this
    · exact extChartAt_preimage_mem_nhds' _ _ hx₂ (extChartAt_source_mem_nhds I (g x₂))
    refine' extChartAt_preimage_mem_nhds' _ _ hx₂ _
    exact h2x₂.continuousAt.preimage_mem_nhds (extChartAt_source_mem_nhds _ _)
  /- The conclusion is equal to the following, when unfolding coord_change of
      `tangentBundleCore` -/
  -- Porting note: added
  letI _inst : ∀ x, NormedAddCommGroup (TangentSpace I (g x)) :=
    fun _ => inferInstanceAs (NormedAddCommGroup E)
  letI _inst : ∀ x, NormedSpace 𝕜 (TangentSpace I (g x)) :=
    fun _ => inferInstanceAs (NormedSpace 𝕜 E)
  have :
    ContMDiffAt J 𝓘(𝕜, E →L[𝕜] E') m
      (fun x =>
        (fderivWithin 𝕜 (extChartAt I' (f x₀ (g x₀)) ∘ (extChartAt I' (f x (g x))).symm) (range I')
              (extChartAt I' (f x (g x)) (f x (g x)))).comp
          ((mfderiv I I' (f x) (g x)).comp
            (fderivWithin 𝕜 (extChartAt I (g x) ∘ (extChartAt I (g x₀)).symm) (range I)
              (extChartAt I (g x₀) (g x))))) x₀ := by
    refine' this.congr_of_eventuallyEq _
    filter_upwards [h2g, h2f, h4f]
    intro x₂ hx₂ h2x₂ h3x₂
    symm
    rw [(h2x₂.mdifferentiableAt le_rfl).mfderiv]
    have hI := (contDiffWithinAt_ext_coord_change I (g x₂) (g x₀) <|
      LocalEquiv.mem_symm_trans_source _ hx₂ <|
        mem_extChartAt_source I (g x₂)).differentiableWithinAt le_top
    have hI' :=
      (contDiffWithinAt_ext_coord_change I' (f x₀ (g x₀)) (f x₂ (g x₂)) <|
            LocalEquiv.mem_symm_trans_source _ (mem_extChartAt_source I' (f x₂ (g x₂)))
              h3x₂).differentiableWithinAt le_top
    have h3f := (h2x₂.mdifferentiableAt le_rfl).2
    refine' fderivWithin.comp₃ _ hI' h3f hI _ _ _ _ (I.unique_diff _ <| mem_range_self _)
    · exact fun x _ => mem_range_self _
    · exact fun x _ => mem_range_self _
    · simp_rw [writtenInExtChartAt, Function.comp_apply,
        (extChartAt I (g x₂)).left_inv (mem_extChartAt_source I (g x₂))]
    · simp_rw [Function.comp_apply, (extChartAt I (g x₀)).left_inv hx₂]
  refine' this.congr_of_eventuallyEq _
  filter_upwards [h2g, h4f] with x hx h2x
  rw [inTangentCoordinates_eq]
  · rfl
  · rwa [extChartAt_source] at hx
  · rwa [extChartAt_source] at h2x
#align cont_mdiff_at.mfderiv ContMDiffAt.mfderiv

/-- The derivative `D_yf(y)` is `C^m` at `x₀`, where the derivative is taken as a continuous
linear map. We have to assume that `f` is `C^n` at `x₀` for some `n ≥ m + 1`.
We have to insert a coordinate change from `x₀` to `x` to make the derivative sensible.
This is a special case of `ContMDiffAt.mfderiv` where `f` does not contain any parameters and
`g = id`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ba07e05f39d0f635cb34837afe54a28fd14fcab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
