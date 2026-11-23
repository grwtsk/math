import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Tactic

/-! Norm estimates for the normalized signed inverse of a Frobenius cycle.
See the companion note for the place weights and the prime-sum application. -/

namespace GRWTSK.AlpogeOrbitPrimeVariation

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- Lower norm bound for a scalar plus a linear isometry. -/
theorem cycle_lower (S : E →ₗᵢ[ℝ] E) (x : E) {p : ℝ} (hp : 0 ≤ p) :
    (p - 1) * ‖x‖ ≤ ‖p • x + S x‖ := by
  have h := norm_sub_le (p • x + S x) (S x)
  rw [add_sub_cancel_right, norm_smul, Real.norm_eq_abs, abs_of_nonneg hp, S.norm_map] at h
  linarith

/-- Uniform in the number of places. The solution is scaled by the prime. -/
theorem normalized_inverse_change (S : E →ₗᵢ[ℝ] E) {w x y : E} {p q : ℝ}
    (hp : 1 < p) (hpq : p ≤ q)
    (hx : p • x + S x = p • w) (hy : q • y + S y = q • w) :
    ‖y - x‖ ≤ (q - p) * ‖w‖ / ((p - 1) * (q - 1)) := by
  have hp0 : 0 ≤ p := by linarith
  have hq0 : 0 ≤ q := by linarith
  have h1 := cycle_lower S x hp0
  rw [hx, norm_smul, Real.norm_eq_abs, abs_of_nonneg hp0] at h1
  have ident : p • (w - x) = S x := by rw [smul_sub, ← hx]; abel
  have h2 := congrArg norm ident
  rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg hp0, S.norm_map] at h2
  have h3 : (p - 1) * ‖w - x‖ ≤ ‖w‖ := by nlinarith [mul_le_mul_of_nonneg_left (le_refl (0:ℝ)) hp0]
  have id2 : q • (y - x) + S (y - x) = (q - p) • (w - x) := by
    rw [map_sub, sub_smul, smul_sub, smul_sub]
    simp only [smul_sub]
    rw [← hy, ← hx]
    abel
  have h4 := cycle_lower S (y - x) hq0
  rw [id2, norm_smul, Real.norm_eq_abs, abs_of_nonneg (sub_nonneg.mpr hpq)] at h4
  apply (le_div_iff₀ (mul_pos (by linarith) (by linarith))).2
  nlinarith [mul_le_mul_of_nonneg_left h4 (sub_nonneg.mpr hp.le),
    mul_le_mul_of_nonneg_left h3 (sub_nonneg.mpr hpq)]

end GRWTSK.AlpogeOrbitPrimeVariation
