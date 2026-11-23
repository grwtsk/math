import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AlpogeOrbitPrimeVariation

/-! First-order Frobenius-cycle approximation and its exact translation average. -/

namespace GRWTSK.AlpogeChosenPrimeWindow

open scoped BigOperators

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- The residual after one Frobenius shift is exactly the twice-shifted solution. -/
theorem second_shift (S : E →ₗᵢ[ℝ] E) {d x : E} {p : ℝ}
    (hx : p • x + S x = p • d) :
    p • (p • (x - d) + S d) = S (S x) := by
  have h₁ : p • (x - d) = -S x := by rw [smul_sub, ← hx]; abel
  have h₂ : p • (d - x) = S x := by rw [smul_sub, ← hx]; abel
  rw [h₁, neg_add_eq_sub, ← map_sub, ← S.map_smul, h₂]

/-- A uniform remainder in any norm in which the shift is an isometry. -/
theorem first_order_error (S : E →ₗᵢ[ℝ] E) {d x : E} {p : ℝ}
    (hp : 1 < p) (hx : p • x + S x = p • d) :
    ‖x - (d - p⁻¹ • S d)‖ ≤ ‖d‖ / (p * (p - 1)) := by
  have h0 : 0 < p := by linarith
  have h₁ := GRWTSK.AlpogeOrbitPrimeVariation.cycle_lower S x h0.le
  rw [hx, norm_smul, Real.norm_eq_abs, abs_of_pos h0] at h₁
  have h₂ := congrArg norm (second_shift S hx)
  have hr : p • (x - (d - p⁻¹ • S d)) = p • (x - d) + S d := by
    rw [smul_sub, smul_sub, smul_sub, smul_smul, mul_inv_cancel₀ h0.ne', one_smul]
    abel
  rw [← hr, norm_smul, norm_smul, Real.norm_eq_abs, abs_of_pos h0,
    S.norm_map, S.norm_map] at h₂
  apply (le_div_iff₀ (mul_pos h0 (by linarith))).2
  apply (mul_le_mul_iff_right₀ h0).1
  nlinarith [h₁, mul_nonneg (sub_nonneg.mpr hp.le) (norm_nonneg x),
    congrArg (fun u : ℝ => (p - 1) * u) h₂]

/-- All translates of the incoming row give one copy of every ordered pair. -/
theorem translation_sum {A : Type*} [Fintype A] [AddGroup A]
    (F : A → A → ℝ) :
    (∑ h : A, ∑ t : A, F t (t + h)) = ∑ t : A, ∑ u : A, F t u := by
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun t _ => Equiv.sum_comp (Equiv.addLeft t) (F t)

/-- Sum over both row switches and all shifts in the dyadic coordinate. -/
theorem two_row_hinge {A : Type*} [Fintype A] [AddGroup A]
    (d : Bool → A → ℝ) (p : ℝ) :
    (∑ b : Bool, ∑ h : A, ∑ t : A,
      (max (d b (t + h) - p * d b t) 0 + max (d (!b) (t + h) - p * d b t) 0)) =
    ∑ b : Bool, ∑ t : A, ∑ u : A, ∑ c : Bool, max (d c u - p * d b t) 0 := by
  apply Finset.sum_congr rfl
  intro b _
  rw [translation_sum (fun t u =>
    max (d b u - p * d b t) 0 + max (d (!b) u - p * d b t) 0)]
  apply Finset.sum_congr rfl
  intro t _
  apply Finset.sum_congr rfl
  intro u _
  cases b <;> simp [Fintype.sum_bool, add_comm]

end GRWTSK.AlpogeChosenPrimeWindow
