/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPrimePoleOutput
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# The actual fixed-window Weil source is a bounded form perturbation

The public pole output is reused at zero input and unit pole coefficient.
Its squared L2 mass is evaluated as `sinh T - T`. An elementary integrated
square proof supplies Cauchy--Schwarz, retaining the original support and
Lebesgue norm. The existing full prime-mass bound then gives an ABSOLUTE
bounded-perturbation estimate for the literal source minus its nonnegative
gamma energy.

The bound is fixed-window and may grow with T. It does not establish the
vanishing cofinal defect, any finite paid-head sign, or operator association.
The separate closed-energy graph construction still needs the actual L2
translation/cutoff identification before it can assert completeness of this
specific maximal gamma domain. No claim of that identification is hidden here.

Source-proof candidate. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped Interval

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FixedWindowSemibounded

open OddRootProjection OddPrimePoleOutput OddSineForm OddHighComplement
open OddLiteralWindow OddWrapEnergy LowSchur

/-- Reuse the existing literal pole output rather than an independently
chosen profile. At zero physical input its scalar coefficient is one. -/
def sourcePoleProfile (T : ℝ) : ℝ → ℝ :=
  primePoleOutput T (gammaConstant 1 0) (fun _ => 0) 1

theorem sourcePoleProfile_apply (T t : ℝ) :
    sourcePoleProfile T t = if t ∈ Icc (-T) T then Real.sinh (t / 2) else 0 := by
  simp [sourcePoleProfile, primePoleOutput, primeOutput, indicator_apply]

theorem memLp_sourcePoleProfile (T : ℝ) : MemLp (sourcePoleProfile T) 2 volume :=
  memLp_primePoleOutput T (gammaConstant 1 0) (by simpa using (memLp_zero : MemLp (0 : ℝ → ℝ) 2 volume)) 1

/-- Exact whole-line norm of the zero-extended source pole. -/
theorem sourcePoleProfile_sq_integral (T : ℝ) (hT : 0 ≤ T) :
    (∫ t : ℝ, (sourcePoleProfile T t) ^ 2) = Real.sinh T - T := by
  have hshape : (fun t : ℝ => sourcePoleProfile T t ^ 2) =
      (Icc (-T) T).indicator (fun t : ℝ => Real.sinh (t / 2) ^ 2) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;> simp [sourcePoleProfile_apply, ht]
  rw [hshape, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -T ≤ T)]
  let F : ℝ → ℝ := fun t => (Real.sinh t - t) / 2
  have hderiv (t : ℝ) : HasDerivAt F (Real.sinh (t / 2) ^ 2) t := by
    apply (((Real.hasDerivAt_sinh t).sub (hasDerivAt_id t)).div_const 2).congr_deriv
    have hp : Real.exp (t / 2) * Real.exp (t / 2) = Real.exp t := by
      rw [← Real.exp_add]
      congr 1
      ring
    have hn : Real.exp (-(t / 2)) * Real.exp (-(t / 2)) = Real.exp (-t) := by
      rw [← Real.exp_add]
      congr 1
      ring
    have hc : Real.exp (t / 2) * Real.exp (-(t / 2)) = 1 := by
      rw [← Real.exp_add]
      simp
    rw [Real.cosh_eq, Real.sinh_eq]
    nlinarith [hp, hn, hc]
  have hcont : Continuous (fun t : ℝ => Real.sinh (t / 2) ^ 2) := by fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hderiv t)
    (hcont.intervalIntegrable _ _)]
  dsimp [F]
  rw [Real.sinh_neg]
  ring

/-- Integrated-square Cauchy--Schwarz. The zero-mass case is proved,
not cancelled by an unjustified division. -/
theorem integral_mul_sq_le {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    (∫ t : ℝ, f t * g t) ^ 2 ≤
      (∫ t : ℝ, f t ^ 2) * (∫ t : ℝ, g t ^ 2) := by
  let A := ∫ t : ℝ, f t ^ 2
  let B := ∫ t : ℝ, g t ^ 2
  let C := ∫ t : ℝ, f t * g t
  have hA0 : 0 ≤ A := integral_nonneg (fun _ => sq_nonneg _)
  have hB0 : 0 ≤ B := integral_nonneg (fun _ => sq_nonneg _)
  have hpoly (s : ℝ) : 0 ≤ s ^ 2 * A + 2 * s * C + B := by
    have h := integral_nonneg (fun t : ℝ => sq_nonneg (s * f t + g t))
    have hid : (fun t : ℝ => (s * f t + g t) ^ 2) =
        fun t => s ^ 2 * f t ^ 2 + (2 * s) * (f t * g t) + g t ^ 2 := by
      funext t
      ring
    have h1 := hf.integrable_sq.const_mul (s ^ 2)
    have h2 := (hf.integrable_mul hg).const_mul (2 * s)
    rw [hid, integral_add (h1.add h2) hg.integrable_sq,
      integral_add h1 h2, integral_const_mul, integral_const_mul] at h
    exact h
  change C ^ 2 ≤ A * B
  by_cases hA : A = 0
  · have hC : C = 0 := by
      by_contra hC
      have h := hpoly (-(B + 1) / (2 * C))
      have heq : (-(B + 1) / (2 * C)) ^ 2 * A +
          2 * (-(B + 1) / (2 * C)) * C + B = -1 := by
        rw [hA]
        field_simp [hC]
        <;> ring
      rw [heq] at h
      norm_num at h
    simp [hA, hC]
  · have hApos : 0 < A := by
      rcases lt_or_eq_of_le hA0 with hlt | heq
      · exact hlt
      · exact (hA heq.symm).elim
    have h := hpoly (-C / A)
    have hid : (-C / A) ^ 2 * A + 2 * (-C / A) * C + B = B - C ^ 2 / A := by
      field_simp [hA]
      <;> ring
    rw [hid] at h
    have hh : C ^ 2 / A ≤ B := by linarith
    have hh' := (div_le_iff₀ hApos).mp hh
    nlinarith

/-- The profile norm gives the exact bounded source-pole allowance. -/
theorem poleMoment_sq_le (T : ℝ) (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2 ≤
      (Real.sinh T - T) * (∫ t : ℝ, ‖f t‖ ^ 2) := by
  have heq : (fun t : ℝ => f t * Real.sinh (t / 2)) =ᵐ[volume]
      (fun t => f t * sourcePoleProfile T t) := by
    filter_upwards [hs] with t ht
    by_cases hmem : t ∈ Icc (-T) T
    · simp [sourcePoleProfile_apply, hmem]
    · simp [ht hmem]
  rw [integral_congr_ae heq]
  have h := integral_mul_sq_le hf (memLp_sourcePoleProfile T)
  rw [sourcePoleProfile_sq_integral T hT] at h
  simpa only [Real.norm_eq_abs, sq_abs, mul_comm] using h

/-- Explicit bounded-form perturbation constant. It is not a cofinal defect. -/
def perturbationBound (T β : ℝ) : ℝ :=
  |gammaConstant 1 0 - β| + primeMass T + 2 * (Real.sinh T - T)

theorem perturbationBound_nonnegative (T β : ℝ) (hT : 0 ≤ T) :
    0 ≤ perturbationBound T β := by
  have hb : 0 ≤ Real.sinh T - T := by
    rw [← sourcePoleProfile_sq_integral T hT]
    exact integral_nonneg (fun _ => sq_nonneg _)
  have hp := primeMass_nonneg T
  unfold perturbationBound
  positivity

/-- Absolute perturbation of the original literal gamma form. All signs,
all supported prime powers and both source pole orientations are retained. -/
theorem abs_source_sub_gamma_le (T β : ℝ) (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    |shiftedOddWeilEnergy T β f - oddArchimedeanEnergy f| ≤
      perturbationBound T β * (∫ t : ℝ, ‖f t‖ ^ 2) := by
  let mass := ∫ t : ℝ, ‖f t‖ ^ 2
  have hm : 0 ≤ mass := integral_nonneg (fun _ => sq_nonneg _)
  have hp := abs_primeEnergy_le T f hf.integrable_sq
  have hp' : |primeEnergy T f| ≤ primeMass T * mass := by
    simpa only [mass, Real.norm_eq_abs, sq_abs] using hp
  have hb := poleMoment_sq_le T hT hf hs
  change (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2 ≤ (Real.sinh T - T) * mass at hb
  have hcL := mul_le_mul_of_nonneg_right (neg_abs_le (gammaConstant 1 0 - β)) hm
  have hcU := mul_le_mul_of_nonneg_right (le_abs_self (gammaConstant 1 0 - β)) hm
  obtain ⟨hpL, hpU⟩ := abs_le.mp hp'
  rw [abs_le]
  unfold shiftedOddWeilEnergy shiftedOddCoreEnergy perturbationBound
  change -( (|gammaConstant 1 0 - β| + primeMass T +
      2 * (Real.sinh T - T)) * mass) ≤
      (gammaConstant 1 0 - β) * mass + oddArchimedeanEnergy f -
        primeEnergy T f - 2 * (∫ t : ℝ, f t * Real.sinh (t / 2)) ^ 2 -
        oddArchimedeanEnergy f ∧ _
  constructor <;> nlinarith [sq_nonneg (∫ t : ℝ, f t * Real.sinh (t / 2))]

/-- Fixed-window semiboundedness on the actual finite-gamma-energy domain.
This does not give the much stronger `StageLower j` estimate. -/
theorem source_semibounded (T β : ℝ) (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (_henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    -(perturbationBound T β * (∫ t : ℝ, ‖f t‖ ^ 2)) ≤
      shiftedOddWeilEnergy T β f := by
  have h := (abs_le.mp (abs_source_sub_gamma_le T β hT hf hs)).1
  have ha : 0 ≤ oddArchimedeanEnergy f := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
    have hk : 0 ≤ parityKernel 0 r := by
      unfold parityKernel
      apply div_nonneg (Real.exp_nonneg _)
      have he : Real.exp (-2 * r) ≤ 1 := by
        rw [← Real.exp_zero]
        exact Real.exp_le_exp.mpr (by linarith [hr])
      linarith
    exact mul_nonneg hk (integral_nonneg (fun _ => sq_nonneg _))
  linarith

/-- The positive gamma form norm, using exactly the physical Lebesgue mass. -/
def gammaNormSq (f : ℝ → ℝ) : ℝ :=
  (∫ t : ℝ, ‖f t‖ ^ 2) + oddArchimedeanEnergy f

/-- The shifted source norm used for closedness, not a claim that the
unshifted Weil form is positive. -/
def sourceNormSq (T β : ℝ) (f : ℝ → ℝ) : ℝ :=
  shiftedOddWeilEnergy T β f +
    (perturbationBound T β + 1) * (∫ t : ℝ, ‖f t‖ ^ 2)

/-- The actual source and gamma norms are equivalent at each fixed window.
The constants depend on T; no support-uniform or cofinal conclusion follows. -/
theorem sourceNormSq_equivalent (T β : ℝ) (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (_henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    gammaNormSq f ≤ sourceNormSq T β f ∧
      sourceNormSq T β f ≤ (2 * perturbationBound T β + 1) * gammaNormSq f := by
  obtain ⟨hlo, hhi⟩ := abs_le.mp (abs_source_sub_gamma_le T β hT hf hs)
  have hC := perturbationBound_nonnegative T β hT
  have ha : 0 ≤ oddArchimedeanEnergy f := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
    have hk : 0 ≤ parityKernel 0 r := by
      unfold parityKernel
      apply div_nonneg (Real.exp_nonneg _)
      have he : Real.exp (-2 * r) ≤ 1 := by
        rw [← Real.exp_zero]
        exact Real.exp_le_exp.mpr (by linarith [hr])
      linarith
    exact mul_nonneg hk (integral_nonneg (fun _ => sq_nonneg _))
  unfold gammaNormSq sourceNormSq
  constructor
  · linarith
  · nlinarith [mul_nonneg hC ha]

end GRWTSK.NumberTheory.WeilQuadraticForm.FixedWindowSemibounded
