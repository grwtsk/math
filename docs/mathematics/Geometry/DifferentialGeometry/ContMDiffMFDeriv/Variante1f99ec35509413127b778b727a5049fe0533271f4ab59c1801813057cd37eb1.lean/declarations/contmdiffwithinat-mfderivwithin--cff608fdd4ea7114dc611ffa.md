# ContMDiffWithinAt.mfderivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75a7987c-f3e8-e48d-a414-e268c064d60c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:881cae67-7b1b-2c3a-ea27-2a094a3edd36",
  "kind": "theorem",
  "lexical_name": "ContMDiffWithinAt.mfderivWithin",
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
  "slug": "contmdiffwithinat-mfderivwithin--cff608fdd4ea7114dc611ffa",
  "source": {
    "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 66,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cff608fdd4ea7114dc611ffa981b063dbf0dd0dd9cc2a30f0c9f0a341d319692",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:881cae67-7b1b-2c3a-ea27-2a094a3edd36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ContMDiffWithinAt.mfderivWithin {x₀ : N} {f : N → M → M'} {g : N → M}
    {t : Set N} {u : Set M}
    (hf : ContMDiffWithinAt (J.prod I) I' n (Function.uncurry f) (t ×ˢ u) (x₀, g x₀))
    (hg : ContMDiffWithinAt J I m g t x₀) (hx₀ : x₀ ∈ t)
    (hu : MapsTo g t u) (hmn : m + 1 ≤ n) (h'u : UniqueMDiffOn I u) :
    ContMDiffWithinAt J 𝓘(𝕜, E →L[𝕜] E') m
      (inTangentCoordinates I I' g (fun x => f x (g x))
        (fun x => mfderivWithin I I' (f x) u (g x)) x₀) t x₀ := by
  -- first localize the result to a smaller set, to make sure everything happens in chart domains
  let t' := t ∩ g ⁻¹' ((extChartAt I (g x₀)).source)
  have ht't : t' ⊆ t := inter_subset_left
  suffices ContMDiffWithinAt J 𝓘(𝕜, E →L[𝕜] E') m
      (inTangentCoordinates I I' g (fun x ↦ f x (g x))
        (fun x ↦ mfderivWithin I I' (f x) u (g x)) x₀) t' x₀ by
    apply ContMDiffWithinAt.mono_of_mem_nhdsWithin this
    apply inter_mem self_mem_nhdsWithin
    exact hg.continuousWithinAt.preimage_mem_nhdsWithin (extChartAt_source_mem_nhds (g x₀))
  -- register a few basic facts that maps send suitable neighborhoods to suitable neighborhoods,
  -- by continuity
  have hx₀gx₀ : (x₀, g x₀) ∈ t ×ˢ u := by simp [hx₀, hu hx₀]
  have h4f : ContinuousWithinAt (fun x => f x (g x)) t x₀ := by
    change ContinuousWithinAt ((Function.uncurry f) ∘ (fun x ↦ (x, g x))) t x₀
    refine ContinuousWithinAt.comp hf.continuousWithinAt ?_ (fun y hy ↦ by simp [hy, hu hy])
    exact (continuousWithinAt_id.prodMk hg.continuousWithinAt)
  have h4f := h4f.preimage_mem_nhdsWithin (extChartAt_source_mem_nhds (I := I') (f x₀ (g x₀)))
  have h3f := (contMDiffWithinAt_iff_contMDiffWithinAt_nhdsWithin (by simp)).mp
    (hf.of_le <| (self_le_add_left 1 m).trans hmn)
  simp only [Nat.cast_one, hx₀gx₀, insert_eq_of_mem] at h3f
  have h2f : ∀ᶠ x₂ in 𝓝[t] x₀, ContMDiffWithinAt I I' 1 (f x₂) u (g x₂) := by
    have : MapsTo (fun x ↦ (x, g x)) t (t ×ˢ u) := fun y hy ↦ by simp [hy, hu hy]
    filter_upwards [((continuousWithinAt_id.prodMk hg.continuousWithinAt)
      |>.tendsto_nhdsWithin this).eventually h3f, self_mem_nhdsWithin] with x hx h'x
    apply hx.comp (g x) (contMDiffWithinAt_const.prodMk contMDiffWithinAt_id)
    exact fun y hy ↦ by simp [h'x, hy]
  have h2g : g ⁻¹' (extChartAt I (g x₀)).source ∈ 𝓝[t] x₀ :=
    hg.continuousWithinAt.preimage_mem_nhdsWithin (extChartAt_source_mem_nhds (g x₀))
  -- key point: the derivative of `f` composed with extended charts, at the point `g x` read in the
  -- chart, is `C^n` in the vector space sense. This follows from `ContDiffWithinAt.fderivWithin`,
  -- which is the vector space analogue of the result we are proving.
  have : ContDiffWithinAt 𝕜 m (fun x ↦ fderivWithin 𝕜
        (extChartAt I' (f x₀ (g x₀)) ∘ f ((extChartAt J x₀).symm x) ∘ (extChartAt I (g x₀)).symm)
        ((extChartAt I (g x₀)).target ∩ (extChartAt I (g x₀)).symm ⁻¹' u)
        (extChartAt I (g x₀) (g ((extChartAt J x₀).symm x))))
      ((extChartAt J x₀).symm ⁻¹' t' ∩ range J) (extChartAt J x₀ x₀) := by
    have hf' := hf.mono (prod_mono_left ht't)
    have hg' := hg.mono (show t' ⊆ t from inter_subset_left)
    rw [contMDiffWithinAt_iff] at hf' hg'
    simp_rw [Function.comp_def, uncurry, extChartAt_prod, PartialEquiv.prod_coe_symm,
      ModelWithCorners.range_prod] at hf' ⊢
    apply ContDiffWithinAt.fderivWithin _ _ _ (show (m : WithTop ℕ∞) + 1 ≤ n from mod_cast hmn )
    · simp [hx₀, t']
    · apply inter_subset_left.trans
      rw [preimage_subset_iff]
      intro a ha
      refine ⟨PartialEquiv.map_source _ (inter_subset_right ha :), ?_⟩
      rw [mem_preimage, PartialEquiv.left_inv (extChartAt I (g x₀))]
      · exact hu (inter_subset_left ha)
      · exact (inter_subset_right ha :)
    · have : ((fun p ↦ ((extChartAt J x₀).symm p.1, (extChartAt I (g x₀)).symm p.2)) ⁻¹' t' ×ˢ u
            ∩ range J ×ˢ (extChartAt I (g x₀)).target)
          ⊆ ((fun p ↦ ((extChartAt J x₀).symm p.1, (extChartAt I (g x₀)).symm p.2)) ⁻¹' t' ×ˢ u
            ∩ range J ×ˢ range I) := by
        apply inter_subset_inter_right
        exact Set.prod_mono_right (extChartAt_target_subset_range (g x₀))
      convert hf'.2.mono this
      · ext y; simp; tauto
      · simp
    · exact hg'.2
    · exact UniqueMDiffOn.uniqueDiffOn_target_inter h'u (g x₀)
  -- reformulate the previous point as `C^n` in the manifold sense (but still for a map between
  -- vector spaces)
  have :
    ContMDiffWithinAt J 𝓘(𝕜, E →L[𝕜] E') m
      (fun x =>
        fderivWithin 𝕜 (extChartAt I' (f x₀ (g x₀)) ∘ f x ∘ (extChartAt I (g x₀)).symm)
        ((extChartAt I (g x₀)).target ∩ (extChartAt I (g x₀)).symm ⁻¹' u)
          (extChartAt I (g x₀) (g x))) t' x₀ := by
    simp_rw [contMDiffWithinAt_iff_source (x := x₀),
      contMDiffWithinAt_iff_contDiffWithinAt, Function.comp_def]
    exact this
  -- finally, argue that the map we control in the previous point coincides locally with the map we
  -- want to prove the regularity of, so regularity of the latter follows from regularity of the
  -- former.
  apply this.congr_of_eventuallyEq_of_mem _ (by simp [t', hx₀])
  apply nhdsWithin_mono _ ht't
  filter_upwards [h2f, h4f, h2g, self_mem_nhdsWithin] with x hx h'x h2 hxt
  have h1 : g x ∈ u := hu hxt
  have h3 : UniqueMDiffWithinAt 𝓘(𝕜, E)
      ((extChartAt I (g x₀)).target ∩ (extChartAt I (g x₀)).symm ⁻¹' u)
      ((extChartAt I (g x₀)) (g x)) := by
    apply UniqueDiffWithinAt.uniqueMDiffWithinAt
    apply UniqueMDiffOn.uniqueDiffOn_target_inter h'u
    refine ⟨PartialEquiv.map_source _ h2, ?_⟩
    rwa [mem_preimage, PartialEquiv.left_inv _ h2]
  have A : mfderivWithin 𝓘(𝕜, E) I ((extChartAt I (g x₀)).symm)
        (range I) ((extChartAt I (g x₀)) (g x))
      = mfderivWithin 𝓘(𝕜, E) I ((extChartAt I (g x₀)).symm)
        ((extChartAt I (g x₀)).target ∩ (extChartAt I (g x₀)).symm ⁻¹' u)
        ((extChartAt I (g x₀)) (g x)) := by
    apply (MDifferentiableWithinAt.mfderivWithin_mono _ h3 _).symm
    · apply mdifferentiableWithinAt_extChartAt_symm
      exact PartialEquiv.map_source (extChartAt I (g x₀)) h2
    · exact inter_subset_left.trans (extChartAt_target_subset_range (g x₀))
  rw [inTangentCoordinates_eq_mfderiv_comp, A,
    ← mfderivWithin_comp_of_eq, ← mfderiv_comp_mfderivWithin_of_eq]
  · exact mfderivWithin_eq_fderivWithin
  · exact mdifferentiableAt_extChartAt (by simpa using h'x)
  · apply MDifferentiableWithinAt.comp (I' := I) (u := u) _ _ _ inter_subset_right
    · convert hx.mdifferentiableWithinAt le_rfl
      exact PartialEquiv.left_inv (extChartAt I (g x₀)) h2
    · apply (mdifferentiableWithinAt_extChartAt_symm _).mono
      · exact inter_subset_left.trans (extChartAt_target_subset_range (g x₀))
      · exact PartialEquiv.map_source (extChartAt I (g x₀)) h2
  · exact h3
  · simp only [Function.comp_def, PartialEquiv.left_inv (extChartAt I (g x₀)) h2]
  · exact hx.mdifferentiableWithinAt le_rfl
  · apply (mdifferentiableWithinAt_extChartAt_symm _).mono
    · exact inter_subset_left.trans (extChartAt_target_subset_range (g x₀))
    · exact PartialEquiv.map_source (extChartAt I (g x₀)) h2
  · exact inter_subset_right
  · exact h3
  · exact PartialEquiv.left_inv (extChartAt I (g x₀)) h2
  · simpa using h2
  · simpa using h'x

/-- The derivative `D_yf(y)` is `C^m` at `x₀`, where the derivative is taken as a continuous
linear map. We have to assume that `f` is `C^n` at `x₀` for some `n ≥ m + 1`.
We have to insert a coordinate change from `x₀` to `x` to make the derivative sensible.
This is a special case of `ContMDiffWithinAt.mfderivWithin` where `f` does not contain any
parameters and `g = id`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559d4d74dc5cc61540c8e679e6929a4787b6f381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
