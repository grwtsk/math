/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilContourWeight
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCompletedHorizontalLogDerivative
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
# Vanishing of both actual weighted horizontal edges

MSC2020: 11M41, 11M06, 30E20.
The unchanged correlation weight is integrated against the logarithmic derivative
of the actual continued source. Integrability is proved before the norm bounds.
The upper edge is oriented from 2+iT to -1+iT and the lower edge from -1-iT to
2-iT. The same source-derived sequence works for every admissible supported test.
Sixth-power weight decay and fourth-power completed-source growth leave an
inverse-square bound for each complete edge, not merely their cancellation.

This supplies horizontal removal only. Finite rectangular residues, inversion,
compensated arithmetic evaluation, the full explicit formula, arithmetic sign,
and varying-test interpolation-cost/tail control are separate obligations.
Both zeta poles and the inverse-character arithmetic convention are unchanged.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit,
independent review NOT_RUN. Novelty UNASSESSED. Refs math#1801.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.SpecialFunctions.GammaLogDerivativeBounds

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

/-- Literal restriction of the original weighted logarithmic derivative.
The generic source argument permits the same definition for Dirichlet and zeta. -/
def horizontalIntegrand (F : ℂ → ℂ) (f : ℝ → ℂ) (t sigma : ℝ) : ℂ :=
  (∫ r : ℝ, correlation f r * Complex.exp
    ((((sigma : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) * (r : ℂ))) *
      logDeriv F ((sigma : ℂ) + Complex.I * (t : ℂ))

/-- The forward horizontal segment, with dz=d(sigma), not i*d(sigma). -/
def horizontalIntegral (F : ℂ → ℂ) (f : ℝ → ℂ) (t : ℝ) : ℂ :=
  ∫ sigma in (-1 : ℝ)..2, horizontalIntegrand F f t sigma

/-- Both positively oriented rectangle edges with the exact residue normalization. -/
def orientedHorizontalBoundary (F : ℂ → ℂ) (f : ℝ → ℂ) (T : ℝ) : ℂ :=
  ((∫ sigma in (2 : ℝ)..(-1), horizontalIntegrand F f T sigma) +
    (∫ sigma in (-1 : ℝ)..2, horizontalIntegrand F f (-T) sigma)) /
      (2 * (Real.pi : ℂ) * Complex.I)

/-- The top orientation is a minus sign, independently of the bottom height sign. -/
theorem orientedHorizontalBoundary_eq (F : ℂ → ℂ) (f : ℝ → ℂ) (T : ℝ) :
    orientedHorizontalBoundary F f T =
      (horizontalIntegral F f (-T) - horizontalIntegral F f T) /
        (2 * (Real.pi : ℂ) * Complex.I) := by
  unfold orientedHorizontalBoundary horizontalIntegral
  rw [intervalIntegral.integral_symm (a := (-1 : ℝ)) (b := 2)]
  congr 1
  ring

/-- Actual regularity, rather than a convention for a nonintegrable totalized integral. -/
theorem intervalIntegrable_horizontalIntegrand (F : ℂ → ℂ) (f : ℝ → ℂ)
    (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A)
    (t : ℝ)
    (hF : ∀ sigma ∈ Icc (-1 : ℝ) 2,
      AnalyticAt ℂ F ((sigma : ℂ) + Complex.I * (t : ℂ)))
    (hn : ∀ sigma ∈ Icc (-1 : ℝ) 2,
      F ((sigma : ℂ) + Complex.I * (t : ℂ)) ≠ 0) :
    IntervalIntegrable (horizontalIntegrand F f t) volume (-1) 2 := by
  have hW := analyticOnNhd_correlation_contour_weight f A hA
    (hf.1.continuous.integrable_of_hasCompactSupport hf.2) (supported_of_tsupport hs)
  apply ContinuousOn.intervalIntegrable
  rw [uIcc_of_le (by norm_num : (-1 : ℝ) ≤ 2)]
  intro sigma hsigma
  have hlog : AnalyticAt ℂ (logDeriv F)
      ((sigma : ℂ) + Complex.I * (t : ℂ)) :=
    (hF sigma hsigma).deriv.div (hF sigma hsigma) (hn sigma hsigma)
  have hc := ((hW _ (mem_univ _)).continuousAt.mul hlog.continuousAt).comp
    (show ContinuousAt (fun x : ℝ => (x : ℂ) + Complex.I * (t : ℂ)) sigma by fun_prop)
  exact hc.continuousWithinAt

/-- Every point of an entire horizontal edge has the same inverse-square budget.
The sixth power is supplied by derivative order three of the actual test. -/
theorem norm_horizontalIntegrand_le (F : ℂ → ℂ) (f : ℝ → ℂ)
    (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A)
    (C T epsilon : ℝ) (hT : 2 ≤ T) (he : epsilon = -1 ∨ epsilon = 1)
    (hD : ∀ sigma ∈ Icc (-1 : ℝ) 2,
      ‖logDeriv F ((sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ))‖ ≤
        C * (1 + T) ^ 4) (sigma : ℝ) (hsigma : sigma ∈ Icc (-1 : ℝ) 2) :
    ‖horizontalIntegrand F f (epsilon * T) sigma‖ ≤
      (C * derivativeL1Cost f 3 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2) /
        (1 + T) ^ 2 := by
  let s : ℂ := (sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)
  have hre : s.re = sigma := by simp [s]
  have him : |s.im| = T := by
    rcases he with rfl | rfl <;> simp [s, abs_of_nonneg (by linarith : 0 ≤ T)]
  have hstrip : |s.re - 1 / 2| ≤ (3 / 2 : ℝ) := by
    rw [hre]
    exact abs_le.mpr ⟨by linarith [hsigma.1], by linarith [hsigma.2]⟩
  have hw := norm_correlation_contour_weight_le_strip f A hA hf hs 3 (3 / 2) s hstrip
  rw [him] at hw
  have hd := hD sigma hsigma
  have hpos : 0 < 1 + T := by linarith
  unfold horizontalIntegrand
  rw [norm_mul]
  calc
    _ ≤ (derivativeL1Cost f 3 ^ 2 * (Real.exp (A * (3 / 2 : ℝ)) /
          (1 + T) ^ 3) ^ 2) * (C * (1 + T) ^ 4) :=
      mul_le_mul hw hd (norm_nonneg _) (by positivity)
    _ = _ := by field_simp [hpos.ne'] <;> ring

/-- Integrating the all-point bound pays the full segment length three. -/
theorem norm_horizontalIntegral_le (F : ℂ → ℂ) (f : ℝ → ℂ)
    (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A)
    (C T epsilon : ℝ) (hT : 2 ≤ T) (he : epsilon = -1 ∨ epsilon = 1)
    (hD : ∀ sigma ∈ Icc (-1 : ℝ) 2,
      ‖logDeriv F ((sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ))‖ ≤
        C * (1 + T) ^ 4)
    (_hint : IntervalIntegrable (horizontalIntegrand F f (epsilon * T)) volume (-1) 2) :
    ‖horizontalIntegral F f (epsilon * T)‖ ≤
      3 * (C * derivativeL1Cost f 3 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2) /
        (1 + T) ^ 2 := by
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := (-1 : ℝ)) (b := 2)
    (f := horizontalIntegrand F f (epsilon * T))
    (fun sigma hsigma => norm_horizontalIntegrand_le F f A hA hf hs C T epsilon hT he
      hD sigma (by
        have hx : sigma ∈ Ioc (-1 : ℝ) 2 := by
          simpa only [uIoc_of_le (by norm_num : (-1 : ℝ) ≤ 2)] using hsigma
        exact ⟨hx.1.le, hx.2⟩))
  change ‖∫ sigma in (-1 : ℝ)..2, horizontalIntegrand F f (epsilon * T) sigma‖ ≤ _
  calc
    _ ≤ _ := hb
    _ = _ := by norm_num; ring

/-- Both edges are paid separately; their cancellation is not assumed.
The denominator norm is exactly 2*pi, with positive pi proved before division. -/
theorem norm_orientedHorizontalBoundary_le (F : ℂ → ℂ) (f : ℝ → ℂ)
    (K T : ℝ)
    (hp : ‖horizontalIntegral F f T‖ ≤ 3 * K / (1 + T) ^ 2)
    (hm : ‖horizontalIntegral F f (-T)‖ ≤ 3 * K / (1 + T) ^ 2) :
    ‖orientedHorizontalBoundary F f T‖ ≤ (3 / Real.pi) * K / (1 + T) ^ 2 := by
  rw [orientedHorizontalBoundary_eq, norm_div]
  have hden : ‖2 * (Real.pi : ℂ) * Complex.I‖ = 2 * Real.pi := by
    rw [norm_mul, norm_mul, Complex.norm_I, mul_one,
      Complex.norm_of_nonneg Real.pi_pos.le]
    norm_num
  rw [hden]
  calc
    _ ≤ (3 * K / (1 + T) ^ 2 + 3 * K / (1 + T) ^ 2) / (2 * Real.pi) :=
      div_le_div_of_nonneg_right ((norm_sub_le _ _).trans (add_le_add hm hp))
        (by positivity)
    _ = _ := by simp only [div_eq_mul_inv, mul_inv_rev]; ring

/-- A fixed numerator and the original lower height bound give genuine convergence.
No condition on the finitely many initial values or a dropped tail is needed. -/
theorem tendsto_zero_of_horizontal_budget (u : ℕ → ℂ) (T : ℕ → ℝ)
    (K : ℝ) (hK : 0 ≤ K) (hT : ∀ n, (n : ℝ) + 2 < T n)
    (hu : ∀ n, ‖u n‖ ≤ K / (1 + T n) ^ 2) :
    Tendsto u atTop (𝓝 0) := by
  have hm (n : ℕ) : ‖u n‖ ≤ K * (1 / ((n : ℝ) + 1)) ^ 2 := by
    apply (hu n).trans
    have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
    have hden : ((n : ℝ) + 1) ^ 2 ≤ (1 + T n) ^ 2 := by
      gcongr
      linarith [hT n]
    calc
      _ ≤ K / ((n : ℝ) + 1) ^ 2 :=
        div_le_div_of_nonneg_left hK (by positivity) hden
      _ = _ := by rw [div_pow, one_pow]; ring
  have hz : Tendsto (fun n : ℕ => K * (1 / ((n : ℝ) + 1)) ^ 2) atTop (𝓝 0) := by
    have hz := (tendsto_one_div_add_atTop_nhds_zero_nat (𝕜 := ℝ)).pow 2
    simpa only [zero_pow (by norm_num : (2 : ℕ) ≠ 0), mul_zero] using hz.const_mul K
  exact squeeze_zero_norm hm hz

/-- Reversing the upper edge preserves its zero limit, with the minus sign explicit. -/
theorem tendsto_reversed_horizontalIntegral_zero (F : ℂ → ℂ) (f : ℝ → ℂ)
    (T : ℕ → ℝ) (h : Tendsto (fun n => horizontalIntegral F f (T n)) atTop (𝓝 0)) :
    Tendsto (fun n => ∫ sigma in (2 : ℝ)..(-1), horizontalIntegrand F f (T n) sigma)
      atTop (𝓝 0) := by
  have he (n : ℕ) :
      (∫ sigma in (2 : ℝ)..(-1), horizontalIntegrand F f (T n) sigma) =
        -horizontalIntegral F f (T n) := intervalIntegral.integral_symm (-1) 2
  simp_rw [he]
  simpa only [neg_zero] using h.neg

private theorem analyticAt_completed_source_nonreal {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hi : s.im ≠ 0) :
    AnalyticAt ℂ (DirichletCharacter.completedLFunction chi) s := by
  let U : Set ℂ := {z | z.im ≠ 0}
  have hopen : IsOpen U := isOpen_ne Complex.continuous_im continuous_const
  have hd : DifferentiableOn ℂ (DirichletCharacter.completedLFunction chi) U := by
    intro z hz
    have hz0 : z ≠ 0 := by intro h; apply hz; simp [h]
    have hz1 : z ≠ 1 := by intro h; apply hz; simp [h]
    exact (chi.differentiableAt_completedLFunction z (.inl hz0) (.inl hz1)).differentiableWithinAt
  exact (hd.analyticOnNhd hopen) s hi

/-- One source-derived sequence, selected BEFORE every admissible test, removes
both actual edges and their oriented normalized sum. Every integrability premise
is supplied; no boundary magnitude hypothesis remains. -/
theorem exists_primitive_horizontal_edges_vanish {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    let C := horizontalLogDerivativeConstant chi + 1 + gammaRLogDerivativeConstant
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        DirichletCharacter.completedLFunction chi
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let F := DirichletCharacter.completedLFunction chi
        let K := C * derivativeL1Cost f 3 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2
        (∀ n (epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
          IntervalIntegrable (horizontalIntegrand F f (epsilon * T n)) volume (-1) 2 ∧
          ‖horizontalIntegral F f (epsilon * T n)‖ ≤ 3 * K / (1 + T n) ^ 2) ∧
        (∀ n, ‖orientedHorizontalBoundary F f (T n)‖ ≤
          (3 / Real.pi) * K / (1 + T n) ^ 2) ∧
        (∀ epsilon : ℝ, epsilon = -1 ∨ epsilon = 1 →
          Tendsto (fun n => horizontalIntegral F f (epsilon * T n)) atTop (𝓝 0)) ∧
        Tendsto (fun n => ∫ sigma in (2 : ℝ)..(-1), horizontalIntegrand F f (T n) sigma)
          atTop (𝓝 0) ∧
        Tendsto (fun n => orientedHorizontalBoundary F f (T n)) atTop (𝓝 0) := by
  intro C
  obtain ⟨T, hT, hn, hD⟩ := exists_horizontal_completedLFunction_logDeriv_bound chi hprim
  refine ⟨T, hT, hn, ?_⟩
  intro f A hA hf hs F K
  have hC : 0 ≤ C := by
    dsimp [C]
    linarith [horizontalLogDerivativeConstant_pos chi, gammaRLogDerivativeConstant_pos]
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hT2 (n : ℕ) : 2 ≤ T n := by
    linarith [(hT n).1, Nat.cast_nonneg (α := ℝ) n]
  have hpair (n : ℕ) (epsilon : ℝ) (he : epsilon = -1 ∨ epsilon = 1) :
      IntervalIntegrable (horizontalIntegrand F f (epsilon * T n)) volume (-1) 2 ∧
      ‖horizontalIntegral F f (epsilon * T n)‖ ≤ 3 * K / (1 + T n) ^ 2 := by
    have him (sigma : ℝ) :
        ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)).im ≠ 0 := by
      have ht : T n ≠ 0 := (lt_of_lt_of_le (by norm_num) (hT2 n)).ne'
      rcases he with rfl | rfl <;> simpa using ht
    have hI := intervalIntegrable_horizontalIntegrand F f A hA hf hs (epsilon * T n)
      (fun sigma _ => analyticAt_completed_source_nonreal chi (him sigma))
      (fun sigma _ => hn n sigma epsilon he)
    refine ⟨hI, ?_⟩
    exact norm_horizontalIntegral_le F f A hA hf hs C (T n) epsilon (hT2 n) he
      (fun sigma hsigma => hD n sigma epsilon hsigma.1 hsigma.2 he) hI
  have hbound (n : ℕ) : ‖orientedHorizontalBoundary F f (T n)‖ ≤
      (3 / Real.pi) * K / (1 + T n) ^ 2 := by
    apply norm_orientedHorizontalBoundary_le F f K (T n)
    · simpa using (hpair n 1 (Or.inr rfl)).2
    · simpa using (hpair n (-1) (Or.inl rfl)).2
  have hlimits (epsilon : ℝ) (he : epsilon = -1 ∨ epsilon = 1) :
      Tendsto (fun n => horizontalIntegral F f (epsilon * T n)) atTop (𝓝 0) :=
    tendsto_zero_of_horizontal_budget _ T (3 * K) (by positivity)
      (fun n => (hT n).1) (fun n => (hpair n epsilon he).2)
  refine ⟨hpair, hbound, hlimits, ?_, ?_⟩
  · exact tendsto_reversed_horizontalIntegral_zero F f T
      (by simpa only [one_mul] using hlimits 1 (Or.inr rfl))
  · exact tendsto_zero_of_horizontal_budget _ T ((3 / Real.pi) * K) (by positivity)
      (fun n => (hT n).1) hbound

/-- Literal conductor-one source: both poles remain inside the prospective rectangle,
while both weighted nonreal boundaries vanish for the same sequence of heights. -/
theorem exists_zeta_horizontal_edges_vanish :
    let C := horizontalLogDerivativeConstant (1 : DirichletCharacter ℂ 1) + 1 +
      gammaRLogDerivativeConstant
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        completedRiemannZeta ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let K := C * derivativeL1Cost f 3 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2
        (∀ n (epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
          IntervalIntegrable (horizontalIntegrand completedRiemannZeta f (epsilon * T n))
            volume (-1) 2 ∧
          ‖horizontalIntegral completedRiemannZeta f (epsilon * T n)‖ ≤
            3 * K / (1 + T n) ^ 2) ∧
        (∀ n, ‖orientedHorizontalBoundary completedRiemannZeta f (T n)‖ ≤
          (3 / Real.pi) * K / (1 + T n) ^ 2) ∧
        (∀ epsilon : ℝ, epsilon = -1 ∨ epsilon = 1 →
          Tendsto (fun n => horizontalIntegral completedRiemannZeta f (epsilon * T n))
            atTop (𝓝 0)) ∧
        Tendsto (fun n => ∫ sigma in (2 : ℝ)..(-1),
          horizontalIntegrand completedRiemannZeta f (T n) sigma) atTop (𝓝 0) ∧
        Tendsto (fun n => orientedHorizontalBoundary completedRiemannZeta f (T n))
          atTop (𝓝 0) := by
  simpa only [DirichletCharacter.completedLFunction_modOne_eq] using
    exists_primitive_horizontal_edges_vanish (1 : DirichletCharacter ℂ 1)
      DirichletCharacter.isPrimitive_one_level_one

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
