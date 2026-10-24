# zeta_local_count_box

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37df2246-b183-493d-1b0f-c8082645d87a",
  "kind": "theorem",
  "lexical_name": "zeta_local_count_box",
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
  "slug": "zeta-local-count-box--3c3e53baf4065c3d8d88602b",
  "source": {
    "blob": "8a53c155d9d22710a053a3573734ed409642ac61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 933,
    "line": 773,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c3e53baf4065c3d8d88602bb30bf7e04d0fb7c943f5903794a1fc21f0b68ac7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37df2246-b183-493d-1b0f-c8082645d87a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–933.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_local_count_box (t : ℝ) (hc : |t + 1/2| < 6) :
    (Zeta23.Ncount t (t + 1) : ℝ) ≤ 144 := by
  have hfa : AnalyticOnNhd ℂ xi (Metric.closedBall (2:ℂ) (83/10)) := fun s _ =>
    xi_differentiable.analyticAt s
  have hxi2 : xi 2 ≠ 0 := by
    rw [xi_two]
    simp only [ne_eq, div_eq_zero_iff]
    push Not
    constructor
    · exact_mod_cast Real.pi_ne_zero
    · norm_num
  have hxi2norm : ‖xi 2‖ = Real.pi / 6 := by
    rw [xi_two]
    rw [show ((Real.pi : ℂ) / 6) = ((Real.pi / 6 : ℝ) : ℂ) by push_cast; ring]
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_pos (by positivity)]
  have hB2 : (2:ℝ) ≤ 62000 := by norm_num
  have hfB : ∀ w ∈ Metric.closedBall (2:ℂ) (24/25 * (83/10)), ‖xi w‖ ≤ 62000 * ‖xi 2‖ := by
    intro w hw
    rw [Metric.mem_closedBall, Complex.dist_eq] at hw
    have hw' : ‖w - (2:ℂ)‖ ≤ 1992/250 := le_trans hw (by norm_num)
    calc ‖xi w‖ ≤ 32000 := xi_norm_le_ball hw'
      _ ≤ 62000 * (Real.pi / 6) := by nlinarith [Real.pi_gt_d2]
      _ = 62000 * ‖xi 2‖ := by rw [hxi2norm]
  obtain ⟨Z, hZset, hZcount, -⟩ := Zeta23.WeilEF.logDeriv_partial_fraction_disk
    (f := xi) (by norm_num : (0:ℝ) < 83/10) hfa hxi2 hB2 hfB
  -- the window sits inside the zero-ball
  have hhalfwin : Zeta23.zetaZeroConfig.window t (t + 1) ⊆ (Z : Set ℂ) := by
    rintro ρ ⟨hcar, him1, him2⟩
    rw [hZset]
    have hnz : Zeta23.IsNontrivialZero ρ := hcar
    have hre0 : 0 < ρ.re := hnz.2.1
    have hre1 : ρ.re < 1 := hnz.2.2
    have hΛ0 : completedRiemannZeta ρ = 0 :=
      (Zeta23.RvM.completedRiemannZeta_eq_zero_iff_of_re_pos hre0).mpr hnz.1
    have hρ0 : ρ ≠ 0 := by
      intro h
      rw [h] at hre0
      norm_num at hre0
    have hρ1 : ρ ≠ 1 := by
      intro h
      rw [h] at hre1
      norm_num at hre1
    refine ⟨?_, ?_⟩
    · -- ball membership: |im ρ| ≤ 13/2 and re ∈ (0,1): distance to 2 ≤ sqrt(4 + 42.25) ≤ 7.3
      rw [Metric.mem_closedBall, Complex.dist_eq]
      have him : |ρ.im| ≤ 13/2 := by
        rw [abs_le]
        have h1 := abs_lt.mp hc
        constructor <;> linarith
      have hnormsq : ‖ρ - (2:ℂ)‖ ^ 2 = (ρ.re - 2) ^ 2 + ρ.im ^ 2 := by
        rw [← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
        have h1 : (ρ - (2:ℂ)).re = ρ.re - 2 := by simp
        have h2 : (ρ - (2:ℂ)).im = ρ.im := by simp
        rw [h1, h2]
        ring
      have hsq : ‖ρ - (2:ℂ)‖ ^ 2 ≤ (22/25 * (83/10)) ^ 2 := by
        rw [hnormsq]
        have ha := abs_le.mp him
        nlinarith
      nlinarith [norm_nonneg (ρ - (2:ℂ))]
    · -- xi ρ = 0
      rw [xi_eq ρ hρ0 hρ1, hΛ0]
      ring
  -- orders: ord_xi = zeroMult on the window
  have hord : ∀ ρ ∈ Zeta23.zetaZeroConfig.window t (t + 1),
      (Zeta23.zetaZeroConfig.mult ρ : ℝ) ≤ (analyticOrderNatAt xi ρ : ℝ) := by
    intro ρ hρ
    obtain ⟨hcar, -, -⟩ := hρ
    have hnz : Zeta23.IsNontrivialZero ρ := hcar
    have hre0 : 0 < ρ.re := hnz.2.1
    have hre1 : ρ.re < 1 := hnz.2.2
    have hρ0 : ρ ≠ 0 := fun h => by rw [h] at hre0; norm_num at hre0
    have hρ1 : ρ ≠ 1 := fun h => by rw [h] at hre1; norm_num at hre1
    have hcongr : analyticOrderNatAt xi ρ = analyticOrderNatAt completedRiemannZeta ρ := by
      have hopen : IsOpen {s : ℂ | s ≠ 0 ∧ s ≠ 1} := by
        refine IsOpen.inter ?_ ?_
        · exact isOpen_ne
        · exact isOpen_ne
      have hmem : ρ ∈ {s : ℂ | s ≠ 0 ∧ s ≠ 1} := ⟨hρ0, hρ1⟩
      have hev : xi =ᶠ[nhds ρ] (fun s => s * (s - 1) / 2) * completedRiemannZeta := by
        refine Filter.eventually_of_mem (hopen.mem_nhds hmem) (fun s hs => ?_)
        exact xi_eq s hs.1 hs.2
      have hpre : AnalyticAt ℂ (fun s : ℂ => s * (s - 1) / 2) ρ := by
        apply Differentiable.analyticAt
        exact (differentiable_id.mul (differentiable_id.sub_const 1)).div_const 2
      have hΛa : AnalyticAt ℂ completedRiemannZeta ρ :=
        Zeta23.RvM.analyticAt_completedRiemannZeta hρ0 hρ1
      have hpre0 : analyticOrderAt (fun s : ℂ => s * (s - 1) / 2) ρ = 0 := by
        rw [hpre.analyticOrderAt_eq_zero]
        intro h
        have h2 : ρ * (ρ - 1) = 0 := by
          field_simp at h
          simpa using h
        rcases mul_eq_zero.mp h2 with h3 | h3
        · exact hρ0 h3
        · exact hρ1 (by linear_combination h3)
      unfold analyticOrderNatAt
      rw [analyticOrderAt_congr hev, analyticOrderAt_mul hpre hΛa, hpre0, zero_add]
    rw [hcongr, Zeta23.RvM.analyticOrderNatAt_completedRiemannZeta hre0 hρ1]
    exact le_refl _
  -- assemble
  have hWfin : (Zeta23.zetaZeroConfig.window t (t + 1)).Finite :=
    Zeta23.zetaZeroConfig.window_finite t (t + 1)
  have hNle : (Zeta23.Ncount t (t + 1) : ℝ) = (Zeta23.zetaZeroConfig.N t (t + 1) : ℝ) := by
    rw [Zeta23.zetaZeroConfig_N]
  rw [hNle]
  have hsum : (Zeta23.zetaZeroConfig.N t (t + 1) : ℝ)
      ≤ ∑ ρ ∈ Z, (analyticOrderNatAt xi ρ : ℝ) := by
    have hN : (Zeta23.zetaZeroConfig.N t (t + 1) : ℝ)
        = ∑ ρ ∈ hWfin.toFinset, (Zeta23.zetaZeroConfig.mult ρ : ℝ) := by
      have h1 : Zeta23.zetaZeroConfig.N t (t + 1)
          = ∑ ρ ∈ hWfin.toFinset, Zeta23.zetaZeroConfig.mult ρ := by
        rw [ZeroConfig.N, finsum_mem_eq_finite_toFinset_sum _ hWfin]
      rw [h1]
      push_cast
      rfl
    rw [hN]
    have hsub2 : hWfin.toFinset ⊆ Z := by
      intro ρ hρ
      rw [Set.Finite.mem_toFinset] at hρ
      exact Finset.mem_coe.mp (hhalfwin hρ)
    calc ∑ ρ ∈ hWfin.toFinset, (Zeta23.zetaZeroConfig.mult ρ : ℝ)
        ≤ ∑ ρ ∈ hWfin.toFinset, (analyticOrderNatAt xi ρ : ℝ) := by
          refine Finset.sum_le_sum (fun ρ hρ => ?_)
          rw [Set.Finite.mem_toFinset] at hρ
          exact hord ρ hρ
      _ ≤ ∑ ρ ∈ Z, (analyticOrderNatAt xi ρ : ℝ) :=
          Finset.sum_le_sum_of_subset_of_nonneg hsub2 (fun ρ _ _ => by positivity)
  refine hsum.trans ?_
  refine hZcount.trans ?_
  -- 12·log 62000 ≤ 144
  have hlp : (0:ℝ) < Real.log ((24/25 : ℝ)/(22/25)) := by
    rw [show ((24/25 : ℝ))/(22/25) = 12/11 by norm_num]
    exact Real.log_pos (by norm_num)
  have hlog1211 : (1:ℝ)/12 ≤ Real.log ((24/25 : ℝ)/(22/25)) := by
    rw [show ((24/25 : ℝ))/(22/25) = 12/11 by norm_num]
    have h := Real.log_le_sub_one_of_pos (show (0:ℝ) < 11/12 by norm_num)
    rw [show (11/12:ℝ) = (12/11)⁻¹ by norm_num, Real.log_inv] at h
    linarith
  have hlogB : Real.log 62000 ≤ 12 := by
    rw [Real.log_le_iff_le_exp (by norm_num)]
    have h1 := Real.exp_one_gt_d9
    have h12 : (2.7182818283:ℝ) ^ (12:ℕ) ≤ Real.exp 12 := by
      have : Real.exp 12 = (Real.exp 1) ^ (12:ℕ) := by
        rw [← Real.exp_nat_mul]
        norm_num
      rw [this]
      gcongr <;> linarith
    calc (62000:ℝ) ≤ 2.7182818283 ^ (12:ℕ) := by norm_num
      _ ≤ Real.exp 12 := h12
  have hlogBnn : (0:ℝ) ≤ Real.log 62000 := Real.log_nonneg (by norm_num)
  calc 1 / Real.log ((24/25 : ℝ)/(22/25)) * Real.log 62000
      ≤ 12 * Real.log 62000 := by
        refine mul_le_mul_of_nonneg_right ?_ hlogBnn
        rw [div_le_iff₀ hlp]
        linarith
    _ ≤ 12 * 12 := by linarith
    _ = 144 := by norm_num

/-- **E2 — the fully explicit local zero count**:
N(t, t+1] ≤ 540000000·log(|t|+3) for every t ∈ ℝ, unconditionally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a53c155d9d22710a053a3573734ed409642ac61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
