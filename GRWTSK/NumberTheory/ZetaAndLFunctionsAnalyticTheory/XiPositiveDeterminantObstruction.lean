/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CompletedQuotientSource
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.NumberTheory.LSeries.HurwitzZetaValues
import Mathlib.Tactic

/-!
# Obstruction to constant-normalized positive determinant limits

A common positive floor places the anchor-normalized linear products in the
order P(x) ≤ P(0) = 1 ≤ P(-x) for real x between zero and that floor.
After multiplying by any complex scalar, the difference between the values
at x and -x bounds the difference between the values at x and zero.
Evenness and pointwise convergence thus force the entire limit to agree
with its anchor on a real interval. The identity theorem makes it constant.

The two anchors of the actual centered completed zeta source correspond
to xi(1) and xi(2), with different values. This excludes one-sided
Hermitian determinants with constant rescaling and a uniform gap.
-/

set_option autoImplicit false
noncomputable section
open Complex Filter Set
open scoped BigOperators Topology Polynomial

namespace GRWTSK.NumberTheory.Zeta.XiPositiveDeterminantObstruction

variable {I : Type*}

/-- The finite characteristic product normalized to equal one at zero. -/
def linearProduct (s : Finset I) (eigenvalue : I → ℝ) (z : ℂ) : ℂ :=
  ∏ i ∈ s, (1 - z * ((eigenvalue i)⁻¹ : ℝ))

@[simp]
theorem linearProduct_zero (s : Finset I) (eigenvalue : I → ℝ) :
    linearProduct s eigenvalue 0 = 1 := by
  simp [linearProduct]

/-- A reflected pair controls the departure from the anchor, uniformly in
the degree and after any constant complex rescaling. -/
theorem norm_scaled_linearProduct_sub_anchor_le {s : Finset I} {eigenvalue : I → ℝ}
    {gap x : ℝ} (hgap : 0 < gap) (floor : ∀ i ∈ s, gap ≤ eigenvalue i)
    (hx : 0 ≤ x) (hle : x ≤ gap) (c : ℂ) :
    ‖c * linearProduct s eigenvalue (x : ℂ) - c‖ ≤
      ‖c * linearProduct s eigenvalue (-(x : ℂ)) - c * linearProduct s eigenvalue (x : ℂ)‖ := by
  let p (y : ℝ) : ℝ := ∏ i ∈ s, (1 - y * (eigenvalue i)⁻¹)
  have hprod (y : ℝ) : linearProduct s eigenvalue (y : ℂ) = (p y : ℂ) := by
    simp only [linearProduct, p, Complex.ofReal_prod, Complex.ofReal_sub,
      Complex.ofReal_one, Complex.ofReal_mul]
  have hpos (i : I) (hi : i ∈ s) : 0 < eigenvalue i := hgap.trans_le (floor i hi)
  have hleOne (i : I) (hi : i ∈ s) : x * (eigenvalue i)⁻¹ ≤ 1 := by
    calc
      x * (eigenvalue i)⁻¹ ≤ eigenvalue i * (eigenvalue i)⁻¹ :=
        mul_le_mul_of_nonneg_right (hle.trans (floor i hi)) (inv_nonneg.mpr (hpos i hi).le)
      _ = 1 := mul_inv_cancel₀ (hpos i hi).ne'
  have upper : p x ≤ 1 :=
    Finset.prod_le_one₀ (fun i hi => sub_nonneg.mpr (hleOne i hi))
      (fun i hi => sub_le_self _ (mul_nonneg hx (inv_nonneg.mpr (hpos i hi).le)))
  have lower : 1 ≤ p (-x) := by
    dsimp only [p]
    apply Finset.one_le_prod₀
    intro i hi
    have h := mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hx) (inv_nonneg.mpr (hpos i hi).le)
    linarith
  rw [show c * linearProduct s eigenvalue (x : ℂ) - c =
    c * (linearProduct s eigenvalue (x : ℂ) - 1) by rw [mul_sub, mul_one],
    ← mul_sub, norm_mul, norm_mul, hprod x, ← Complex.ofReal_neg, hprod (-x),
    ← Complex.ofReal_one, ← Complex.ofReal_sub, ← Complex.ofReal_sub]
  simp only [Complex.norm_real, Real.norm_eq_abs]
  rw [abs_of_nonpos (sub_nonpos.mpr upper), abs_of_nonneg (sub_nonneg.mpr (upper.trans lower))]
  exact mul_le_mul_of_nonneg_left (by linarith) (norm_nonneg c)

private theorem eq_zero_of_zero_real_interval {F : ℂ → ℂ} (hF : Differentiable ℂ F)
    {gap : ℝ} (hgap : 0 < gap) (zero : ∀ x : ℝ, 0 < x → x ≤ gap → F (x : ℂ) = 0) :
    ∀ z, F z = 0 := by
  have frequent : ∃ᶠ z in 𝓝[≠] (0 : ℂ), F z = 0 := by
    by_contra! none
    obtain ⟨ε, hε, near⟩ := Metric.mem_nhdsWithin_iff.mp none
    let x := min (gap / 2) (ε / 2)
    have hx : 0 < x := lt_min (by positivity) (by positivity)
    have hxGap : x ≤ gap := (min_le_left _ _).trans (by linarith)
    have hxE : x < ε := (min_le_right _ _).trans_lt (by linarith)
    have close : (x : ℂ) ∈ Metric.ball 0 ε ∩ ({0} : Set ℂ)ᶜ := by
      refine ⟨Metric.mem_ball.mpr ?_, Set.mem_compl_singleton_iff.mpr ?_⟩
      · simpa [dist_eq_norm, Complex.norm_real, abs_of_pos hx] using hxE
      · exact_mod_cast hx.ne'
    exact (near close) (zero x hx hxGap)
  exact fun z =>
    (hF.differentiableOn.analyticOnNhd isOpen_univ).eqOn_zero_of_preconnected_of_frequently_eq_zero
      isPreconnected_univ (mem_univ 0) frequent (mem_univ z)

/-- An even entire pointwise limit of constant-scaled positive products with
a common positive floor is constant. The degrees and scalars may vary. -/
theorem even_pointwise_limit_is_constant {degree : ℕ → ℕ}
    (eigenvalue : (n : ℕ) → Fin (degree n) → ℝ) (scale : ℕ → ℂ)
    {gap : ℝ} (hgap : 0 < gap) (floor : ∀ n i, gap ≤ eigenvalue n i)
    {F : ℂ → ℂ} (hF : Differentiable ℂ F) (even : ∀ z, F (-z) = F z)
    (limit : ∀ z, Tendsto (fun n => scale n * linearProduct Finset.univ (eigenvalue n) z)
      atTop (𝓝 (F z))) :
    ∀ z, F z = F 0 := by
  have hscale : Tendsto scale atTop (𝓝 (F 0)) := by
    simpa only [linearProduct_zero, mul_one] using limit 0
  have interval (x : ℝ) (hx : 0 < x) (hle : x ≤ gap) : F (x : ℂ) - F 0 = 0 := by
    have hleft := ((limit (x : ℂ)).sub hscale).norm
    have hright := ((limit (-(x : ℂ))).sub (limit (x : ℂ))).norm
    have bound := le_of_tendsto_of_tendsto hleft hright (Eventually.of_forall fun n =>
      norm_scaled_linearProduct_sub_anchor_le hgap (fun i _ => floor n i) hx.le hle (scale n))
    rw [even, sub_self, norm_zero] at bound
    exact norm_le_zero_iff.mp bound
  intro z
  exact sub_eq_zero.mp (eq_zero_of_zero_real_interval (hF.sub_const (F 0)) hgap interval z)

/-! ## Application to the original completed zeta function -/

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource

private theorem xi_two_exact : xi 2 = (Real.pi : ℂ) / 6 := by
  have hΓ : Complex.Gammaℝ (2 : ℂ) = (Real.pi : ℂ)⁻¹ := by
    rw [Complex.Gammaℝ_def, show -(2 : ℂ) / 2 = -1 by norm_num,
      show (2 : ℂ) / 2 = 1 by norm_num, Complex.cpow_neg, Complex.cpow_one,
      Complex.Gamma_one, mul_one]
  have hpi : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  have hZ := riemannZeta_def_of_ne_zero (show (2 : ℂ) ≠ 0 by norm_num)
  rw [hΓ, riemannZeta_two] at hZ
  have hC : completedRiemannZeta (2 : ℂ) = (Real.pi : ℂ) / 6 := by
    apply (eq_div_iff (inv_ne_zero hpi)).mp at hZ
    calc
      completedRiemannZeta 2 = ((Real.pi : ℂ)^2 / 6) * (Real.pi : ℂ)⁻¹ := hZ.symm
      _ = _ := by field_simp
  rw [xi_eq_completed 2 (by norm_num) (by norm_num), hC]
  ring

theorem spectralSource_anchor_values :
    spectralSource (Complex.I / 2) = (1 / 2 : ℂ) ∧
      spectralSource (3 * Complex.I / 2) = (Real.pi : ℂ) / 6 := by
  constructor
  · unfold spectralSource
    rw [show (1 / 2 : ℂ) - Complex.I * (Complex.I / 2) = 1 by
      rw [← mul_div_assoc, Complex.I_mul_I]
      ring, xi_one]
  · unfold spectralSource
    rw [show (1 / 2 : ℂ) - Complex.I * (3 * Complex.I / 2) = 2 by
      calc
        _ = (1 / 2 : ℂ) - (3 / 2) * Complex.I^2 := by ring
        _ = _ := by rw [Complex.I_sq]; ring,
      xi_two_exact]

theorem no_positive_product_pointwise_limit_to_xi {degree : ℕ → ℕ}
    (eigenvalue : (n : ℕ) → Fin (degree n) → ℝ)
    (scale : ℕ → ℂ) {gap : ℝ} (hgap : 0 < gap) (floor : ∀ n i, gap ≤ eigenvalue n i) :
    ¬ (∀ z, Tendsto (fun n => scale n * linearProduct Finset.univ (eigenvalue n) z)
      atTop (𝓝 (spectralSource z))) := by
  intro lim
  have hdiff : Differentiable ℂ spectralSource :=
    differentiable_xi.comp (by fun_prop)
  have heven (z : ℂ) : spectralSource (-z) = spectralSource z := by
    unfold spectralSource
    rw [show (1 / 2 : ℂ) - Complex.I * (-z) = 1 - (1 / 2 - Complex.I * z) by ring, xi_one_sub]
  have constant := even_pointwise_limit_is_constant eigenvalue scale hgap floor hdiff heven lim
  have same := (constant (Complex.I / 2)).trans (constant (3 * Complex.I / 2)).symm
  rw [spectralSource_anchor_values.1, spectralSource_anchor_values.2] at same
  have realEq := congrArg Complex.re same
  simp at realEq
  linarith [Real.pi_gt_three]

/-- Exact change from the monic Hermitian characteristic polynomial to the
product anchored at zero. The eigenvalue indices retain multiplicity. -/
theorem hermitian_charpoly_eq_scaled {d : ℕ} {A : Matrix (Fin d) (Fin d) ℂ}
    (hA : A.IsHermitian) (positive : ∀ i, 0 < hA.eigenvalues i) (z : ℂ) :
    A.charpoly.eval z = A.charpoly.eval 0 * linearProduct Finset.univ hA.eigenvalues z := by
  simp only [hA.charpoly_eq, Polynomial.eval_prod, linearProduct, ← Finset.prod_mul_distrib]
  apply Finset.prod_congr rfl
  intro i _
  simp only [Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_C, zero_sub,
    Complex.ofReal_inv]
  change z - (hA.eigenvalues i : ℂ) =
    -(hA.eigenvalues i : ℂ) * (1 - z * (hA.eigenvalues i : ℂ)⁻¹)
  have hne : (hA.eigenvalues i : ℂ) ≠ 0 := by exact_mod_cast (positive i).ne'
  field_simp
  ring

/-- A uniform positive eigenvalue floor rules out even pointwise convergence
of constant-rescaled Hermitian characteristic polynomials to centered xi. -/
theorem no_constant_normalized_hermitian_pointwise_limit_to_xi {degree : ℕ → ℕ}
    (A : (n : ℕ) → Matrix (Fin (degree n)) (Fin (degree n)) ℂ)
    (hA : ∀ n, (A n).IsHermitian) (scale : ℕ → ℂ) {gap : ℝ} (hgap : 0 < gap)
    (floor : ∀ n i, gap ≤ (hA n).eigenvalues i) :
    ¬ (∀ z, Tendsto (fun n => scale n * (A n).charpoly.eval z)
      atTop (𝓝 (spectralSource z))) := by
  intro lim
  have positive (n : ℕ) (i : Fin (degree n)) : 0 < (hA n).eigenvalues i :=
    hgap.trans_le (floor n i)
  let anchoredScale := fun n => scale n * (A n).charpoly.eval 0
  apply no_positive_product_pointwise_limit_to_xi (fun n => (hA n).eigenvalues)
    anchoredScale hgap floor
  intro z
  have hEq (n : ℕ) :
      anchoredScale n * linearProduct Finset.univ (hA n).eigenvalues z =
        scale n * (A n).charpoly.eval z := by
    rw [hermitian_charpoly_eq_scaled (hA n) (positive n)]
    exact mul_assoc _ _ _
  simpa only [hEq] using lim z

/-- The one-sided, constant-rescaled instance of the locally uniform
Hermitian determinant premise is impossible. -/
theorem no_constant_normalized_hermitian_limit_to_xi {degree : ℕ → ℕ}
    (A : (n : ℕ) → Matrix (Fin (degree n)) (Fin (degree n)) ℂ)
    (hA : ∀ n, (A n).IsHermitian) (scale : ℕ → ℂ) {gap : ℝ} (hgap : 0 < gap)
    (floor : ∀ n i, gap ≤ (hA n).eigenvalues i) :
    ¬ TendstoLocallyUniformlyOn
      (fun n z => scale n * (A n).charpoly.eval z) spectralSource atTop univ := by
  intro lim
  exact no_constant_normalized_hermitian_pointwise_limit_to_xi A hA scale hgap floor
    (fun z => lim.tendsto_at (mem_univ z))

/-- Keeping both signs can cancel the first derivative without making the
product constant. This fixture tests the one-sided hypothesis. -/
theorem paired_root_control (z : ℂ) :
    linearProduct (Finset.univ : Finset Bool) (fun b => if b then 1 else -1) z = 1 - z^2 := by
  norm_num [linearProduct, Fintype.prod_bool]
  ring

/-- Repeated positive roots can collapse to zero without a common gap,
giving the even nonconstant limit z² under constant rescaling. -/
theorem closing_gap_control (z : ℂ) :
    Tendsto (fun n : ℕ => ((1 / (n + 1) : ℝ) : ℂ)^2 *
      linearProduct (Finset.univ : Finset Bool) (fun _ => 1 / (n + 1 : ℝ)) z)
      atTop (𝓝 (z^2)) := by
  have h : Tendsto (fun n : ℕ => 1 / (n + 1 : ℂ)) atTop (𝓝 0) :=
    tendsto_one_div_add_atTop_nhds_zero_nat
  have hdiff : Tendsto (fun n : ℕ => z - 1 / (n + 1 : ℂ)) atTop (𝓝 z) := by
    simpa only [sub_zero] using (tendsto_const_nhds (x := z)).sub h
  refine (hdiff.pow 2).congr fun n => ?_
  have hne : (n + 1 : ℂ) ≠ 0 := by exact_mod_cast Nat.succ_ne_zero n
  simp only [linearProduct, Fintype.prod_bool, Complex.ofReal_div, Complex.ofReal_one,
    Complex.ofReal_add, Complex.ofReal_natCast, inv_div, div_one]
  field_simp
  ring

end GRWTSK.NumberTheory.Zeta.XiPositiveDeterminantObstruction
