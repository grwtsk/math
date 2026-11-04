/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.EulerStrictRegions

/-!
# A fourth-order Euler certificate on a complete finite-height strip

Two Bernoulli corrections factor exactly:
 A(s)=1/(s-1)+1/2+s/12-s(s+1)(s+2)/720
     =-(s-9)(s+2)(s+4)(s+5)/(720(s-1)).
The independent rational inverse is U(s)=-720(s-1)/((s-9)(s+2)(s+4)(s+5)).
Euler--Maclaurin's complete remainder is
 -s(s+1)(s+2)(s+3)/24 * integral_1^infinity B4({x-1}) x^(-s-4) dx.
Since B4(t)=t^2(1-t)^2-1/30 and 0<=t<=1, |B4(t)|<=1/30.
Consequently the exact source residual has the majorant
 |s|/|s-9| * |s+1|/|s+4| * |s+3|/|s+5| * |s-1|/(sigma+3).

On 1/2<=sigma<=1 and t^2<=36 the squares of these four ratios are at most
 37/100, 32/45, 208/265, 145/49.
Their product is strictly below 16/25. Thus the residual is below 4/5 on
this entire strip, not merely at mesh points. In particular this covers every
point of each rightCore n with n<=6, including nondegenerate cores 4,5,6.
The exceptional point s=1 is excluded throughout; the approximation's apparent
zero there is not used to justify multiplying the actual meromorphic pole.

Analytic source: repeated integration by parts of DLMF 25.11.5, as described
in 25.11.7, but stopped at the EVEN B4 remainder. Boundary values B2=1/6,
B4=-1/30 yield the displayed corrections. Boundary terms at infinity vanish
for Re(s)>0; the remainder is absolutely convergent there. The source equality
is an explicit input to `zeta_height_six_residual`; its Mathlib formal bridge
has NOT been constructed. The integral-model bound and rational geometry do
not use that input, RH, or a prior zero-free assertion.

The statement is a finite-height result. It neither covers all right cores
nor supplies any all-character GRH lower bound. Primary argument: bounded
Mellin integral plus exact rational inequalities, with no sampled function
values. All constants are deliberately conservative. Classical mathematics;
no novelty claim. AI-assisted formalization. Compilation, fresh kernel check,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Conditional.EulerApproximation.HeightSix

open GRWTSK.Analysis.MellinRemainder

/-- The fourth Bernoulli polynomial in a form exposing its elementary bound. -/
def bernoulliFour (t : ℝ) : ℝ := (t * (1 - t)) ^ 2 - 1 / 30

theorem bernoulliFour_bound {t : ℝ} (h0 : 0 ≤ t) (h1 : t ≤ 1) :
    |bernoulliFour t| ≤ (1 / 30 : ℝ) := by
  have hprod : 0 ≤ t * (1 - t) := mul_nonneg h0 (sub_nonneg.mpr h1)
  have hupper : t * (1 - t) ≤ (1 / 4 : ℝ) := by nlinarith [sq_nonneg (t - 1 / 2)]
  have hsquare : (t * (1 - t)) ^ 2 ≤ (1 / 16 : ℝ) := by
    have h := mul_nonneg (sub_nonneg.mpr hupper)
      (show 0 ≤ (1 / 4 : ℝ) + t * (1 - t) by linarith)
    nlinarith
  rw [abs_le]
  unfold bernoulliFour
  constructor <;> nlinarith [sq_nonneg (t * (1 - t))]

def kernel (x : ℝ) : ℂ :=
  (bernoulliFour (x - 1 - (Int.floor (x - 1) : ℝ)) : ℂ)

theorem kernel_bound (x : ℝ) : ‖kernel x‖ ≤ (1 / 30 : ℝ) := by
  have hlo := Int.floor_le (x - 1)
  have hhi := Int.lt_floor_add_one (x - 1)
  simpa only [kernel, Complex.norm_real, Real.norm_eq_abs] using
    bernoulliFour_bound (t := x - 1 - (Int.floor (x - 1) : ℝ))
      (by linarith) (by linarith)

def approximant (s : ℂ) : ℂ :=
  -((s - 9) * (s + 2) * (s + 4) * (s + 5)) / (720 * (s - 1))

def reciprocal (s : ℂ) : ℂ :=
  -(720 * (s - 1)) / ((s - 9) * (s + 2) * (s + 4) * (s + 5))

def model (s : ℂ) : ℂ :=
  approximant s - (s * (s + 1) * (s + 2) * (s + 3) / 24) * tail kernel 1 (s + 3)

theorem approximant_expansion {s : ℂ} (hp : s ≠ 1) :
    approximant s = 1 / (s - 1) + 1 / 2 + s / 12 - s * (s + 1) * (s + 2) / 720 := by
  unfold approximant
  field_simp [sub_ne_zero.mpr hp] <;> ring

/-- Cancellation is justified before removing the shared s+2 factor. -/
theorem complete_residual {s : ℂ} (hp : s ≠ 1)
    (h9 : s - 9 ≠ 0) (h2 : s + 2 ≠ 0) (h4 : s + 4 ≠ 0) (h5 : s + 5 ≠ 0) :
    model s * reciprocal s - 1 =
      (30 * s * (s + 1) * (s + 3) * (s - 1) /
        ((s - 9) * (s + 4) * (s + 5))) * tail kernel 1 (s + 3) := by
  unfold model approximant reciprocal
  field_simp [sub_ne_zero.mpr hp, h9, h2, h4, h5] <;> ring

def ratio (s : ℂ) : ℝ :=
  (‖s‖ / ‖s - 9‖) * (‖s + 1‖ / ‖s + 4‖) *
    (‖s + 3‖ / ‖s + 5‖) * (‖s - 1‖ / (s.re + 3))

theorem norm_add_real_sq (s : ℂ) (a : ℝ) :
    ‖s + (a : ℂ)‖ ^ 2 = (s.re + a) ^ 2 + s.im ^ 2 := by
  rw [pow_two, Complex.norm_mul_self_eq_normSq]
  simp only [Complex.normSq_apply, Complex.add_re, Complex.ofReal_re,
    Complex.add_im, Complex.ofReal_im, add_zero, pow_two]

/-- An elementary ratio comparison, with a positive denominator supplied explicitly. -/
lemma ratio_square_le {x d y A B H : ℝ} (hx : x ^ 2 ≤ y + A)
    (hd : y + B ≤ d ^ 2) (hy : 0 ≤ y) (hH : y ≤ H) (hAB : A ≤ B) (hB : 0 < B) :
    (x / d) ^ 2 ≤ (H + A) / (H + B) := by
  have hdy : 0 < y + B := by linarith
  have hdpos : 0 < d ^ 2 := hdy.trans_le hd
  have hHpos : 0 < H + B := by linarith
  have hnum : 0 ≤ y + A := (sq_nonneg x).trans hx
  rw [div_pow]
  calc
    x ^ 2 / d ^ 2 ≤ (y + A) / (y + B) := by
      apply (div_le_div_iff₀ hdpos hdy).mpr
      exact (mul_le_mul_of_nonneg_right hx hdy.le).trans
        (mul_le_mul_of_nonneg_left hd hnum)
    _ ≤ (H + A) / (H + B) := by
      apply (div_le_div_iff₀ hdy hHpos).mpr
      nlinarith [mul_nonneg (sub_nonneg.mpr hAB) (sub_nonneg.mpr hH)]

/-- Whole-strip geometry, not a finite-grid diagnostic. -/
theorem ratio_lt_four_fifths {s : ℂ}
    (hlo : (1 / 2 : ℝ) ≤ s.re) (hhi : s.re ≤ 1) (ht : s.im ^ 2 ≤ 36) :
    ratio s < (4 / 5 : ℝ) := by
  have hσ0 : 0 ≤ s.re := by linarith
  have hσ2 : s.re ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hhi) (show 0 ≤ s.re + 1 by linarith)]
  have hσ2low : (1 / 4 : ℝ) ≤ s.re ^ 2 := by
    nlinarith [sq_nonneg (s.re - 1 / 2)]
  have hminus : (s.re - 1) ^ 2 ≤ (1 / 4 : ℝ) := by
    nlinarith [mul_nonneg (show 0 ≤ s.re - 1 / 2 by linarith)
      (show 0 ≤ (3 / 2 : ℝ) - s.re by linarith)]
  have h0 := norm_add_real_sq s 0
  have h9 := norm_add_real_sq s (-9)
  have h1 := norm_add_real_sq s 1
  have h4 := norm_add_real_sq s 4
  have h3 := norm_add_real_sq s 3
  have h5 := norm_add_real_sq s 5
  simp only [Complex.ofReal_zero, add_zero] at h0
  have h9' : ‖s - 9‖ ^ 2 = (s.re - 9) ^ 2 + s.im ^ 2 := by
    simpa [sub_eq_add_neg] using h9
  have r1 : (‖s‖ / ‖s - 9‖) ^ 2 ≤ (37 / 100 : ℝ) := by
    have h := ratio_square_le (y := s.im ^ 2) (A := 1) (B := 64) (H := 36)
      (x := ‖s‖) (d := ‖s - 9‖) (by nlinarith) (by nlinarith [sq_nonneg (s.re - 1)])
      (sq_nonneg _) ht (by norm_num) (by norm_num)
    norm_num at h
    exact h
  have r2 : (‖s + 1‖ / ‖s + 4‖) ^ 2 ≤ (32 / 45 : ℝ) := by
    have h := ratio_square_le (y := s.im ^ 2) (A := 4) (B := 81 / 4) (H := 36)
      (x := ‖s + 1‖) (d := ‖s + 4‖) (by norm_num at h1; nlinarith)
      (by norm_num at h4; nlinarith) (sq_nonneg _) ht (by norm_num) (by norm_num)
    norm_num at h
    exact h
  have r3 : (‖s + 3‖ / ‖s + 5‖) ^ 2 ≤ (208 / 265 : ℝ) := by
    have h := ratio_square_le (y := s.im ^ 2) (A := 16) (B := 121 / 4) (H := 36)
      (x := ‖s + 3‖) (d := ‖s + 5‖) (by norm_num at h3; nlinarith)
      (by norm_num at h5; nlinarith) (sq_nonneg _) ht (by norm_num) (by norm_num)
    norm_num at h
    exact h
  have r4 : (‖s - 1‖ / (s.re + 3)) ^ 2 ≤ (145 / 49 : ℝ) := by
    rw [div_pow]
    apply (div_le_iff₀ (sq_pos_of_pos (by linarith : 0 < s.re + 3))).mpr
    have hm := norm_sub_one_sq s
    nlinarith
  have hproduct : ratio s ^ 2 ≤
      (37 / 100 : ℝ) * (32 / 45) * (208 / 265) * (145 / 49) := by
    unfold ratio
    simp only [mul_pow]
    gcongr
  have hstrict : ratio s ^ 2 < (16 / 25 : ℝ) :=
    hproduct.trans_lt (by norm_num)
  apply lt_of_not_ge
  intro hr
  have hm := mul_nonneg (sub_nonneg.mpr hr)
    (show 0 ≤ ratio s + 4 / 5 by linarith)
  nlinarith

/-- Every denominator cancellation has a geometric justification. -/
theorem model_residual_bound {s : ℂ}
    (hlo : (1 / 2 : ℝ) ≤ s.re) (hhi : s.re ≤ 1) (hp : s ≠ 1) :
    ‖model s * reciprocal s - 1‖ ≤ ratio s := by
  have h9 : s - 9 ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    norm_num at hr
    linarith
  have hadd (a : ℝ) (ha : 0 ≤ a) : s + (a : ℂ) ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    simp only [Complex.add_re, Complex.ofReal_re, Complex.zero_re] at hr
    linarith
  have h2 : s + 2 ≠ 0 := by simpa using hadd 2 (by norm_num)
  have h4 : s + 4 ≠ 0 := by simpa using hadd 4 (by norm_num)
  have h5 : s + 5 ≠ 0 := by simpa using hadd 5 (by norm_num)
  have hσ : 0 < (s + 3).re := by
    simpa using (show 0 < s.re + 3 by linarith)
  have htail : ‖tail kernel 1 (s + 3)‖ ≤ (1 / 30 : ℝ) / (s.re + 3) := by
    simpa using tail_norm_le (b := kernel) (A := 1) (B := 1 / 30)
      zero_lt_one hσ (fun x _ => kernel_bound x)
  rw [complete_residual hp h9 h2 h4 h5, norm_mul]
  apply (mul_le_mul_of_nonneg_left htail (norm_nonneg _)).trans
  have hn9 : ‖s - 9‖ ≠ 0 := (norm_pos_iff.mpr h9).ne'
  have hn4 : ‖s + 4‖ ≠ 0 := (norm_pos_iff.mpr h4).ne'
  have hn5 : ‖s + 5‖ ≠ 0 := (norm_pos_iff.mpr h5).ne'
  have hr : s.re + 3 ≠ 0 := by linarith
  apply le_of_eq
  unfold ratio
  simp only [norm_div, norm_mul]
  norm_num <;> field_simp [hn9, hn4, hn5, hr] <;> ring

/-- The integral model satisfies the strict test on a full region with |Im(s)| <= 6. -/
theorem model_height_six_residual {s : ℂ}
    (hlo : (1 / 2 : ℝ) ≤ s.re) (hhi : s.re ≤ 1) (ht : s.im ^ 2 ≤ 36) (hp : s ≠ 1) :
    ‖model s * reciprocal s - 1‖ < (4 / 5 : ℝ) :=
  (model_residual_bound hlo hhi hp).trans_lt (ratio_lt_four_fifths hlo hhi ht)

/-- Exact fourth-order Euler comparison is outstanding as a formal source theorem. -/
theorem zeta_height_six_residual {s : ℂ}
    (source : riemannZeta s = model s)
    (hlo : (1 / 2 : ℝ) ≤ s.re) (hhi : s.re ≤ 1) (ht : s.im ^ 2 ≤ 36) (hp : s ≠ 1) :
    ‖riemannZeta s * reciprocal s - 1‖ < (4 / 5 : ℝ) := by
  rw [source]
  exact model_height_six_residual hlo hhi ht hp

/-- All points of these finite cores are included; no assertion about larger n follows. -/
theorem first_six_cores {n : ℕ} (hn : n ≤ 6) {s : ℂ} (hs : s ∈ rightCore n)
    (source : riemannZeta s = model s) :
    ‖riemannZeta s * reciprocal s - 1‖ < (4 / 5 : ℝ) := by
  have hd := rightCore_subset n hs
  have hsize : ‖s‖ ≤ (n : ℝ) := by
    simpa only [Metric.mem_closedBall, dist_zero_right] using hs.1
  have hnreal : (n : ℝ) ≤ 6 := by exact_mod_cast hn
  have him : |s.im| ≤ 6 := (Complex.abs_im_le_norm s).trans (hsize.trans hnreal)
  have ht : s.im ^ 2 ≤ 36 := by
    have hi := abs_le.mp him
    nlinarith [mul_nonneg (show 0 ≤ (6 : ℝ) - s.im by linarith)
      (show 0 ≤ (6 : ℝ) + s.im by linarith)]
  exact zeta_height_six_residual source hd.1.le hd.2.le ht (strip_ne_one hd.2)

end GRWTSK.NumberTheory.Conditional.EulerApproximation.HeightSix
