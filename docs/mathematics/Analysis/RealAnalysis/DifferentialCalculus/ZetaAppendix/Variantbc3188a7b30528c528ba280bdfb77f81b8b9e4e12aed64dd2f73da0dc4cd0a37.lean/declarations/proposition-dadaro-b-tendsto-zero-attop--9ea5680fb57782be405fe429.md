# proposition_dadaro_b_tendsto_zero_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:260a5138-83e8-a8ce-881b-f1eb2557b71c",
  "kind": "lemma",
  "lexical_name": "proposition_dadaro_b_tendsto_zero_atTop",
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
  "slug": "proposition-dadaro-b-tendsto-zero-attop--9ea5680fb57782be405fe429",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3772,
    "line": 3634,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ea5680fb57782be405fe42995a7787d19195d28f27fff842c14b6142befc6dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:260a5138-83e8-a8ce-881b-f1eb2557b71c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3634–3772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma proposition_dadaro_b_tendsto_zero_atTop {s : ℂ} (hsigma : 0 < s.re) : Tendsto
  (fun b : ℝ => (b : ℂ) ^ (-s) * dadaro_g (s.im / (2 * π * b)))
  atTop (𝓝 0) := by
  have h_pow_vanishes : Tendsto (fun b : ℝ => (b : ℂ) ^ (-s)) atTop (𝓝 0) := by
    rw [tendsto_zero_iff_norm_tendsto_zero]
    have : (fun b : ℝ ↦ ‖(b : ℂ) ^ (-s)‖) =ᶠ[atTop] (fun b ↦ b ^ (-s.re)) := by
      filter_upwards [Filter.eventually_gt_atTop 0] with b hb
      simp [Complex.norm_cpow_eq_rpow_re_of_pos hb]
    exact (tendsto_congr' this).mpr (tendsto_rpow_neg_atTop hsigma)
  let g := dadaro_g
  have hne : ∀ᶠ x in 𝓝[≠] (0 : ℂ), x ≠ 0 :=
    eventually_nhdsWithin_of_forall fun x hx => hx
  have hsin : ∀ᶠ x in 𝓝[≠] (0 : ℂ), Complex.sin x ≠ 0 := by
    have hball : ∀ᶠ x in 𝓝[≠] (0 : ℂ), ‖x‖ < π := by
      apply eventually_nhdsWithin_of_eventually_nhds
      exact eventually_nhds_iff.mpr
        ⟨Metric.ball 0 π,
        fun y hy => by simpa [Metric.mem_ball, dist_zero_right] using hy,
        Metric.isOpen_ball,
        Metric.mem_ball_self (by positivity)⟩
    filter_upwards [hball, hne] with x hlt hxne
    rw [Complex.sin_ne_zero_iff]
    intro k
    by_cases hk : k = 0
    · simp [hk, hxne]
    · have hkπ : π ≤ ‖(k : ℂ) * ↑π‖ := by
        rw [norm_mul]
        suffices 1 ≤ ‖(k : ℂ)‖ by
          nth_rw 1 [← one_mul π]
          gcongr
          simp only [norm_real, norm_eq_abs]
          exact le_abs_self π
        simp only [norm_intCast]
        exact_mod_cast Int.one_le_abs hk
      intro heq
      linarith [heq ▸ hlt]
  have hl : (fun x ↦ 1 / Complex.sin x - 1 / x) =ᶠ[𝓝[≠] 0] (fun x ↦ (x - Complex.sin x) / (x * Complex.sin x)) := by
    filter_upwards [hsin, hne] with x hsinx hxne
    field_simp [hxne, hsinx]
  have hscale : Tendsto (fun t : ℝ ↦ (↑π * ↑t : ℂ)) (𝓝 0) (𝓝 0) := by
    simpa using (continuous_const.mul Complex.continuous_ofReal).tendsto (0 : ℝ)
  have h_pi : Tendsto (fun t : ℝ ↦ (↑π * ↑t : ℂ)) (𝓝[≠] 0) (𝓝[≠] 0) := by
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
    · exact tendsto_nhdsWithin_of_tendsto_nhds hscale
    · apply eventually_nhdsWithin_of_forall
      exact fun t ht ↦ mul_ne_zero (by exact_mod_cast Real.pi_ne_zero) (Complex.ofReal_ne_zero.mpr ht)
  have h2 : Tendsto (fun x ↦ x / Complex.sin x) (𝓝[≠] 0) (𝓝 1) := by
    have heq : Asymptotics.IsEquivalent (𝓝[≠] (0 : ℂ)) Complex.sin id := by
      unfold Asymptotics.IsEquivalent
      exact Complex.isEquivalent_sin.isLittleO.mono nhdsWithin_le_nhds
    have hsinx : Tendsto (fun x ↦ Complex.sin x / x) (𝓝[≠] 0) (𝓝 1) :=
      (Asymptotics.isEquivalent_iff_tendsto_one hne).mp heq
    have hflip : (fun x ↦ x / Complex.sin x) =ᶠ[𝓝[≠] (0 : ℂ)] (fun x ↦ (Complex.sin x / x)⁻¹) := by
      filter_upwards [hsin, hne] with x hsx hxne
      field_simp [hxne, hsx]
    rw [tendsto_congr' hflip]
    simpa using hsinx.inv₀ (by norm_num : (1 : ℂ) ≠ 0)
  have hfactor : (fun x : ℂ ↦ (x - Complex.sin x) / (x * Complex.sin x))
      =ᶠ[𝓝[≠] 0] (fun x ↦ (x - Complex.sin x) / x ^ 2 * (x / Complex.sin x)) := by
    filter_upwards [hsin, hne]
      with x hsx hxne
    field_simp [hxne, hsx]
  have hquot : Tendsto (fun x : ℂ ↦ (x - Complex.sin x) / x ^ 2) (𝓝[≠] 0) (𝓝 0) := by
    have hkey : ∀ x : ℂ, x ≠ 0 → ‖x‖ ≤ 1 →
        ‖(x - Complex.sin x) / x ^ 2‖ ≤ ‖x‖ / 6 + ‖x‖ ^ 2 * (5 / 96) := by
      intro x hx hxn
      have hbound := sin_bound hxn
      have hxnorm : (0 : ℝ) < ‖x‖ ^ 2 := by positivity
      rw [norm_div, norm_pow, div_le_iff₀ hxnorm]
      have htri : ‖x - Complex.sin x‖ ≤ ‖x‖ ^ 3 / 6 + ‖x‖ ^ 4 * (5 / 96) := by
        have : ‖x - Complex.sin x‖ ≤ ‖x ^ 3 / 6‖ + ‖x ^ 3 / 6 - (x - Complex.sin x)‖ :=
          calc ‖x - Complex.sin x‖
            = ‖x ^ 3 / 6 - (x ^ 3 / 6 - (x - Complex.sin x))‖ := by ring_nf
          _ ≤ ‖x ^ 3 / 6‖ + ‖x ^ 3 / 6 - (x - Complex.sin x)‖ := norm_sub_le _ _
        have h1 : ‖x ^ 3 / 6‖ = ‖x‖ ^ 3 / 6 := by
          rw [norm_div, norm_pow]; norm_num
        have h2 : ‖x ^ 3 / 6 - (x - Complex.sin x)‖ ≤ ‖x‖ ^ 4 * (5 / 96) := by
          have heq : x ^ 3 / 6 - (x - Complex.sin x) = Complex.sin x - (x - x ^ 3 / 6) := by ring
          exact heq ▸ hbound
        linarith
      linarith [htri]
    have hsqueeze : Tendsto (fun x : ℂ ↦ ‖x‖ / 6 + ‖x‖ ^ 2 * (5 / 96)) (𝓝[≠] 0) (𝓝 0) := by
      rw [show (0 : ℝ) = 0 / 6 + 0 ^ 2 * (5 / 96) by norm_num]
      apply Filter.Tendsto.add
      · apply Tendsto.div_const
        refine Tendsto.mono_left ?_ nhdsWithin_le_nhds
        exact tendsto_norm_zero
      · apply Filter.Tendsto.mul_const
        exact tendsto_nhdsWithin_of_tendsto_nhds (by
          simpa [norm_zero] using (continuous_norm.pow 2).tendsto (0 : ℂ))
    apply squeeze_zero_norm' _ hsqueeze
    rw [eventually_nhdsWithin_iff]
    apply eventually_of_mem (Metric.ball_mem_nhds 0 one_pos)
    intro x hx hne
    apply hkey x hne
    simp only [Metric.mem_ball, dist_zero_right] at hx
    exact le_of_lt hx
  have h_f_lim : Tendsto (fun x : ℂ ↦ 1 / Complex.sin x - 1 / x) (𝓝[≠] 0) (𝓝 0) := by
    have hprod : Tendsto (fun x : ℂ ↦ (x - Complex.sin x) / x ^ 2 * (x / Complex.sin x))
        (𝓝[≠] 0) (𝓝 0) := by simpa using hquot.mul h2
    exact (hprod.congr' hfactor.symm).congr' hl.symm
  have h_f_lim_new : Tendsto (fun x : ℂ ↦ 1 / Complex.sin x - 1 / x) (𝓝 0) (𝓝 0) := by
    have h0 : (fun x : ℂ ↦ 1 / Complex.sin x - 1 / x) 0 = 0 := by
      simp [Complex.sin_zero]
    rw [← nhdsWithin_univ]
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
    · simp only [nhdsWithin_univ]
      have hc : ContinuousAt (fun x ↦ 1 / Complex.sin x - 1 / x) 0 := by
        rw [continuousAt_iff_punctured_nhds]
        simp only [h0]
        exact h_f_lim
      simpa only [h0] using hc.tendsto
    · exact Filter.Eventually.of_forall (fun x => trivial)
  have h_g_limit : Tendsto g (𝓝 0) (𝓝 0) := by
    have hg_eq : g =ᶠ[𝓝 0] fun t : ℝ =>
        (1 / Complex.sin (↑π * ↑t) - 1 / (↑π * ↑t)) / (2 * I) := by
      exact Filter.Eventually.of_forall fun t ↦ by
        simp only [g, dadaro_g]
        split_ifs with ht
        · rfl
        · simp only [one_div, mul_inv_rev]
          field_simp
          push Not at ht
          simp [ht]
    have hcomp : Tendsto (fun t : ℝ =>
        1 / Complex.sin (↑π * ↑t) - 1 / (↑π * ↑t)) (𝓝 0) (𝓝 0) :=
      h_f_lim_new.comp hscale
    have hdiv : Tendsto (fun t : ℝ =>
        (1 / Complex.sin (↑π * ↑t) - 1 / (↑π * ↑t)) / (2 * I)) (𝓝 0) (𝓝 0) := by
      simpa using hcomp.div_const (2 * I)
    exact hdiv.congr' hg_eq.symm
  have h_arg_limit : Tendsto (fun b : ℝ ↦ s.im / (2 * π * b)) atTop (𝓝 0) := by
    apply Filter.Tendsto.const_div_atTop
    apply (tendsto_const_mul_atTop_of_pos ?_).mpr tendsto_id
    exact mul_pos two_pos pi_pos
  have h_trig_vanishes : Tendsto (fun b : ℝ ↦ g (s.im / (2 * π * b))) atTop (𝓝 0) :=
    h_g_limit.comp h_arg_limit
  simpa using h_pow_vanishes.mul h_trig_vanishes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L3634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
