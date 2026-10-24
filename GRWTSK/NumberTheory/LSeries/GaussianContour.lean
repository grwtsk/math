/-
Gaussian contour of the actual coefficient-one Riemann zeta series.

Adapted analytic interchange and positive-ratio summand pattern from OpenAI math,
released under Apache-2.0, commit 1581d4cbdd69a0faf34b2089614fe2a814316a6a:
lean/OAI/NumberTheory/DirichletL/Detector/GaussianCompletion.lean,
SHA256 5ee7ec8c1869fcce035ad7aa2b0dffefa706cc1d5d42e4385f3330d1149ceeb1;
lean/OAI/NumberTheory/DirichletL/Detector/RowInterchange.lean,
SHA256 a2cce044bfc064c73bcca39bc04ee79052b64909904c30773b36648c2eca7fff.
No surrounding ideal/character detector closure is imported or admitted here.

Mathlib source/API and adapted proof-pattern credits:
RiemannZeta.lean: Copyright (c) 2023 David Loeffler. All rights reserved.
PSeries.lean: Copyright (c) 2020 Yury Kudryashov. All rights reserved.
DominatedConvergence.lean: Copyright (c) 2019 Zhouhang Zhou. All rights reserved.
Authors: Zhouhang Zhou, Yury Kudryashov, Patrick Massot, Louis (Yiyang) Liu.
These sources are released under the Apache 2.0 license as described in LICENSE.
The imported normalized Gaussian retains its original notices and source identity.

Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
Released under Apache-2.0. No continuation to Re(s) <= 1 or zero-free/RH claim.
-/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.MeasureTheory.Integral.DominatedConvergence

namespace GRWTSK.NumberTheory.LSeries.GaussianContour
noncomputable section
open MeasureTheory Set Filter
open scoped Topology
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian

noncomputable def gaussianZetaSummand (σ Z : ℝ) (n : ℕ) (v : ℝ) : ℂ :=
  (Z : ℂ)^((σ : ℂ)+v*Complex.I) * Complex.exp (((σ : ℂ)+v*Complex.I)^2) *
    (n+1 : ℂ)^(-((σ : ℂ)+v*Complex.I))

noncomputable def gaussianZetaContour (σ Z : ℝ) : ℂ :=
  ((1/(2*Real.pi):ℝ):ℂ) * ∫ v : ℝ,
    (Z : ℂ)^((σ : ℂ)+v*Complex.I) * Complex.exp (((σ : ℂ)+v*Complex.I)^2) *
      riemannZeta ((σ : ℂ)+v*Complex.I)

lemma gaussianDirichletWeight_summable_iff (σ : ℝ) :
    Summable (fun n : ℕ => (n+1 : ℝ)^(-σ)) ↔ 1 < σ := by
  have hshift : Summable (fun n : ℕ => (n+1 : ℝ)^(-σ)) ↔
      Summable (fun n : ℕ => (n : ℝ)^(-σ)) := by
    simpa only [Nat.cast_add, Nat.cast_one] using
      (summable_nat_add_iff (f := fun n : ℕ => (n : ℝ)^(-σ)) 1)
  rw [hshift, Real.summable_nat_rpow]
  constructor <;> intro h <;> linarith

lemma gaussianZetaSummand_norm (σ Z : ℝ) (hZ : 0 < Z) (n : ℕ) (v : ℝ) :
    ‖gaussianZetaSummand σ Z n v‖ =
      (Z^σ * Real.exp (σ^2) * (n+1 : ℝ)^(-σ)) * Real.exp (-(v^2)) := by
  unfold gaussianZetaSummand
  have hn : (n+1 : ℂ) = ((n+1 : ℝ) : ℂ) := by push_cast; rfl
  rw [hn, norm_mul, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos hZ,
    gaussian_transform_vertical_norm,
    Complex.norm_cpow_eq_rpow_re_of_pos (by positivity : (0 : ℝ) < n+1)]
  simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_self, add_zero, Complex.neg_re]
  ring

lemma gaussianZetaSummand_integrable (σ Z : ℝ) (hZ : 0 < Z) (n : ℕ) :
    Integrable (gaussianZetaSummand σ Z n) := by
  have hc : Continuous (fun v : ℝ => (σ : ℂ)+v*Complex.I) := by fun_prop
  have hz : (Z : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hZ.ne'
  have hn : (n+1 : ℂ) ≠ 0 := by exact_mod_cast (Nat.succ_ne_zero n)
  have ht : Continuous (gaussianZetaSummand σ Z n) :=
    ((hc.const_cpow (Or.inl hz)).mul ((hc.pow 2).cexp)).mul
      (hc.neg.const_cpow (Or.inl hn))
  have hg : Integrable (fun v : ℝ =>
      (Z^σ * Real.exp (σ^2) * (n+1 : ℝ)^(-σ)) * Real.exp (-(v^2))) := by
    simpa using (integrable_exp_neg_mul_sq (b := 1) (by norm_num)).const_mul
      (Z^σ * Real.exp (σ^2) * (n+1 : ℝ)^(-σ))
  exact hg.mono' ht.aestronglyMeasurable (ae_of_all _ (fun v => (gaussianZetaSummand_norm σ Z hZ n v).le))

lemma gaussianZetaSummand_integral_norm (σ Z : ℝ) (hZ : 0 < Z) (n : ℕ) :
    (∫ v : ℝ, ‖gaussianZetaSummand σ Z n v‖) =
      (Z^σ * Real.exp (σ^2) * ∫ v : ℝ, Real.exp (-(v^2))) * (n+1 : ℝ)^(-σ) := by
  simp_rw [gaussianZetaSummand_norm σ Z hZ n, integral_const_mul]
  ring

lemma gaussianZetaSummand_integral_norm_summable (σ Z : ℝ) (hσ : 1 < σ) (hZ : 0 < Z) :
    Summable (fun n : ℕ => ∫ v : ℝ, ‖gaussianZetaSummand σ Z n v‖) := by
  simp_rw [gaussianZetaSummand_integral_norm σ Z hZ]
  exact ((gaussianDirichletWeight_summable_iff σ).mpr hσ).mul_left _

lemma gaussianZetaSummand_ratio (σ Z : ℝ) (hZ : 0 < Z) (n : ℕ) (v : ℝ) :
    gaussianZetaSummand σ Z n v =
      (((n+1 : ℝ)/Z : ℝ):ℂ)^(-((σ : ℂ)+v*Complex.I)) *
        Complex.exp (((σ : ℂ)+v*Complex.I)^2) := by
  unfold gaussianZetaSummand
  rw [Complex.ofReal_div, Complex.div_cpow_ofReal_nonneg
    (by positivity : (0 : ℝ) ≤ n+1) hZ.le, Complex.cpow_neg (Z : ℂ), div_inv_eq_mul]
  push_cast
  ring

lemma gaussianZetaSummand_integral (σ Z : ℝ) (hZ : 0 < Z) (n : ℕ) :
    ((1/(2*Real.pi):ℝ):ℂ) * (∫ v : ℝ, gaussianZetaSummand σ Z n v) =
      gaussianMellinProfile ((n+1 : ℝ)/Z) := by
  simp_rw [gaussianZetaSummand_ratio σ Z hZ n]
  exact gaussianMellin_inversion _ (div_pos (by positivity) hZ) σ

/-- The actual profile sum converges, proved from the actual absolute integral bound. -/
theorem gaussianMellinProfile_sum_summable (Z : ℝ) (hZ : 0 < Z) :
    Summable (fun n : ℕ => gaussianMellinProfile ((n+1 : ℝ)/Z)) := by
  have hs := gaussianZetaSummand_integral_norm_summable 2 Z (by norm_num) hZ
  have hi : Summable (fun n : ℕ => ∫ v : ℝ, gaussianZetaSummand 2 Z n v) := by
    apply Summable.of_norm
    exact Summable.of_nonneg_of_le (fun _ => norm_nonneg _) (fun _ => norm_integral_le_integral_norm _) hs
  have hh := hi.mul_left (((1/(2*Real.pi):ℝ):ℂ))
  simpa only [gaussianZetaSummand_integral 2 Z hZ] using hh

/-- Exact coefficient-one zeta/Gaussian contour, retaining sigma>1 and Z>0. -/
theorem gaussianZetaContour_eq_tsum (σ Z : ℝ) (hσ : 1 < σ) (hZ : 0 < Z) :
    gaussianZetaContour σ Z = ∑' n : ℕ, gaussianMellinProfile ((n+1 : ℝ)/Z) := by
  have heq (v : ℝ) :
      (Z : ℂ)^((σ : ℂ)+v*Complex.I) * Complex.exp (((σ : ℂ)+v*Complex.I)^2) *
        riemannZeta ((σ : ℂ)+v*Complex.I) = ∑' n : ℕ, gaussianZetaSummand σ Z n v := by
    rw [zeta_eq_tsum_one_div_nat_add_one_cpow (by simpa using hσ)]
    simp only [gaussianZetaSummand, Complex.cpow_neg, one_div, tsum_mul_left]
  unfold gaussianZetaContour
  simp_rw [heq]
  rw [← integral_tsum_of_summable_integral_norm
    (gaussianZetaSummand_integrable σ Z hZ)
    (gaussianZetaSummand_integral_norm_summable σ Z hσ hZ), ← tsum_mul_left]
  apply tsum_congr
  intro n
  exact gaussianZetaSummand_integral σ Z hZ n

end
end GRWTSK.NumberTheory.LSeries.GaussianContour
