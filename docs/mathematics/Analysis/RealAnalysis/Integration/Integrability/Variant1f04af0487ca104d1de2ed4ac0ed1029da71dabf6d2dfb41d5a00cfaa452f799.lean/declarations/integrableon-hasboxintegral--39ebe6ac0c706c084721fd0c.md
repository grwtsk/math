# IntegrableOn.hasBoxIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f825c3ff01652c0ce67088b67adba3860b784f40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65f22183-d2bc-b257-cb3a-be57978a34b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab01ff19-0651-06ce-31e8-183cb38e704e",
  "kind": "theorem",
  "lexical_name": "IntegrableOn.hasBoxIntegral",
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
  "slug": "integrableon-hasboxintegral--39ebe6ac0c706c084721fd0c",
  "source": {
    "blob": "f825c3ff01652c0ce67088b67adba3860b784f40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39ebe6ac0c706c084721fd0ce9fe2b120416bec2d44e7896799079815cbec99a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab01ff19-0651-06ce-31e8-183cb38e704e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntegrableOn.hasBoxIntegral [CompleteSpace E] {f : (ι → ℝ) → E} {μ : Measure (ι → ℝ)}
    [IsLocallyFiniteMeasure μ] {I : Box ι} (hf : IntegrableOn f I μ) (l : IntegrationParams)
    (hl : l.bRiemann = false) :
    HasIntegral.{u, v, v} I l f μ.toBoxAdditive.toSMul (∫ x in I, f x ∂μ) := by
  borelize E
  -- First we replace an `ae_strongly_measurable` function by a measurable one.
  rcases hf.aestronglyMeasurable with ⟨g, hg, hfg⟩
  haveI : SeparableSpace (range g ∪ {0} : Set E) := hg.separableSpace_range_union_singleton
  rw [integral_congr_ae hfg]; have hgi : IntegrableOn g I μ := (integrable_congr hfg).1 hf
  refine BoxIntegral.HasIntegral.congr_ae ?_ hfg.symm hl
  clear! f
  /- Now consider the sequence of simple functions
    `SimpleFunc.approxOn g hg.measurable (range g ∪ {0}) 0 (by simp)`
    approximating `g`. Recall some properties of this sequence. -/
  set f : ℕ → SimpleFunc (ι → ℝ) E :=
    SimpleFunc.approxOn g hg.measurable (range g ∪ {0}) 0 (by simp)
  have hfi : ∀ n, IntegrableOn (f n) I μ :=
    SimpleFunc.integrable_approxOn_range hg.measurable hgi
  have hfi' := fun n => ((f n).hasBoxIntegral μ I l hl).integrable
  have hfg_mono : ∀ (x) {m n}, m ≤ n → ‖f n x - g x‖ ≤ ‖f m x - g x‖ := by
    intro x m n hmn
    rw [← dist_eq_norm, ← dist_eq_norm, dist_nndist, dist_nndist, NNReal.coe_le_coe, ←
      ENNReal.coe_le_coe, ← edist_nndist, ← edist_nndist]
    exact SimpleFunc.edist_approxOn_mono hg.measurable _ x hmn
  /- Now consider `ε > 0`. We need to find `r` such that for any tagged partition subordinate
    to `r`, the integral sum is `(μ I + 1 + 1) * ε`-close to the Bochner integral. -/
  refine HasIntegral.of_mul (μ.real I + 1 + 1) fun ε ε0 => ?_
  lift ε to ℝ≥0 using ε0.le; rw [NNReal.coe_pos] at ε0; have ε0' := ENNReal.coe_pos.2 ε0
  -- Choose `N` such that the integral of `‖f N x - g x‖` is less than or equal to `ε`.
  obtain ⟨N₀, hN₀⟩ : ∃ N : ℕ, ∫ x in I, ‖f N x - g x‖ ∂μ ≤ ε := by
    have : Tendsto (fun n => ∫⁻ x in I, ‖f n x - g x‖₊ ∂μ) atTop (𝓝 0) :=
      SimpleFunc.tendsto_approxOn_range_L1_enorm hg.measurable hgi
    refine (this.eventually (ge_mem_nhds ε0')).exists.imp fun N hN => ?_
    exact integral_coe_le_of_lintegral_coe_le hN
  -- For each `x`, we choose `Nx x ≥ N₀` such that `dist (f Nx x) (g x) ≤ ε`.
  have : ∀ x, ∃ N₁, N₀ ≤ N₁ ∧ dist (f N₁ x) (g x) ≤ ε := fun x ↦ by
    have : Tendsto (f · x) atTop (𝓝 <| g x) :=
      SimpleFunc.tendsto_approxOn hg.measurable _ (subset_closure (by simp))
    exact ((eventually_ge_atTop N₀).and <| this <| closedBall_mem_nhds _ ε0).exists
  choose Nx hNx hNxε using this
  -- We also choose a convergent series with `∑' i : ℕ, δ i < ε`.
  rcases NNReal.exists_pos_sum_of_countable ε0.ne' ℕ with ⟨δ, δ0, c, hδc, hcε⟩
  /- Since each simple function `fᵢ` is integrable, there exists `rᵢ : ℝⁿ → (0, ∞)` such that
    the integral sum of `f` over any tagged prepartition is `δᵢ`-close to the sum of integrals
    of `fᵢ` over the boxes of this prepartition. For each `x`, we choose `r (Nx x)` as the radius
    at `x`. -/
  set r : ℝ≥0 → (ι → ℝ) → Ioi (0 : ℝ) := fun c x => (hfi' <| Nx x).convergenceR (δ <| Nx x) c x
  refine ⟨r, fun c => l.rCond_of_bRiemann_eq_false hl, fun c π hπ hπp => ?_⟩
  /- Now we prove the estimate in 3 "jumps": first we replace `g x` in the formula for the
    integral sum by `f (Nx x)`; then we replace each `μ J • f (Nx (π.tag J)) (π.tag J)`
    by the Bochner integral of `f (Nx (π.tag J)) x` over `J`, then we jump to the Bochner
    integral of `g`. -/
  refine (dist_triangle4 _ (∑ J ∈ π.boxes, μ.real J • f (Nx <| π.tag J) (π.tag J))
    (∑ J ∈ π.boxes, ∫ x in J, f (Nx <| π.tag J) x ∂μ) _).trans ?_
  rw [add_mul, add_mul, one_mul]
  refine add_le_add_three ?_ ?_ ?_
  · /- Since each `f (Nx <| π.tag J)` is `ε`-close to `g (π.tag J)`, replacing the latter with
        the former in the formula for the integral sum changes the sum at most by `μ I * ε`. -/
    rw [← hπp.iUnion_eq, π.measure_iUnion_toReal, sum_mul, integralSum]
    refine dist_sum_sum_le_of_le _ fun J _ => ?_; dsimp
    rw [dist_eq_norm, ← smul_sub, norm_smul, Real.norm_eq_abs, abs_of_nonneg measureReal_nonneg]
    gcongr
    rw [← dist_eq_norm']; exact hNxε _
  · /- We group the terms of both sums by the values of `Nx (π.tag J)`.
        For each `N`, the sum of Bochner integrals over the boxes is equal
        to the sum of box integrals, and the sum of box integrals is `δᵢ`-close
        to the corresponding integral sum due to the Henstock-Sacks inequality. -/
    rw [← π.sum_fiberwise fun J => Nx (π.tag J), ← π.sum_fiberwise fun J => Nx (π.tag J)]
    refine le_trans ?_ (NNReal.coe_lt_coe.2 hcε).le
    refine
      (dist_sum_sum_le_of_le _ fun n hn => ?_).trans
        (sum_le_hasSum _ (fun n _ => (δ n).2) (NNReal.hasSum_coe.2 hδc))
    have hNxn : ∀ J ∈ π.filter fun J => Nx (π.tag J) = n, Nx (π.tag J) = n := fun J hJ =>
      (π.mem_filter.1 hJ).2
    have hrn : ∀ J ∈ π.filter fun J => Nx (π.tag J) = n,
        r c (π.tag J) = (hfi' n).convergenceR (δ n) c (π.tag J) := fun J hJ ↦ by
      obtain rfl := hNxn J hJ
      rfl
    have :
        l.MemBaseSet I c ((hfi' n).convergenceR (δ n) c) (π.filter fun J => Nx (π.tag J) = n) :=
      (hπ.filter _).mono' _ le_rfl le_rfl fun J hJ => (hrn J hJ).le
    convert (hfi' n).dist_integralSum_sum_integral_le_of_memBaseSet (δ0 _) this using 2
    · refine sum_congr rfl fun J hJ => ?_
      simp [hNxn J hJ]
    · refine sum_congr rfl fun J hJ => ?_
      rw [← SimpleFunc.integral_eq_integral, SimpleFunc.box_integral_eq_integral _ _ _ _ hl,
        hNxn J hJ]
      exact (hfi _).mono_set (Prepartition.le_of_mem _ hJ)
  · /-  For the last jump, we use the fact that the distance between `f (Nx x) x` and `g x` is less
        than or equal to the distance between `f N₀ x` and `g x` and the integral of
        `‖f N₀ x - g x‖` is less than or equal to `ε`. -/
    refine le_trans ?_ hN₀
    have hfi : ∀ (n), ∀ J ∈ π, IntegrableOn (f n) (↑J) μ := fun n J hJ =>
      (hfi n).mono_set (π.le_of_mem' J hJ)
    have hgi : ∀ J ∈ π, IntegrableOn g (↑J) μ := fun J hJ => hgi.mono_set (π.le_of_mem' J hJ)
    have hfgi : ∀ (n), ∀ J ∈ π, IntegrableOn (fun x => ‖f n x - g x‖) J μ := fun n J hJ =>
      ((hfi n J hJ).sub (hgi J hJ)).norm
    rw [← hπp.iUnion_eq, Prepartition.iUnion_def',
      integral_finset_biUnion π.boxes (fun J _ => J.measurableSet_coe) π.pairwiseDisjoint hgi,
      integral_finset_biUnion π.boxes (fun J _ => J.measurableSet_coe) π.pairwiseDisjoint (hfgi _)]
    refine dist_sum_sum_le_of_le _ fun J hJ => ?_
    rw [dist_eq_norm, ← integral_sub (hfi _ J hJ) (hgi J hJ)]
    refine norm_integral_le_of_norm_le (hfgi _ J hJ) (Eventually.of_forall fun x => ?_)
    exact hfg_mono x (hNx (π.tag J))

/-- If `f : ℝⁿ → E` is continuous on a rectangular box `I`, then it is Box integrable on `I`
w.r.t. a locally finite measure `μ` with the same integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f825c3ff01652c0ce67088b67adba3860b784f40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
