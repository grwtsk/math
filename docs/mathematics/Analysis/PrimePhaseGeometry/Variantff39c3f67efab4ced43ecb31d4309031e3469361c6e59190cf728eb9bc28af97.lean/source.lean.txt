import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# Actual Euclidean two-prime phase geometry

Written quantitative direction, 2026-10-09: grwtsk contributors.
Local formal geometry: OpenAI Codex. Mathlib exponential, Euclidean and
trigonometric laws retain upstream names. No Matveev theorem is admitted here.
The phase certificate remains an explicit input to its inverse consumers.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PrimePhaseGeometry
open scoped BigOperators
noncomputable section

def primeLog : Fin 2 → ℝ := ![Real.log 2, Real.log 3]

def phase (γ : ℝ) : EuclideanSpace ℂ (Fin 2) :=
  WithLp.toLp 2 (fun i => Complex.exp (Complex.I * (-γ * primeLog i : ℝ)))

def phaseDistance (γ η : ℝ) : ℝ := ‖phase γ - phase η‖

def logLength : ℝ := Real.sqrt ((Real.log 2) ^ 2 + (Real.log 3) ^ 2)

def matveevExponent : ℕ := 2 ^ 32

def certificateConstant : ℝ := min (2 * logLength / Real.pi)
  (2 * Real.exp (-(matveevExponent : ℝ)) / logLength)

/-- The actual two-prime phase inequality, not a surrogate norm. -/
def PhaseCertificate (c : ℝ) (k : ℕ) : Prop :=
  ∀ H : ℝ, 0 < H → ∀ γ η : ℝ, |γ| ≤ H → |η| ≤ H →
    c * (1 + H) ^ (-(k : ℝ)) * |γ - η| ≤ phaseDistance γ η

theorem logLength_positive : 0 < logLength := by
  unfold logLength
  apply Real.sqrt_pos.2
  have h : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  nlinarith [sq_nonneg (Real.log (3 : ℝ))]

theorem certificateConstant_positive : 0 < certificateConstant := by
  exact lt_min (div_pos (by nlinarith [logLength_positive]) Real.pi_pos)
    (div_pos (mul_pos (by norm_num) (Real.exp_pos _)) logLength_positive)

theorem phase_distance_sq (γ η : ℝ) :
    phaseDistance γ η ^ 2 =
      ∑ i : Fin 2, ‖Complex.exp (Complex.I * (-γ * primeLog i : ℝ)) -
        Complex.exp (Complex.I * (-η * primeLog i : ℝ))‖ ^ 2 := by
  exact EuclideanSpace.norm_sq_eq _

theorem unit_phase_difference (x y : ℝ) :
    ‖Complex.exp (Complex.I * (x : ℂ)) - Complex.exp (Complex.I * (y : ℂ))‖ =
      ‖Complex.exp (Complex.I * ((x - y : ℝ) : ℂ)) - 1‖ := by
  have he : Complex.exp (Complex.I * (x : ℂ)) - Complex.exp (Complex.I * (y : ℂ)) =
      Complex.exp (Complex.I * (y : ℂ)) *
        (Complex.exp (Complex.I * ((x - y : ℝ) : ℂ)) - 1) := by
    rw [mul_sub, ← Complex.exp_add, mul_one]
    congr 2
    push_cast
    ring
  rw [he, norm_mul, Complex.norm_exp_I_mul_ofReal, one_mul]

theorem unit_phase_difference_le (x y : ℝ) :
    ‖Complex.exp (Complex.I * (x : ℂ)) - Complex.exp (Complex.I * (y : ℂ))‖ ≤
      |x - y| := by
  rw [unit_phase_difference]
  exact Real.norm_exp_I_mul_ofReal_sub_one_le

theorem phase_distance_translation (γ η : ℝ) :
    phaseDistance γ η = phaseDistance (γ - η) 0 := by
  apply (sq_eq_sq₀ (show 0 ≤ phaseDistance γ η from norm_nonneg _)
    (show 0 ≤ phaseDistance (γ - η) 0 from norm_nonneg _)).mp
  rw [phase_distance_sq, phase_distance_sq]
  apply Finset.sum_congr rfl
  intro i _
  rw [unit_phase_difference, unit_phase_difference]
  congr 3
  ring

theorem coordinate_inverse {c : ℝ} {k : ℕ} (hc : 0 < c)
    (hcert : PhaseCertificate c k) {H γ η ε : ℝ} (hH : 0 < H)
    (hγ : |γ| ≤ H) (hη : |η| ≤ H) (herr : phaseDistance γ η ≤ ε) :
    |γ - η| ≤ c⁻¹ * (1 + H) ^ (k : ℝ) * ε := by
  have hp : 0 < c * (1 + H) ^ (-(k : ℝ)) :=
    mul_pos hc (Real.rpow_pos_of_pos (by linarith) _)
  have hb := (hcert H hH γ η hγ hη).trans herr
  have h := (le_div_iff₀ hp).2 (by simpa [mul_comm] using hb)
  have hinv : (c * (1 + H) ^ (-(k : ℝ)))⁻¹ = c⁻¹ * (1 + H) ^ (k : ℝ) := by
    rw [mul_inv_rev, Real.rpow_neg (by linarith : 0 ≤ 1 + H), inv_inv, mul_comm]
  simpa [div_eq_mul_inv, hinv, mul_comm] using h

theorem inverse_cost_at_polynomial_cutoff {c C a A H : ℝ} {k : ℕ}
    (hc : 0 < c) (hC : 0 ≤ C) (ha : 0 ≤ a) (hA : 1 ≤ A)
    (hHp : 0 ≤ H) (hH : H ≤ C * A ^ a) :
    c⁻¹ * (1 + H) ^ (k : ℝ) ≤
      c⁻¹ * (1 + C) ^ (k : ℝ) * A ^ (a * k) := by
  have hbase : 1 + H ≤ (1 + C) * A ^ a := by
    have hpow : 1 ≤ A ^ a := Real.one_le_rpow hA ha
    nlinarith
  have hpow := Real.rpow_le_rpow (by positivity : 0 ≤ 1 + H) hbase
    (Nat.cast_nonneg k)
  rw [Real.mul_rpow (by positivity : 0 ≤ 1 + C)
    (Real.rpow_nonneg (by linarith : 0 ≤ A) a), ← Real.rpow_mul (by linarith : 0 ≤ A)] at hpow
  simpa [mul_assoc] using mul_le_mul_of_nonneg_left hpow (inv_nonneg.2 hc.le)

end
end GRWTSK.RiemannHypothesis.Conversation.PrimePhaseGeometry
