/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilOddSineH2SpectralTail
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Tactic

/-!
# Classical Dirichlet Green identity on the original odd Weil sine basis

For T>0 the true source sine is sin(pi*n*t/T)/sqrt(T) on [-T,T],
with zero extension elsewhere. Mathlib's genuine interval-integral
integration-by-parts lemma is applied TWICE, with a real C2 test f.

The only source conditions needed for the coefficient identity are
  f(-T)=f(T)=0,
  f'=first, (f')'=second on the interval,
  second continuous (to discharge interval integrability).
There is NO additional requirement that first vanish at the endpoints:
the first integration by parts has a sine boundary term which vanishes
identically; the second has f as its boundary factor.

The result constructs the earlier SourceSecondSineGreen from actual
classical derivatives and endpoint traces rather than assuming the Green
identity. It also proves the intermediate physical cosine coefficient
relation, allowing future comparison with cosine Parseval for H1.

The finite fourth-moment and derivative-frequency inequalities then
return by the existing WeilOddSineH2SpectralTail consumers. This does
not identify a full physical H1 error or prove arithmetic Weil positivity.

Verification: manually drafted LEAN_SOURCE_CANDIDATE, elaboration,
fresh kernel replay, transitive axiom audit and independent review
NOT_RUN. RH and Dirichlet GRH remain unproved.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped Interval BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSineClassicalGreen

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineParseval
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineH2SpectralTail

/-- The unextended interior sine is exactly the source sine on (-T,T). -/
private def modeSin (T : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  Real.sin (OddOutputTrace.frequency T n * t) / Real.sqrt T

private def modeCos (T : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  Real.cos (OddOutputTrace.frequency T n * t) / Real.sqrt T

private theorem hasDerivAt_modeSin (T : ℝ) (n : ℕ) (t : ℝ) :
    HasDerivAt (modeSin T n)
      (OddOutputTrace.frequency T n * modeCos T n t) t := by
  convert (((hasDerivAt_id t).const_mul (OddOutputTrace.frequency T n)).sin.div_const
    (Real.sqrt T)) using 1 <;> simp [modeSin, modeCos] <;> ring

private theorem hasDerivAt_modeCos (T : ℝ) (n : ℕ) (t : ℝ) :
    HasDerivAt (modeCos T n)
      (-OddOutputTrace.frequency T n * modeSin T n t) t := by
  convert (((hasDerivAt_id t).const_mul (OddOutputTrace.frequency T n)).cos.div_const
    (Real.sqrt T)) using 1 <;> simp [modeSin, modeCos] <;> ring

private theorem continuous_modeSin (T : ℝ) (n : ℕ) :
    Continuous (modeSin T n) := by
  unfold modeSin
  fun_prop

private theorem continuous_modeCos (T : ℝ) (n : ℕ) :
    Continuous (modeCos T n) := by
  unfold modeCos
  fun_prop

private theorem source_frequency_times_T (T : ℝ) (hT : 0 < T)
    (n : ℕ) :
    OddOutputTrace.frequency T n * T = (n : ℝ) * Real.pi := by
  unfold OddOutputTrace.frequency
  field_simp [hT.ne']
  ring

private theorem modeSin_right_endpoint (T : ℝ) (hT : 0 < T) (n : ℕ) :
    modeSin T n T = 0 := by
  simp [modeSin, source_frequency_times_T T hT n, Real.sin_nat_mul_pi]

private theorem modeSin_left_endpoint (T : ℝ) (hT : 0 < T) (n : ℕ) :
    modeSin T n (-T) = 0 := by
  simp [modeSin, mul_neg, source_frequency_times_T T hT n,
    Real.sin_neg, Real.sin_nat_mul_pi]

/-- The literal zero-extended source coefficient is the interior interval
coefficient of the SAME normalized sine. It is not a new basis/readout. -/
theorem sineCoefficient_eq_interval_modeSin (T : ℝ) (hT : 0 < T)
    (n : ℕ) (g : ℝ → ℝ) :
    sineCoefficient T g n =
      ∫ t in (-T)..T, modeSin T n t * g t := by
  have hshape :
      (fun t : ℝ => zeroExtendedSine T n t * g t) =
        (Icc (-T) T).indicator (fun t : ℝ => modeSin T n t * g t) := by
    funext t
    have harg : Real.pi * (n : ℝ) * t / T =
        OddOutputTrace.frequency T n * t := by
      unfold OddOutputTrace.frequency
      ring
    by_cases ht : t ∈ Icc (-T) T
    · simp only [zeroExtendedSine, ht, ite_true, indicator_of_mem ht]
      rw [harg]
      rfl
    · simp [zeroExtendedSine, ht]
  unfold sineCoefficient
  rw [hshape, integral_indicator measurableSet_Icc,
    integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -T ≤ T)]

/-- One integration by parts. In contrast to a whole-line cosine argument,
this is an exact finite-interval identity whose only boundary premise is
f(-T)=f(T)=0. -/
theorem cosine_derivative_coefficient
    (T : ℝ) (hT : 0 < T)
    (n : ℕ) (f first : ℝ → ℝ)
    (hf : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirstCont : Continuous first)
    (hleft : f (-T) = 0) (hright : f T = 0) :
    (∫ t in (-T)..T, modeCos T n t * first t) =
      OddOutputTrace.frequency T n * sineCoefficient T f n := by
  let w : ℝ := OddOutputTrace.frequency T n
  have hfcont : Continuous f := fun t => (hf t).continuousAt
  have hdcont : Continuous (fun t => -w * modeSin T n t) := by
    fun_prop
  have hparts :
      (∫ t in (-T)..T, modeCos T n t * first t) =
        modeCos T n T * f T - modeCos T n (-T) * f (-T) -
          ∫ t in (-T)..T, (-w * modeSin T n t) * f t := by
    exact intervalIntegral.integral_mul_deriv_eq_deriv_mul
      (a := -T) (b := T)
      (u := modeCos T n) (u' := fun t => -w * modeSin T n t)
      (v := f) (v' := first)
      (fun t _ => by
        simpa only [w] using hasDerivAt_modeCos T n t)
      (fun t _ => hf t)
      (hdcont.intervalIntegrable _ _)
      (hfirstCont.intervalIntegrable _ _)
  have hlin :
      (∫ t in (-T)..T, (-w * modeSin T n t) * f t) =
        -w * (∫ t in (-T)..T, modeSin T n t * f t) := by
    calc
      _ = ∫ t in (-T)..T, -w * (modeSin T n t * f t) := by
        congr 1
        funext t
        ring
      _ = _ := by rw [intervalIntegral.integral_const_mul]
  rw [sineCoefficient_eq_interval_modeSin T hT n f]
  calc
    _ = modeCos T n T * f T - modeCos T n (-T) * f (-T) -
          ∫ t in (-T)..T, (-w * modeSin T n t) * f t := hparts
    _ = w * (∫ t in (-T)..T, modeSin T n t * f t) := by
      rw [hleft, hright, hlin]
      ring

/-- The actual second-derivative source Green identity follows from TWO
genuine interval integrations by parts, without assuming that identity. -/
theorem sourceSecondSineGreen_of_classical_C2
    (T : ℝ) (hT : 0 < T)
    (f first second : ℝ → ℝ)
    (hf : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirst : ∀ t : ℝ, HasDerivAt first (second t) t)
    (hsecond : Continuous second)
    (hleft : f (-T) = 0) (hright : f T = 0) :
    SourceSecondSineGreen T f second := by
  intro k
  let n : ℕ := k + 1
  let w : ℝ := OddOutputTrace.frequency T n
  have hfcont : Continuous first := fun t => (hfirst t).continuousAt
  have hdcont : Continuous (fun t => w * modeCos T n t) := by
    fun_prop
  have hparts :
      (∫ t in (-T)..T, modeSin T n t * second t) =
        modeSin T n T * first T - modeSin T n (-T) * first (-T) -
          ∫ t in (-T)..T, (w * modeCos T n t) * first t := by
    exact intervalIntegral.integral_mul_deriv_eq_deriv_mul
      (a := -T) (b := T)
      (u := modeSin T n) (u' := fun t => w * modeCos T n t)
      (v := first) (v' := second)
      (fun t _ => by simpa only [w] using hasDerivAt_modeSin T n t)
      (fun t _ => hfirst t)
      (hdcont.intervalIntegrable _ _)
      (hsecond.intervalIntegrable _ _)
  have hlin :
      (∫ t in (-T)..T, (w * modeCos T n t) * first t) =
        w * (∫ t in (-T)..T, modeCos T n t * first t) := by
    calc
      _ = ∫ t in (-T)..T, w * (modeCos T n t * first t) := by
        congr 1
        funext t
        ring
      _ = _ := by rw [intervalIntegral.integral_const_mul]
  have hcosine :=
    cosine_derivative_coefficient T hT n f first hf hfcont hleft hright
  have hsin :
      sineCoefficient T second n =
        -(w ^ 2) * sineCoefficient T f n := by
    rw [sineCoefficient_eq_interval_modeSin T hT n second]
    calc
      _ = modeSin T n T * first T - modeSin T n (-T) * first (-T) -
            ∫ t in (-T)..T, (w * modeCos T n t) * first t := hparts
      _ = -(w * (∫ t in (-T)..T, modeCos T n t * first t)) := by
        rw [modeSin_right_endpoint T hT n,
          modeSin_left_endpoint T hT n, hlin]
        ring
      _ = -(w ^ 2) * sineCoefficient T f n := by
        rw [hcosine]
        ring
  change sineCoefficient T second (k + 1) =
    -(OddOutputTrace.frequency T (k + 1)) ^ 2 *
      sineCoefficient T f (k + 1)
  exact hsin

/-- The former Green-conditional weighted tail estimate now applies to
ACTUAL classical derivatives and zero Dirichlet endpoint traces. The
physical derivative-cosine Parseval return remains distinct. -/
theorem finite_high_mode_bounds_of_classical_C2
    (T : ℝ) (hT : 0 < T)
    (f first second : ℝ → ℝ)
    (hf : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirst : ∀ t : ℝ, HasDerivAt first (second t) t)
    (hsecond : Continuous second)
    (hleft : f (-T) = 0) (hright : f T = 0)
    (hL2 : MemLp second 2 volume)
    (hodd : Function.Odd second)
    (hsupport : ∀ t, t ∉ Icc (-T) T → second t = 0)
    (M N : ℕ) :
    (sourceModeFrequency T M) ^ 4 * finiteHighL2Tail T f M N ≤
      ∫ t : ℝ, ‖second t‖ ^ 2 ∧
    (sourceModeFrequency T M) ^ 2 *
      finiteHighDerivativeSpectralTail T f M N ≤
      ∫ t : ℝ, ‖second t‖ ^ 2 := by
  exact finite_high_mode_spectral_bounds T hT f second hL2 hodd hsupport
    (sourceSecondSineGreen_of_classical_C2 T hT f first second
      hf hfirst hsecond hleft hright) M N

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSineClassicalGreen
