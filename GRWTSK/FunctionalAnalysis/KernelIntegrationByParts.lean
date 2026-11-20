/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Analysis.Complex.RealDeriv
import Mathlib.Tactic

/-!
# Compactly supported derivative pairings with hinge kernels

The one-sided positive-part kernel is integrated by parts using the actual
half-line fundamental theorem of calculus. A second half-line integration
is justified by an integrable product and Fubini. The resulting identities
retain complex inputs, shifts and both orientations of the kernel.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped Topology ComplexConjugate

namespace GRWTSK.FunctionalAnalysis.KernelIntegrationByParts

/-- A continuous kernel multiplied by two compactly supported factors is
integrable on the product Lebesgue space. -/
theorem integrable_kernel_product {f g : ℝ → ℂ} {K : ℝ × ℝ → ℂ}
    (hf : Continuous f) (hg : Continuous g) (hK : Continuous K)
    (hcf : HasCompactSupport f) (hcg : HasCompactSupport g) :
    Integrable (fun p : ℝ × ℝ => f p.1 * K p * g p.2) (volume.prod volume) := by
  have hcomp : HasCompactSupport (fun p : ℝ × ℝ => f p.1 * K p * g p.2) := by
    apply HasCompactSupport.intro (hcf.isCompact.prod hcg.isCompact)
    intro p hp
    by_cases hfx : f p.1 = 0
    · simp [hfx]
    by_cases hgy : g p.2 = 0
    · simp [hgy]
    exact False.elim (hp ⟨subset_tsupport f hfx, subset_tsupport g hgy⟩)
  have hc : Continuous (fun p : ℝ × ℝ => f p.1 * K p * g p.2) := by fun_prop
  exact hc.integrable_of_hasCompactSupport hcomp

/-- The weighted half-line derivative has no boundary term because the
linear weight vanishes at the finite endpoint and the input is compact. -/
theorem integral_Iic_weighted_deriv {g : ℝ → ℂ} (hg : ContDiff ℝ 1 g)
    (hcg : HasCompactSupport g) (a : ℝ) :
    (∫ y in Iic a, ((a - y : ℝ) : ℂ) * deriv g y) = ∫ y in Iic a, g y := by
  let F : ℝ → ℂ := fun y => ((a - y : ℝ) : ℂ) * g y
  have hF : ContDiff ℝ 1 F := by
    simpa only [F, Complex.ofReal_sub, Pi.mul_def, Pi.sub_def,
      Complex.ofRealCLM_apply] using!
      (contDiff_const.sub Complex.ofRealCLM.contDiff).mul hg
  have hcF : HasCompactSupport F := hcg.mul_left
  have hdF : deriv F = fun y => -g y + ((a - y : ℝ) : ℂ) * deriv g y := by
    funext y
    have hlin : HasDerivAt (fun z : ℝ => (a : ℂ) - (z : ℂ)) (-1) y := by
      simpa [Pi.sub_def, Complex.ofRealCLM_apply] using!
        (hasDerivAt_const y (a : ℂ)).sub Complex.ofRealCLM.hasDerivAt
    simpa only [F, Complex.ofReal_sub, neg_one_mul, Pi.mul_def] using!
      (hlin.mul ((hg.differentiable one_ne_zero) y).hasDerivAt).deriv
  have hig : Integrable g := hg.continuous.integrable_of_hasCompactSupport hcg
  have hiw : Integrable (fun y => ((a - y : ℝ) : ℂ) * deriv g y) := by
    apply (Continuous.mul ?_ (hg.continuous_deriv le_rfl)).integrable_of_hasCompactSupport
      hcg.deriv.mul_left
    exact Complex.continuous_ofReal.comp (continuous_const.sub continuous_id)
  have hFTC := HasCompactSupport.integral_Iic_deriv_eq hF hcF a
  rw [hdF] at hFTC
  change (∫ y in Iic a, -g y + ((a - y : ℝ) : ℂ) * deriv g y) = F a at hFTC
  rw [integral_add (f := fun y => -g y) (g := fun y => ((a - y : ℝ) : ℂ) * deriv g y)
    hig.neg.integrableOn hiw.integrableOn, integral_neg] at hFTC
  simp only [F, sub_self, Complex.ofReal_zero, zero_mul] at hFTC
  linear_combination hFTC

/-- Actual integration of the one-sided hinge against a compact derivative. -/
theorem integral_positivePart_deriv {g : ℝ → ℂ} (hg : ContDiff ℝ 1 g)
    (hcg : HasCompactSupport g) (a : ℝ) :
    (∫ y, ((max (a - y) 0 : ℝ) : ℂ) * deriv g y) = ∫ y in Iic a, g y := by
  have heq : (fun y => ((max (a - y) 0 : ℝ) : ℂ) * deriv g y) =
      (Iic a).indicator (fun y => ((a - y : ℝ) : ℂ) * deriv g y) := by
    funext y
    by_cases hy : y ≤ a
    · simp [hy]
    · simp [hy, max_eq_right (sub_nonpos.mpr (le_of_lt (lt_of_not_ge hy)))]
  rw [heq, integral_indicator measurableSet_Iic]
  exact integral_Iic_weighted_deriv hg hcg a

/-- The first orientation of the hinge gives one shifted product. The
identity holds for every real shift, before any nonnegative-lag restriction. -/
theorem integral_ramp_deriv_product {f g : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hg : ContDiff ℝ 1 g)
    (hcf : HasCompactSupport f) (hcg : HasCompactSupport g) (r : ℝ) :
    (∫ p : ℝ × ℝ, deriv f p.1 * ((max (p.1 - p.2 - r) 0 : ℝ) : ℂ) *
      deriv g p.2 ∂volume.prod volume) = -(∫ y, f (y + r) * g y) := by
  have hif : Integrable (deriv f) :=
    (hf.continuous_deriv le_rfl).integrable_of_hasCompactSupport hcf.deriv
  have hig : Integrable g := hg.continuous.integrable_of_hasCompactSupport hcg
  have htri : Integrable (fun p : ℝ × ℝ =>
      if p.2 ≤ p.1 - r then deriv f p.1 * g p.2 else 0) (volume.prod volume) := by
    simpa only [Set.indicator, Set.mem_ofPred_eq, Pi.sub_apply] using!
      (hif.mul_prod hig).indicator
        ((isClosed_le continuous_snd (continuous_fst.sub continuous_const)).measurableSet)
  have hint : Integrable (fun p : ℝ × ℝ =>
      deriv f p.1 * ((max (p.1 - p.2 - r) 0 : ℝ) : ℂ) * deriv g p.2)
      (volume.prod volume) := by
    apply integrable_kernel_product (hf.continuous_deriv le_rfl)
      (hg.continuous_deriv le_rfl) _ hcf.deriv hcg.deriv
    fun_prop
  rw [integral_prod _ hint]
  calc
    (∫ x, ∫ y, deriv f x * ((max (x - y - r) 0 : ℝ) : ℂ) * deriv g y) =
        ∫ x, deriv f x * ∫ y in Iic (x - r), g y := by
      apply integral_congr_ae
      filter_upwards with x
      simp_rw [mul_assoc]
      rw [integral_const_mul]
      congr 1
      have heq : (fun y => ((max (x - y - r) 0 : ℝ) : ℂ) * deriv g y) =
          (fun y => ((max ((x - r) - y) 0 : ℝ) : ℂ) * deriv g y) := by
        funext y
        rw [show x - y - r = (x - r) - y by ring]
      rw [heq, integral_positivePart_deriv hg hcg]
    _ = ∫ x, ∫ y, if y ≤ x - r then deriv f x * g y else 0 := by
      apply integral_congr_ae
      filter_upwards with x
      rw [← integral_const_mul, ← integral_indicator measurableSet_Iic]
      apply integral_congr_ae
      filter_upwards with y
      by_cases hy : y ≤ x - r <;> simp [hy]
    _ = ∫ y, ∫ x, if y ≤ x - r then deriv f x * g y else 0 :=
      integral_integral_swap htri
    _ = ∫ y, -f (y + r) * g y := by
      apply integral_congr_ae
      filter_upwards with y
      have heq : (fun x => if y ≤ x - r then deriv f x * g y else 0) =
          (Ici (y + r)).indicator (fun x => deriv f x * g y) := by
        funext x
        have hiff : y ≤ x - r ↔ y + r ≤ x := by constructor <;> intro h <;> linarith
        simp only [hiff, Set.indicator, Set.mem_Ici]
      rw [heq, integral_indicator measurableSet_Ici, integral_mul_const,
        integral_Ici_eq_integral_Ioi, HasCompactSupport.integral_Ioi_deriv_eq hf hcf]
    _ = -(∫ y, f (y + r) * g y) := by simp_rw [neg_mul]; rw [integral_neg]

/-- The reflected hinge orientation, with the same complex multiplication
convention as the original product integral. -/
theorem integral_reflectedRamp_deriv_product {f g : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hg : ContDiff ℝ 1 g)
    (hcf : HasCompactSupport f) (hcg : HasCompactSupport g) (r : ℝ) :
    (∫ p : ℝ × ℝ, deriv f p.1 * ((max (p.2 - p.1 - r) 0 : ℝ) : ℂ) *
      deriv g p.2 ∂volume.prod volume) = -(∫ x, f x * g (x + r)) := by
  calc
    _ = ∫ p : ℝ × ℝ, deriv g p.2 * ((max (p.2 - p.1 - r) 0 : ℝ) : ℂ) *
        deriv f p.1 ∂volume.prod volume := by
      apply integral_congr_ae
      filter_upwards with p
      ring
    _ = ∫ p : ℝ × ℝ, deriv g p.1 * ((max (p.1 - p.2 - r) 0 : ℝ) : ℂ) *
        deriv f p.2 ∂volume.prod volume := by
      simpa only [Prod.swap_prod_mk] using!
        (integral_prod_swap (μ := volume) (ν := volume)
          (fun p : ℝ × ℝ => deriv g p.1 *
            ((max (p.1 - p.2 - r) 0 : ℝ) : ℂ) * deriv f p.2))
    _ = -(∫ x, g (x + r) * f x) := integral_ramp_deriv_product hg hf hcg hcf r
    _ = -(∫ x, f x * g (x + r)) := by simp_rw [mul_comm]

theorem hinge_eq_ramps {r : ℝ} (hr : 0 ≤ r) (t : ℝ) :
    max (|t| - r) 0 = max (t - r) 0 + max (-t - r) 0 := by
  rcases le_total 0 t with ht | ht
  · rw [abs_of_nonneg ht, max_eq_right (by linarith : -t - r ≤ 0), add_zero]
  · rw [abs_of_nonpos ht, max_eq_right (by linarith : t - r ≤ 0), zero_add]

theorem min_eq_abs_sub_hinge {r : ℝ} (_hr : 0 ≤ r) (t : ℝ) :
    min |t| r = |t| - max (|t| - r) 0 := by
  rcases le_total |t| r with h | h
  · simp [min_eq_left h, max_eq_right (sub_nonpos.mpr h)]
  · rw [min_eq_right h, max_eq_left (sub_nonneg.mpr h)]
    ring

/-- The two oriented ramps give the complete hinge pairing. Neither
orientation nor a factor of two is discarded for complex inputs. -/
theorem integral_hinge_deriv_product {f g : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hg : ContDiff ℝ 1 g)
    (hcf : HasCompactSupport f) (hcg : HasCompactSupport g)
    {r : ℝ} (hr : 0 ≤ r) :
    (∫ p : ℝ × ℝ, deriv f p.1 * ((max (|p.1 - p.2| - r) 0 : ℝ) : ℂ) *
      deriv g p.2 ∂volume.prod volume) =
      -(∫ y, f (y + r) * g y) - (∫ x, f x * g (x + r)) := by
  have hi₁ : Integrable (fun p : ℝ × ℝ =>
      deriv f p.1 * ((max (p.1 - p.2 - r) 0 : ℝ) : ℂ) * deriv g p.2)
      (volume.prod volume) := by
    apply integrable_kernel_product (hf.continuous_deriv le_rfl)
      (hg.continuous_deriv le_rfl) _ hcf.deriv hcg.deriv
    fun_prop
  have hi₂ : Integrable (fun p : ℝ × ℝ =>
      deriv f p.1 * ((max (p.2 - p.1 - r) 0 : ℝ) : ℂ) * deriv g p.2)
      (volume.prod volume) := by
    apply integrable_kernel_product (hf.continuous_deriv le_rfl)
      (hg.continuous_deriv le_rfl) _ hcf.deriv hcg.deriv
    fun_prop
  calc
    _ = ∫ p : ℝ × ℝ,
        (deriv f p.1 * ((max (p.1 - p.2 - r) 0 : ℝ) : ℂ) * deriv g p.2 +
         deriv f p.1 * ((max (p.2 - p.1 - r) 0 : ℝ) : ℂ) * deriv g p.2)
        ∂volume.prod volume := by
      apply integral_congr_ae
      filter_upwards with p
      rw [hinge_eq_ramps hr, neg_sub, Complex.ofReal_add]
      ring
    _ = _ := by
      rw [integral_add hi₁ hi₂, integral_ramp_deriv_product hf hg hcf hcg,
        integral_reflectedRamp_deriv_product hf hg hcf hcg]
      ring

/-- The zero-lag hinge is the absolute-value kernel. -/
theorem integral_abs_deriv_product {f g : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hg : ContDiff ℝ 1 g)
    (hcf : HasCompactSupport f) (hcg : HasCompactSupport g) :
    (∫ p : ℝ × ℝ, deriv f p.1 * ((|p.1 - p.2| : ℝ) : ℂ) *
      deriv g p.2 ∂volume.prod volume) = -2 * ∫ x, f x * g x := by
  have h := integral_hinge_deriv_product hf hg hcf hcg (r := 0) le_rfl
  have hmax : ∀ t : ℝ, max |t| 0 = |t| := fun t => max_eq_left (abs_nonneg t)
  simp only [sub_zero, add_zero, hmax] at h
  rw [h]
  ring

/-- The truncated absolute-value kernel returns the exact translated
bilinear difference. -/
theorem integral_min_deriv_product {f g : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hg : ContDiff ℝ 1 g)
    (hcf : HasCompactSupport f) (hcg : HasCompactSupport g)
    {r : ℝ} (hr : 0 ≤ r) :
    (∫ p : ℝ × ℝ, deriv f p.1 * ((min |p.1 - p.2| r : ℝ) : ℂ) *
      deriv g p.2 ∂volume.prod volume) =
      -2 * (∫ x, f x * g x) + (∫ y, f (y + r) * g y) +
        (∫ x, f x * g (x + r)) := by
  have hi₁ : Integrable (fun p : ℝ × ℝ =>
      deriv f p.1 * ((|p.1 - p.2| : ℝ) : ℂ) * deriv g p.2)
      (volume.prod volume) := by
    apply integrable_kernel_product (hf.continuous_deriv le_rfl)
      (hg.continuous_deriv le_rfl) _ hcf.deriv hcg.deriv
    fun_prop
  have hi₂ : Integrable (fun p : ℝ × ℝ =>
      deriv f p.1 * ((max (|p.1 - p.2| - r) 0 : ℝ) : ℂ) * deriv g p.2)
      (volume.prod volume) := by
    apply integrable_kernel_product (hf.continuous_deriv le_rfl)
      (hg.continuous_deriv le_rfl) _ hcf.deriv hcg.deriv
    fun_prop
  calc
    _ = ∫ p : ℝ × ℝ,
        (deriv f p.1 * ((|p.1 - p.2| : ℝ) : ℂ) * deriv g p.2 -
         deriv f p.1 * ((max (|p.1 - p.2| - r) 0 : ℝ) : ℂ) * deriv g p.2)
        ∂volume.prod volume := by
      apply integral_congr_ae
      filter_upwards with p
      rw [min_eq_abs_sub_hinge hr, Complex.ofReal_sub]
      ring
    _ = _ := by
      rw [integral_sub hi₁ hi₂, integral_abs_deriv_product hf hg hcf hcg,
        integral_hinge_deriv_product hf hg hcf hcg hr]
      ring

end GRWTSK.FunctionalAnalysis.KernelIntegrationByParts
