import FormalResearch.RiemannHypothesis.ThetaTailDerivatives

/-!
# Exact low-rank reductions for the proposed theta-tail sign condition

These results record the existing orientation and reduce rank two to decreasing
higher-to-lower tail ratios. They do not assert that those ratios decrease or
that the rank-two source determinant has the proposed sign. The derivative of a
ratio of two positive-order tails is computed explicitly, exposing the exact
cross-product inequality that would be needed to control it.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- The unchanged orientation is `+,+,-,-,+,+,-` at ranks zero through six. -/
theorem thetaTailSignRegular_orientation_initial_seven (k : Fin 7) :
    (-1 : ℝ) ^ (k.val * (k.val - 1) / 2) = ![1, 1, -1, -1, 1, 1, -1] k := by
  fin_cases k <;> norm_num

/-- At rank two, the proposed sign means the higher-to-lower tail ratio decreases.
This is an equivalence, with neither side asserted unconditionally. -/
theorem thetaTailSignRegular_two_iff_ratio
    (q : Fin 2 ↪o ℕ) (t : Fin 2 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    (0 ≤ (-1 : ℝ) ^ (2 * (2 - 1) / 2) *
      Matrix.det (fun i j => thetaTail (2 * q i) (t j))) ↔
    thetaTail (2 * q 1) (t 1) / thetaTail (2 * q 0) (t 1) ≤
      thetaTail (2 * q 1) (t 0) / thetaTail (2 * q 0) (t 0) := by
  change (0 ≤ (-1 : ℝ) ^ (2 * (2 - 1) / 2) *
    Matrix.det (Matrix.of fun i j => thetaTail (2 * q i) (t j))) ↔ _
  rw [Matrix.det_fin_two,
    div_le_div_iff₀ (thetaTail_positive _ (ht 1)) (thetaTail_positive _ (ht 0))]
  norm_num only [show (2 * (2 - 1) / 2 : ℕ) = 1 by decide, pow_one,
    neg_one_mul, Matrix.of_apply]
  constructor <;> intro h <;> nlinarith only [h]

/-- The quotient derivative exposes the cross-product needed for ratio monotonicity.
Both tail orders are positive; no derivative of the original kernel is presumed. -/
theorem hasDerivAt_thetaTail_ratio (r s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun x => thetaTail (s + 1) x / thetaTail (r + 1) x)
      ((thetaTail (s + 1) t * thetaTail r t -
          thetaTail s t * thetaTail (r + 1) t) / thetaTail (r + 1) t ^ 2) t := by
  convert! (hasDerivAt_thetaTail_succ s t).div (hasDerivAt_thetaTail_succ r t)
    (thetaTail_positive _ ht).ne' using 1
  ring

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
