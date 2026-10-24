/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic

/-!
# Finite exponential Volterra estimates

The causal exponential Volterra operator is an `L²` contraction up to the
exact factor `σ⁻¹`.  The proof is confined to a finite interval: it uses the
absolutely continuous differential equation for the causal integral and does
not assume any half-line integrability.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter

namespace GRWTSK.Analysis.Integration.ExponentialVolterraL2

/-- The finite causal exponential Volterra operator. -/
def exponentialVolterra (σ : ℝ) (F : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..t, Real.exp (-σ * (t - u)) * F u

/-- Pulling out the terminal exponential identifies the causal integral with
an ordinary absolutely continuous primitive. -/
theorem exponentialVolterra_eq_damped_primitive (σ : ℝ) (F : ℝ → ℝ) (t : ℝ) :
    exponentialVolterra σ F t =
      Real.exp (-σ * t) *
        ∫ u in (0 : ℝ)..t, Real.exp (σ * u) * F u := by
  unfold exponentialVolterra
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro u _hu
  dsimp only
  have hexponent : -σ * (t - u) = -σ * t + σ * u := by ring
  rw [hexponent, Real.exp_add]
  ring

/-- Finite `L²` energy estimate for an absolutely continuous solution of the
damped first-order equation. -/
theorem sq_integral_le_of_damped_deriv {σ T : ℝ} {F V : ℝ → ℝ}
    (hσ : 0 < σ) (hT : 0 ≤ T)
    (hV : AbsolutelyContinuousOnInterval V 0 T) (hV0 : V 0 = 0)
    (hderiv : ∀ᵐ t ∂volume, t ∈ uIcc (0 : ℝ) T →
      HasDerivAt V (F t - σ * V t) t)
    (hF2 : IntervalIntegrable (fun t : ℝ => F t ^ 2) volume 0 T) :
    (∫ t in (0 : ℝ)..T, V t ^ 2) ≤
      (∫ t in (0 : ℝ)..T, F t ^ 2) / σ ^ 2 := by
  have hV2 : AbsolutelyContinuousOnInterval (fun t : ℝ => V t ^ 2) 0 T := by
    have heq : V * V = fun t : ℝ => V t ^ 2 := by
      funext t
      simp [pow_two]
    rw [← heq]
    exact hV.mul hV
  have hV2int : IntervalIntegrable (fun t : ℝ => V t ^ 2) volume 0 T :=
    hV2.continuousOn.intervalIntegrable
  have hright : IntervalIntegrable
      (fun t : ℝ => F t ^ 2 / σ - σ * V t ^ 2) volume 0 T :=
    hF2.div_const σ |>.sub (hV2int.const_mul σ)
  have hmono : (∫ t in (0 : ℝ)..T, deriv (fun x : ℝ => V x ^ 2) t) ≤
      ∫ t in (0 : ℝ)..T, (F t ^ 2 / σ - σ * V t ^ 2) := by
    apply intervalIntegral.integral_mono_ae_restrict hT
      hV2.intervalIntegrable_deriv hright
    have hderiv' : ∀ᵐ t ∂volume.restrict (Icc (0 : ℝ) T),
        t ∈ uIcc (0 : ℝ) T → HasDerivAt V (F t - σ * V t) t :=
      hderiv.filter_mono (ae_mono Measure.restrict_le_self)
    filter_upwards [ae_restrict_mem measurableSet_Icc, hderiv'] with t htu ht
    have htu' : t ∈ uIcc (0 : ℝ) T := by
      simpa only [uIcc_of_le hT] using htu
    have hbase := ht htu'
    have hmul := hbase.mul hbase
    have hd : HasDerivAt (fun x : ℝ => V x ^ 2)
        (2 * V t * (F t - σ * V t)) t := by
      have heq : V * V = fun x : ℝ => V x ^ 2 := by
        funext x
        simp [pow_two]
      rw [← heq]
      convert hmul using 1
      all_goals first | rfl | ring
    have hd' : deriv (fun x : ℝ => V x ^ 2) t =
        2 * V t * (F t - σ * V t) := hd.deriv
    rw [hd']
    have hsquare : 0 ≤ (F t - σ * V t) ^ 2 / σ :=
      div_nonneg (sq_nonneg _) hσ.le
    have halgebra :
        F t ^ 2 / σ - σ * V t ^ 2 -
            2 * V t * (F t - σ * V t) =
          (F t - σ * V t) ^ 2 / σ := by
      field_simp [ne_of_gt hσ]
      ring
    linarith
  rw [hV2.integral_deriv_eq_sub, hV0, zero_pow (by norm_num : (2 : ℕ) ≠ 0), sub_zero,
    intervalIntegral.integral_sub (hF2.div_const σ) (hV2int.const_mul σ),
    intervalIntegral.integral_div, intervalIntegral.integral_const_mul] at hmono
  have hscaled : (∫ t in (0 : ℝ)..T, V t ^ 2) * σ ^ 2 ≤
      ∫ t in (0 : ℝ)..T, F t ^ 2 := by
    have hVT : 0 ≤ V T ^ 2 := sq_nonneg _
    have hfirst : σ * (∫ t in (0 : ℝ)..T, V t ^ 2) ≤
        (∫ t in (0 : ℝ)..T, F t ^ 2) / σ := by
      linarith
    have := (le_div_iff₀ hσ).mp hfirst
    nlinarith
  exact (le_div_iff₀ (sq_pos_of_pos hσ)).2 hscaled

/-- The finite exponential Volterra operator has squared `L²` norm at most
`σ⁻²` times the squared source norm.  Both hypotheses are finite-interval
conditions. -/
theorem exponentialVolterra_sq_integral_le {σ T : ℝ} {F : ℝ → ℝ}
    (hσ : 0 < σ) (hT : 0 ≤ T)
    (hF : IntervalIntegrable F volume 0 T)
    (hF2 : IntervalIntegrable (fun t : ℝ => F t ^ 2) volume 0 T) :
    (∫ t in (0 : ℝ)..T, exponentialVolterra σ F t ^ 2) ≤
      (∫ t in (0 : ℝ)..T, F t ^ 2) / σ ^ 2 := by
  let A : ℝ → ℝ := fun t => ∫ u in (0 : ℝ)..t, Real.exp (σ * u) * F u
  let V : ℝ → ℝ := fun t => Real.exp (-σ * t) * A t
  have hexpF : IntervalIntegrable (fun u : ℝ => Real.exp (σ * u) * F u) volume 0 T :=
    hF.continuousOn_mul (by fun_prop)
  have hA : AbsolutelyContinuousOnInterval A 0 T := by
    exact hexpF.absolutelyContinuousOnInterval_intervalIntegral left_mem_uIcc
  have hexp : AbsolutelyContinuousOnInterval (fun t : ℝ => Real.exp (-σ * t)) 0 T := by
    apply ContDiffOn.absolutelyContinuousOnInterval
    fun_prop
  have hV : AbsolutelyContinuousOnInterval V 0 T := hexp.mul hA
  have hV0 : V 0 = 0 := by simp [V, A]
  have hderiv : ∀ᵐ t ∂volume, t ∈ uIcc (0 : ℝ) T →
      HasDerivAt V (F t - σ * V t) t := by
    filter_upwards [hexpF.ae_hasDerivAt_integral] with t ht htu
    have hAderiv : HasDerivAt A (Real.exp (σ * t) * F t) t := ht htu 0 left_mem_uIcc
    have hexpderiv : HasDerivAt (fun x : ℝ => Real.exp (-σ * x))
        (-σ * Real.exp (-σ * t)) t := by
      convert (((hasDerivAt_id t).const_mul (-σ)).exp) using 1 <;>
        simp only [id_eq]
      all_goals ring
    have hprod := hexpderiv.mul hAderiv
    change HasDerivAt V
      ((-σ * Real.exp (-σ * t)) * A t +
        Real.exp (-σ * t) * (Real.exp (σ * t) * F t)) t at hprod
    have he : Real.exp (-σ * t) * Real.exp (σ * t) = 1 := by
      rw [← Real.exp_add]
      convert Real.exp_zero using 1
      ring
    have hrate :
        (-σ * Real.exp (-σ * t)) * A t +
            Real.exp (-σ * t) * (Real.exp (σ * t) * F t) =
          F t - σ * V t := by
      dsimp only [V]
      rw [← mul_assoc, he, one_mul]
      ring
    convert hprod using 1
    exact hrate.symm
  have hbound := sq_integral_le_of_damped_deriv hσ hT hV hV0 hderiv hF2
  calc
    (∫ t in (0 : ℝ)..T, exponentialVolterra σ F t ^ 2) =
        ∫ t in (0 : ℝ)..T, V t ^ 2 := by
      apply intervalIntegral.integral_congr
      intro t _ht
      change exponentialVolterra σ F t ^ 2 = V t ^ 2
      rw [exponentialVolterra_eq_damped_primitive]
    _ ≤ (∫ t in (0 : ℝ)..T, F t ^ 2) / σ ^ 2 := hbound

end GRWTSK.Analysis.Integration.ExponentialVolterraL2

#print axioms GRWTSK.Analysis.Integration.ExponentialVolterraL2.exponentialVolterra_sq_integral_le
