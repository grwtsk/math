/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.SpecialFunctions.ComplexGammaGrowth
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroJensenGrowthBounds

/-!
# Actual primitive Dirichlet growth on the far-left Jensen circle

MSC2020: 11M26, 11M41, 33B15.

Euler-integral Gamma bounds and the dual-character functional equation prove
all-height growth on Re(s)<=-1 of the existing Jensen circle. The inverse
Gamma identities retain both parities and remain valid when the original
point is a trivial zero. No Gamma factor is cancelled at one of its poles.

The root number is retained literally; its finite norm is part of the displayed
source-dependent constant. No unproved norm-one Gauss-sum assertion is needed.
Conductor-one zeta is included explicitly. The remaining source supplier is the
bounded-real-part strip -1<Re(s)<2, not the whole left half-plane.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit
and independent review NOT_RUN. Novelty UNASSESSED. Coordination: math#1801.
Primary inputs: Loeffler/Stoll continuation and functional equation, Loeffler
reciprocal Gamma factors. Individual provenance and full argument are adjacent.
-/

set_option autoImplicit false
noncomputable section

open Set Metric MeasureTheory
open GRWTSK.SpecialFunctions.ComplexGammaGrowth
open GRWTSK.NumberTheory.DirichletRightBounds

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- Duality preserves the parity value, proved from the character group law. -/
theorem inverse_character_neg_one (chi : DirichletCharacter ℂ N) :
    chi⁻¹ (-1) = chi (-1) := by
  have hp : chi (-1) * chi⁻¹ (-1) = 1 := by
    rw [← MulChar.mul_apply, mul_inv_cancel,
      MulChar.one_apply (show IsUnit (-1 : ZMod N) from isUnit_one.neg)]
  have hs : chi (-1) * chi (-1) = 1 := by
    rw [← map_mul]
    simp
  calc
    chi⁻¹ (-1) = (chi (-1) * chi (-1)) * chi⁻¹ (-1) := by rw [hs, one_mul]
    _ = chi (-1) * (chi (-1) * chi⁻¹ (-1)) := by ring
    _ = chi (-1) := by rw [hp, mul_one]

/-- The dual source has exactly the same archimedean parity factor. -/
theorem gammaFactor_inverse_character (chi : DirichletCharacter ℂ N) (w : ℂ) :
    DirichletCharacter.gammaFactor chi⁻¹ w = DirichletCharacter.gammaFactor chi w := by
  have hp : chi⁻¹.Even ↔ chi.Even := by
    change chi⁻¹ (-1) = 1 ↔ chi (-1) = 1
    rw [inverse_character_neg_one]
  simp only [DirichletCharacter.gammaFactor, hp]

/-- A named parity factor used only to state the exact uncompleted equation. -/
def dirichletParityFactor (chi : DirichletCharacter ℂ N) (w : ℂ) : ℂ := by
  classical
  exact if chi.Even then Complex.cos (Real.pi * w / 2)
    else Complex.sin (Real.pi * w / 2)

/-- Reciprocal Gamma reflection without division by a possibly vanishing
trigonometric factor. The reflected variable lies strictly in the right half-plane. -/
theorem inverse_gammaFactor_one_sub (chi : DirichletCharacter ℂ N)
    {w : ℂ} (hw : 0 < w.re) :
    (DirichletCharacter.gammaFactor chi (1 - w))⁻¹ =
      Complex.Gammaℂ w * dirichletParityFactor chi w *
        (DirichletCharacter.gammaFactor chi⁻¹ w)⁻¹ := by
  classical
  have havoid : ∀ n : ℕ, w ≠ -(n : ℂ) := by
    intro n hn
    have hr := congrArg Complex.re hn
    simp only [Complex.neg_re, Complex.natCast_re] at hr
    have hn0 : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
    linarith
  rw [gammaFactor_inverse_character]
  by_cases he : chi.Even
  · simp only [DirichletCharacter.gammaFactor, he, if_true, dirichletParityFactor]
    exact Complex.inv_Gammaℝ_one_sub havoid
  · simp only [DirichletCharacter.gammaFactor, he, if_false, dirichletParityFactor]
    rw [show (1 - w) + 1 = 2 - w by ring]
    exact Complex.inv_Gammaℝ_two_sub havoid

/-- Exact arithmetic functional equation in the form used by the estimate.
The inverse character, root number, level and both parity branches remain explicit. -/
theorem LFunction_one_sub_eq_gammaC (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) {w : ℂ} (hw : 2 ≤ w.re) :
    DirichletCharacter.LFunction chi (1 - w) =
      (N : ℂ) ^ (w - 1 / 2) * DirichletCharacter.rootNumber chi *
        Complex.Gammaℂ w * dirichletParityFactor chi w *
          DirichletCharacter.LFunction chi⁻¹ w := by
  have hw0 : w ≠ 0 := by
    intro h
    subst w
    norm_num at hw
  have hw1 : 1 - w ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    simp only [Complex.sub_re, Complex.one_re, Complex.zero_re] at hr
    linarith
  rw [DirichletCharacter.LFunction_eq_completed_div_gammaFactor chi (1 - w) (.inl hw1),
    hprim.completedLFunction_one_sub, div_eq_mul_inv,
    inverse_gammaFactor_one_sub chi (by linarith),
    DirichletCharacter.LFunction_eq_completed_div_gammaFactor chi⁻¹ w (.inl hw0),
    div_eq_mul_inv]
  ring

/-- Both parity branches have the same quantitative imaginary-part bound. -/
theorem norm_dirichletParityFactor_le (chi : DirichletCharacter ℂ N) (w : ℂ) :
    ‖dirichletParityFactor chi w‖ ≤ Real.exp (Real.pi * |w.im| / 2) := by
  classical
  have him : |(Real.pi * w / 2 : ℂ).im| = Real.pi * |w.im| / 2 := by
    simp [Complex.div_ofReal_im, abs_div, abs_mul, abs_of_pos Real.pi_pos]
  have h := norm_cos_sin_le_exp_im (Real.pi * w / 2)
  rw [him] at h
  by_cases he : chi.Even
  · simpa only [dirichletParityFactor, he, if_true] using h.1
  · simpa only [dirichletParityFactor, he, if_false] using h.2

/-- A quantitative functional-equation estimate on the actual far-left source.
The input Gamma region and the dual L-function's convergence region are proved. -/
theorem norm_poleClearedLFunction_one_sub_le (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) {w : ℂ} {R T : ℝ}
    (hw : 2 ≤ w.re) (hwR : w.re ≤ R) (hwT : |w.im| ≤ T) :
    ‖poleClearedLFunction chi (1 - w)‖ ≤
      7 * ‖w‖ * ‖DirichletCharacter.rootNumber chi‖ *
        Real.exp (R * (Real.log (2 * R) + |Real.log (2 * Real.pi)| +
          Real.log (N : ℝ)) + Real.pi * T / 2) := by
  have hN : (1 : ℝ) ≤ N := by
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr (NeZero.ne N)
  have hlogN : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg hN
  have hlevel := norm_ofReal_cpow_le_exp_abs (x := (N : ℝ)) (R := R)
    (z := w - 1 / 2) (by linarith)
    (by
      have hr : (w - 1 / 2 : ℂ).re = w.re - 1 / 2 := by simp
      rw [hr, abs_of_nonneg (by linarith)]
      linarith)
  have hlevel' : ‖(N : ℂ) ^ (w - 1 / 2)‖ ≤ Real.exp (R * Real.log (N : ℝ)) := by
    simpa only [Complex.ofReal_natCast, abs_of_nonneg hlogN] using hlevel
  have hgamma := norm_GammaC_le_envelope (z := w) (R := R) (by linarith) hwR
  have hparity : ‖dirichletParityFactor chi w‖ ≤ Real.exp (Real.pi * T / 2) :=
    (norm_dirichletParityFactor_le chi w).trans
      (Real.exp_le_exp.mpr (div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left hwT Real.pi_pos.le) (by norm_num)))
  have hL := (norm_LFunction_bounds chi⁻¹ hw).2
  have hwne : 1 - w ≠ (1 : ℂ) := by
    intro h
    have hr := congrArg Complex.re h
    simp only [Complex.sub_re, Complex.one_re] at hr
    linarith
  rw [poleClearedLFunction_of_ne chi hwne, LFunction_one_sub_eq_gammaC chi hprim hw,
    show (1 - w) - 1 = -w by ring]
  simp only [norm_mul, norm_neg]
  calc
    _ ≤ ‖w‖ * ((((Real.exp (R * Real.log (N : ℝ)) *
        ‖DirichletCharacter.rootNumber chi‖) *
        (4 * Real.exp (R * (Real.log (2 * R) + |Real.log (2 * Real.pi)|)))) *
        Real.exp (Real.pi * T / 2)) * (7 / 4 : ℝ)) := by
      gcongr
    _ = _ := by
      simp only [mul_add, Real.exp_add]
      ring

/-- Displayed source-dependent cost; no root-number norm theorem is assumed. -/
def farLeftGrowthConstant (chi : DirichletCharacter ℂ N) : ℝ :=
  40 + 4 * Real.log 8 + 4 * |Real.log (2 * Real.pi)| +
    4 * Real.log (N : ℝ) + 2 * Real.pi + ‖DirichletCharacter.rootNumber chi‖

/-- Positivity of the displayed constant is derived from positive level. -/
theorem farLeftGrowthConstant_ge_four (chi : DirichletCharacter ℂ N) :
    4 ≤ farLeftGrowthConstant chi := by
  have hN : (1 : ℝ) ≤ N := by
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr (NeZero.ne N)
  have hlogN := Real.log_nonneg hN
  have hlog8 : 0 ≤ Real.log 8 := Real.log_nonneg (by norm_num)
  unfold farLeftGrowthConstant
  linarith [abs_nonneg (Real.log (2 * Real.pi)), Real.pi_pos,
    norm_nonneg (DirichletCharacter.rootNumber chi)]

/-- The complete far-left part of every original outer circle has H log H growth. -/
theorem poleClearedLFunction_far_left_circle_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2))) (hRe : s.re ≤ -1) :
    ‖poleClearedLFunction chi s‖ ≤
      Real.exp (farLeftGrowthConstant chi * H * (Real.log H + 1)) := by
  have hH0 : 0 < H := by linarith
  have hd : ‖s - 2‖ = 2 * (H + 2) := by
    simpa only [mem_sphere, dist_eq_norm] using hs
  have hre : |s.re - 2| ≤ 2 * (H + 2) := by
    simpa [hd] using Complex.abs_re_le_norm (s - 2)
  have him : |s.im| ≤ 2 * (H + 2) := by
    simpa [hd] using Complex.abs_im_le_norm (s - 2)
  have hw : 2 ≤ (1 - s : ℂ).re := by simp only [Complex.sub_re, Complex.one_re]; linarith
  have hwR : (1 - s : ℂ).re ≤ 4 * H := by
    simp only [Complex.sub_re, Complex.one_re]
    have hr := (abs_le.mp hre).1
    linarith
  have hwT : |(1 - s : ℂ).im| ≤ 4 * H := by
    simp only [Complex.sub_im, Complex.one_im, zero_sub, abs_neg]
    linarith
  have hwnorm : ‖1 - s‖ ≤ 5 * H := by
    calc
      ‖1 - s‖ = ‖(2 - s) - 1‖ := by congr 1; ring
      _ ≤ ‖2 - s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ = 2 * (H + 2) + 1 := by rw [norm_sub_rev, hd, norm_one]
      _ ≤ 5 * H := by linarith
  have hb := norm_poleClearedLFunction_one_sub_le chi hprim hw hwR hwT
  rw [show (1 : ℂ) - (1 - s) = s by ring,
    show 2 * (4 * H) = 8 * H by ring,
    show Real.pi * (4 * H) / 2 = 2 * Real.pi * H by ring] at hb
  have hb' : ‖poleClearedLFunction chi s‖ ≤
      35 * H * ‖DirichletCharacter.rootNumber chi‖ *
        Real.exp (4 * H * (Real.log (8 * H) + |Real.log (2 * Real.pi)| +
          Real.log (N : ℝ)) + 2 * Real.pi * H) := by
    calc
      _ ≤ 7 * ‖1 - s‖ * ‖DirichletCharacter.rootNumber chi‖ *
          Real.exp (4 * H * (Real.log (8 * H) + |Real.log (2 * Real.pi)| +
            Real.log (N : ℝ)) + 2 * Real.pi * H) := hb
      _ ≤ 7 * (5 * H) * ‖DirichletCharacter.rootNumber chi‖ *
          Real.exp (4 * H * (Real.log (8 * H) + |Real.log (2 * Real.pi)| +
            Real.log (N : ℝ)) + 2 * Real.pi * H) := by gcongr
      _ = _ := by ring
  have hpref : 35 * H ≤ Real.exp (35 * H) := by
    linarith [Real.add_one_le_exp (35 * H)]
  have hroot : ‖DirichletCharacter.rootNumber chi‖ ≤
      Real.exp (‖DirichletCharacter.rootNumber chi‖ * H) := by
    have ha : ‖DirichletCharacter.rootNumber chi‖ ≤
        Real.exp ‖DirichletCharacter.rootNumber chi‖ := by
      linarith [Real.add_one_le_exp ‖DirichletCharacter.rootNumber chi‖]
    exact ha.trans (Real.exp_le_exp.mpr
      (le_mul_of_one_le_right (norm_nonneg _) (by linarith)))
  have hlogH : 0 ≤ Real.log H := Real.log_nonneg (by linarith)
  have hcost := farLeftGrowthConstant_ge_four chi
  have hexp : 35 * H + ‖DirichletCharacter.rootNumber chi‖ * H +
      (4 * H * (Real.log (8 * H) + |Real.log (2 * Real.pi)| +
        Real.log (N : ℝ)) + 2 * Real.pi * H) ≤
      farLeftGrowthConstant chi * H * (Real.log H + 1) := by
    rw [Real.log_mul (by norm_num : (8 : ℝ) ≠ 0) hH0.ne']
    have hnonneg := mul_nonneg
      (mul_nonneg (sub_nonneg.mpr hcost) hH0.le) hlogH
    dsimp [farLeftGrowthConstant] at hnonneg ⊢
    nlinarith
  apply hb'.trans
  calc
    _ ≤ Real.exp (35 * H) * Real.exp (‖DirichletCharacter.rootNumber chi‖ * H) *
        Real.exp (4 * H * (Real.log (8 * H) + |Real.log (2 * Real.pi)| +
          Real.log (N : ℝ)) + 2 * Real.pi * H) := by
      gcongr
    _ ≤ _ := by
      rw [← Real.exp_add, ← Real.exp_add]
      exact Real.exp_le_exp.mpr hexp

/-- The conductor-one growth constant has no hidden character parameter. -/
theorem farLeftGrowthConstant_modOne :
    farLeftGrowthConstant (1 : DirichletCharacter ℂ 1) =
      41 + 4 * Real.log 8 + 4 * |Real.log (2 * Real.pi)| + 2 * Real.pi := by
  unfold farLeftGrowthConstant
  rw [DirichletCharacter.rootNumber_modOne, norm_one]
  norm_num <;> ring

/-- Explicit return to the actual continued zeta function away from its pole. -/
theorem zeta_far_left_circle_growth (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2))) (hRe : s.re ≤ -1) :
    ‖(s - 1) * riemannZeta s‖ ≤ Real.exp
      ((41 + 4 * Real.log 8 + 4 * |Real.log (2 * Real.pi)| + 2 * Real.pi) *
        H * (Real.log H + 1)) := by
  have hs1 : s ≠ 1 := by
    intro h
    subst s
    norm_num at hRe
  have h := poleClearedLFunction_far_left_circle_growth
    (1 : DirichletCharacter ℂ 1) DirichletCharacter.isPrimitive_one_level_one H hH hs hRe
  simpa only [poleClearedLFunction_of_ne _ hs1, DirichletCharacter.LFunction_modOne_eq,
    farLeftGrowthConstant_modOne] using h

/-- Only the bounded real-part strip remains as an all-height growth supplier.
The two complementary regions are supplied by proved actual-source estimates. -/
theorem circle_growth_of_strip_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hstrip : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)),
      -1 < s.re → s.re < 2 →
        ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2))) :
    ‖poleClearedLFunction chi s‖ ≤ Real.exp
      ((C + farLeftGrowthConstant chi + 8) * H * (Real.log H + (L + 1))) := by
  have hK := farLeftGrowthConstant_ge_four chi
  have hK0 : 0 ≤ farLeftGrowthConstant chi := by linarith
  have hH0 : 0 ≤ H := by linarith
  have hlog : 0 ≤ Real.log H := Real.log_nonneg (by linarith)
  have hB : 1 ≤ Real.log H + (L + 1) := by linarith
  by_cases hright : 2 ≤ s.re
  · apply (poleClearedLFunction_right_circle_growth chi H hH hs hright).trans
    apply Real.exp_le_exp.mpr
    calc
      8 * H ≤ (C + farLeftGrowthConstant chi + 8) * H :=
        mul_le_mul_of_nonneg_right (by linarith) hH0
      _ ≤ _ := le_mul_of_one_le_right (by positivity) hB
  · by_cases hleft : s.re ≤ -1
    · apply (poleClearedLFunction_far_left_circle_growth chi hprim H hH hs hleft).trans
      apply Real.exp_le_exp.mpr
      apply mul_le_mul
      · exact mul_le_mul_of_nonneg_right (by linarith) hH0
      · linarith
      · linarith
      · positivity
    · apply (hstrip H hH s hs (lt_of_not_ge hleft) (lt_of_not_ge hright)).trans
      apply Real.exp_le_exp.mpr
      apply mul_le_mul
      · exact mul_le_mul_of_nonneg_right (by linarith) hH0
      · linarith
      · linarith
      · positivity

/-- The original multiplicity count is bounded from just the remaining strip supplier. -/
theorem heightCount_le_of_strip_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hstrip : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)),
      -1 < s.re → s.re < 2 →
        ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (H : ℝ) (hH : 2 ≤ H) :
    (heightCount chi hprim H : ℝ) ≤
      ((C + farLeftGrowthConstant chi + 8 + Real.log 4) / Real.log 2) *
        H * (Real.log H + (L + 2)) := by
  have hK := farLeftGrowthConstant_ge_four chi
  have hg : ∀ T : ℝ, 2 ≤ T → ∀ s ∈ sphere (2 : ℂ) (2 * (T + 2)),
      ‖poleClearedLFunction chi s‖ ≤ Real.exp
        ((C + farLeftGrowthConstant chi + 8) * T * (Real.log T + (L + 1))) :=
    fun T hT s hs => circle_growth_of_strip_growth chi hprim C L hC hL hstrip T hT hs
  have hc := heightCount_le_of_circle_growth_uniform_center chi hprim
    (C + farLeftGrowthConstant chi + 8) (L + 1) (by linarith) (by linarith) hg H hH
  convert hc using 1 <;> ring

/-- Actual-source correlation convergence stays conditional on the precise strip estimate. -/
theorem summable_primitive_correlation_of_strip_growth
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hstrip : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)),
      -1 < s.re → s.re < 2 →
        ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (hk : 1 ≤ k) :
    Summable (fun rho : CriticalStripZero chi => ‖(zeroMultiplicity chi rho : ℂ) *
      ∫ r : ℝ, WeilQuadraticForm.SourcePrimeCorrelation.correlation f r *
        Complex.exp (Complex.I * spectralCoordinate rho.1 * (r : ℂ))‖) := by
  have hK := farLeftGrowthConstant_ge_four chi
  have hl2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hl4 : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  exact summable_primitive_correlation_of_heightCount chi hprim
    ((C + farLeftGrowthConstant chi + 8 + Real.log 4) / Real.log 2) (L + 2)
    (div_nonneg (by linarith) hl2.le) (by linarith)
    (heightCount_le_of_strip_growth chi hprim C L hC hL hstrip)
    f A hA hf hs k hk

end GRWTSK.NumberTheory.WeilNegativeWitness
