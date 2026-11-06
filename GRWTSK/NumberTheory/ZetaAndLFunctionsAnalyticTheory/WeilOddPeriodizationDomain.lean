/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddExactPeriodization

/-!
# Equality of the literal and periodic odd gamma-energy domains

In Section 2 of weil-periodic-boundary.md (2026-11-04), the difference
between the two translation energies is the bounded boundary correction.
Here each exponential component of either energy is integrable because
the unweighted jump is bounded by a fixed multiple of the squared mass.
For a nonnegative measurable jump, Tonelli identifies finiteness of the
whole gamma-weighted integral with summability of the component integrals.
Adding the checked signed difference series to the periodic series
therefore proves convergence on the whole-line side. The existing wrap
bound supplies the forward domain inclusion.

This concerns the real measurable odd representatives and the literal
zero and circle translates in the existing exact periodization theorem.
The self-adjoint operator domain and complex or character-specific
versions are separate. Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators ENNReal NNReal

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddPeriodizationDomain

open OddRootProjection OddWrapEnergy OddWrapPeriodLift OddKernelSineTransform
open OddBoundaryDifference OddHighFloor

private def exponentialJump (g : ℝ → ℝ) (j : ℕ) (r : ℝ) : ℝ :=
  Real.exp (-(2 * (j : ℝ) + 1 / 2) * r) * g r

private theorem measurable_zeroJump {f : ℝ → ℝ} (hf : Measurable f) :
    Measurable (fun r => zeroShiftEnergy r f) := by
  let G : ℝ × ℝ → ℝ := fun z => (f (z.2 + z.1) - f z.2) ^ 2
  have hG : Measurable G := by dsimp [G]; fun_prop
  exact hG.stronglyMeasurable.integral_prod_right'.measurable

private theorem zeroShiftEnergy_le_four_mass {f : ℝ → ℝ} (hf : MemLp f 2 volume) (r : ℝ) :
    zeroShiftEnergy r f ≤ 4 * ∫ t : ℝ, f t ^ 2 := by
  have hSq := hf.integrable_sq
  have hShiftSq : Integrable (fun t : ℝ => f (t + r) ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hSq
  calc
    _ ≤ ∫ t : ℝ, 2 * (f (t + r) ^ 2 + f t ^ 2) := by
      apply integral_mono (zeroShiftSquare_integrable hf r) ((hShiftSq.add hSq).const_mul 2)
      intro t
      change (f (t + r) - f t) ^ 2 ≤ 2 * (f (t + r) ^ 2 + f t ^ 2)
      nlinarith only [sq_nonneg (f (t + r) + f t)]
    _ = _ := by
      rw [integral_const_mul, integral_add hShiftSq hSq,
        integral_add_right_eq_self (fun t : ℝ => f t ^ 2) r]
      ring

private theorem integrableOn_exponentialJump_of_bound {g : ℝ → ℝ} {C : ℝ}
    (hg : Measurable g) (hn : ∀ r ∈ Ioi (0 : ℝ), 0 ≤ g r)
    (hb : ∀ r ∈ Ioi (0 : ℝ), g r ≤ C) (j : ℕ) :
    IntegrableOn (exponentialJump g j) (Ioi 0) := by
  have ha : 0 < 2 * (j : ℝ) + 1 / 2 := by positivity
  have hExp := integrableOn_exp_mul_Ioi (neg_lt_zero.mpr ha) 0
  have hMeas : Measurable (exponentialJump g j) := by unfold exponentialJump; fun_prop
  refine (hExp.mul_const C).mono' hMeas.aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  change ‖exponentialJump g j r‖ ≤ _
  rw [exponentialJump, Real.norm_of_nonneg (mul_nonneg (Real.exp_nonneg _) (hn r hr))]
  exact mul_le_mul_of_nonneg_left (hb r hr) (Real.exp_nonneg _)

/-- Tonelli for the actual nonnegative gamma decomposition, including the
reverse inference from summable component integrals to integrability. -/
private theorem gamma_integrable_iff_summable_exponential {g : ℝ → ℝ} (hg : Measurable g)
    (hn : ∀ r ∈ Ioi (0 : ℝ), 0 ≤ g r)
    (hInt : ∀ j, IntegrableOn (exponentialJump g j) (Ioi 0)) :
    IntegrableOn (fun r => parityKernel 0 r * g r) (Ioi 0) ↔
      Summable (fun j : ℕ => ∫ r in Ioi (0 : ℝ), exponentialJump g j r) := by
  let μ := volume.restrict (Ioi (0 : ℝ))
  let G := fun r => parityKernel 0 r * g r
  have hG : Measurable G := by
    apply Measurable.mul _ hg
    unfold parityKernel
    fun_prop
  have hMeas (j : ℕ) : Measurable (exponentialJump g j) := by unfold exponentialJump; fun_prop
  have hPos (r : ℝ) (hr : r ∈ Ioi (0 : ℝ)) (j : ℕ) : 0 ≤ exponentialJump g j r :=
    mul_nonneg (Real.exp_nonneg _) (hn r hr)
  have hPoint (r : ℝ) (hr : r ∈ Ioi (0 : ℝ)) :
      HasSum (fun j => exponentialJump g j r) (G r) := by
    have h := (parityKernel_zero_exp_summable hr).hasSum.mul_right (g r)
    rw [← parityKernel_zero_eq_tsum hr] at h
    simpa only [exponentialJump, neg_mul, G] using h
  have hInterior : ∀ᵐ r ∂μ, r ∈ Ioi (0 : ℝ) := ae_restrict_mem measurableSet_Ioi
  have hGPos : 0 ≤ᵐ[μ] G := by
    filter_upwards [hInterior] with r hr
    change 0 ≤ G r
    rw [← (hPoint r hr).tsum_eq]
    exact tsum_nonneg (hPos r hr)
  have hPosAE (j : ℕ) : 0 ≤ᵐ[μ] exponentialJump g j :=
    hInterior.mono (fun r hr => hPos r hr j)
  have hTonelli : (∫⁻ r, ENNReal.ofReal (G r) ∂μ) =
      ∑' j : ℕ, ENNReal.ofReal (∫ r, exponentialJump g j r ∂μ) := by
    calc
      _ = ∫⁻ r, ∑' j : ℕ, ENNReal.ofReal (exponentialJump g j r) ∂μ := by
        apply lintegral_congr_ae
        filter_upwards [hInterior] with r hr
        rw [← (hPoint r hr).tsum_eq, ENNReal.ofReal_tsum_of_nonneg
          (hPos r hr) (hPoint r hr).summable]
      _ = ∑' j : ℕ, ∫⁻ r, ENNReal.ofReal (exponentialJump g j r) ∂μ := by
        exact lintegral_tsum (fun j => (hMeas j).ennreal_ofReal.aemeasurable)
      _ = _ := tsum_congr (fun j => (ofReal_integral_eq_lintegral_ofReal (hInt j) (hPosAE j)).symm)
  let a : ℕ → ℝ≥0 := fun j => ⟨∫ r, exponentialJump g j r ∂μ, integral_nonneg_of_ae (hPosAE j)⟩
  have hA (j : ℕ) : ENNReal.ofReal (∫ r, exponentialJump g j r ∂μ) = (a j : ℝ≥0∞) := by
    change ENNReal.ofReal (a j : ℝ) = _
    exact ENNReal.ofReal_coe_nnreal
  change Integrable G μ ↔ Summable (fun j => (a j : ℝ))
  rw [Integrable, and_iff_right hG.aestronglyMeasurable, hasFiniteIntegral_iff_ofReal hGPos,
    hTonelli, lt_top_iff_ne_top]
  simp_rw [hA]
  rw [ENNReal.tsum_coe_ne_top_iff_summable, NNReal.summable_coe]

/-- Finite periodic gamma energy implies finite literal zero-extension
gamma energy on the same measurable odd supported input. -/
theorem zeroWeightedEnergy_integrable_of_periodic (T : ℝ) (hT : 0 < T)
    {f : ℝ → ℝ} (hf : Measurable f) (hf2 : MemLp f 2 volume)
    (hodd : ∀ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hperiod : IntegrableOn (fun r => parityKernel 0 r * periodicJumpEnergy T hT r f) (Ioi 0)) :
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) := by
  let z := fun r => zeroShiftEnergy r f
  let p := fun r => periodicJumpEnergy T hT r f
  have hzm : Measurable z := measurable_zeroJump hf
  have hpm : Measurable p := measurable_periodicJumpEnergy T hT hf2
  have hzn (r : ℝ) (_hr : r ∈ Ioi (0 : ℝ)) : 0 ≤ z r :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hpn (r : ℝ) (_hr : r ∈ Ioi (0 : ℝ)) : 0 ≤ p r :=
    periodicJumpEnergy_nonneg T hT r f
  have hzi (j : ℕ) : IntegrableOn (exponentialJump z j) (Ioi 0) :=
    integrableOn_exponentialJump_of_bound hzm hzn (fun r _ => zeroShiftEnergy_le_four_mass hf2 r) j
  have hpi (j : ℕ) : IntegrableOn (exponentialJump p j) (Ioi 0) := by
    refine integrableOn_exponentialJump_of_bound (C := 2 * (4 * ∫ t : ℝ, f t ^ 2)) hpm hpn ?_ j
    intro r hr
    exact (periodicJumpEnergy_le_two_zeroShiftEnergy T hT r hr.le hf2 hsupport).trans
      (mul_le_mul_of_nonneg_left (zeroShiftEnergy_le_four_mass hf2 r) (by norm_num))
  have hpSum := (gamma_integrable_iff_summable_exponential hpm hpn hpi).1 hperiod
  have hB := hasSum_actual_exponential_jump_differences hT hf hf2 hsupport (fun t _ => hodd t)
  have hDiff : Summable (fun j : ℕ => (∫ r in Ioi (0 : ℝ), exponentialJump z j r) -
      ∫ r in Ioi (0 : ℝ), exponentialJump p j r) := by
    apply hB.summable.congr
    intro j
    rw [← integral_sub (hzi j) (hpi j)]
    apply integral_congr_ae (Eventually.of_forall (fun r => ?_))
    simp only [exponentialJump, z, p, mul_sub]
  have hzSum : Summable (fun j : ℕ => ∫ r in Ioi (0 : ℝ), exponentialJump z j r) := by
    apply (hDiff.add hpSum).congr
    intro j
    simp only [sub_add_cancel]
  exact (gamma_integrable_iff_summable_exponential hzm hzn hzi).2 hzSum

/-- The two literal gamma-energy integrability domains coincide on the
supported measurable real odd sector. -/
theorem zeroWeightedEnergy_integrable_iff_periodic (T : ℝ) (hT : 0 < T)
    {f : ℝ → ℝ} (hf : Measurable f) (hf2 : MemLp f 2 volume)
    (hodd : ∀ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) ↔
      IntegrableOn (fun r => parityKernel 0 r * periodicJumpEnergy T hT r f) (Ioi 0) :=
  ⟨fun hzero => (periodicWeightedEnergy_integrable_le T hT hf2 hsupport hzero).1,
    zeroWeightedEnergy_integrable_of_periodic T hT hf hf2 hodd hsupport⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddPeriodizationDomain
