# mpullbackWithin_mlieBracketWithin_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1be8b63db73d21e9a34ba421d3fea814566239d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f998d8a4-cd74-e897-1982-c1cdd5984e6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:428075a8-493b-822e-fe96-e3d01229bad2",
  "kind": "lemma",
  "lexical_name": "mpullbackWithin_mlieBracketWithin_aux",
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
  "slug": "mpullbackwithin-mliebracketwithin-aux--05cad191480a264a292ba48c",
  "source": {
    "blob": "d1be8b63db73d21e9a34ba421d3fea814566239d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 420,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05cad191480a264a292ba48c24bf0451b260113ebdbf7f5fcaa67c3b18929ed1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:428075a8-493b-822e-fe96-e3d01229bad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mpullbackWithin_mlieBracketWithin_aux [CompleteSpace E']
    {f : M → M'} {V W : Π (x : M'), TangentSpace I' x} {x₀ : M} {s : Set M} {t : Set M'}
    (hV : MDifferentiableWithinAt I' I'.tangent (fun x ↦ (V x : TangentBundle I' M')) t (f x₀))
    (hW : MDifferentiableWithinAt I' I'.tangent (fun x ↦ (W x : TangentBundle I' M')) t (f x₀))
    (hu : UniqueMDiffOn I s) (hf : ContMDiffOn I I' 2 f s) (hx₀ : x₀ ∈ s)
    (ht : t ⊆ (extChartAt I' (f x₀)).source) (hst : MapsTo f s t)
    (hsymm : IsSymmSndFDerivWithinAt 𝕜 ((extChartAt I' (f x₀)) ∘ f ∘ (extChartAt I x₀).symm)
      ((extChartAt I x₀).symm ⁻¹' s ∩ range I) (extChartAt I x₀ x₀)) :
    mpullbackWithin I I' f (mlieBracketWithin I' V W t) s x₀ =
      mlieBracketWithin I (mpullbackWithin I I' f V s) (mpullbackWithin I I' f W s) s x₀ := by
  have A : (extChartAt I x₀).symm (extChartAt I x₀ x₀) = x₀ := by simp
  have A' : x₀ = (extChartAt I x₀).symm (extChartAt I x₀ x₀) := by simp
  have h'f : MDifferentiableWithinAt I I' f s x₀ := (hf x₀ hx₀).mdifferentiableWithinAt one_le_two
  simp only [mlieBracketWithin_apply, mpullbackWithin_apply]
  -- first, rewrite the pullback of the Lie bracket as a pullback in `E` under the map
  -- `F = extChartAt I' (f x₀) ∘ f ∘ (extChartAt I x₀).symm` of a Lie bracket computed in `E'`,
  -- of two vector fields `V'` and `W'`.
  rw [← ContinuousLinearMap.IsInvertible.inverse_comp_apply_of_left
    (isInvertible_mfderiv_extChartAt (mem_extChartAt_source (f x₀)))]
  rw [← mfderiv_comp_mfderivWithin _ (mdifferentiableAt_extChartAt
    (ChartedSpace.mem_chart_source (f x₀))) h'f (hu x₀ hx₀)]
  rw [eq_comm, (isInvertible_mfderiv_extChartAt (mem_extChartAt_source x₀)).inverse_apply_eq]
  have : (mfderivWithin 𝓘(𝕜, E) I (extChartAt I x₀).symm (range I) (extChartAt I x₀ x₀)).inverse =
      mfderiv I 𝓘(𝕜, E) (extChartAt I x₀) x₀ := by
    apply ContinuousLinearMap.inverse_eq
    · convert mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt (I := I) (x := x₀)
        (y := extChartAt I x₀ x₀) (by simp)
    · convert mfderiv_extChartAt_comp_mfderivWithin_extChartAt_symm (I := I) (x := x₀)
        (y := extChartAt I x₀ x₀) (by simp)
  rw [← this, ← ContinuousLinearMap.IsInvertible.inverse_comp_apply_of_right]; swap
  · exact isInvertible_mfderivWithin_extChartAt_symm (mem_extChartAt_target x₀)
  have : mfderivWithin 𝓘(𝕜, E) I (extChartAt I x₀).symm (range I) (extChartAt I x₀ x₀) =
      mfderivWithin 𝓘(𝕜, E) I (extChartAt I x₀).symm ((extChartAt I x₀).symm ⁻¹' s ∩ range I)
      (extChartAt I x₀ x₀) :=
    (MDifferentiableWithinAt.mfderivWithin_mono
      (mdifferentiableWithinAt_extChartAt_symm (mem_extChartAt_target x₀))
      (UniqueDiffWithinAt.uniqueMDiffWithinAt (hu x₀ hx₀)) inter_subset_right).symm
  rw [this]; clear this
  rw [← mfderivWithin_comp_of_eq]; rotate_left
  · apply MDifferentiableAt.comp_mdifferentiableWithinAt (I' := I') _ _ h'f
    exact mdifferentiableAt_extChartAt (ChartedSpace.mem_chart_source (f x₀))
  · exact (mdifferentiableWithinAt_extChartAt_symm (mem_extChartAt_target x₀)).mono
      inter_subset_right
  · exact inter_subset_left
  · exact UniqueDiffWithinAt.uniqueMDiffWithinAt (hu x₀ hx₀)
  · simp
  set V' := mpullbackWithin 𝓘(𝕜, E') I' (extChartAt I' (f x₀)).symm V (range I') with hV'
  set W' := mpullbackWithin 𝓘(𝕜, E') I' (extChartAt I' (f x₀)).symm W (range I') with hW'
  set F := ((extChartAt I' (f x₀)) ∘ f) ∘ ↑(extChartAt I x₀).symm with hF
  have hFx₀ : extChartAt I' (f x₀) (f x₀) = F (extChartAt I x₀ x₀) := by simp [F]
  rw [hFx₀, ← mpullbackWithin_apply]
  -- second rewrite, the Lie bracket of the pullback as the Lie bracket of the pullback of the
  -- vector fields `V'` and `W'` in `E'`.
  have P (Y : (x : M') → TangentSpace I' x) :
      (mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x₀).symm (mpullbackWithin I I' f Y s)
      (range I)) =ᶠ[𝓝[(extChartAt I x₀).symm ⁻¹' s ∩ range I] (extChartAt I x₀ x₀)]
        mpullbackWithin 𝓘(𝕜, E) 𝓘(𝕜, E') F
          (mpullbackWithin 𝓘(𝕜, E') I' ((extChartAt I' (f x₀)).symm) Y (range I'))
          ((extChartAt I x₀).symm ⁻¹' s ∩ range I) := by
    have : (extChartAt I x₀).target
        ∈ 𝓝[(extChartAt I x₀).symm ⁻¹' s ∩ range I] (extChartAt I x₀ x₀) :=
      nhdsWithin_mono _ inter_subset_right (extChartAt_target_mem_nhdsWithin x₀)
    filter_upwards [self_mem_nhdsWithin, this] with y hy h'''y
    have h'y : f ((extChartAt I x₀).symm y) ∈ (extChartAt I' (f x₀)).source := ht (hst hy.1)
    have h''y : f ((extChartAt I x₀).symm y) ∈ (chartAt H' (f x₀)).source := by simpa using h'y
    have huy : UniqueMDiffWithinAt 𝓘(𝕜, E) ((extChartAt I x₀).symm ⁻¹' s ∩ range I) y := by
      apply UniqueDiffWithinAt.uniqueMDiffWithinAt
      rw [inter_comm]
      apply hu.uniqueDiffWithinAt_range_inter
      exact ⟨h'''y, hy.1⟩
    simp only [mpullbackWithin_apply, hF, comp_apply, ← mfderivWithin_eq_fderivWithin]
    rw [mfderivWithin_comp (I' := I) (u := s)]; rotate_left
    · apply (mdifferentiableAt_extChartAt h''y).comp_mdifferentiableWithinAt (I' := I')
      exact (hf _ hy.1).mdifferentiableWithinAt one_le_two
    · exact (mdifferentiableWithinAt_extChartAt_symm h'''y).mono inter_subset_right
    · exact inter_subset_left
    · exact huy
    rw [mfderiv_comp_mfderivWithin (I' := I')]; rotate_left
    · exact mdifferentiableAt_extChartAt h''y
    · exact (hf _ hy.1).mdifferentiableWithinAt one_le_two
    · exact hu _ hy.1
    rw [← ContinuousLinearMap.IsInvertible.inverse_comp_apply_of_right]; swap
    · exact isInvertible_mfderivWithin_extChartAt_symm h'''y
    rw [← ContinuousLinearMap.IsInvertible.inverse_comp_apply_of_left]; swap
    · exact isInvertible_mfderivWithin_extChartAt_symm (PartialEquiv.map_source _ h'y)
    have : f ((extChartAt I x₀).symm y)
        = (extChartAt I' (f x₀)).symm ((extChartAt I' (f x₀)) (f ((extChartAt I x₀).symm y))) :=
      (PartialEquiv.left_inv (extChartAt I' (f x₀)) h'y).symm
    congr 2
    have : (mfderivWithin 𝓘(𝕜, E') I' ((extChartAt I' (f x₀)).symm) (range I')
        (extChartAt I' (f x₀) (f ((extChartAt I x₀).symm y)))) ∘L
        (mfderiv I' 𝓘(𝕜, E') (↑(extChartAt I' (f x₀))) (f ((extChartAt I x₀).symm y))) =
        ContinuousLinearMap.id _ _ := by
      convert mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt
        ((PartialEquiv.map_source _ h'y))
    simp only [← ContinuousLinearMap.comp_assoc, this, ContinuousLinearMap.id_comp]
    congr 1
    exact ((mdifferentiableWithinAt_extChartAt_symm h'''y).mfderivWithin_mono huy
      inter_subset_right).symm
  rw [Filter.EventuallyEq.lieBracketWithin_vectorField_eq_of_mem (P V) (P W) (by simp [hx₀]),
    ← hV', ← hW']
  simp only [mpullbackWithin_eq_pullbackWithin]
  -- finally, use the fact that for `C^2` maps between vector spaces with symmetric second
  -- derivative, the pullback and the Lie bracket commute.
  rw [pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt_of_eventuallyEq
      (u := (extChartAt I x₀).symm ⁻¹' s ∩ (extChartAt I x₀).target)]
  · exact hsymm
  · rw [hF, comp_assoc]
    apply ContMDiffWithinAt.contDiffWithinAt
    apply ContMDiffAt.comp_contMDiffWithinAt (I' := I')
    · exact contMDiffAt_extChartAt' (by simp)
    apply ContMDiffWithinAt.comp_of_eq (I' := I) (hf _ hx₀) _ _ A
    · exact (contMDiffWithinAt_extChartAt_symm_range _ (mem_extChartAt_target x₀)).mono
        inter_subset_right
    · exact (mapsTo_preimage _ _).mono_left inter_subset_left
  · rw [← hFx₀]
    exact hV.differentiableWithinAt_mpullbackWithin_vectorField
  · rw [← hFx₀]
    exact hW.differentiableWithinAt_mpullbackWithin_vectorField
  · rw [inter_comm]
    exact UniqueMDiffOn.uniqueDiffOn_target_inter hu x₀
  · simp [hx₀]
  · intro z hz
    simp only [comp_apply, mem_inter_iff, mem_preimage, mem_range, F]
    refine ⟨?_, mem_range_self _⟩
    convert hst hz.1
    exact PartialEquiv.left_inv (extChartAt I' (f x₀)) (ht (hst hz.1))
  · rw [← nhdsWithin_eq_iff_eventuallyEq]
    apply le_antisymm
    · exact nhdsWithin_mono _ (inter_subset_inter_right _ (extChartAt_target_subset_range x₀))
    · rw [nhdsWithin_le_iff, nhdsWithin_inter]
      exact Filter.inter_mem_inf self_mem_nhdsWithin (extChartAt_target_mem_nhdsWithin x₀)

/- The Lie bracket of vector fields on manifolds is well defined, i.e., it is invariant under
diffeomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1be8b63db73d21e9a34ba421d3fea814566239d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
