/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilModelResidualTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.QuarticHeightSixCertificate

/-!
# Necessary source-error budgets for constructed Weil factors

The same contraction used to construct the polynomial inverse gives the exact
product floor |P| >= (1-r)^d, where r=(n+1)/(n+2). Consequently |P|*(n+2)^d >= 1.
At an actual source zero the source-model discrepancy therefore spends at least
one, contradicting the advertised allowance one quarter. A nonpositive real
part of the source gives the same obstruction whenever P is positive real.
For a singleton factor, positivity of its real part follows from contraction
without any pairing premise. These statements preserve the existing P, U and
source f; no easier surrogate for classical zeta is substituted.

A conjugate-paired spectrum at a positive real parameter yields a positive
real product analytically: pair factors as |1-a*t|^2. The paired-spectrum
identity is not formalized here; `positive_real_source_error_budget` retains
its exact consumed premise P.re=|P| instead of silently assuming it.

The collision lemma is a second necessary observation: a single-valued finite
model cannot distinguish two source points with the same parameter. For the
actual fieldParameter q s=q^(-s), periods 2*pi/log(q) supply such collisions.
No bound on the actual oscillation of zeta is claimed without source evidence.

These elementary inequalities are new source candidates, not an independent
proof of RH/GRH, geometric purity, or any approximation envelope. They use
only the supplied contraction and exact norm identities. Novelty NOT_ASSESSED;
compilation, fresh kernel checking, transitive axiom audit and independent
analytical review NOT_RUN. Source inspected at math commit
24541f93fec792a2eb7ca5fd22ebb99341e158d2. Candidate construction and analytical
inspection were AI-assisted; mathematical direction from grwtsk contributors.
-/

set_option autoImplicit false
noncomputable section
open Set Metric

namespace GRWTSK.Analysis.GeometricProduct

theorem ratio_complement_mul (n : ℕ) :
    (1 - ratio n) * ((n : ℝ) + 2) = 1 := by
  unfold ratio
  have hn : (n : ℝ) + 2 ≠ 0 := ne_of_gt (by positivity)
  field_simp [hn]
  <;> ring

/-- Contraction bounds the complete product away from zero quantitatively. -/
theorem factor_product_lower_bound (as : List ℂ) (n : ℕ) (z : ℂ)
    (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n) :
    (1 - ratio n) ^ as.length ≤ ‖factorProduct as z‖ := by
  revert contractive
  induction as with
  | nil => intro _; simp [factorProduct]
  | cons a as ih =>
    intro contractive
    have ha := contractive a (by simp)
    have hs := ih (fun b hb => contractive b (by simp [hb]))
    have hf : 1 - ratio n ≤ ‖1 - a * z‖ := by
      have htriangle := norm_sub_norm_le (1 : ℂ) (a * z)
      simp only [norm_one] at htriangle
      linarith
    simp only [factorProduct, norm_mul, List.length_cons, pow_succ]
    exact (mul_le_mul hs hf (sub_nonneg.mpr (ratio_lt_one n).le)
      (norm_nonneg (factorProduct as z))).trans_eq (by ring)

/-- The budget's dimension factor cannot be omitted at an actual source zero. -/
theorem factor_scaled_norm_lower (as : List ℂ) (n : ℕ) (z : ℂ)
    (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n) :
    1 ≤ ‖factorProduct as z‖ * ((n : ℝ) + 2) ^ as.length := by
  have hexact : (1 - ratio n) ^ as.length * ((n : ℝ) + 2) ^ as.length = 1 := by
    rw [← mul_pow, ratio_complement_mul, one_pow]
  calc
    1 = (1 - ratio n) ^ as.length * ((n : ℝ) + 2) ^ as.length := hexact.symm
    _ ≤ _ := mul_le_mul_of_nonneg_right
      (factor_product_lower_bound as n z contractive) (by positivity)

/-- A genuine source zero requires error*inverse-growth at least one. -/
theorem zero_source_error_budget (as : List ℂ) (n : ℕ) (z : ℂ) {η : ℝ}
    (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n)
    (comparison : ‖(0 : ℂ) - factorProduct as z‖ ≤ η) :
    1 ≤ η * ((n : ℝ) + 2) ^ as.length := by
  have hη : ‖factorProduct as z‖ ≤ η := by simpa using comparison
  exact (factor_scaled_norm_lower as n z contractive).trans
    (mul_le_mul_of_nonneg_right hη (by positivity))

/-- A source in the left half-plane cannot be close to a positive real model. -/
theorem nonpositive_re_discrepancy (source model : ℂ)
    (sourceSign : source.re ≤ 0) : model.re ≤ ‖source - model‖ := by
  calc
    model.re ≤ (model - source).re := by simp only [Complex.sub_re]; linarith
    _ ≤ ‖model - source‖ := Complex.re_le_norm _
    _ = ‖source - model‖ := norm_sub_rev _ _

/-- For a positive real product, a sign mismatch spends at least one. -/
theorem positive_real_source_error_budget (as : List ℂ) (n : ℕ) (z source : ℂ)
    {η : ℝ} (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n)
    (sourceSign : source.re ≤ 0)
    (positiveReal : (factorProduct as z).re = ‖factorProduct as z‖)
    (comparison : ‖source - factorProduct as z‖ ≤ η) :
    1 ≤ η * ((n : ℝ) + 2) ^ as.length := by
  have hη : ‖factorProduct as z‖ ≤ η := by
    rw [← positiveReal]
    exact (nonpositive_re_discrepancy source _ sourceSign).trans comparison
  exact (factor_scaled_norm_lower as n z contractive).trans
    (mul_le_mul_of_nonneg_right hη (by positivity))

/-- One contractive factor already obstructs a nonpositive real source. -/
theorem singleton_nonpositive_re_budget (a z source : ℂ) (n : ℕ) {η : ℝ}
    (contractive : ‖a * z‖ ≤ ratio n) (sourceSign : source.re ≤ 0)
    (comparison : ‖source - factorProduct [a] z‖ ≤ η) :
    1 ≤ η * ((n : ℝ) + 2) := by
  have hreal : 1 - ratio n ≤ (factorProduct [a] z).re := by
    have hre := Complex.re_le_norm (a * z)
    simp only [factorProduct, mul_one, Complex.sub_re, Complex.one_re]
    linarith
  have hη : 1 - ratio n ≤ η :=
    hreal.trans ((nonpositive_re_discrepancy source _ sourceSign).trans comparison)
  have hscaled := mul_le_mul_of_nonneg_right hη
    (show (0 : ℝ) ≤ (n : ℝ) + 2 by positivity)
  rw [ratio_complement_mul] at hscaled
  exact hscaled

/-- Equal model parameters require compatible actual source values. -/
theorem parameter_collision_discrepancy (f parameter : ℂ → ℂ) (as : List ℂ)
    {s t : ℂ} {ηs ηt : ℝ} (collision : parameter s = parameter t)
    (atS : ‖f s - factorProduct as (parameter s)‖ ≤ ηs)
    (atT : ‖f t - factorProduct as (parameter t)‖ ≤ ηt) :
    ‖f s - f t‖ ≤ ηs + ηt := by
  have hT : ‖factorProduct as (parameter s) - f t‖ ≤ ηt := by
    rw [collision, norm_sub_rev]
    exact atT
  exact (norm_sub_le_norm_sub_add_norm_sub (f s)
    (factorProduct as (parameter s)) (f t)).trans (add_le_add atS hT)

end GRWTSK.Analysis.GeometricProduct

namespace GRWTSK.NumberTheory.Conditional.QuarticWeilObstruction

open GRWTSK.Analysis.GeometricProduct

/-- The real point on the existing rectangle's left boundary has negative source value. -/
theorem zeta_five_eighths_re :
    (riemannZeta (5 / 8 : ℂ)).re ≤ (-203 / 96 : ℝ) := by
  let s : ℂ := 5 / 8
  have halfPlane : -2 < s.re := by norm_num [s]
  have pole : s ≠ 1 := by norm_num [s]
  have evaluation : QuarticApproximation.approximation4 0 s =
      (-17353 / 8192 : ℂ) := by
    rw [QuarticSeed.zero_prefix_eq_model s pole,
      EulerApproximation.HeightSix.approximant_expansion pole]
    norm_num [s]
  have errorConstant : ‖s‖ * ‖s + 1‖ * ‖s + 2‖ * ‖s + 3‖ /
      (720 * (s.re + 3)) = (91 / 24576 : ℝ) := by
    norm_num [s, Complex.norm_def, Complex.normSq]
  have error := QuarticApproximation.zero_prefix_bound s halfPlane pole
  rw [evaluation, errorConstant] at error
  have realPart := Complex.re_le_norm
    (riemannZeta s - (-17353 / 8192 : ℂ))
  have realConstant : (-17353 / 8192 : ℂ).re = (-17353 / 8192 : ℝ) := by
    norm_num
  rw [Complex.sub_re, realConstant] at realPart
  change (riemannZeta s).re ≤ (-203 / 96 : ℝ)
  linarith [realPart.trans error]

/-- This is a boundary obstruction for the specified two-dimensional region. -/
theorem five_eighths_mem_frontier :
    (5 / 8 : ℂ) ∈ frontier QuarticSeed.region := by
  change (5 / 8 : ℂ) ∈ closure QuarticSeed.region ∧
    (5 / 8 : ℂ) ∉ interior QuarticSeed.region
  constructor
  · apply Metric.mem_closure_iff.mpr
    intro ε hε
    let δ : ℝ := min (ε / 2) (1 / 16)
    have hδ : 0 < δ := lt_min (half_pos hε) (by norm_num)
    have hδsmall : δ ≤ 1 / 16 := min_le_right _ _
    have hδε : δ < ε := (min_le_left _ _).trans_lt (half_lt_self hε)
    let w : ℂ := ((5 / 8 : ℝ) + δ : ℝ)
    refine ⟨w, ?_, ?_⟩
    · change (5 / 8 : ℝ) < w.re ∧ w.re < 7 / 8 ∧ |w.im| < 6
      simp only [w, Complex.ofReal_re, Complex.ofReal_im, abs_zero]
      exact ⟨by linarith, by linarith, by norm_num⟩
    · have difference : w - (5 / 8 : ℂ) = (δ : ℂ) := by
        dsimp [w]
        push_cast
        ring
      rw [dist_comm, dist_eq_norm, difference, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hδ]
      exact hδε
  · intro inside
    have regionInside := interior_subset inside
    norm_num [QuarticSeed.region] at regionInside

/-- No whole-boundary singleton comparison can have the claimed quarter allowance. -/
theorem height_six_singleton_comparison_budget (a : ℂ) (parameter : ℂ → ℂ)
    (n : ℕ) {η : ℝ}
    (contractive : ∀ s ∈ frontier QuarticSeed.region, ‖a * parameter s‖ ≤ ratio n)
    (comparison : ∀ s ∈ frontier QuarticSeed.region,
      ‖riemannZeta s - factorProduct [a] (parameter s)‖ ≤ η) :
    1 ≤ η * ((n : ℝ) + 2) :=
  singleton_nonpositive_re_budget a (parameter (5 / 8 : ℂ))
    (riemannZeta (5 / 8 : ℂ)) n
    (contractive _ five_eighths_mem_frontier)
    (zeta_five_eighths_re.trans (by norm_num))
    (comparison _ five_eighths_mem_frontier)

/-- A positive real product on that boundary has the same obstruction in every dimension. -/
theorem height_six_positive_real_comparison_budget (as : List ℂ) (parameter : ℂ → ℂ)
    (n : ℕ) {η : ℝ}
    (contractive : ∀ s ∈ frontier QuarticSeed.region, ∀ a ∈ as,
      ‖a * parameter s‖ ≤ ratio n)
    (positiveReal : (factorProduct as (parameter (5 / 8 : ℂ))).re =
      ‖factorProduct as (parameter (5 / 8 : ℂ))‖)
    (comparison : ∀ s ∈ frontier QuarticSeed.region,
      ‖riemannZeta s - factorProduct as (parameter s)‖ ≤ η) :
    1 ≤ η * ((n : ℝ) + 2) ^ as.length :=
  positive_real_source_error_budget as n (parameter (5 / 8 : ℂ))
    (riemannZeta (5 / 8 : ℂ))
    (contractive _ five_eighths_mem_frontier)
    (zeta_five_eighths_re.trans (by norm_num)) positiveReal
    (comparison _ five_eighths_mem_frontier)

/-- An actual-zeta sign, derived from the existing source-bound quartic formula. -/
theorem zeta_three_quarters_re :
    (riemannZeta (3 / 4 : ℂ)).re ≤ (-55 / 16 : ℝ) := by
  let s : ℂ := 3 / 4
  have halfPlane : -2 < s.re := by norm_num [s]
  have pole : s ≠ 1 := by norm_num [s]
  have evaluation : QuarticApproximation.approximation4 0 s =
      (-52877 / 15360 : ℂ) := by
    rw [QuarticSeed.zero_prefix_eq_model s pole,
      EulerApproximation.HeightSix.approximant_expansion pole]
    norm_num [s]
  have errorConstant : ‖s‖ * ‖s + 1‖ * ‖s + 2‖ * ‖s + 3‖ /
      (720 * (s.re + 3)) = (77 / 15360 : ℝ) := by
    norm_num [s, Complex.norm_def, Complex.normSq]
  have error := QuarticApproximation.zero_prefix_bound s halfPlane pole
  rw [evaluation, errorConstant] at error
  have realPart := Complex.re_le_norm
    (riemannZeta s - (-52877 / 15360 : ℂ))
  have realConstant : (-52877 / 15360 : ℂ).re = (-52877 / 15360 : ℝ) := by
    norm_num
  rw [Complex.sub_re, realConstant] at realPart
  change (riemannZeta s).re ≤ (-55 / 16 : ℝ)
  linarith [realPart.trans error]

/-- No singleton contraction model meets the transfer allowance at this source point. -/
theorem zeta_three_quarters_singleton_budget (a z : ℂ) (n : ℕ) {η : ℝ}
    (contractive : ‖a * z‖ ≤ ratio n)
    (comparison : ‖riemannZeta (3 / 4 : ℂ) - factorProduct [a] z‖ ≤ η) :
    1 ≤ η * ((n : ℝ) + 2) :=
  singleton_nonpositive_re_budget a z (riemannZeta (3 / 4 : ℂ)) n
    contractive (zeta_three_quarters_re.trans (by norm_num)) comparison

/-- Positive real products, including real-parameter paired products, have the same obstruction. -/
theorem zeta_three_quarters_positive_real_budget (as : List ℂ) (z : ℂ) (n : ℕ)
    {η : ℝ} (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio n)
    (positiveReal : (factorProduct as z).re = ‖factorProduct as z‖)
    (comparison : ‖riemannZeta (3 / 4 : ℂ) - factorProduct as z‖ ≤ η) :
    1 ≤ η * ((n : ℝ) + 2) ^ as.length :=
  positive_real_source_error_budget as n z (riemannZeta (3 / 4 : ℂ))
    contractive (zeta_three_quarters_re.trans (by norm_num)) positiveReal comparison

end GRWTSK.NumberTheory.Conditional.QuarticWeilObstruction
