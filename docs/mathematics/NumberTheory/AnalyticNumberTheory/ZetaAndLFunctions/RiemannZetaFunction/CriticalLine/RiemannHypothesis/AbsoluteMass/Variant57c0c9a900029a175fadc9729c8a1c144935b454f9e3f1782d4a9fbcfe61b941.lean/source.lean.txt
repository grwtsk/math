import FormalResearch.RiemannHypothesis.SourceSignedPortControls

/-!
# Actual all-integer coefficient variation grows

The existing multiples-of-six proof is consumed at the closed natural floor
of every real endpoint. This is a lower bound for the raw compensated
coefficients, not for a signed sum or a kernel-weighted readout. It therefore
cannot be used to infer failure of every signed arithmetic method.

Source: audited RH conversation Batch 03. Human direction: grwtsk contributors.
Local all-real consumer and Lean implementation: OpenAI Codex. The existing
repository's coefficient and variation declarations retain their identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.AbsoluteMass

open FormalResearch.RiemannHypothesis.SourceSignedPortControls
noncomputable section

/-- The literal all-real, closed-floor coefficient variation has a growing lower bound. -/
theorem coefficientVariation_real_lower {x : ℝ} (hx : 6 ≤ x) :
    Real.sqrt x / 24 ≤ coefficientVariation ⌊x⌋₊ := by
  let M : ℕ := ⌊x⌋₊ / 6
  have hfloor : 6 ≤ ⌊x⌋₊ := Nat.le_floor hx
  have hM : 1 ≤ M := by dsimp [M]; omega
  have hMN : 6 * M ≤ ⌊x⌋₊ := by dsimp [M]; omega
  have hsmall : ⌊x⌋₊ + 1 ≤ 12 * M := by dsimp [M]; omega
  have hxM : x ≤ 12 * (M : ℝ) := by
    have hnext : x < (⌊x⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one x
    have hsmallr : (⌊x⌋₊ : ℝ) + 1 ≤ 12 * (M : ℝ) := by exact_mod_cast hsmall
    linarith
  have hMr : (1 : ℝ) ≤ M := by exact_mod_cast hM
  have hx0 : 0 ≤ x := by linarith
  have hspos : 0 < Real.sqrt (6 * (M : ℝ)) := Real.sqrt_pos.2 (by nlinarith)
  have hp : 0 ≤ Real.sqrt x * Real.sqrt (6 * (M : ℝ)) := by positivity
  have hp2 : (Real.sqrt x * Real.sqrt (6 * (M : ℝ))) ^ 2 = x * (6 * (M : ℝ)) := by
    rw [mul_pow, Real.sq_sqrt hx0, Real.sq_sqrt (by nlinarith)]
  have hmul := mul_le_mul_of_nonneg_right hxM (show 0 ≤ 6 * (M : ℝ) by nlinarith)
  have hbound : Real.sqrt x * Real.sqrt (6 * (M : ℝ)) ≤ 24 * (M : ℝ) := by
    nlinarith
  have hdiv : Real.sqrt x / 24 ≤ (M : ℝ) / Real.sqrt (6 * (M : ℝ)) := by
    apply (le_div_iff₀ hspos).mpr
    nlinarith
  exact hdiv.trans (coefficientVariation_lower M ⌊x⌋₊ hM hMN)

end
end GRWTSK.RiemannHypothesis.Conversation.AbsoluteMass
