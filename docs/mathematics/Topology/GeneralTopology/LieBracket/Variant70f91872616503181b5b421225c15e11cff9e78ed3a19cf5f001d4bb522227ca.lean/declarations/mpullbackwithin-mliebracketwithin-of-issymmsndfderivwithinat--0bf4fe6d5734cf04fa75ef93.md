# mpullbackWithin_mlieBracketWithin_of_isSymmSndFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96c33e2c-1fdb-eeb9-5ddb-23d6cf1d5190",
  "kind": "lemma",
  "lexical_name": "mpullbackWithin_mlieBracketWithin_of_isSymmSndFDerivWithinAt",
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
  "slug": "mpullbackwithin-mliebracketwithin-of-issymmsndfderivwithinat--0bf4fe6d5734cf04fa75ef93",
  "source": {
    "blob": "47a65c06554bd39024cf3b6ee9e313519c95cab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 657,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bf4fe6d5734cf04fa75ef93e7a776dad7038c11a0cdb227f344498ed7b6d838",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96c33e2c-1fdb-eeb9-5ddb-23d6cf1d5190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mpullbackWithin_mlieBracketWithin_of_isSymmSndFDerivWithinAt
    {f : M → M'} {V W : Π (x : M'), TangentSpace I' x} {x₀ : M} {s : Set M} {t : Set M'}
    (hV : MDiffAt[t] (T% V) (f x₀)) (hW : MDiffAt[t] (T% W) (f x₀))
    (hu : UniqueMDiff[s]) (hf : CMDiffAt[s] 2 f x₀) (hx₀ : x₀ ∈ s)
    (hst : f ⁻¹' t ∈ 𝓝[s] x₀)
    (hsymm : IsSymmSndFDerivWithinAt 𝕜 ((extChartAt I' (f x₀)) ∘ f ∘ (extChartAt I x₀).symm)
      ((extChartAt I x₀).symm ⁻¹' s ∩ range I) (extChartAt I x₀ x₀)) :
    mpullbackWithin I I' f (mlieBracketWithin I' V W t) s x₀ =
      mlieBracketWithin I (mpullbackWithin I I' f V s) (mpullbackWithin I I' f W s) s x₀ := by
  have A : (extChartAt I x₀).symm (extChartAt I x₀ x₀) = x₀ := by simp
  by_cases hfi : (mfderiv[s] f x₀).IsInvertible; swap
  · simp only [mlieBracketWithin_apply, mpullbackWithin_apply,
      ContinuousLinearMap.inverse_of_not_isInvertible hfi, zero_apply]
    rw [lieBracketWithin_eq_zero_of_eq_zero]
    · simp [-extChartAt]
    · simp only [mpullbackWithin_apply]
      rw [A, ContinuousLinearMap.inverse_of_not_isInvertible hfi]
      simp [-extChartAt]
    · simp only [mpullbackWithin_apply]
      rw [A, ContinuousLinearMap.inverse_of_not_isInvertible hfi]
      simp [-extChartAt]
  -- Now, interesting case where the derivative of `f` is invertible
  have : CompleteSpace E' := by
    rcases hfi with ⟨M, -⟩
    let M' : E ≃L[𝕜] E' := M
    exact (completeSpace_congr (e := M'.toEquiv) M'.isUniformEmbedding).1 (by assumption)
  -- choose a small open set `v` around `x₀` where `f` is `C^2`
  obtain ⟨u, u_open, x₀u, ut, maps_u, u_smooth⟩ :
      ∃ u, IsOpen u ∧ x₀ ∈ u ∧ s ∩ u ⊆ f ⁻¹' t ∧
        s ∩ u ⊆ f ⁻¹' (extChartAt I' (f x₀)).source ∧ CMDiff[s ∩ u] 2 f := by
    obtain ⟨u, u_open, x₀u, hu⟩ : ∃ u, IsOpen u ∧ x₀ ∈ u ∧ CMDiff[insert x₀ s ∩ u] 2 f :=
      hf.contMDiffOn' le_rfl (by simp)
    have : f ⁻¹' (extChartAt I' (f x₀)).source ∈ 𝓝[s] x₀ :=
      hf.continuousWithinAt.preimage_mem_nhdsWithin (extChartAt_source_mem_nhds (f x₀))
    rcases mem_nhdsWithin.1 (Filter.inter_mem hst this) with ⟨w, w_open, x₀w, hw⟩
    refine ⟨u ∩ w, u_open.inter w_open, by simp [x₀u, x₀w], ?_, ?_, ?_⟩
    · apply Subset.trans _ (hw.trans inter_subset_left)
      exact fun y hy ↦ ⟨hy.2.2, hy.1⟩
    · apply Subset.trans _ (hw.trans inter_subset_right)
      exact fun y hy ↦ ⟨hy.2.2, hy.1⟩
    · apply hu.mono
      exact fun y hy ↦ ⟨subset_insert _ _ hy.1, hy.2.1⟩
  have u_mem : u ∈ 𝓝 x₀ := u_open.mem_nhds x₀u
  -- apply the auxiliary version to `s ∩ u`
  set s' := s ∩ u with hs'
  have s'_eq : s' =ᶠ[𝓝 x₀] s := by
    filter_upwards [u_mem] with y hy
    simp [hs', hy]
  set t' := t ∩ (extChartAt I' (f x₀)).source with ht'
  calc mpullbackWithin I I' f (mlieBracketWithin I' V W t) s x₀
  _ = mpullbackWithin I I' f (mlieBracketWithin I' V W t) s' x₀ := by
    simp only [mpullbackWithin, hs', mfderivWithin_inter u_mem]
  _ = mpullbackWithin I I' f (mlieBracketWithin I' V W t') s' x₀ := by
    simp only [mpullbackWithin, ht', mlieBracketWithin_inter (extChartAt_source_mem_nhds (f x₀))]
  _ = mlieBracketWithin I (mpullbackWithin I I' f V s') (mpullbackWithin I I' f W s') s' x₀ := by
    apply mpullbackWithin_mlieBracketWithin_aux (t := t') (hV.mono inter_subset_left)
      (hW.mono inter_subset_left) (hu.inter u_open) u_smooth ⟨hx₀, x₀u⟩ inter_subset_right
      (fun y hy ↦ ⟨ut hy, maps_u hy⟩)
    apply hsymm.congr_set
    have : (extChartAt I x₀).symm ⁻¹' u ∈ 𝓝 (extChartAt I x₀ x₀) := by
      apply (continuousAt_extChartAt_symm x₀).preimage_mem_nhds
      apply u_open.mem_nhds (by simpa using x₀u)
    filter_upwards [this] with y hy
    simp [-extChartAt, hy]
  _ = mlieBracketWithin I (mpullbackWithin I I' f V s') (mpullbackWithin I I' f W s') s x₀ := by
    simp only [hs', mlieBracketWithin_inter u_mem]
  _ = mlieBracketWithin I (mpullbackWithin I I' f V s) (mpullbackWithin I I' f W s) s x₀ := by
    apply Filter.EventuallyEq.mlieBracketWithin_vectorField_eq_of_mem _ _ hx₀
    · apply nhdsWithin_le_nhds
      filter_upwards [mfderivWithin_eventually_congr_set (I := I) (I' := I') (f := f) s'_eq]
        with y hy using by simp [mpullbackWithin, hy]
    · apply nhdsWithin_le_nhds
      filter_upwards [mfderivWithin_eventually_congr_set (I := I) (I' := I') (f := f) s'_eq]
        with y hy using by simp [mpullbackWithin, hy]

end Invariance_IsSymmSndFDerivWithinAt

section Invariance

variable [IsManifold I (minSmoothness 𝕜 2) M] [IsManifold I' (minSmoothness 𝕜 2) M']
  [CompleteSpace E] {n : ℕ∞ω}

/-- The pullback commutes with the Lie bracket of vector fields on manifolds. Version where one
assumes that the map is smooth on a larger set `u` (so that the
condition `x₀ ∈ closure (interior u)`, needed to guarantee the symmetry of the second derivative,
becomes easier to check.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47a65c06554bd39024cf3b6ee9e313519c95cab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
