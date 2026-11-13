/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilSignedArithmeticH1Budget
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.Tactic

/-!
# Exact supported real odd zeta pole moment return

This proves the previously isolated SupportedOddPoleMomentBound for the
ACTUAL negative real-odd zeta pole moment. Neither Weil positivity nor
a pole-neutral simplification is assumed.

The compact real profile h_T(t)=1_[-T,T](t)*sinh(t/2) has the EXACT
Lebesgue squared norm sinh(T)-T. The source proof uses the genuine
normalized whole-line indicator and pinned hyperbolic FTC identities.
Since T>0, sinh(T)-T is STRICTLY POSITIVE.

The squared moment inequality is proved from the nonnegative integral
of (G*f-m*h_T)^2, where G=integral h_T^2 and m=integral f*h_T.
This avoids division by the potentially zero test mass integral f^2;
the proof works also for f=0 and does not require oddness or C1.

The resulting theorem discharges the original
SignedArithmeticH1Budget.SupportedOddPoleMomentBound for every real
L2 source supported in [-T,T], then supplies the original zeta
diagonal physical H1 bound WITHOUT a pole-moment premise.
The full signed arithmetic form and its negative pole are unchanged.
The later mixed gamma/prime/pole polarization still needs formalization.

Proof status: MANUAL_LEAN_SOURCE_CANDIDATE, Lean elaboration/full build,
fresh kernel checking, transitive axiom audit and independent review
NOT_RUN. No off-critical source amplifier, all-window arithmetic lower
bound, RH or Dirichlet GRH is proved.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped Interval BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ExactZetaPoleH1

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.SignedArithmeticH1Budget
open GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSineNegativeReturn

/-- Genuine compactly supported real profile for the native zeta odd pole.
The exact source moment is unchanged when the test is supported here. -/
def sourceSinhWindow (T : ℝ) : ℝ → ℝ :=
  (Icc (-T) T).indicator (fun t : ℝ => Real.sinh (t / 2))

/-- The compact pole profile is truly Lebesgue L2, not an arbitrary
finite-dimensional pole vector. -/
theorem sourceSinhWindow_memLp (T : ℝ) (hT : 0 < T) :
    MemLp (sourceSinhWindow T) 2 volume := by
  rw [sourceSinhWindow, memLp_indicator_iff_restrict measurableSet_Icc]
  haveI : IsFiniteMeasure (volume.restrict (Icc (-T) T)) :=
    ⟨by simp [Real.volume_Icc]⟩
  apply MemLp.of_bound (by fun_prop) (Real.sinh (T / 2))
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Icc] with t ht
  rw [Real.norm_eq_abs, Real.abs_sinh, Real.sinh_le_sinh, abs_le]
  exact ⟨by linarith [ht.1], by linarith [ht.2]⟩

private theorem sinh_half_sq_eq (t : ℝ) :
    Real.sinh (t / 2) ^ 2 = (Real.cosh t - 1) / 2 := by
  have hcosh := Real.cosh_two_mul (t / 2)
  have hidentity := Real.cosh_sq_sub_sinh_sq (t / 2)
  have hphase : 2 * (t / 2) = t := by ring
  rw [hphase] at hcosh
  nlinarith [hcosh, hidentity]

/-- The native pole profile has EXACT squared mass sinh T - T.
No bound from above by 4*sinh T or replacement exponential profile. -/
theorem sourceSinhWindow_sq_integral (T : ℝ) (hT : 0 < T) :
    (∫ t : ℝ, sourceSinhWindow T t ^ 2) = Real.sinh T - T := by
  have hshape :
      (fun t : ℝ => sourceSinhWindow T t ^ 2) =
        (Icc (-T) T).indicator
          (fun t : ℝ => Real.sinh (t / 2) ^ 2) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T
    · simp [sourceSinhWindow, ht]
    · simp [sourceSinhWindow, ht]
  let F : ℝ → ℝ := fun t => (Real.sinh t - t) / 2
  have hderiv (t : ℝ) :
      HasDerivAt F (Real.sinh (t / 2) ^ 2) t := by
    have hbase :
        HasDerivAt F ((Real.cosh t - 1) / 2) t := by
      change HasDerivAt (fun x : ℝ => (Real.sinh x - x) / 2)
        ((Real.cosh t - 1) / 2) t
      simpa only [id_eq] using
        ((Real.hasDerivAt_sinh t).sub (hasDerivAt_id t)).div_const 2
    rw [← sinh_half_sq_eq t] at hbase
    exact hbase
  have hc : Continuous (fun t : ℝ => Real.sinh (t / 2) ^ 2) := by
    fun_prop
  rw [hshape, integral_indicator measurableSet_Icc,
    integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -T ≤ T)]
  have hFTC :
      (∫ t in (-T)..T, Real.sinh (t / 2) ^ 2) =
        F T - F (-T) :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ => hderiv t) (hc.intervalIntegrable (-T) T)
  rw [hFTC]
  dsimp [F]
  rw [Real.sinh_neg]
  ring

theorem sourceSinhWindow_mass_pos (T : ℝ) (hT : 0 < T) :
    0 < Real.sinh T - T :=
  sub_pos.mpr ((Real.self_lt_sinh_iff).mpr hT)

/-- For every pointwise supported f, pairing with the compact window
profile is IDENTICAL to its original whole-line sinh pole pairing. -/
theorem original_odd_pole_eq_window_pair
    (T : ℝ) (f : ℝ → ℝ)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    oddZetaPoleMoment f =
      ∫ t : ℝ, f t * sourceSinhWindow T t := by
  unfold oddZetaPoleMoment
  apply integral_congr_ae
  filter_upwards [] with t
  by_cases ht : t ∈ Icc (-T) T
  · simp [sourceSinhWindow, ht]
  · simp [sourceSinhWindow, ht, hsupport t ht]

/-- The literal source Cauchy moment estimate, without division by
the source L2 mass and with no oddness/smoothness requirement. Its
sinh T-T coefficient is optimal on the supported real L2 carrier. -/
theorem supportedOddPoleMomentBound_of_L2
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (hf : MemLp f 2 volume)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    SupportedOddPoleMomentBound T f := by
  let h : ℝ → ℝ := sourceSinhWindow T
  let E : ℝ := ∫ t : ℝ, f t ^ 2
  let G : ℝ := ∫ t : ℝ, h t ^ 2
  let m : ℝ := ∫ t : ℝ, f t * h t
  have hh : MemLp h 2 volume := sourceSinhWindow_memLp T hT
  have hE : Integrable (fun t : ℝ => f t ^ 2) := hf.integrable_sq
  have hG : Integrable (fun t : ℝ => h t ^ 2) := hh.integrable_sq
  have hm : Integrable (fun t : ℝ => f t * h t) :=
    hf.integrable_mul hh
  have hGexact : G = Real.sinh T - T := sourceSinhWindow_sq_integral T hT
  have hGpos : 0 < G := by
    rw [hGexact]
    exact sourceSinhWindow_mass_pos T hT
  have ha : Integrable (fun t : ℝ => G ^ 2 * f t ^ 2) :=
    hE.const_mul (G ^ 2)
  have hb : Integrable (fun t : ℝ => (2 * G * m) * (f t * h t)) :=
    hm.const_mul (2 * G * m)
  have hc : Integrable (fun t : ℝ => m ^ 2 * h t ^ 2) :=
    hG.const_mul (m ^ 2)
  have hNonneg :
      0 ≤ ∫ t : ℝ, (G * f t - m * h t) ^ 2 :=
    integral_nonneg (fun t => sq_nonneg _)
  have hExpand :
      (∫ t : ℝ, (G * f t - m * h t) ^ 2) =
        G ^ 2 * E - 2 * G * m * m + m ^ 2 * G := by
    calc
      _ = ∫ t : ℝ, (G ^ 2 * f t ^ 2 -
          (2 * G * m) * (f t * h t)) + m ^ 2 * h t ^ 2 := by
        apply integral_congr_ae
        filter_upwards [] with t
        ring
      _ = _ := by
        rw [integral_add (ha.sub hb) hc,
          integral_sub ha hb, integral_const_mul,
          integral_const_mul, integral_const_mul]
        dsimp [E, G, m]
        ring
  rw [hExpand] at hNonneg
  have hFactor : 0 ≤ G * (G * E - m ^ 2) := by
    nlinarith [hNonneg]
  have hCS : m ^ 2 ≤ G * E := by
    by_contra hbad
    have hneg : G * E - m ^ 2 < 0 := sub_neg.mpr (lt_of_not_ge hbad)
    have hcontradiction : G * (G * E - m ^ 2) < 0 :=
      mul_neg_of_pos_of_neg hGpos hneg
    linarith
  have hMoment := original_odd_pole_eq_window_pair T f hsupport
  unfold SupportedOddPoleMomentBound
  calc
    (oddZetaPoleMoment f) ^ 2 = m ^ 2 := by
      rw [hMoment]
      rfl
    _ ≤ G * E := hCS
    _ = (Real.sinh T - T) * physicalMass f := by
      rw [hGexact]
      rfl

/-- The former zeta diagonal source bound no longer needs ANY pole
moment input: its exact signed negative pole is paid from the actual
compact support and L2 data, while gamma and prime terms remain intact. -/
theorem zetaOddPhysical_abs_H1_le_of_supported
    (T : ℝ) (hT : 0 < T) (f first : ℝ → ℝ)
    (hderiv : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirstCont : Continuous first)
    (hf : MemLp f 2 volume) (hfirst : MemLp first 2 volume)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    |zetaOddPhysicalValue T f| ≤
      (|gammaConstant 1 0| + primeMass T +
        2 * ExactGammaTail.tailUpper 0 1 +
        2 * (Real.sinh T - T)) * physicalMass f +
      (7 / 12 : ℝ) * physicalDerivativeMass first := by
  exact zetaOddPhysical_abs_H1_le T hT f first hderiv
    hfirstCont hf hfirst
    (supportedOddPoleMomentBound_of_L2 T hT f hf hsupport)

end GRWTSK.NumberTheory.WeilQuadraticForm.ExactZetaPoleH1
