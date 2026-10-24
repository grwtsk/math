# setOfPred_riemannianEDist_lt_subset_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a29a073-f4a2-e423-4539-10921ed562ed",
  "kind": "lemma",
  "lexical_name": "setOfPred_riemannianEDist_lt_subset_nhds",
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
  "slug": "setofpred-riemannianedist-lt-subset-nhds--3660d86061dfe707d13006ee",
  "source": {
    "blob": "df5a323d49ec7b544a8a776bdc3dbf2c1c95d09b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 398,
    "path": "GRWTSK/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3660d86061dfe707d13006eebe54f72498ac2dca65f5f4e154bd67b4ffb13538",
  "verification": {
    "reference": "docs/verification/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a29a073-f4a2-e423-4539-10921ed562ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setOfPred_riemannianEDist_lt_subset_nhds [RegularSpace M] {x : M} {s : Set M} (hs : s ∈ 𝓝 x) :
    ∃ c > (0 : ℝ≥0), {y | riemannianEDist I x y < c} ⊆ s := by
  /- Consider a closed neighborhood `u` of `x` on which the derivative of the extended chart is
  bounded by some `C`, contained in `s`, then an open neighborhood `v` of `x` inside `u`,
  and finally `r` small enough that the ball of radius `r` in the extended chart is contained in
  the image of `v`.

  We claim that points at Riemannian distance at most `r / C` of `x` are inside `u` (and therefore
  inside `s`). To prove this, consider a path of length at most `r / C` starting from `x`. While
  it stays inside `u`, then by the derivative control its image in the extended chart has length
  at most `r`, so it cannot exit the ball of radius `r`, which means that in the manifold it is
  inside `v` (which is strictly inside `u`). This means that the path will stay inside `u` for
  a little bit longer, by openness of `v`. Iterating this argument, it follows that the path will
  remain inside `u` for the whole time interval `[0, 1]`. In particular, its right endpoint is
  inside `u`, as desired.

  The formalization of this argument goes through the lemma
  `IsClosed.Icc_subset_of_forall_mem_nhdsGT_of_mem` which gives an induction-like principle over
  real intervals.
  -/
  -- first introduce a neighborhood where the derivative of the extended chart is bounded by `C`
  rcases eventually_enorm_mfderiv_extChartAt_lt I x with ⟨C, C_pos, hC⟩
  -- let `u` be a closed neighborhood, inside `s`, with the derivative control
  obtain ⟨u, u_mem, u_closed, us, hu, uc⟩ : ∃ u ∈ 𝓝 x, IsClosed u ∧ u ⊆ s
      ∧ u ⊆ {y | ‖mfderiv% (extChartAt I x) y‖ₑ < C} ∧ u ⊆ (extChartAt I x).source := by
    have := Filter.inter_mem (Filter.inter_mem hs hC) (extChartAt_source_mem_nhds (I := I) x)
    rcases exists_mem_nhds_isClosed_subset this with ⟨u, u_mem, u_closed, hu⟩
    simp only [subset_inter_iff] at hu
    exact ⟨u, u_mem, u_closed, hu.1.1, hu.1.2, hu.2⟩
  have uc' : u ⊆ (chartAt H x).source := by simpa [extChartAt_source I x] using uc
  -- let `v` be a smaller open neighborhood, inside `u`.
  obtain ⟨v, ⟨v_mem, v_open⟩, hv⟩ : ∃ v, (v ∈ 𝓝 x ∧ IsOpen v) ∧ v ⊆ u :=
    (nhds_basis_opens' x).mem_iff.1 u_mem
  -- let `r > 0` be small enough that, in the extended chart, the ball of radius `r` is contained
  -- in the image of `v`.
  obtain ⟨r, r_pos, hr⟩ : ∃ r > 0, ball (extChartAt I x x) r ⊆ (extChartAt I x).symm ⁻¹' v :=
    Metric.mem_nhds_iff.1 (extChartAt_preimage_mem_nhds v_mem)
  lift r to ℝ≥0 using r_pos.le
  simp only [gt_iff_lt, NNReal.coe_pos] at r_pos
  -- the desired constant will be `c := r / C`
  refine ⟨r / C, by positivity, ?_⟩
  intro y hy
  -- consider a path `γ` of length `< r / C` from `x` to a point `y`. We will show that `y` belongs
  -- to `u`.
  rcases exists_lt_locally_constant_of_riemannianEDist_lt hy zero_lt_one
    with ⟨γ, hγx, hγy, γ_smooth, hγ, -⟩
  let A := γ ⁻¹' u
  have zero_mem : 0 ∈ A := by simpa  [hγx, A] using mem_of_mem_nhds u_mem
  have A_closed : IsClosed (A ∩ Icc 0 1) :=
    (u_closed.preimage γ_smooth.continuous).inter isClosed_Icc
  suffices Icc 0 1 ⊆ A by
    apply us
    have : 1 ∈ A := this ⟨zero_le_one, le_rfl⟩
    simpa [A, hγy, us]
  apply A_closed.Icc_subset_of_forall_mem_nhdsGT_of_Icc_subset zero_mem
  rintro t₁ ⟨ht₁0, ht₁1⟩ t₁_mem
  suffices γ t₁ ∈ v from
    γ_smooth.continuous.continuousWithinAt <| mem_of_superset (v_open.mem_nhds this) hv
  let γ' := extChartAt I x ∘ γ
  have hC : CMDiff[Icc 0 t₁] 1 γ' :=
    contMDiffOn_extChartAt.comp (I' := I) (t := (chartAt H x).source)
      γ_smooth.contMDiffOn (fun t' ht' ↦ uc' <| t₁_mem ht')
  have : ‖γ' t₁ - γ' 0‖ₑ < r := by
    rcases ht₁0.eq_or_lt with rfl | h't'
    · simp [r_pos]
    calc
      ‖γ' t₁ - γ' 0‖ₑ
    _ ≤ ∫⁻ t' in Icc 0 t₁, ‖derivWithin γ' (Icc 0 t₁) t'‖ₑ := by
      apply enorm_sub_le_lintegral_derivWithin_Icc_of_contDiffOn_Icc _ ht₁0
      rwa [← contMDiffOn_iff_contDiffOn]
    _ = ∫⁻ t' in Icc 0 t₁, ‖mfderiv[Icc 0 t₁] γ' t' 1‖ₑ := by
      simp_rw [← fderivWithin_derivWithin, mfderivWithin_eq_fderivWithin]
      rfl
    _ ≤ ∫⁻ t' in Icc 0 t₁, C * ‖mfderiv[Icc 0 t₁] γ t' 1‖ₑ := by
      apply setLIntegral_mono' measurableSet_Icc (fun t' ht' ↦ ?_)
      have : mfderiv[Icc 0 t₁] γ' t' =
          (mfderiv% (extChartAt I x) (γ t')) ∘L (mfderiv[Icc 0 t₁] γ t') := by
        apply mfderiv_comp_mfderivWithin
        · refine mdifferentiableAt_extChartAt (uc' ?_)
          apply t₁_mem ht'
        · exact (γ_smooth.mdifferentiable one_ne_zero).mdifferentiableOn _ ht'
        · rw [uniqueMDiffWithinAt_iff_uniqueDiffWithinAt]
          exact uniqueDiffOn_Icc h't' _ ht'
      have : mfderiv[Icc 0 t₁] γ' t' 1 =
          (mfderiv% (extChartAt I x) (γ t')) (mfderiv[Icc 0 t₁] γ t' 1) :=
        congr($this 1)
      rw [this]
      apply (ContinuousLinearMap.le_opENorm _ _).trans
      gcongr
      refine (hu ?_).le
      apply t₁_mem ht'
    _ = C * pathELength I γ 0 t₁ := by
      rw [lintegral_const_mul' _ _ ENNReal.coe_ne_top,
          pathELength_eq_lintegral_mfderivWithin_Icc]
    _ ≤ C * pathELength I γ 0 1 := by
      gcongr
    _ < C * (r / C) := by
      gcongr
      · exact ENNReal.coe_ne_top
      · exact hγ.trans_eq (ENNReal.coe_div C_pos.ne')
    _ = r := (ENNReal.eq_div_iff (by simpa using C_pos.ne') ENNReal.coe_ne_top).mp rfl
  have : γ' t₁ ∈ (extChartAt I x).symm ⁻¹' v := by
    apply hr
    rw [← Metric.eball_coe, Metric.mem_eball, edist_eq_enorm_sub]
    convert! this
    simp [γ', hγx]
  convert! mem_preimage.1 this
  simp only [Function.comp_apply, γ', (extChartAt I x).left_inv <| uc <| t₁_mem
    (right_mem_Icc.mpr ht₁0)]

@[deprecated (since := "2026-07-09")]
alias setOf_riemannianEDist_lt_subset_nhds := setOfPred_riemannianEDist_lt_subset_nhds

/-- Any neighborhood of `x` contains all the points which are close enough to `x` for the
Riemannian distance, `ℝ≥0∞` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df5a323d49ec7b544a8a776bdc3dbf2c1c95d09b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
