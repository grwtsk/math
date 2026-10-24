# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RemovableSingularity.Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87b921e7ce4b923cd0bc77e234d5176764ef768b` · SHA-256 `1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.FDeriv.Analytic
import Mathlib.Analysis.Asymptotics.SpecificAsymptotics
import Mathlib.Analysis.Complex.CauchyIntegral

#align_import analysis.complex.removable_singularity from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Removable singularity theorem

In this file we prove Riemann's removable singularity theorem: if `f : ℂ → E` is complex
differentiable in a punctured neighborhood of a point `c` and is bounded in a punctured neighborhood
of `c` (or, more generally, $f(z) - f(c)=o((z-c)^{-1})$), then it has a limit at `c` and the
function `update f c (limUnder (𝓝[≠] c) f)` is complex differentiable in a neighborhood of `c`.
-/


open TopologicalSpace Metric Set Filter Asymptotics Function

open scoped Topology Filter NNReal Real

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

universe u

variable {E : Type u} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]

namespace Complex

/-- **Removable singularity** theorem, weak version. If `f : ℂ → E` is differentiable in a punctured
neighborhood of a point and is continuous at this point, then it is analytic at this point. -/
theorem analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt {f : ℂ → E} {c : ℂ}
    (hd : ∀ᶠ z in 𝓝[≠] c, DifferentiableAt ℂ f z) (hc : ContinuousAt f c) : AnalyticAt ℂ f c := by
  rcases (nhdsWithin_hasBasis nhds_basis_closedBall _).mem_iff.1 hd with ⟨R, hR0, hRs⟩
  lift R to ℝ≥0 using hR0.le
  replace hc : ContinuousOn f (closedBall c R)
  · refine' fun z hz => ContinuousAt.continuousWithinAt _
    rcases eq_or_ne z c with (rfl | hne)
    exacts [hc, (hRs ⟨hz, hne⟩).continuousAt]
  exact (hasFPowerSeriesOnBall_of_differentiable_off_countable (countable_singleton c) hc
    (fun z hz => hRs (diff_subset_diff_left ball_subset_closedBall hz)) hR0).analyticAt
#align complex.analytic_at_of_differentiable_on_punctured_nhds_of_continuous_at Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt

theorem differentiableOn_compl_singleton_and_continuousAt_iff {f : ℂ → E} {s : Set ℂ} {c : ℂ}
    (hs : s ∈ 𝓝 c) :
    DifferentiableOn ℂ f (s \ {c}) ∧ ContinuousAt f c ↔ DifferentiableOn ℂ f s := by
  refine' ⟨_, fun hd => ⟨hd.mono (diff_subset _ _), (hd.differentiableAt hs).continuousAt⟩⟩
  rintro ⟨hd, hc⟩ x hx
  rcases eq_or_ne x c with (rfl | hne)
  · refine' (analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
      _ hc).differentiableAt.differentiableWithinAt
    refine' eventually_nhdsWithin_iff.2 ((eventually_mem_nhds.2 hs).mono fun z hz hzx => _)
    exact hd.differentiableAt (inter_mem hz (isOpen_ne.mem_nhds hzx))
  · simpa only [DifferentiableWithinAt, HasFDerivWithinAt, hne.nhdsWithin_diff_singleton] using
      hd x ⟨hx, hne⟩
#align complex.differentiable_on_compl_singleton_and_continuous_at_iff Complex.differentiableOn_compl_singleton_and_continuousAt_iff

theorem differentiableOn_dslope {f : ℂ → E} {s : Set ℂ} {c : ℂ} (hc : s ∈ 𝓝 c) :
    DifferentiableOn ℂ (dslope f c) s ↔ DifferentiableOn ℂ f s :=
  ⟨fun h => h.of_dslope, fun h =>
    (differentiableOn_compl_singleton_and_continuousAt_iff hc).mp <|
      ⟨Iff.mpr (differentiableOn_dslope_of_nmem fun h => h.2 rfl) (h.mono <| diff_subset _ _),
        continuousAt_dslope_same.2 <| h.differentiableAt hc⟩⟩
#align complex.differentiable_on_dslope Complex.differentiableOn_dslope

/-- **Removable singularity** theorem: if `s` is a neighborhood of `c : ℂ`, a function `f : ℂ → E`
is complex differentiable on `s \ {c}`, and $f(z) - f(c)=o((z-c)^{-1})$, then `f` redefined to be
equal to `limUnder (𝓝[≠] c) f` at `c` is complex differentiable on `s`. -/
theorem differentiableOn_update_limUnder_of_isLittleO {f : ℂ → E} {s : Set ℂ} {c : ℂ} (hc : s ∈ 𝓝 c)
    (hd : DifferentiableOn ℂ f (s \ {c}))
    (ho : (fun z => f z - f c) =o[𝓝[≠] c] fun z => (z - c)⁻¹) :
    DifferentiableOn ℂ (update f c (limUnder (𝓝[≠] c) f)) s := by
  set F : ℂ → E := fun z => (z - c) • f z
  suffices DifferentiableOn ℂ F (s \ {c}) ∧ ContinuousAt F c by
    rw [differentiableOn_compl_singleton_and_continuousAt_iff hc, ← differentiableOn_dslope hc,
      dslope_sub_smul] at this
    have hc : Tendsto f (𝓝[≠] c) (𝓝 (deriv F c)) :=
      continuousAt_update_same.mp (this.continuousOn.continuousAt hc)
    rwa [hc.limUnder_eq]
  refine' ⟨(differentiableOn_id.sub_const _).smul hd, _⟩
  rw [← continuousWithinAt_compl_self]
  have H := ho.tendsto_inv_smul_nhds_zero
  have H' : Tendsto (fun z => (z - c) • f c) (𝓝[≠] c) (𝓝 (F c)) :=
    (continuousWithinAt_id.tendsto.sub tendsto_const_nhds).smul tendsto_const_nhds
  simpa [← smul_add, ContinuousWithinAt] using H.add H'
#align complex.differentiable_on_update_lim_of_is_o Complex.differentiableOn_update_limUnder_of_isLittleO

/-- **Removable singularity** theorem: if `s` is a punctured neighborhood of `c : ℂ`, a function
`f : ℂ → E` is complex differentiable on `s`, and $f(z) - f(c)=o((z-c)^{-1})$, then `f` redefined to
be equal to `limUnder (𝓝[≠] c) f` at `c` is complex differentiable on `{c} ∪ s`. -/
theorem differentiableOn_update_limUnder_insert_of_isLittleO {f : ℂ → E} {s : Set ℂ} {c : ℂ}
    (hc : s ∈ 𝓝[≠] c) (hd : DifferentiableOn ℂ f s)
    (ho : (fun z => f z - f c) =o[𝓝[≠] c] fun z => (z - c)⁻¹) :
    DifferentiableOn ℂ (update f c (limUnder (𝓝[≠] c) f)) (insert c s) :=
  differentiableOn_update_limUnder_of_isLittleO (insert_mem_nhds_iff.2 hc)
    (hd.mono fun _ hz => hz.1.resolve_left hz.2) ho
#align complex.differentiable_on_update_lim_insert_of_is_o Complex.differentiableOn_update_limUnder_insert_of_isLittleO

/-- **Removable singularity** theorem: if `s` is a neighborhood of `c : ℂ`, a function `f : ℂ → E`
is complex differentiable and is bounded on `s \ {c}`, then `f` redefined to be equal to
`limUnder (𝓝[≠] c) f` at `c` is complex differentiable on `s`. -/
theorem differentiableOn_update_limUnder_of_bddAbove {f : ℂ → E} {s : Set ℂ} {c : ℂ} (hc : s ∈ 𝓝 c)
    (hd : DifferentiableOn ℂ f (s \ {c})) (hb : BddAbove (norm ∘ f '' (s \ {c}))) :
    DifferentiableOn ℂ (update f c (limUnder (𝓝[≠] c) f)) s :=
  differentiableOn_update_limUnder_of_isLittleO hc hd <| IsBoundedUnder.isLittleO_sub_self_inv <|
    let ⟨C, hC⟩ := hb
    ⟨C + ‖f c‖, eventually_map.2 <| mem_nhdsWithin_iff_exists_mem_nhds_inter.2
      ⟨s, hc, fun _ hz => norm_sub_le_of_le (hC <| mem_image_of_mem _ hz) le_rfl⟩⟩
#align complex.differentiable_on_update_lim_of_bdd_above Complex.differentiableOn_update_limUnder_of_bddAbove

/-- **Removable singularity** theorem: if a function `f : ℂ → E` is complex differentiable on a
punctured neighborhood of `c` and $f(z) - f(c)=o((z-c)^{-1})$, then `f` has a limit at `c`. -/
theorem tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO {f : ℂ → E} {c : ℂ}
    (hd : ∀ᶠ z in 𝓝[≠] c, DifferentiableAt ℂ f z)
    (ho : (fun z => f z - f c) =o[𝓝[≠] c] fun z => (z - c)⁻¹) :
    Tendsto f (𝓝[≠] c) (𝓝 <| limUnder (𝓝[≠] c) f) := by
  rw [eventually_nhdsWithin_iff] at hd
  have : DifferentiableOn ℂ f ({z | z ≠ c → DifferentiableAt ℂ f z} \ {c}) := fun z hz =>
    (hz.1 hz.2).differentiableWithinAt
  have H := differentiableOn_update_limUnder_of_isLittleO hd this ho
  exact continuousAt_update_same.1 (H.differentiableAt hd).continuousAt
#align complex.tendsto_lim_of_differentiable_on_punctured_nhds_of_is_o Complex.tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO

/-- **Removable singularity** theorem: if a function `f : ℂ → E` is complex differentiable and
bounded on a punctured neighborhood of `c`, then `f` has a limit at `c`. -/
theorem tendsto_limUnder_of_differentiable_on_punctured_nhds_of_bounded_under {f : ℂ → E} {c : ℂ}
    (hd : ∀ᶠ z in 𝓝[≠] c, DifferentiableAt ℂ f z)
    (hb : IsBoundedUnder (· ≤ ·) (𝓝[≠] c) fun z => ‖f z - f c‖) :
    Tendsto f (𝓝[≠] c) (𝓝 <| limUnder (𝓝[≠] c) f) :=
  tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO hd hb.isLittleO_sub_self_inv
#align complex.tendsto_lim_of_differentiable_on_punctured_nhds_of_bounded_under Complex.tendsto_limUnder_of_differentiable_on_punctured_nhds_of_bounded_under

/-- The Cauchy formula for the derivative of a holomorphic function. -/
theorem two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable {U : Set ℂ}
    (hU : IsOpen U) {c w₀ : ℂ} {R : ℝ} {f : ℂ → E} (hc : closedBall c R ⊆ U)
    (hf : DifferentiableOn ℂ f U) (hw₀ : w₀ ∈ ball c R) :
    ((2 * π * I : ℂ)⁻¹ • ∮ z in C(c, R), ((z - w₀) ^ 2)⁻¹ • f z) = deriv f w₀ := by
  -- We apply the removable singularity theorem and the Cauchy formula to `dslope f w₀`
  have hf' : DifferentiableOn ℂ (dslope f w₀) U :=
    (differentiableOn_dslope (hU.mem_nhds ((ball_subset_closedBall.trans hc) hw₀))).mpr hf
  have h0 := (hf'.diffContOnCl_ball hc).two_pi_i_inv_smul_circleIntegral_sub_inv_smul hw₀
  rw [← dslope_same, ← h0]
  congr 1
  trans ∮ z in C(c, R), ((z - w₀) ^ 2)⁻¹ • (f z - f w₀)
  · have h1 : ContinuousOn (fun z : ℂ => ((z - w₀) ^ 2)⁻¹) (sphere c R) := by
      refine' ((continuous_id'.sub continuous_const).pow 2).continuousOn.inv₀ fun w hw h => _
      exact sphere_disjoint_ball.ne_of_mem hw hw₀ (sub_eq_zero.mp (sq_eq_zero_iff.mp h))
    have h2 : CircleIntegrable (fun z : ℂ => ((z - w₀) ^ 2)⁻¹ • f z) c R := by
      refine' ContinuousOn.circleIntegrable (pos_of_mem_ball hw₀).le _
      exact h1.smul (hf.continuousOn.mono (sphere_subset_closedBall.trans hc))
    have h3 : CircleIntegrable (fun z : ℂ => ((z - w₀) ^ 2)⁻¹ • f w₀) c R :=
      ContinuousOn.circleIntegrable (pos_of_mem_ball hw₀).le (h1.smul continuousOn_const)
    have h4 : (∮ z : ℂ in C(c, R), ((z - w₀) ^ 2)⁻¹) = 0 := by
      simpa using circleIntegral.integral_sub_zpow_of_ne (by decide : (-2 : ℤ) ≠ -1) c w₀ R
    simp only [smul_sub, circleIntegral.integral_sub h2 h3, h4, circleIntegral.integral_smul_const,
      zero_smul, sub_zero]
  · refine' circleIntegral.integral_congr (pos_of_mem_ball hw₀).le fun z hz => _
    simp only [dslope_of_ne, Metric.sphere_disjoint_ball.ne_of_mem hz hw₀, slope, ← smul_assoc, sq,
      mul_inv, Ne.def, not_false_iff, vsub_eq_sub, Algebra.id.smul_eq_mul]
set_option linter.uppercaseLean3 false in
#align complex.two_pi_I_inv_smul_circle_integral_sub_sq_inv_smul_of_differentiable Complex.two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable

end Complex
```
