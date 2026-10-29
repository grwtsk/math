import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Tactic.Ring

/-!
# The actual logarithmic multiplicative phase

The character is the exponential `exp (I * ξ * log x)`. Multiplicativity
requires positive real arguments; the total real logarithm does not supply
that identity at zero. The prime-power specialization preserves every power,
including exponent zero. No assertion about zeros of zeta is used.
-/

namespace FormalResearch.RiemannHypothesis.MultiplicativePhase

noncomputable section

/-- The source phase in logarithmic coordinates. Its character laws below
are explicitly restricted to the positive multiplicative domain. -/
def chi (ξ x : ℝ) : ℂ :=
  Complex.exp (Complex.I * (ξ : ℂ) * (Real.log x : ℂ))

theorem chi_one (ξ : ℝ) : chi ξ 1 = 1 := by
  simp [chi]

theorem chi_mul (ξ : ℝ) {x y : ℝ} (hx : 0 < x) (hy : 0 < y) :
    chi ξ (x * y) = chi ξ x * chi ξ y := by
  unfold chi
  rw [Real.log_mul (ne_of_gt hx) (ne_of_gt hy), Complex.ofReal_add, mul_add,
    Complex.exp_add]

theorem chi_pow (ξ : ℝ) {x : ℝ} (hx : 0 < x) (k : ℕ) :
    chi ξ (x ^ k) = chi ξ x ^ k := by
  induction k with
  | zero => simp [chi_one]
  | succ k ih => rw [pow_succ, chi_mul ξ (pow_pos hx k) hx, ih, pow_succ]

/-- A prime power is an actual power of the prime phase, not a replacement
of the von Mangoldt inventory by a prime-only sum. -/
theorem chi_prime_pow (ξ : ℝ) {p : ℕ} (hp : p.Prime) (k : ℕ) :
    chi ξ ((p ^ k : ℕ) : ℝ) = chi ξ p ^ k := by
  rw [Nat.cast_pow]
  exact chi_pow ξ (by exact_mod_cast hp.pos) k

/-- Exponentiation identifies the positive multiplicative domain with its
additive logarithmic coordinate. -/
theorem chi_exp (ξ t : ℝ) :
    chi ξ (Real.exp t) = Complex.exp (Complex.I * (ξ : ℂ) * (t : ℂ)) := by
  simp [chi]

theorem chi_inv (ξ : ℝ) {x : ℝ} (hx : 0 < x) :
    chi ξ x⁻¹ = (chi ξ x)⁻¹ := by
  have hm := chi_mul ξ hx (inv_pos.mpr hx)
  rw [mul_inv_cancel₀ (ne_of_gt hx), chi_one] at hm
  exact eq_inv_of_mul_eq_one_left (by simpa only [mul_comm] using hm.symm)

theorem chi_eq_exp_angle (ξ x : ℝ) :
    chi ξ x = Complex.exp (((ξ * Real.log x : ℝ) : ℂ) * Complex.I) := by
  unfold chi
  congr 1
  rw [Complex.ofReal_mul]
  ring

theorem chi_norm (ξ x : ℝ) : ‖chi ξ x‖ = 1 := by
  rw [chi_eq_exp_angle]
  exact Complex.norm_exp_ofReal_mul_I _

theorem chi_normSq (ξ x : ℝ) : Complex.normSq (chi ξ x) = 1 := by
  rw [Complex.normSq_eq_norm_sq, chi_norm]
  norm_num

theorem chi_re (ξ x : ℝ) : (chi ξ x).re = Real.cos (ξ * Real.log x) := by
  rw [chi_eq_exp_angle, Complex.exp_ofReal_mul_I_re]

/-- The exact phase defect identity; the right side retains the factor two. -/
theorem normSq_one_sub_chi (ξ x : ℝ) :
    Complex.normSq (1 - chi ξ x) = 2 - 2 * Real.cos (ξ * Real.log x) := by
  rw [Complex.normSq_sub, chi_normSq]
  simp [chi_re]
  norm_num

theorem phase_defect_nonneg (ξ x : ℝ) :
    0 ≤ 2 - 2 * Real.cos (ξ * Real.log x) := by
  rw [← normSq_one_sub_chi]
  exact Complex.normSq_nonneg _

end

end FormalResearch.RiemannHypothesis.MultiplicativePhase
