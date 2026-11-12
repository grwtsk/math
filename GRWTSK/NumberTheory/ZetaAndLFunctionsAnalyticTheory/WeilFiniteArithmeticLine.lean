/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRectangleResidues
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilHorizontalEdges
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

/-!
# The finite arithmetic line with its actual horizontal error

MSC2020: 11M41, 11M06, 30E20. Integrate the maintained pointwise dual-source
identity and consume the actual rectangle residue theorem. The left edge is
reflected with its signed change of variable; both vertical integrability
premises are proved from the continued source. No prime-power inversion or
infinite-tail assertion is smuggled into this finite identity.

The source-selected heights precede every test. At those heights the difference
between the original multiplicity-weighted zero sum, minus BOTH applicable pole
terms, and the full finite right-line arithmetic integral tends to zero with the
maintained inverse-square horizontal budget. This does not assert that either
sequence separately converges. The inverse-character arithmetic convention is
unchanged. The line expression is NOT a replacement for primitiveArithmeticValue.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency builds, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN. Novelty UNASSESSED.
See WeilFiniteArithmeticLine.provenance/README.md and individual records.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology BigOperators
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.Analysis.ComplexAnalysis.RectangleKernelIntegral
open GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.SpecialFunctions.GammaLogDerivativeBounds

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

variable {N : ℕ} [NeZero N]

/-- The existing arithmetic decomposition restricted to Re(s)=2. All prime
powers are still inside the two convergent LSeries; no finite prime cutoff. -/
def weilRightArithmeticIntegrand (chi : DirichletCharacter ℂ N)
    (W : ℂ → ℂ) (t : ℝ) : ℂ :=
  let s := (2 : ℂ) + (t : ℂ) * Complex.I
  (Real.log (N : ℝ) : ℂ) * W (1 - s) +
    (W s + W (1 - s)) *
      (-(Real.log Real.pi : ℂ) / 2 +
        Complex.digamma ((s + (gammaParity chi : ℂ)) / 2) / 2) -
    W s * LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s -
    W (1 - s) * LSeries (fun n : ℕ => chi⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ)) s

/-- Finite arithmetic line, normalized by dt/(2*pi), not dt/(2*pi*i). -/
def weilRightArithmeticIntegral (chi : DirichletCharacter ℂ N)
    (W : ℂ → ℂ) (T : ℝ) : ℂ :=
  (∫ t in (-T)..T, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ))

private theorem right_arithmetic_eq_source_pair (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (W : ℂ → ℂ) (t : ℝ) :
    weilRightArithmeticIntegrand chi W t =
      W (2 + (t : ℂ) * Complex.I) *
        logDeriv (DirichletCharacter.completedLFunction chi) (2 + (t : ℂ) * Complex.I) -
      W (1 - (2 + (t : ℂ) * Complex.I)) *
        logDeriv (DirichletCharacter.completedLFunction chi) (1 - (2 + (t : ℂ) * Complex.I)) := by
  exact (weighted_completed_logDeriv_pair chi hprim W (by norm_num)).symm

private theorem analyticAt_completed_off_endpoints (chi : DirichletCharacter ℂ N)
    (s : ℂ) (h0 : s ≠ 0) (h1 : s ≠ 1) :
    AnalyticAt ℂ (DirichletCharacter.completedLFunction chi) s := by
  let U : Set ℂ := {z | z ≠ 0 ∧ z ≠ 1}
  have hopen : IsOpen U :=
    (isOpen_ne continuous_id continuous_const).inter
      (isOpen_ne continuous_id continuous_const)
  have hd : DifferentiableOn ℂ (DirichletCharacter.completedLFunction chi) U := by
    intro z hz
    exact (chi.differentiableAt_completedLFunction z (.inl hz.1) (.inl hz.2)).differentiableWithinAt
  exact (hd.analyticOnNhd hopen) s ⟨h0, h1⟩

private theorem continuous_weighted_vertical_pair (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (W : ℂ → ℂ) (hW : AnalyticOnNhd ℂ W univ) :
    Continuous (fun t : ℝ => W (2 + (t : ℂ) * Complex.I) *
      logDeriv (DirichletCharacter.completedLFunction chi) (2 + (t : ℂ) * Complex.I)) ∧
    Continuous (fun t : ℝ => W (1 - (2 + (t : ℂ) * Complex.I)) *
      logDeriv (DirichletCharacter.completedLFunction chi) (1 - (2 + (t : ℂ) * Complex.I))) := by
  constructor <;> rw [continuous_iff_continuousAt] <;> intro t
  · let s : ℂ := 2 + (t : ℂ) * Complex.I
    have hs : 1 < s.re := by norm_num [s]
    have h0 : s ≠ 0 := by intro h; simpa [h] using hs
    have h1 : s ≠ 1 := by intro h; simpa [h] using hs
    have ha := analyticAt_completed_off_endpoints chi s h0 h1
    have hn := completedLFunction_ne_zero_right_of_euler chi hs
    exact ((hW s (mem_univ _)).continuousAt.mul
      (ha.deriv.div ha hn).continuousAt).comp
        (show ContinuousAt (fun t : ℝ => 2 + (t : ℂ) * Complex.I) t by fun_prop)
  · let s : ℂ := 2 + (t : ℂ) * Complex.I
    have hs : 1 < s.re := by norm_num [s]
    have h0 : 1 - s ≠ 0 := by
      intro h
      have hr := congrArg Complex.re h
      norm_num [s] at hr
    have h1 : 1 - s ≠ 1 := by
      intro h
      have hr := congrArg Complex.re h
      norm_num [s] at hr
    have ha := analyticAt_completed_off_endpoints chi (1 - s) h0 h1
    have hn := completedLFunction_ne_zero_left_of_euler chi hprim hs
    exact ((hW (1 - s) (mem_univ _)).continuousAt.mul
      (ha.deriv.div ha hn).continuousAt).comp
        (show ContinuousAt (fun t : ℝ => 1 - (2 + (t : ℂ) * Complex.I)) t by fun_prop)

/-- The arithmetic line really is integrable on every finite height interval.
This is established from the actual nonzero continued sources, not an oracle. -/
theorem intervalIntegrable_weilRightArithmeticIntegrand
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (W : ℂ → ℂ) (hW : AnalyticOnNhd ℂ W univ) (T : ℝ) :
    IntervalIntegrable (weilRightArithmeticIntegrand chi W) volume (-T) T := by
  have hc := continuous_weighted_vertical_pair chi hprim W hW
  have he : weilRightArithmeticIntegrand chi W = fun t : ℝ =>
      W (2 + (t : ℂ) * Complex.I) *
        logDeriv (DirichletCharacter.completedLFunction chi) (2 + (t : ℂ) * Complex.I) -
      W (1 - (2 + (t : ℂ) * Complex.I)) *
        logDeriv (DirichletCharacter.completedLFunction chi) (1 - (2 + (t : ℂ) * Complex.I)) :=
    funext (right_arithmetic_eq_source_pair chi hprim W)
  rw [he]
  exact (hc.1.sub hc.2).intervalIntegrable _ _

private theorem integral_left_eq_reflected (F : ℂ → ℂ) (T : ℝ) :
    (∫ t in (-T)..T, F (-1 + (t : ℂ) * Complex.I)) =
      ∫ t in (-T)..T, F (1 - (2 + (t : ℂ) * Complex.I)) := by
  calc
    _ = ∫ t in (-T)..T, F (-1 + ((-t : ℝ) : ℂ) * Complex.I) := by
      simpa only [neg_neg] using
        (intervalIntegral.integral_comp_neg (a := -T) (b := T)
          (fun t : ℝ => F (-1 + (t : ℂ) * Complex.I))).symm
    _ = _ := by
      apply intervalIntegral.integral_congr
      intro t _
      congr 1
      push_cast
      ring

/-- Exact finite source return to the arithmetic right line. Both negative
logarithmic pole terms remain on the zero side. The horizontal term is literal. -/
theorem weil_finite_right_arithmetic_identity
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (T : ℝ) (hT : 0 < T)
    (hheight : ∀ s : ℂ, |s.im| = T → DirichletCharacter.completedLFunction chi s ≠ 0)
    (W : ℂ → ℂ) (hW : AnalyticOnNhd ℂ W univ) :
    (∑ rho ∈ heightWindow chi hprim T, (zeroMultiplicity chi rho : ℂ) * W rho.1) -
        (if N = 1 then W 0 + W 1 else 0) =
      ((∫ x in (-1 : ℝ)..2, W ((x : ℂ) + ((-T : ℝ) : ℂ) * Complex.I) *
          logDeriv (DirichletCharacter.completedLFunction chi)
            ((x : ℂ) + ((-T : ℝ) : ℂ) * Complex.I)) -
        (∫ x in (-1 : ℝ)..2, W ((x : ℂ) + (T : ℂ) * Complex.I) *
          logDeriv (DirichletCharacter.completedLFunction chi)
            ((x : ℂ) + (T : ℂ) * Complex.I))) / (2 * (Real.pi : ℂ) * Complex.I) +
      weilRightArithmeticIntegral chi W T := by
  let F : ℂ → ℂ := fun s => W s * logDeriv (DirichletCharacter.completedLFunction chi) s
  have hc := continuous_weighted_vertical_pair chi hprim W hW
  have hpair : (∫ t in (-T)..T, weilRightArithmeticIntegrand chi W t) =
      (∫ t in (-T)..T, F (2 + (t : ℂ) * Complex.I)) -
      (∫ t in (-T)..T, F (1 - (2 + (t : ℂ) * Complex.I))) := by
    calc
      _ = ∫ t in (-T)..T,
          F (2 + (t : ℂ) * Complex.I) - F (1 - (2 + (t : ℂ) * Complex.I)) :=
        intervalIntegral.integral_congr (fun t _ => right_arithmetic_eq_source_pair chi hprim W t)
      _ = _ := intervalIntegral.integral_sub
        (hc.1.intervalIntegrable _ _) (hc.2.intervalIntegrable _ _)
  have href := integral_left_eq_reflected F T
  have hres := weil_rectangle_residue_identity chi hprim T hT hheight W hW
  rw [← hres]
  change (2 * (Real.pi : ℂ) * Complex.I)⁻¹ * boundaryIntegral (-1) 2 (-T) T F = _
  unfold boundaryIntegral weilRightArithmeticIntegral
  rw [hpair, ← href]
  dsimp only [F]
  have hp : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_ne_zero
  field_simp [hp, Complex.I_ne_zero]
  <;> ring

/-- For the unchanged correlation weight, the residual is exactly the maintained
oriented horizontal boundary, not merely an unspecified small error. -/
theorem weil_test_right_arithmetic_residual
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (T : ℝ) (hT : 0 < T)
    (hheight : ∀ s : ℂ, |s.im| = T → DirichletCharacter.completedLFunction chi s ≠ 0)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    (∑ rho ∈ heightWindow chi hprim T, (zeroMultiplicity chi rho : ℂ) * W rho.1) -
      (if N = 1 then W 0 + W 1 else 0) - weilRightArithmeticIntegral chi W T =
        orientedHorizontalBoundary (DirichletCharacter.completedLFunction chi) f T := by
  intro W
  have hW : AnalyticOnNhd ℂ W univ :=
    analyticOnNhd_correlation_contour_weight f A hA
      (hf.1.continuous.integrable_of_hasCompactSupport hf.2) (supported_of_tsupport hs)
  have he := weil_finite_right_arithmetic_identity chi hprim T hT hheight W hW
  rw [orientedHorizontalBoundary_eq]
  dsimp only [horizontalIntegral, horizontalIntegrand]
  simp only [mul_comm Complex.I] at he ⊢
  linear_combination he

/-- One source-selected sequence supplies every finite formula and a quantitative
vanishing discrepancy for every supported admissible test. No separate convergence
of the zero sum or the infinite arithmetic integral is asserted here. -/
theorem exists_primitive_finite_arithmetic_error_vanishes
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    let C := horizontalLogDerivativeConstant chi + 1 + gammaRLogDerivativeConstant
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        let K := C * derivativeL1Cost f 3 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2
        let E := fun n : ℕ =>
          (∑ rho ∈ heightWindow chi hprim (T n), (zeroMultiplicity chi rho : ℂ) * W rho.1) -
            (if N = 1 then W 0 + W 1 else 0) - weilRightArithmeticIntegral chi W (T n)
        (∀ n, E n = orientedHorizontalBoundary (DirichletCharacter.completedLFunction chi) f (T n)) ∧
        (∀ n, ‖E n‖ ≤ (3 / Real.pi) * K / (1 + T n) ^ 2) ∧
        Tendsto E atTop (𝓝 0) := by
  intro C
  obtain ⟨T, hT, hn, hall⟩ := exists_primitive_horizontal_edges_vanish chi hprim
  refine ⟨T, hT, ?_⟩
  intro f A hA hf hs W K E
  obtain ⟨_, hb, _, _, hl⟩ := hall f A hA hf hs
  have he (n : ℕ) : E n =
      orientedHorizontalBoundary (DirichletCharacter.completedLFunction chi) f (T n) := by
    have hheight : ∀ s : ℂ, |s.im| = T n →
        DirichletCharacter.completedLFunction chi s ≠ 0 := by
      intro s hi
      have hcoord : (s.re : ℂ) + Complex.I * (s.im : ℂ) = s := by
        simpa only [mul_comm] using Complex.re_add_im s
      rcases le_total 0 s.im with hp | hm
      · rw [abs_of_nonneg hp] at hi
        simpa only [one_mul, ← hi, hcoord] using hn n s.re 1 (Or.inr rfl)
      · rw [abs_of_nonpos hm] at hi
        have him : s.im = -T n := by linarith
        simpa only [neg_one_mul, ← him, hcoord] using hn n s.re (-1) (Or.inl rfl)
    exact weil_test_right_arithmetic_residual chi hprim (T n)
      (by linarith [(hT n).1, Nat.cast_nonneg (α := ℝ) n]) hheight f A hA hf hs
  refine ⟨he, ?_, ?_⟩
  · intro n
    rw [he n]
    exact hb n
  · have heq : E = fun n =>
        orientedHorizontalBoundary (DirichletCharacter.completedLFunction chi) f (T n) :=
      funext he
    rw [heq]
    exact hl

/-- Literal zeta specialization: no conductor term, no character phase, and BOTH
negative logarithmic pole contributions. The remaining series has all prime powers. -/
theorem completedZeta_finite_arithmetic_residual
    (T : ℝ) (hT : 0 < T)
    (hheight : ∀ s : ℂ, |s.im| = T → completedRiemannZeta s ≠ 0)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    (∑ rho ∈ heightWindow chi hprim T, (zeroMultiplicity chi rho : ℂ) * W rho.1) -
      (W 0 + W 1) -
      (∫ t in (-T)..T,
        let s := (2 : ℂ) + (t : ℂ) * Complex.I
        (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2 -
          LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) s)) /
            (2 * (Real.pi : ℂ)) =
      orientedHorizontalBoundary completedRiemannZeta f T := by
  intro chi hprim W
  have hp : gammaParity chi = 0 := by
    simp [chi, gammaParity, MulChar.one_apply (isUnit_of_subsingleton _)]
  have hJ : weilRightArithmeticIntegral chi W T =
      (∫ t in (-T)..T,
        let s := (2 : ℂ) + (t : ℂ) * Complex.I
        (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2 -
          LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) s)) /
            (2 * (Real.pi : ℂ)) := by
    unfold weilRightArithmeticIntegral
    congr 1
    apply intervalIntegral.integral_congr
    intro t _
    simp only [weilRightArithmeticIntegrand, hp, Nat.cast_zero, add_zero,
      Nat.cast_one, Real.log_one, Complex.ofReal_zero, zero_mul, zero_add,
      chi, inv_one, MulChar.one_apply (isUnit_of_subsingleton _), one_mul]
    ring
  have he := weil_test_right_arithmetic_residual chi hprim T hT
    (by simpa only [DirichletCharacter.completedLFunction_modOne_eq] using hheight) f A hA hf hs
  simpa only [if_true, DirichletCharacter.completedLFunction_modOne_eq, hJ] using he

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
