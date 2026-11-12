/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteArithmeticLine
import Mathlib.Analysis.Normed.Group.Bounded
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
# Absolute vertical integrability and the actual Weil full-line limit

MSC2020: 11M41, 11M06, 30E20. The prime-series bound is derived in Re(s)>=2,
not postulated. Actual continued-source regularity handles the compact part of
the right line; the maintained full-complex gamma estimate handles both tails.
Fourth-order weight decay then supplies an integrable cubic majorant for the
UNCHANGED arithmetic line. The finite residue/horizontal consumer consequently
has a genuine limit, with the source-selected heights preceding every test.

This is NOT yet evaluation of that integral as the canonical physical arithmetic
form or identification with an unordered absolutely convergent zero tsum.
Both conductor-one poles, original multiplicities, and the inverse character
remain. No seven-eighths theorem, zero-proportion result or sign premise is used.

Method comparison: Anthropic Zeta23/WeilEF/FullLine.lean, revision
16a5ce41304fcdaea4e0be7c132e1c361dc26da5, tendsto_interval_Fline. This is a local
consequence on the existing GRWTSK objects, not an import or replay of that
proof. The improper-integral API is read at OUR pinned Mathlib revision.

SOURCE_PROOF_CANDIDATE. Elaboration, imported-dependency builds, fresh kernel
replay, transitive axiom audit and independent review: NOT_RUN. Novelty
UNASSESSED. Complete argument and individual records are adjacent.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology BigOperators
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.SpecialFunctions.GammaLogDerivativeBounds

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

variable {N : ℕ} [NeZero N]

/-- Uniform absolute prime-power mass on the whole closed half-plane Re(s)>=2.
The majorant itself is summable by pinned Mathlib, including its n=0 convention. -/
theorem norm_primeSeries_le_at_two (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 2 ≤ s.re) :
    ‖LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s‖ ≤
      ∑' n : ℕ, ‖LSeries.term (fun m : ℕ => (ArithmeticFunction.vonMangoldt m : ℂ))
        (2 : ℂ) n‖ := by
  let v : ℕ → ℂ := fun n => (ArithmeticFunction.vonMangoldt n : ℂ)
  have hv : Summable (fun n => ‖LSeries.term v (2 : ℂ) n‖) :=
    (ArithmeticFunction.LSeriesSummable_vonMangoldt (s := (2 : ℂ)) (by norm_num)).norm
  have ht : Summable (LSeries.term (fun n : ℕ => chi n * v n) s) :=
    chi.LSeriesSummable_twist_vonMangoldt (by linarith)
  have hb (n : ℕ) : ‖LSeries.term (fun m : ℕ => chi m * v m) s n‖ ≤
      ‖LSeries.term v (2 : ℂ) n‖ := by
    apply (LSeries.norm_term_le s ?_).trans
      (LSeries.norm_term_le_of_re_le_re v (s := (2 : ℂ)) (s' := s)
        (by simpa using hs) n)
    calc
      ‖chi n * v n‖ = ‖chi n‖ * ‖v n‖ := norm_mul _ _
      _ ≤ 1 * ‖v n‖ := mul_le_mul_of_nonneg_right (chi.norm_le_one _) (norm_nonneg _)
      _ = ‖v n‖ := one_mul _
  exact ht.hasSum.norm_le_of_bounded hv.hasSum hb

private theorem continuous_completed_logDeriv_right (chi : DirichletCharacter ℂ N) :
    Continuous (fun t : ℝ => logDeriv (DirichletCharacter.completedLFunction chi)
      (2 + (t : ℂ) * Complex.I)) := by
  let U : Set ℂ := {s | 1 < s.re}
  have hU : IsOpen U := isOpen_lt continuous_const Complex.continuous_re
  have hd : DifferentiableOn ℂ (DirichletCharacter.completedLFunction chi) U := by
    intro s hs
    have h0 : s ≠ 0 := by intro h; simpa [U, h] using hs
    have h1 : s ≠ 1 := by intro h; simpa [U, h] using hs
    exact (chi.differentiableAt_completedLFunction s (.inl h0) (.inl h1)).differentiableWithinAt
  have ha := hd.analyticOnNhd hU
  rw [continuous_iff_continuousAt]
  intro t
  have hs : 1 < (2 + (t : ℂ) * Complex.I).re := by norm_num
  have hlocal := ha (2 + (t : ℂ) * Complex.I) hs
  exact (hlocal.deriv.div hlocal (completedLFunction_ne_zero_right_of_euler chi hs)).
    continuousAt.comp (show ContinuousAt (fun t : ℝ => 2 + (t : ℂ) * Complex.I) t by fun_prop)

/-- An actual full-line bound, including t=0. No compact-line bound is assumed.
The source constant is selected before any weight or admissible test. -/
theorem exists_completed_logDeriv_right_linear_bound (chi : DirichletCharacter ℂ N) :
    ∃ K : ℝ, 0 < K ∧ ∀ t : ℝ,
      ‖logDeriv (DirichletCharacter.completedLFunction chi) (2 + (t : ℂ) * Complex.I)‖ ≤
        K * (1 + |t|) := by
  let M : ℝ := ∑' n : ℕ, ‖LSeries.term
    (fun m : ℕ => (ArithmeticFunction.vonMangoldt m : ℂ)) (2 : ℂ) n‖
  have hM : 0 ≤ M := tsum_nonneg (fun _ => norm_nonneg _)
  have hc := continuous_completed_logDeriv_right chi
  obtain ⟨B, hB⟩ := (isCompact_Icc : IsCompact (Icc (-2 : ℝ) 2)).
    exists_bound_of_continuousOn hc.continuousOn
  let K : ℝ := |B| + M + gammaRLogDerivativeConstant + 1
  have hK : 0 < K := by
    dsimp [K]
    linarith [abs_nonneg B, gammaRLogDerivativeConstant_pos]
  refine ⟨K, hK, ?_⟩
  intro t
  by_cases ht : 2 ≤ |t|
  · let s : ℂ := 2 + (t : ℂ) * Complex.I
    have hre : s.re = 2 := by simp [s]
    have him : s.im = t := by simp [s]
    have hi : s.im ≠ 0 := by
      rw [him]
      intro he
      simp [he] at ht
    have hs : 1 < s.re := by rw [hre]; norm_num
    have hn := completedLFunction_ne_zero_right_of_euler chi hs
    have hg := norm_logDeriv_gammaFactor_le_horizontal_strip chi
      (s := s) (by rw [hre]; norm_num) (by rw [hre]) (by rwa [him])
    have hp := norm_primeSeries_le_at_two chi (s := s) (by rw [hre])
    change ‖logDeriv (DirichletCharacter.completedLFunction chi) s‖ ≤ _
    rw [logDeriv_completedLFunction_of_nonreal chi hi hn,
      LFunction_logDeriv_eq_primeSeries chi hs]
    calc
      _ ≤ ‖logDeriv (DirichletCharacter.gammaFactor chi) s‖ +
          ‖LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s‖ := by
        simpa only [norm_neg, add_comm] using norm_add_le
          (-LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s)
          (logDeriv (DirichletCharacter.gammaFactor chi) s)
      _ ≤ gammaRLogDerivativeConstant * (1 + |t|) + M := by
        simpa only [him] using add_le_add hg hp
      _ ≤ K * (1 + |t|) := by
        dsimp [K]
        nlinarith [abs_nonneg B, abs_nonneg t, mul_nonneg hM (abs_nonneg t),
          mul_nonneg (abs_nonneg B) (abs_nonneg t)]
  · have hsmall : t ∈ Icc (-2 : ℝ) 2 := by
      have := abs_lt.mp (lt_of_not_ge ht)
      exact ⟨this.1.le, this.2.le⟩
    calc
      _ ≤ B := hB t hsmall
      _ ≤ |B| := le_abs_self B
      _ ≤ K := by dsimp [K]; linarith [gammaRLogDerivativeConstant_pos]
      _ ≤ K * (1 + |t|) := by nlinarith [mul_nonneg hK.le (abs_nonneg t)]

/-- The left source is reflected by its actual functional equation. This leaves
TWO right logarithmic derivatives and the full conductor, not a same-character substitution. -/
theorem weilRightArithmeticIntegrand_eq_dual_sources
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) (W : ℂ → ℂ) (t : ℝ) :
    let s := (2 : ℂ) + (t : ℂ) * Complex.I
    weilRightArithmeticIntegrand chi W t =
      W s * logDeriv (DirichletCharacter.completedLFunction chi) s +
      W (1 - s) * ((Real.log (N : ℝ) : ℂ) +
        logDeriv (DirichletCharacter.completedLFunction chi⁻¹) s) := by
  intro s
  have hs : 1 < s.re := by norm_num [s]
  have he := weighted_completed_logDeriv_pair chi hprim W hs
  change _ = weilRightArithmeticIntegrand chi W t at he
  rw [← he, completedLFunction_logDeriv_dual_right chi hprim hs]
  ring

private theorem continuous_weilRightArithmeticIntegrand
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (W : ℂ → ℂ) (hW : AnalyticOnNhd ℂ W univ) :
    Continuous (weilRightArithmeticIntegrand chi W) := by
  have hcW : Continuous W := continuous_iff_continuousAt.mpr
    (fun s => (hW s (mem_univ _)).continuousAt)
  have he : weilRightArithmeticIntegrand chi W = fun t : ℝ =>
      W (2 + (t : ℂ) * Complex.I) *
        logDeriv (DirichletCharacter.completedLFunction chi) (2 + (t : ℂ) * Complex.I) +
      W (1 - (2 + (t : ℂ) * Complex.I)) * ((Real.log (N : ℝ) : ℂ) +
        logDeriv (DirichletCharacter.completedLFunction chi⁻¹) (2 + (t : ℂ) * Complex.I)) :=
    funext (weilRightArithmeticIntegrand_eq_dual_sources chi hprim W)
  rw [he]
  exact ((hcW.comp (by fun_prop)).mul (continuous_completed_logDeriv_right chi)).add
    ((hcW.comp (by fun_prop)).mul (continuous_const.add (continuous_completed_logDeriv_right chi⁻¹)))

/-- A cubic majorant on BOTH infinite vertical tails. Its character constant is
chosen before all tests; the displayed test cost is not claimed uniformly bounded. -/
theorem exists_weilRightArithmeticIntegrand_cubic_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ C : ℝ, 0 < C ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        ∀ t : ℝ, ‖weilRightArithmeticIntegrand chi W t‖ ≤
          (C * derivativeL1Cost f 2 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2) /
            (1 + |t|) ^ 3 := by
  obtain ⟨K, hK, hD⟩ := exists_completed_logDeriv_right_linear_bound chi
  obtain ⟨L, hL, hDi⟩ := exists_completed_logDeriv_right_linear_bound chi⁻¹
  let C := K + L + |Real.log (N : ℝ)|
  refine ⟨C, by dsimp [C]; positivity, ?_⟩
  intro f A hA hf hs W t
  let s : ℂ := 2 + (t : ℂ) * Complex.I
  let B : ℝ := derivativeL1Cost f 2 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2
  let x : ℝ := 1 + |t|
  have hx : 0 < x := by dsimp [x]; positivity
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hw : ‖W s‖ ≤ B / x ^ 4 := by
    have h := norm_correlation_contour_weight_le_strip f A hA hf hs 2 (3 / 2) s
      (by norm_num [s])
    have him : |s.im| = |t| := by simp [s]
    rw [him] at h
    calc
      ‖W s‖ ≤ derivativeL1Cost f 2 ^ 2 * (Real.exp (A * (3 / 2 : ℝ)) / x ^ 2) ^ 2 := h
      _ = B / x ^ 4 := by dsimp [B]; field_simp [hx.ne'] <;> ring
  have hwi : ‖W (1 - s)‖ ≤ B / x ^ 4 := by
    have h := norm_correlation_contour_weight_le_strip f A hA hf hs 2 (3 / 2) (1 - s)
      (by norm_num [s])
    have him : |(1 - s).im| = |t| := by simp [s]
    rw [him] at h
    calc
      ‖W (1 - s)‖ ≤ derivativeL1Cost f 2 ^ 2 * (Real.exp (A * (3 / 2 : ℝ)) / x ^ 2) ^ 2 := h
      _ = B / x ^ 4 := by dsimp [B]; field_simp [hx.ne'] <;> ring
  have hd : ‖logDeriv (DirichletCharacter.completedLFunction chi) s‖ ≤ K * x := hD t
  have hdi : ‖(Real.log (N : ℝ) : ℂ) +
      logDeriv (DirichletCharacter.completedLFunction chi⁻¹) s‖ ≤
        (L + |Real.log (N : ℝ)|) * x := by
    calc
      _ ≤ ‖(Real.log (N : ℝ) : ℂ)‖ +
          ‖logDeriv (DirichletCharacter.completedLFunction chi⁻¹) s‖ := norm_add_le _ _
      _ ≤ |Real.log (N : ℝ)| + L * x := by
        simpa only [Complex.norm_real, Real.norm_eq_abs] using add_le_add_left (hDi t) _
      _ ≤ (L + |Real.log (N : ℝ)|) * x := by
        dsimp [x]
        nlinarith [mul_nonneg (abs_nonneg (Real.log (N : ℝ))) (abs_nonneg t)]
  rw [weilRightArithmeticIntegrand_eq_dual_sources chi hprim W t]
  calc
    _ ≤ ‖W s‖ * ‖logDeriv (DirichletCharacter.completedLFunction chi) s‖ +
        ‖W (1 - s)‖ * ‖(Real.log (N : ℝ) : ℂ) +
          logDeriv (DirichletCharacter.completedLFunction chi⁻¹) s‖ := by
      simpa only [norm_mul] using norm_add_le
        (W s * logDeriv (DirichletCharacter.completedLFunction chi) s)
        (W (1 - s) * ((Real.log (N : ℝ) : ℂ) +
          logDeriv (DirichletCharacter.completedLFunction chi⁻¹) s))
    _ ≤ (B / x ^ 4) * (K * x) + (B / x ^ 4) * ((L + |Real.log (N : ℝ)|) * x) :=
      add_le_add (mul_le_mul hw hd (norm_nonneg _) (by positivity))
        (mul_le_mul hwi hdi (norm_nonneg _) (by positivity))
    _ = _ := by dsimp [C, B, x]; field_simp [hx.ne'] <;> ring

/-- The whole arithmetic integrand is absolutely integrable. The source identity,
all-point bound, and measurable regularity are supplied, not extra hypotheses. -/
theorem integrable_weilRightArithmeticIntegrand
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Integrable (weilRightArithmeticIntegrand chi W) volume := by
  intro W
  obtain ⟨C, hC, hb⟩ := exists_weilRightArithmeticIntegrand_cubic_bound chi hprim
  let B := C * derivativeL1Cost f 2 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hW : AnalyticOnNhd ℂ W univ := analyticOnNhd_correlation_contour_weight f A hA
    (hf.1.continuous.integrable_of_hasCompactSupport hf.2) (supported_of_tsupport hs)
  have hm : Integrable (fun t : ℝ => B * (1 + t ^ 2)⁻¹) volume :=
    integrable_inv_one_add_sq.const_mul B
  apply hm.mono' (continuous_weilRightArithmeticIntegrand chi hprim W hW).aestronglyMeasurable
  refine Eventually.of_forall (fun t => (hb f A hA hf hs t).trans ?_)
  change B / (1 + |t|) ^ 3 ≤ B * (1 + t ^ 2)⁻¹
  rw [← div_eq_mul_inv]
  apply div_le_div_of_nonneg_left hB (by positivity)
  have hsq : 1 + t ^ 2 ≤ (1 + |t|) ^ 2 := by nlinarith [sq_abs t, abs_nonneg t]
  have hpow : (1 + |t|) ^ 2 ≤ (1 + |t|) ^ 3 := by
    nlinarith [mul_nonneg (sq_nonneg (1 + |t|)) (abs_nonneg t)]
  exact hsq.trans hpow

/-- Both endpoints tend to opposite infinities. Absolute integrability is proved
above; no unexplained limit of a difference is used to infer convergence. -/
theorem tendsto_weilRightArithmeticIntegral
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (T : ℕ → ℝ) (hT : Tendsto T atTop atTop) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Tendsto (fun n => weilRightArithmeticIntegral chi W (T n)) atTop
      (𝓝 ((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)))) := by
  intro W
  have hi := integrable_weilRightArithmeticIntegrand chi hprim f A hA hf hs
  have hl := intervalIntegral_tendsto_integral hi
    (tendsto_neg_atTop_atBot.comp hT) hT
  simpa only [weilRightArithmeticIntegral, div_eq_mul_inv] using
    hl.mul_const (2 * (Real.pi : ℂ))⁻¹

/-- The original multiplicity-weighted finite zero sums now converge to the actual
whole-line arithmetic integral, with BOTH applicable poles subtracted. Heights
are the previously constructed source heights, selected before ALL f,A. -/
theorem exists_primitive_weil_full_line_limit
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        Integrable (weilRightArithmeticIntegrand chi W) volume ∧
        Tendsto (fun n =>
          (∑ rho ∈ heightWindow chi hprim (T n), (zeroMultiplicity chi rho : ℂ) * W rho.1) -
            (if N = 1 then W 0 + W 1 else 0)) atTop
          (𝓝 ((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)))) := by
  obtain ⟨T, hT, he⟩ := exists_primitive_finite_arithmetic_error_vanishes chi hprim
  have ht : Tendsto T atTop atTop := by
    apply tendsto_atTop_mono (fun n => ?_) tendsto_natCast_atTop_atTop
    linarith [(hT n).1]
  refine ⟨T, hT, ?_⟩
  intro f A hA hf hs W
  refine ⟨integrable_weilRightArithmeticIntegrand chi hprim f A hA hf hs, ?_⟩
  obtain ⟨_, _, hE⟩ := he f A hA hf hs
  have hJ := tendsto_weilRightArithmeticIntegral chi hprim f A hA hf hs T ht
  have hsum := hE.add hJ
  simpa only [sub_add_cancel, zero_add] using hsum

/-- Literal conductor-one zeta full-line limit. Both negative pole contributions
survive; the integrand is the full zeta gamma/von-Mangoldt expression. -/
theorem exists_zeta_weil_full_line_limit :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        let V := fun t : ℝ =>
          let s := (2 : ℂ) + (t : ℂ) * Complex.I
          (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2 -
            LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) s)
        Integrable V volume ∧
        Tendsto (fun n =>
          (∑ rho ∈ heightWindow chi hprim (T n), (zeroMultiplicity chi rho : ℂ) * W rho.1) -
            (W 0 + W 1)) atTop (𝓝 ((∫ t : ℝ, V t) / (2 * (Real.pi : ℂ)))) := by
  intro chi hprim
  obtain ⟨T, hT, hall⟩ := exists_primitive_weil_full_line_limit chi hprim
  refine ⟨T, hT, ?_⟩
  intro f A hA hf hs W V
  have hp : gammaParity chi = 0 := by
    simp [chi, gammaParity, MulChar.one_apply (isUnit_of_subsingleton _)]
  have hv : weilRightArithmeticIntegrand chi W = V := by
    funext t
    dsimp only [V]
    simp only [weilRightArithmeticIntegrand, hp, Nat.cast_zero, add_zero,
      Nat.cast_one, Real.log_one, Complex.ofReal_zero, zero_mul, zero_add,
      chi, inv_one, MulChar.one_apply (isUnit_of_subsingleton _), one_mul]
    ring
  simpa only [if_true, hv] using hall f A hA hf hs

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
