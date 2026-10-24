import Mathlib

/-!
# An eventual complete psi-square floor excludes every negative log saving

MB01 concerns the literal complete dyadic mean square on [X,2X]. The paper
arXiv:2008.06140v1 by Richard P. Brent, David J. Platt and Timothy S. Trudgian
supplies an external eventual floor X^2/5374. That paper theorem is an explicit
premise here, not a local Lean proof or axiom. Its next consumer excludes an
upper envelope with any positive power of log in the denominator. It does not
refer to compressed ordinary-prime root energy or signed causal debt.

Human scope and compression direction: grwtsk contributors. Local exact dyadic
observable and conditional limiting consumer: OpenAI Codex. The paper keeps
its mathematical-source identity; Mathlib keeps its Chebyshev psi and limits.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CompletePsiMeanSquareBoundary
open Filter
open scoped Topology
noncomputable section

/-- The complete psi square in this module, with the following exact parameterization.

def completePsiSquare (X : ℝ) : ℝ := ∫ x in X..(2 * X), (Chebyshev.psi x - x) ^ 2
-/
def completePsiSquare (X : ℝ) : ℝ := ∫ x in X..(2 * X), (Chebyshev.psi x - x) ^ 2

theorem eventual_positive_square_floor_excludes_vanishing_factor
    {I f : ℝ → ℝ} {c : ℝ} (hc : 0 < c)
    (hlower : ∀ᶠ X : ℝ in atTop, c * X ^ 2 ≤ I X)
    (hf : Tendsto f atTop (𝓝 0)) :
    ¬ ∀ᶠ X : ℝ in atTop, I X ≤ f X * X ^ 2 := by
  intro hu
  have ht := hf.eventually_lt_const hc
  have hfalse : ∀ᶠ X : ℝ in atTop, False := by
    filter_upwards [hlower, hu, ht, eventually_gt_atTop (0 : ℝ)] with X hl hu ht hX
    have hp : 0 < X ^ 2 := pow_pos hX _
    have he : c ≤ f X := (mul_le_mul_iff_left₀ hp).mp (hl.trans hu)
    exact (not_lt_of_ge he) ht
  obtain ⟨X, hX⟩ := hfalse.exists
  exact hX

theorem positive_log_power_factor_tends_to_zero {delta : ℝ} (hd : 0 < delta) (C : ℝ) :
    Tendsto (fun X : ℝ ↦ C / (Real.log X) ^ delta) atTop (𝓝 0) := by
  have hp := (tendsto_rpow_atTop hd).comp Real.tendsto_log_atTop
  simpa only [Function.comp_def, div_eq_mul_inv, mul_zero] using
    (tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ C) atTop (𝓝 C)).mul
      (tendsto_inv_atTop_zero.comp hp)

/-- The external lower bound remains visible and is not an accepted upstream Lean receipt. -/
theorem complete_psi_floor_excludes_negative_log_saving
    (hlower : ∀ᶠ X : ℝ in atTop, X ^ 2 / 5374 ≤ completePsiSquare X)
    {delta : ℝ} (hd : 0 < delta) (C : ℝ) :
    ¬ ∀ᶠ X : ℝ in atTop,
      completePsiSquare X ≤ C * X ^ 2 / (Real.log X) ^ delta := by
  have hl : ∀ᶠ X : ℝ in atTop, (1 / 5374 : ℝ) * X ^ 2 ≤ completePsiSquare X := by
    filter_upwards [hlower] with X hX
    simpa only [div_eq_mul_inv, one_mul, mul_comm] using hX
  have h := eventual_positive_square_floor_excludes_vanishing_factor
    (by norm_num : (0 : ℝ) < 1 / 5374) hl (positive_log_power_factor_tends_to_zero hd C)
  simpa only [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using h

end
end GRWTSK.RiemannHypothesis.Conversation.CompletePsiMeanSquareBoundary
