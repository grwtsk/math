# lemma_IBP_bound_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fed80cff-0665-6594-486b-d7bce47e58c3",
  "kind": "theorem",
  "lexical_name": "lemma_IBP_bound_monotone",
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
  "slug": "lemma-ibp-bound-monotone--2ef1bc1a1bd0c77712052e5f",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 949,
    "line": 883,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ef1bc1a1bd0c77712052e5fde27cd6fd39d314b18f5a5637bc37ca17380c21f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fed80cff-0665-6594-486b-d7bce47e58c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 883–949.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_IBP_bound_monotone {a b : ℝ} (hab : a < b) (g : ℝ → ℝ) (F : ℝ → ℂ)
    (hg_cont : ContinuousOn g (Icc a b))
    (hg_mono : MonotoneOn g (Icc a b))
    (hF_C1 : ContDiffOn ℝ 1 F (Icc a b)) :
    ‖(∫ t in Icc a b, (g t : ℂ) * deriv F t) - (g b * F b - g a * F a)‖ ≤
    (⨆ t ∈ Icc a b, ‖F t‖) * (g b - g a) := by
  have happrox := lemma_approx_monotone_C1 hab g hg_cont hg_mono
  choose! g' hg'_cont hg'_mono hg'_approx using happrox
  let gₙ := fun (n : ℕ) ↦ g' (1 / (n + 1 : ℝ))
  have hpos : ∀ n : ℕ, 0 < (1 : ℝ) / (n + 1) := fun n ↦ by positivity
  have hgₙ_cont : ∀ n, ContDiffOn ℝ 1 (gₙ n) (Icc a b) := fun n ↦ hg'_cont _ (hpos n)
  have hgₙ_mono : ∀ n, MonotoneOn (gₙ n) (Icc a b) := fun n ↦ hg'_mono _ (hpos n)
  have hgₙ_bound : ∀ n, ∀ x ∈ Icc a b, |gₙ n x - g x| ≤ 1 / (n + 1 : ℝ) := fun n x hx ↦ by
    rw [abs_sub_comm]; exact (hg'_approx _ (hpos n) x hx).le
  have hgₙ_lim : ∀ x ∈ Icc a b, Tendsto (fun n ↦ gₙ n x) atTop (nhds (g x)) := fun x hx ↦ by
    rw [tendsto_iff_norm_sub_tendsto_zero]
    exact squeeze_zero (fun _ ↦ by positivity) (fun n ↦ hgₙ_bound n x hx)
      tendsto_one_div_add_atTop_nhds_zero_nat
  have hboundₙ : ∀ n, ‖(∫ t in Icc a b, (gₙ n t : ℂ) * deriv F t) - (gₙ n b * F b - gₙ n a * F a)‖ ≤
      (⨆ t ∈ Icc a b, ‖F t‖) * (gₙ n b - gₙ n a) := fun n ↦ by
    convert lemma_IBP_bound_C1_monotone hab (gₙ n) F (hgₙ_cont n) (hgₙ_mono n) hF_C1 using 1
  have hconv : Tendsto (fun n ↦ ∫ t in Icc a b, (gₙ n t : ℂ) * deriv F t) atTop
      (nhds (∫ t in Icc a b, (g t : ℂ) * deriv F t)) := by
    let M := sSup (image (|g ·|) (Icc a b))
    have hM_bdd : BddAbove (image (|g ·|) (Icc a b)) :=
      IsCompact.bddAbove (isCompact_Icc.image_of_continuousOn (continuous_abs.comp_continuousOn hg_cont))
    have hM : ∀ x ∈ Icc a b, |g x| ≤ M := fun x hx ↦ le_csSup hM_bdd (mem_image_of_mem _ hx)
    refine tendsto_integral_of_dominated_convergence (fun x ↦ (M + 1) * ‖deriv F x‖) ?_ ?_ ?_ ?_
    · exact fun n ↦ AEStronglyMeasurable.mul (ContinuousOn.aestronglyMeasurable
        (continuous_ofReal.comp_continuousOn (hgₙ_cont n).continuousOn) measurableSet_Icc) (by fun_prop)
    · apply Integrable.const_mul <| Integrable.norm <|
        (hF_C1.continuousOn_derivWithin (uniqueDiffOn_Icc hab) le_rfl).integrableOn_Icc.congr _
      rw [EventuallyEq, ae_restrict_iff' measurableSet_Icc]
      filter_upwards [measure_eq_zero_iff_ae_notMem.mp (measure_singleton a),
        measure_eq_zero_iff_ae_notMem.mp (measure_singleton b)] with x hxa hxb hx
      rw [derivWithin_of_mem_nhds]
      exact Icc_mem_nhds (lt_of_le_of_ne hx.1 (fun h ↦ hxa (mem_singleton_iff.mpr h.symm)))
        (lt_of_le_of_ne hx.2 hxb)
    · intro n
      filter_upwards [ae_restrict_mem measurableSet_Icc] with x hx
      simp only [norm_mul]; gcongr; norm_cast
      calc |gₙ n x| = ‖gₙ n x‖ := (norm_eq_abs _).symm
        _ = ‖(gₙ n x - g x) + g x‖ := by rw [sub_add_cancel]
        _ ≤ ‖gₙ n x - g x‖ + ‖g x‖ := norm_add_le _ _
        _ = |gₙ n x - g x| + |g x| := by simp only [norm_eq_abs]
        _ ≤ 1 / ((n : ℝ) + 1) + M := add_le_add (hgₙ_bound n x hx) (hM x hx)
        _ ≤ 1 + M := by gcongr; rw [div_le_one (by positivity)]; linarith [n.cast_nonneg (α := ℝ)]
        _ = M + 1 := add_comm ..
    · filter_upwards [ae_restrict_mem measurableSet_Icc] with x hx
      exact Tendsto.mul (continuous_ofReal.continuousAt.tendsto.comp <| hgₙ_lim x hx)
        tendsto_const_nhds
  have hlim_lhs : Tendsto (fun n ↦ ‖(∫ t in Icc a b, (gₙ n t : ℂ) * deriv F t) -
      (gₙ n b * F b - gₙ n a * F a)‖) atTop
      (nhds ‖(∫ t in Icc a b, (g t : ℂ) * deriv F t) - (g b * F b - g a * F a)‖) := by
    refine Tendsto.norm <| Tendsto.sub hconv <| Tendsto.sub ?_ ?_
    · exact Tendsto.mul (continuous_ofReal.continuousAt.tendsto.comp
        (hgₙ_lim b (right_mem_Icc.mpr hab.le))) tendsto_const_nhds
    · exact Tendsto.mul (continuous_ofReal.continuousAt.tendsto.comp
        (hgₙ_lim a (left_mem_Icc.mpr hab.le))) tendsto_const_nhds
  have hlim_rhs : Tendsto (fun n ↦ (⨆ t ∈ Icc a b, ‖F t‖) * (gₙ n b - gₙ n a)) atTop
      (nhds ((⨆ t ∈ Icc a b, ‖F t‖) * (g b - g a))) := by
    exact Tendsto.mul tendsto_const_nhds
      (Tendsto.sub (hgₙ_lim b (right_mem_Icc.mpr hab.le)) (hgₙ_lim a (left_mem_Icc.mpr hab.le)))
  exact le_of_tendsto_of_tendsto' hlim_lhs hlim_rhs hboundₙ

/-- Integration by parts bound for continuous functions with antitone absolute value.
If `|g|` is antitone, `‖∫ g F'‖ ≤ sup ‖F‖ · 2 |g(a)|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L883).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
