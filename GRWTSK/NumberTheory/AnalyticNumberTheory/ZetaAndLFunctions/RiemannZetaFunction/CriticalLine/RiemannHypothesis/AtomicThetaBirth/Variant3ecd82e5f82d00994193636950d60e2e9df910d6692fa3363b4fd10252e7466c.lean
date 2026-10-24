import FormalResearch.RiemannHypothesis.Conversation.PrimeStorage
import FormalResearch.RiemannHypothesis.Conversation.StoragePrimitiveSeams

/-!
# Rational approaches retain the actual first Chebyshev atom

L-HC02's bounded consumer uses the literal Chebyshev theta function. Rational
points approach two from below with theta identically zero; its value at two
is log two. Thus theta is not continuous at the first prime birth. The same
ordinary-prime primitive remains continuous there because the new hinge has
zero endpoint value. This records the distinction between the atomic storage
and its integrated source without claiming that all rational tests fail.

Human atom/seam fidelity: grwtsk contributors. Local exact first-prime birth and
rational limit consumer: OpenAI Codex. Mathlib Chebyshev theta, floor and limit
laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.AtomicThetaBirth
open Filter
open scoped Topology
noncomputable section

/-- The rational probe in this module, with the following exact parameterization.

def rationalProbe (n : ℕ) : ℚ := 2 - 1 / ((n : ℚ) + 2)
-/
def rationalProbe (n : ℕ) : ℚ := 2 - 1 / ((n : ℚ) + 2)

theorem rational_probe_bounds (n : ℕ) : (1 : ℝ) ≤ (rationalProbe n : ℝ) ∧
    (rationalProbe n : ℝ) < 2 := by
  have hn : (1 : ℝ) ≤ (n : ℝ) + 2 := by linarith [Nat.cast_nonneg (α := ℝ) n]
  have hi : 1 / ((n : ℝ) + 2) ≤ 1 := by
    simpa using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1) hn
  have hl : 0 < 1 / ((n : ℝ) + 2) := by positivity
  simp only [rationalProbe, Rat.cast_sub, Rat.cast_div, Rat.cast_natCast, Rat.cast_ofNat,
    Rat.cast_one, Rat.cast_add]
  exact ⟨by linarith, by linarith⟩

theorem rational_probe_tends_to_birth :
    Tendsto (fun n : ℕ ↦ (rationalProbe n : ℝ)) atTop (𝓝 2) := by
  have hn : Tendsto (fun n : ℕ ↦ (n : ℝ) + 2) atTop atTop :=
    tendsto_atTop_add_const_right atTop 2 tendsto_natCast_atTop_atTop
  have hi := tendsto_inv_atTop_zero.comp hn
  have h := (tendsto_const_nhds : Tendsto (fun _ : ℕ ↦ (2 : ℝ)) atTop (𝓝 2)).sub hi
  simpa [rationalProbe, one_div] using h

theorem every_rational_probe_precedes_atom (n : ℕ) : Chebyshev.theta (rationalProbe n) = 0 := by
  exact Chebyshev.theta_eq_zero_of_lt_two (rational_probe_bounds n).2

theorem actual_first_theta_atom : Chebyshev.theta 2 = Real.log 2 := by
  rw [show (2 : ℝ) = (2 : ℕ) by norm_num, PrimeStorage.theta_eq_all_integer_sum]
  norm_num

theorem theta_discontinuous_at_first_prime : ¬ ContinuousAt Chebyshev.theta 2 := by
  intro hc
  have h := hc.tendsto.comp rational_probe_tends_to_birth
  have hz : Tendsto (fun n : ℕ ↦ Chebyshev.theta (rationalProbe n)) atTop (𝓝 0) := by
    simpa only [every_rational_probe_precedes_atom] using
      (tendsto_const_nhds : Tendsto (fun _ : ℕ ↦ (0 : ℝ)) atTop (𝓝 0))
  have he := tendsto_nhds_unique h hz
  rw [actual_first_theta_atom] at he
  exact (Real.log_pos (by norm_num : (1 : ℝ) < 2)).ne' he

theorem integrated_source_retains_continuity_at_birth :
    ContinuousAt (ArithmeticPrimitive.closedPrimitive
      OpenArithmeticSuppliers.ordinaryPrimeCoefficient) 2 :=
  ArithmeticPrimitive.closedPrimitive_continuousAt _ (by norm_num)

end
end GRWTSK.RiemannHypothesis.Conversation.AtomicThetaBirth
