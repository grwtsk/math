/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's harmonic numbers and bounds retain their upstream attribution. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ComplexPolarizedModes
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-!
# Harmonic steering with a uniform prepared-ray transmission floor

The angle is half of Mathlib's actual rational harmonic number, cast to R.
The kth increment is 1/(2(k+1)). The cascade uses the concrete complex projector
from ComplexPolarizedModes, at the actual cumulative angle after every step.

Primary proof: a reciprocal telescope bounds the sum of squared increments by
1/2; sin(x)^2 <= x^2 and the exact product recurrence bound the transmitted
intensity below by one minus that cost. Mathlib's logarithmic harmonic lower
bound gives arbitrarily large unwrapped angles. No convergence of the rotating
vector, mechanical optimality of block stacks, or whole-space lower frame is
asserted. The prepared input is explicitly a multiple of the initial axis.
The perpendicular kernel in the imported source is the hostile comparison.

Consumer: a concrete infinite schedule whose EVERY finite prefix is usable on
the stated ray; this does not make generic observer errors square-summable.
AI-assisted manual source candidate; novelty/independent review UNASSESSED.
Elaboration, fresh kernel replay and transitive axiom audit: NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicPolarization
open GRWTSK.LinearAlgebra.PolarizedModes

def step (k : ℕ) : ℝ := 1 / (2 * ((k : ℝ) + 1))
def angle (N : ℕ) : ℝ := (harmonic N : ℝ) / 2
def squareCost (N : ℕ) : ℝ := ∑ k ∈ Finset.range N, step k ^ 2

def gain : ℕ → ℝ
  | 0 => 1
  | N + 1 => gain N * Real.cos (step N)

def intensity (N : ℕ) : ℝ := gain N ^ 2

def cascade : ℕ → Jones → Jones
  | 0, z => z
  | N + 1, z =>
      project (Real.cos (angle (N + 1))) (Real.sin (angle (N + 1))) (cascade N z)

@[simp] theorem angle_zero : angle 0 = 0 := by simp [angle]

theorem angle_succ (N : ℕ) : angle (N + 1) = angle N + step N := by
  simp [angle, harmonic_succ, step, Nat.cast_add, Nat.cast_one,
    div_eq_mul_inv, mul_inv_rev] <;> ring

theorem angle_eq_sum (N : ℕ) : angle N = ∑ k ∈ Finset.range N, step k := by
  induction N with
  | zero => simp
  | succ N ih => rw [angle_succ, Finset.sum_range_succ, ih]

theorem angle_log_lower (N : ℕ) : Real.log ((N + 1 : ℕ) : ℝ) / 2 ≤ angle N := by
  unfold angle
  linarith [log_add_one_le_harmonic N]

/-- Unbounded lifted phase, without identifying phase modulo pi with a real angle. -/
theorem angle_unbounded (R : ℝ) : ∃ N : ℕ, R < angle N := by
  obtain ⟨N, hN⟩ := exists_nat_gt (Real.exp (2 * R))
  have hexp : Real.exp (2 * R) < ((N + 1 : ℕ) : ℝ) := by
    push_cast
    linarith
  have hlog : 2 * R < Real.log ((N + 1 : ℕ) : ℝ) := by
    calc
      2 * R = Real.log (Real.exp (2 * R)) := (Real.log_exp _).symm
      _ < Real.log ((N + 1 : ℕ) : ℝ) :=
        Real.strictMonoOn_log (by exact Real.exp_pos _) (by positivity) hexp
  exact ⟨N, by linarith [angle_log_lower N]⟩

@[simp] theorem squareCost_zero : squareCost 0 = 0 := by simp [squareCost]

theorem squareCost_succ (N : ℕ) :
    squareCost (N + 1) = squareCost N + step N ^ 2 := by
  exact Finset.sum_range_succ _ _

/-- Positive telescoping remainder, not a numerical approximation to zeta(2). -/
theorem quarter_telescope (x : ℝ) (hx : 0 < x) :
    (1 / (2 * (x + 1))) ^ 2 ≤ 1 / (4 * x) - 1 / (4 * (x + 1)) := by
  have hx0 : x ≠ 0 := ne_of_gt hx
  have hx1 : x + 1 ≠ 0 := by positivity
  have hid : 1 / (4 * x) - 1 / (4 * (x + 1)) - (1 / (2 * (x + 1))) ^ 2 =
      1 / (4 * x * (x + 1) ^ 2) := by
    field_simp [hx0, hx1] <;> ring
  have hp : 0 ≤ 1 / (4 * x * (x + 1) ^ 2) := by positivity
  linarith

theorem squareCost_succ_bound (N : ℕ) :
    squareCost (N + 1) ≤ 1 / 2 - 1 / (4 * ((N : ℝ) + 1)) := by
  induction N with
  | zero => norm_num [squareCost, step]
  | succ N ih =>
      rw [squareCost_succ]
      have ht : step (N + 1) ^ 2 ≤
          1 / (4 * ((N : ℝ) + 1)) - 1 / (4 * (((N : ℝ) + 1) + 1)) := by
        simpa [step, Nat.cast_add, Nat.cast_one] using
          quarter_telescope ((N : ℝ) + 1) (by positivity)
      simp only [Nat.cast_add, Nat.cast_one]
      linarith

theorem squareCost_le_half (N : ℕ) : squareCost N ≤ 1 / 2 := by
  cases N with
  | zero => simp
  | succ N =>
      have h := squareCost_succ_bound N
      have hp : 0 ≤ 1 / (4 * ((N : ℝ) + 1)) := by positivity
      linarith

@[simp] theorem intensity_zero : intensity 0 = 1 := by simp [intensity, gain]

theorem intensity_nonneg (N : ℕ) : 0 ≤ intensity N := sq_nonneg _

theorem intensity_succ (N : ℕ) :
    intensity (N + 1) = intensity N * Real.cos (step N) ^ 2 := by
  simp [intensity, gain, mul_pow]

theorem intensity_le_one (N : ℕ) : intensity N ≤ 1 := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [intensity_succ]
      calc
        intensity N * Real.cos (step N) ^ 2 ≤ intensity N * 1 :=
          mul_le_mul_of_nonneg_left (Real.cos_sq_le_one _) (intensity_nonneg N)
        _ ≤ 1 := by simpa using ih

theorem intensity_ge_one_sub_cost (N : ℕ) : 1 - squareCost N ≤ intensity N := by
  induction N with
  | zero => simp
  | succ N ih =>
      have hc : 1 - step N ^ 2 ≤ Real.cos (step N) ^ 2 := by
        nlinarith [Real.sin_sq_le_sq (x := step N), Real.sin_sq_add_cos_sq (step N)]
      have hm := mul_le_mul_of_nonneg_left hc (intensity_nonneg N)
      have he := mul_le_mul_of_nonneg_right (intensity_le_one N) (sq_nonneg (step N))
      rw [squareCost_succ, intensity_succ]
      nlinarith

/-- All finite prefixes retain at least half of prepared-ray input energy. -/
theorem intensity_floor (N : ℕ) : 1 / 2 ≤ intensity N := by
  linarith [intensity_ge_one_sub_cost N, squareCost_le_half N]

theorem cascade_prepared (N : ℕ) (a : ℂ) :
    cascade N (a • axis 1 0) =
      (a * (gain N : ℂ)) • axis (Real.cos (angle N)) (Real.sin (angle N)) := by
  induction N with
  | zero => simp [cascade, gain]
  | succ N ih =>
      rw [cascade, ih, project_prepared]
      have ha : angle (N + 1) - angle N = step N := by rw [angle_succ]; ring
      rw [ha]
      simp only [gain, Complex.ofReal_mul, mul_assoc]

theorem cascade_prepared_energy (N : ℕ) (a : ℂ) :
    energy (cascade N (a • axis 1 0)) = Complex.normSq a * intensity N := by
  rw [cascade_prepared, energy_smul, energy_axis, trigonometric_unit, mul_one,
    Complex.normSq_mul, Complex.normSq_ofReal]
  simp [intensity, pow_two]

theorem cascade_prepared_floor (N : ℕ) (a : ℂ) :
    Complex.normSq a / 2 ≤ energy (cascade N (a • axis 1 0)) := by
  rw [cascade_prepared_energy]
  have h := mul_le_mul_of_nonneg_left (intensity_floor N) (Complex.normSq_nonneg a)
  nlinarith

/-- A concrete cofinal steering schedule, not an assumed existence certificate. -/
theorem cofinal_transmission (R : ℝ) :
    ∃ N : ℕ, R < angle N ∧ 1 / 2 ≤ intensity N := by
  obtain ⟨N, hN⟩ := angle_unbounded R
  exact ⟨N, hN, intensity_floor N⟩

end GRWTSK.Analysis.HarmonicPolarization
