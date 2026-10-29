import FormalResearch.RiemannHypothesis.Conversation.PrimePhaseGeometry
import Mathlib.Algebra.Order.Round

/-!
# Exact chord and nearest-integer geometry for the two-prime certificate

Written quantitative direction 2026-10-09: grwtsk contributors. Local chord
and rounding proofs: OpenAI Codex. These are elementary geometric adapters;
they do not prove or admit Matveev's logarithmic lower bound.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PrimePhaseChord
open PrimePhaseGeometry
noncomputable section

def chord (x : ℝ) : ℝ := ‖Complex.exp (Complex.I * (x : ℂ)) - 1‖

theorem chord_nonnegative (x : ℝ) : 0 ≤ chord x := norm_nonneg _

theorem chord_neg (x : ℝ) : chord (-x) = chord x := by
  have h := unit_phase_difference 0 x
  simpa only [chord, Complex.ofReal_zero, mul_zero, Complex.exp_zero, zero_sub,
    norm_sub_rev] using h.symm

theorem chord_period (x : ℝ) (n : ℤ) : chord (x - 2 * Real.pi * n) = chord x := by
  have he : Complex.I * ((x - 2 * Real.pi * (n : ℝ) : ℝ) : ℂ) =
      Complex.I * (x : ℂ) + ((-n : ℤ) : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) := by
    push_cast
    ring
  unfold chord
  rw [he, Complex.exp_add, Complex.exp_int_mul_two_pi_mul_I, mul_one]

theorem chord_lower_on_pi {x : ℝ} (hx : |x| ≤ Real.pi) :
    2 * |x| / Real.pi ≤ chord x := by
  have hh : |x / 2| ≤ Real.pi := by
    rw [abs_div]
    rw [abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    linarith [Real.pi_pos]
  have hj := Real.mul_le_sin (x := |x| / 2) (by positivity)
    (by linarith : |x| / 2 ≤ Real.pi / 2)
  have he : 2 / Real.pi * (|x| / 2) = |x| / Real.pi := by ring
  rw [he] at hj
  unfold chord
  rw [Complex.norm_exp_I_mul_ofReal_sub_one, Real.norm_eq_abs, abs_mul,
    abs_of_pos (by norm_num : (0 : ℝ) < 2), Real.abs_sin_eq_sin_abs_of_abs_le_pi hh,
    abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  rw [show 2 * |x| / Real.pi = 2 * (|x| / Real.pi) by ring]
  linarith

theorem residual_paid_by_chord {x : ℝ} (hx : |x| ≤ Real.pi) :
    |x| ≤ Real.pi / 2 * chord x := by
  have h := (div_le_iff₀ Real.pi_pos).mp (chord_lower_on_pi hx)
  linarith

theorem phase_distance_sq_chords (δ : ℝ) :
    phaseDistance δ 0 ^ 2 = chord (δ * Real.log 2) ^ 2 + chord (δ * Real.log 3) ^ 2 := by
  rw [phase_distance_sq, Fin.sum_univ_two]
  rw [show primeLog 0 = Real.log 2 from rfl, show primeLog 1 = Real.log 3 from rfl]
  simp only [neg_zero, zero_mul, Complex.ofReal_zero, mul_zero, Complex.exp_zero]
  change chord (-δ * Real.log 2) ^ 2 + chord (-δ * Real.log 3) ^ 2 = _
  rw [neg_mul, neg_mul, chord_neg, chord_neg]

def nearest (x : ℝ) : ℤ := round (x / (2 * Real.pi))

def residual (x : ℝ) : ℝ := x - 2 * Real.pi * nearest x

theorem nearest_residual (x : ℝ) : |residual x| ≤ Real.pi := by
  have h := abs_sub_round (x / (2 * Real.pi))
  change |x / (2 * Real.pi) - (nearest x : ℝ)| ≤ 1 / 2 at h
  have he : residual x = 2 * Real.pi * (x / (2 * Real.pi) - (nearest x : ℝ)) := by
    unfold residual
    field_simp
  rw [he, abs_mul, abs_of_pos (by positivity : 0 < 2 * Real.pi)]
  have hb := mul_le_mul_of_nonneg_left h (by positivity : 0 ≤ 2 * Real.pi)
  linarith

theorem nearest_size (x : ℝ) (hx : 0 ≤ x) :
    |(nearest x : ℝ)| ≤ x / (2 * Real.pi) + 1 / 2 := by
  have h := abs_sub_round (x / (2 * Real.pi))
  change |x / (2 * Real.pi) - (nearest x : ℝ)| ≤ 1 / 2 at h
  have hb := abs_add_le ((nearest x : ℝ) - x / (2 * Real.pi)) (x / (2 * Real.pi))
  rw [sub_add_cancel, abs_sub_comm, abs_of_nonneg (by positivity : 0 ≤ x / (2 * Real.pi))] at hb
  linarith

theorem residual_chord (x : ℝ) : chord (residual x) = chord x :=
  chord_period x (nearest x)

end
end GRWTSK.RiemannHypothesis.Conversation.PrimePhaseChord
