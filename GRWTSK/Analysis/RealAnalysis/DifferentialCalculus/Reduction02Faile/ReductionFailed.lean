import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

open Set Matrix

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

theorem det_fin_three_normalize_first_row (M : Matrix (Fin 3) (Fin 3) ℝ)
    (h0 : ∀ j, M 0 j ≠ 0) :
    M.det = (M 0 0 * M 0 1 * M 0 2) *
      Matrix.det !![1, 1, 1;
        M 1 0 / M 0 0, M 1 1 / M 0 1, M 1 2 / M 0 2;
        M 2 0 / M 0 0, M 2 1 / M 0 1, M 2 2 / M 0 2] := by
  simp [Matrix.det_fin_three]
  field_simp [h0 0, h0 1, h0 2]
  ring

theorem det_fin_three_normalized_eq_differences (a0 a1 a2 b0 b1 b2 : ℝ) :
    Matrix.det !![1, 1, 1; a0, a1, a2; b0, b1, b2] =
      (a1 - a0) * (b2 - b0) - (a2 - a0) * (b1 - b0) := by
  simp [Matrix.det_fin_three]
  ring

theorem det_fin_three_normalized_eq_secants (a0 a1 a2 b0 b1 b2 : ℝ)
    (h01 : a1 - a0 ≠ 0) (h12 : a2 - a1 ≠ 0) :
    Matrix.det !![1, 1, 1; a0, a1, a2; b0, b1, b2] =
      (a1 - a0) * (a2 - a1) *
        ((b2 - b1) / (a2 - a1) - (b1 - b0) / (a1 - a0)) := by
  rw [det_fin_three_normalized_eq_differences]
  field_simp [h01, h12]
  ring

theorem oriented_plucker_three_scalar (a b c d e f g h i : ℝ) :
    (c * d - a * f) * (b * g - a * h) -
      (b * d - a * e) * (c * g - a * i) =
        -a * (a * e * i - a * f * h - b * d * i + b * f * g +
          c * d * h - c * e * g) := by
  ring

theorem oriented_plucker_three (M : Matrix (Fin 3) (Fin 3) ℝ) :
    (M 0 2 * M 1 0 - M 0 0 * M 1 2) *
        (M 0 1 * M 2 0 - M 0 0 * M 2 1) -
      (M 0 1 * M 1 0 - M 0 0 * M 1 1) *
        (M 0 2 * M 2 0 - M 0 0 * M 2 2) = -M 0 0 * M.det := by
  rw [Matrix.det_fin_three]
  exact oriented_plucker_three_scalar _ _ _ _ _ _ _ _ _

private theorem image_sub_neg_of_hasDerivAt_neg (f df : ℝ → ℝ) {x y : ℝ}
    (hxy : x < y) (hc : ContinuousOn f (Icc x y))
    (hd : ∀ t ∈ Ioo x y, HasDerivAt f (df t) t)
    (hn : ∀ t ∈ Ioo x y, df t < 0) : f y - f x < 0 := by
  obtain ⟨c, hc, heq⟩ := exists_hasDerivAt_eq_slope f df hxy hc hd
  have hquot : (f y - f x) / (y - x) < 0 := heq ▸ hn c hc
  simpa using (div_lt_iff₀ (sub_pos.mpr hxy)).mp hquot

theorem normalized_det_nonpos_of_antitone_deriv_ratio
    (g1 g2 d1 d2 : ℝ → ℝ) {x y z : ℝ} (hxy : x < y) (hyz : y < z)
    (hc1 : ContinuousOn g1 (Icc x z)) (hc2 : ContinuousOn g2 (Icc x z))
    (hd1 : ∀ t ∈ Ioo x z, HasDerivAt g1 (d1 t) t)
    (hd2 : ∀ t ∈ Ioo x z, HasDerivAt g2 (d2 t) t)
    (hn1 : ∀ t ∈ Ioo x z, d1 t < 0)
    (ha : AntitoneOn (fun t => d2 t / d1 t) (Ioo x z)) :
    Matrix.det !![1, 1, 1; g1 x, g1 y, g1 z; g2 x, g2 y, g2 z] ≤ 0 := by
  have hcc1 : Icc x y ⊆ Icc x z := fun _ ht => ⟨ht.1, ht.2.trans hyz.le⟩
  have hcc2 : Icc y z ⊆ Icc x z := fun _ ht => ⟨hxy.le.trans ht.1, ht.2⟩
  have hoo1 : Ioo x y ⊆ Ioo x z := fun _ ht => ⟨ht.1, ht.2.trans hyz⟩
  have hoo2 : Ioo y z ⊆ Ioo x z := fun _ ht => ⟨hxy.trans ht.1, ht.2⟩
  have hdiff1 : g1 y - g1 x < 0 := image_sub_neg_of_hasDerivAt_neg g1 d1 hxy
    (hc1.mono hcc1) (fun t ht => hd1 t (hoo1 ht)) (fun t ht => hn1 t (hoo1 ht))
  have hdiff2 : g1 z - g1 y < 0 := image_sub_neg_of_hasDerivAt_neg g1 d1 hyz
    (hc1.mono hcc2) (fun t ht => hd1 t (hoo2 ht)) (fun t ht => hn1 t (hoo2 ht))
  obtain ⟨c1, hc1', heq1⟩ := exists_ratio_hasDerivAt_eq_ratio_slope g1 d1 hxy
    (hc1.mono hcc1) (fun t ht => hd1 t (hoo1 ht)) g2 d2
    (hc2.mono hcc1) (fun t ht => hd2 t (hoo1 ht))
  obtain ⟨c2, hc2', heq2⟩ := exists_ratio_hasDerivAt_eq_ratio_slope g1 d1 hyz
    (hc1.mono hcc2) (fun t ht => hd1 t (hoo2 ht)) g2 d2
    (hc2.mono hcc2) (fun t ht => hd2 t (hoo2 ht))
  have hs1 : (g2 y - g2 x) / (g1 y - g1 x) = d2 c1 / d1 c1 := by
    apply (div_eq_div_iff (ne_of_lt hdiff1) (ne_of_lt (hn1 c1 (hoo1 hc1')))).mpr
    simpa only [mul_comm] using heq1
  have hs2 : (g2 z - g2 y) / (g1 z - g1 y) = d2 c2 / d1 c2 := by
    apply (div_eq_div_iff (ne_of_lt hdiff2) (ne_of_lt (hn1 c2 (hoo2 hc2')))).mpr
    simpa only [mul_comm] using heq2
  rw [det_fin_three_normalized_eq_secants _ _ _ _ _ _
    (ne_of_lt hdiff1) (ne_of_lt hdiff2), hs1, hs2]
  exact mul_nonpos_of_nonneg_of_nonpos (mul_nonneg_of_nonpos_of_nonpos
    hdiff1.le hdiff2.le) (sub_nonpos.mpr (ha (hoo1 hc1') (hoo2 hc2')
      (hc1'.2.trans hc2'.1).le))

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
