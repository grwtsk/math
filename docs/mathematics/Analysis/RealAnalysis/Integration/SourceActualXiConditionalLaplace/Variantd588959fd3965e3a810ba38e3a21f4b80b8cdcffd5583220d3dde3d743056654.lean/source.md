# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualXiConditionalLaplace.Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4dcc4afda588d9013f4a9a47f7da3329dcd4c238` · SHA-256 `d588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RootActualXiExponentialEnvelope
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
The actual absolute cumulative primitive has genuine finite AC and retains
both Abel endpoints. A future linear absolute-average hypothesis extends its
Laplace L1 to positive real parameters with explicit finite-prefix payment.
No arithmetic average witness, complex continuation or RH claim is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiConditionalLaplace
open MeasureTheory Set Filter
open scoped Interval Topology
open RootActualXiTailPrimitive
noncomputable section

/-- The genuine cumulative absolute integral of the original anchored source primitive. -/
def actualXiAbsoluteCumulative (t : ℝ) : ℝ :=
  ∫ r in Real.log 7..t, |actualAnchoredXiTailPrimitive r|

/-- A conservative explicit payment for the true finite prefix and the future average. -/
def actualXiConditionalLaplaceBudget (M T₀ σ : ℝ) : ℝ :=
  M * (T₀ + Real.log 7 + 1 / σ) * Real.exp (-σ * Real.log 7)

private theorem lower_nonneg : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)

private theorem actual_abs_intervalIntegrable {b : ℝ} (hb : Real.log 7 ≤ b) :
    IntervalIntegrable (fun t => |actualAnchoredXiTailPrimitive t|) volume (Real.log 7) b :=
  (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).continuousOn.intervalIntegrable.abs

/-- The actual cumulative lower trace is exactly zero. -/
theorem actualXiAbsoluteCumulative_at_lower :
    actualXiAbsoluteCumulative (Real.log 7) = 0 := by
  simp [actualXiAbsoluteCumulative]

/-- The actual cumulative absolute integral is nonnegative on its real tail. -/
theorem actualXiAbsoluteCumulative_nonneg {t : ℝ} (ht : Real.log 7 ≤ t) :
    0 ≤ actualXiAbsoluteCumulative t :=
  intervalIntegral.integral_nonneg_of_forall ht (fun _ => abs_nonneg _)

/-- Its finite absolute continuity is proved from genuine original source L1. -/
theorem actualXiAbsoluteCumulative_absolutelyContinuous {b : ℝ} (hb : Real.log 7 ≤ b) :
    AbsolutelyContinuousOnInterval actualXiAbsoluteCumulative (Real.log 7) b :=
  (actual_abs_intervalIntegrable hb).absolutelyContinuousOnInterval_intervalIntegral
    (by simp : Real.log 7 ∈ uIcc (Real.log 7) b)

/-- The AE cumulative derivative retains the actual original absolute primitive. -/
theorem actualXiAbsoluteCumulative_ae_hasDerivAt {b : ℝ} (hb : Real.log 7 ≤ b) :
    ∀ᵐ t, t ∈ uIcc (Real.log 7) b →
      HasDerivAt actualXiAbsoluteCumulative |actualAnchoredXiTailPrimitive t| t := by
  filter_upwards [(actual_abs_intervalIntegrable hb).ae_hasDerivAt_integral] with t ht hm
  exact ht hm (Real.log 7) (by simp)

private theorem cumulative_weight_intervalIntegrable {b : ℝ} (hb : Real.log 7 ≤ b)
    (σ : ℝ) :
    IntervalIntegrable (fun t => actualXiAbsoluteCumulative t * Real.exp (-σ * t))
      volume (Real.log 7) b :=
  ((actualXiAbsoluteCumulative_absolutelyContinuous hb).continuousOn.mul
    (by fun_prop)).intervalIntegrable

private theorem absolute_weight_intervalIntegrable {b : ℝ} (hb : Real.log 7 ≤ b)
    (σ : ℝ) :
    IntervalIntegrable (fun t => |actualAnchoredXiTailPrimitive t| * Real.exp (-σ * t))
      volume (Real.log 7) b :=
  (actual_abs_intervalIntegrable hb).mul_continuousOn (by fun_prop)

/-- Genuine finite Abel keeps both cumulative traces before evaluating the anchor. -/
theorem actualXiLaplace_finite_abel {b : ℝ} (hb : Real.log 7 ≤ b) (σ : ℝ) :
    (∫ t in Real.log 7..b, |actualAnchoredXiTailPrimitive t| * Real.exp (-σ * t)) =
      actualXiAbsoluteCumulative b * Real.exp (-σ * b) -
        actualXiAbsoluteCumulative (Real.log 7) * Real.exp (-σ * Real.log 7) +
          σ * ∫ t in Real.log 7..b, actualXiAbsoluteCumulative t * Real.exp (-σ * t) := by
  have hH := actualXiAbsoluteCumulative_absolutelyContinuous hb
  have he : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-σ * t)) := by fun_prop
  have heAC : AbsolutelyContinuousOnInterval (fun t : ℝ => Real.exp (-σ * t))
      (Real.log 7) b := he.contDiffOn.absolutelyContinuousOnInterval
  have hd (t : ℝ) :
      HasDerivAt (fun t : ℝ => Real.exp (-σ * t)) (-σ * Real.exp (-σ * t)) t := by
    simpa only [id_eq, mul_one, mul_comm] using
      (((hasDerivAt_id t).const_mul (-σ)).exp)
  have hi1 := absolute_weight_intervalIntegrable hb σ
  have hi2 := cumulative_weight_intervalIntegrable hb σ
  have hi2' : IntervalIntegrable
      (fun t => -σ * (actualXiAbsoluteCumulative t * Real.exp (-σ * t)))
      volume (Real.log 7) b := hi2.const_mul (-σ)
  have hx : (∫ t in Real.log 7..b,
      deriv actualXiAbsoluteCumulative t * Real.exp (-σ * t) +
        actualXiAbsoluteCumulative t * deriv (fun t => Real.exp (-σ * t)) t) =
      (∫ t in Real.log 7..b, |actualAnchoredXiTailPrimitive t| * Real.exp (-σ * t)) -
        σ * ∫ t in Real.log 7..b, actualXiAbsoluteCumulative t * Real.exp (-σ * t) := by
    rw [sub_eq_add_neg, ← neg_mul, ← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_add hi1 hi2']
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualXiAbsoluteCumulative_ae_hasDerivAt hb] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv, (hd t).deriv]
    ring
  have hh := hH.integral_deriv_mul_eq_sub heAC
  rw [hx] at hh
  linarith

/-- The future mean hypothesis pays the actual finite prefix through monotonicity. -/
theorem actualXiAbsoluteCumulative_le_future_envelope {M T₀ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T)
    {t : ℝ} (ht : Real.log 7 ≤ t) : actualXiAbsoluteCumulative t ≤ M * (t + T₀) := by
  have ht0 := lower_nonneg.trans ht
  have hT0 := lower_nonneg.trans hT₀
  by_cases h : T₀ ≤ t
  · exact (haverage t h).trans (by nlinarith)
  · have hm : actualXiAbsoluteCumulative t ≤ actualXiAbsoluteCumulative T₀ := by
      exact intervalIntegral.integral_mono_interval le_rfl ht (le_of_not_ge h)
        (Eventually.of_forall (fun _ => abs_nonneg _)) (actual_abs_intervalIntegrable hT₀)
    exact hm.trans ((haverage T₀ le_rfl).trans (by nlinarith))

private theorem polynomial_exponential_bound {M T₀ σ b : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ) (hb : Real.log 7 ≤ b) :
    (∫ t in Real.log 7..b, M * (t + T₀) * Real.exp (-σ * t)) ≤
      M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * Real.log 7) := by
  let q : ℝ → ℝ := fun t => -M * ((t + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * t)
  have hi : IntervalIntegrable (fun t => M * (t + T₀) * Real.exp (-σ * t))
      volume (Real.log 7) b := (by fun_prop : Continuous _).intervalIntegrable _ _
  have hd (t : ℝ) : HasDerivAt q (M * (t + T₀) * Real.exp (-σ * t)) t := by
    have hlin := (((hasDerivAt_id t).add_const T₀).div_const σ).add_const (1 / σ ^ 2)
    have hexp := ((hasDerivAt_id t).const_mul (-σ)).exp
    convert (hlin.const_mul (-M)).mul hexp using 1 <;> first | rfl | skip
    dsimp
    field_simp
    ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hi
  rw [he]
  have hq : q b ≤ 0 := by
    have hb0 := lower_nonneg.trans hb
    have hT0 := lower_nonneg.trans hT₀
    dsimp [q]
    have hp : 0 ≤ (b + T₀) / σ + 1 / σ ^ 2 := by positivity
    exact mul_nonpos_of_nonpos_of_nonneg
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hM) hp) (Real.exp_pos _).le
  dsimp [q] at hq ⊢
  linarith

private theorem cumulative_weight_norm_bound {M T₀ σ b : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T)
    (hb : Real.log 7 ≤ b) :
    (∫ t in Real.log 7..b,
      ‖actualXiAbsoluteCumulative t * Real.exp (-σ * t)‖) ≤
      M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * Real.log 7) := by
  have hi := cumulative_weight_intervalIntegrable hb σ
  have hj : IntervalIntegrable (fun t => M * (t + T₀) * Real.exp (-σ * t))
      volume (Real.log 7) b := (by fun_prop : Continuous _).intervalIntegrable _ _
  apply (intervalIntegral.integral_mono_on hb hi.norm hj _).trans
    (polynomial_exponential_bound hM hT₀ hσ hb)
  intro t ht
  rw [Real.norm_eq_abs, abs_of_nonneg
    (mul_nonneg (actualXiAbsoluteCumulative_nonneg ht.1) (Real.exp_pos _).le)]
  exact mul_le_mul_of_nonneg_right
    (actualXiAbsoluteCumulative_le_future_envelope hM hT₀ haverage ht.1)
    (Real.exp_pos _).le

/-- Actual weighted cumulative L1 is genuine, before any Laplace norm is estimated. -/
theorem actualXiCumulativeLaplace_integrableOn {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    IntegrableOn (fun t => actualXiAbsoluteCumulative t * Real.exp (-σ * t))
      (Ioi (Real.log 7)) := by
  apply integrableOn_Ioi_of_intervalIntegral_norm_bounded
    (M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * Real.log 7))
      (Real.log 7) (l := (atTop : Filter ℝ)) (b := fun b : ℝ => b)
  · intro b
    by_cases hb : Real.log 7 ≤ b
    · exact (cumulative_weight_intervalIntegrable hb σ).1
    · simp [Ioc_eq_empty_of_le (le_of_not_ge hb)]
  · exact tendsto_id
  · filter_upwards [eventually_ge_atTop (Real.log 7)] with b hb
    exact cumulative_weight_norm_bound hM hT₀ hσ haverage hb

/-- The actual upper Abel trace decays under the precise future average hypothesis. -/
theorem actualXiCumulativeLaplace_tendsto_zero {M T₀ σ : ℝ} (_hM : 0 ≤ M)
    (_hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    Tendsto (fun t => actualXiAbsoluteCumulative t * Real.exp (-σ * t))
      atTop (𝓝 (0 : ℝ)) := by
  have he : Tendsto (fun t : ℝ => M * t * Real.exp (-σ * t)) atTop (𝓝 (0 : ℝ)) := by
    simpa only [Real.rpow_one, mul_assoc, mul_zero] using
      (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 1 σ hσ).const_mul M
  apply squeeze_zero' _ _ he
  · filter_upwards [eventually_ge_atTop (Real.log 7)] with t ht
    exact mul_nonneg (actualXiAbsoluteCumulative_nonneg ht) (Real.exp_pos _).le
  · filter_upwards [eventually_ge_atTop T₀] with t ht
    exact mul_le_mul_of_nonneg_right (haverage t ht) (Real.exp_pos _).le

private theorem absolute_laplace_finite_tendsto {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    Tendsto (fun b => ∫ t in Real.log 7..b,
      ‖actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)‖) atTop
        (𝓝 (σ * ∫ t in Ioi (Real.log 7),
          actualXiAbsoluteCumulative t * Real.exp (-σ * t))) := by
  have hi := intervalIntegral_tendsto_integral_Ioi (Real.log 7)
    (actualXiCumulativeLaplace_integrableOn hM hT₀ hσ haverage) tendsto_id
  have hh := (actualXiCumulativeLaplace_tendsto_zero hM hT₀ hσ haverage).add (hi.const_mul σ)
  simp only [zero_add] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (Real.log 7)] with b hb
  simp only [id_eq, Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
  rw [actualXiLaplace_finite_abel hb σ, actualXiAbsoluteCumulative_at_lower, zero_mul, sub_zero]

/-- Every positive real Laplace parameter has actual source L1 under the future mean. -/
theorem actualXiLaplace_integrableOn_of_future_average {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    IntegrableOn (fun t => actualAnchoredXiTailPrimitive t * Real.exp (-σ * t))
      (Ioi (Real.log 7)) := by
  apply integrableOn_Ioi_of_intervalIntegral_norm_tendsto
    (σ * ∫ t in Ioi (Real.log 7), actualXiAbsoluteCumulative t * Real.exp (-σ * t))
      (Real.log 7) (l := (atTop : Filter ℝ)) (b := fun b : ℝ => b)
  · intro b
    by_cases hb : Real.log 7 ≤ b
    · have hg : IntervalIntegrable actualAnchoredXiTailPrimitive volume (Real.log 7) b :=
        (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).continuousOn.intervalIntegrable
      exact (hg.mul_continuousOn (by fun_prop)).1
    · simp [Ioc_eq_empty_of_le (le_of_not_ge hb)]
  · exact tendsto_id
  · exact absolute_laplace_finite_tendsto hM hT₀ hσ haverage

/-- The genuine absolute Laplace integral retains the cumulative identity at infinity. -/
theorem actualXiLaplace_integral_norm_eq {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    (∫ t in Ioi (Real.log 7), ‖actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)‖) =
      σ * ∫ t in Ioi (Real.log 7), actualXiAbsoluteCumulative t * Real.exp (-σ * t) := by
  exact tendsto_nhds_unique
    (intervalIntegral_tendsto_integral_Ioi (Real.log 7)
      (actualXiLaplace_integrableOn_of_future_average hM hT₀ hσ haverage).norm tendsto_id)
    (absolute_laplace_finite_tendsto hM hT₀ hσ haverage)

/-- The actual conditional absolute Laplace norm has an explicit finite-prefix payment. -/
theorem actualXiLaplace_integral_norm_le {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    (∫ t in Ioi (Real.log 7), ‖actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)‖) ≤
      actualXiConditionalLaplaceBudget M T₀ σ := by
  rw [actualXiLaplace_integral_norm_eq hM hT₀ hσ haverage]
  have hh : (∫ t in Ioi (Real.log 7), actualXiAbsoluteCumulative t * Real.exp (-σ * t)) ≤
      M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * Real.log 7) := by
    apply le_of_tendsto
      (intervalIntegral_tendsto_integral_Ioi (Real.log 7)
        (actualXiCumulativeLaplace_integrableOn hM hT₀ hσ haverage) tendsto_id)
    filter_upwards [eventually_ge_atTop (Real.log 7)] with b hb
    simp only [id_eq]
    have he : (∫ t in Real.log 7..b, actualXiAbsoluteCumulative t * Real.exp (-σ * t)) =
        ∫ t in Real.log 7..b, ‖actualXiAbsoluteCumulative t * Real.exp (-σ * t)‖ := by
      apply intervalIntegral.integral_congr
      rw [uIcc_of_le hb]
      intro t ht
      change actualXiAbsoluteCumulative t * Real.exp (-σ * t) =
        ‖actualXiAbsoluteCumulative t * Real.exp (-σ * t)‖
      rw [Real.norm_eq_abs, abs_of_nonneg
        (mul_nonneg (actualXiAbsoluteCumulative_nonneg ht.1) (Real.exp_pos _).le)]
    rw [he]
    exact cumulative_weight_norm_bound hM hT₀ hσ haverage hb
  calc
    _ ≤ σ * (M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) *
        Real.exp (-σ * Real.log 7)) := mul_le_mul_of_nonneg_left hh hσ.le
    _ = _ := by unfold actualXiConditionalLaplaceBudget; field_simp; ring

/-- The signed actual Laplace integral is estimated only after genuine infinite source L1. -/
theorem actualXiLaplace_norm_le {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    ‖∫ t in Ioi (Real.log 7), actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)‖ ≤
      actualXiConditionalLaplaceBudget M T₀ σ :=
  (norm_integral_le_integral_norm _).trans
    (actualXiLaplace_integral_norm_le hM hT₀ hσ haverage)

end
end FormalResearch.RiemannHypothesis.SourceActualXiConditionalLaplace
```
