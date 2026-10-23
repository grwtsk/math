/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Tactic

/-! # Full-coordinate adjoint descent for a literal finite real matrix

The damping is computed from the actual squared Frobenius sum. Reconstruction
has a uniform energy bound and residual energy drops by at least the damped
output energy. A strict relative contraction requires a quantitative
observability gap; it is not inferred from nonexpansiveness.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent
variable {ι κ : Type*}

def energy (s : Finset κ) (v : κ → ℝ) : ℝ := ∑ c ∈ s, (v c) ^ 2
def applyMatrix (s : Finset κ) (A : ι → κ → ℝ) (v : κ → ℝ) (n : ι) : ℝ :=
  ∑ c ∈ s, A n c * v c
def adjoint (t : Finset ι) (A : ι → κ → ℝ) (y : ι → ℝ) (c : κ) : ℝ :=
  ∑ n ∈ t, A n c * y n
def frobenius (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) : ℝ :=
  ∑ c ∈ s, ∑ n ∈ t, (A n c) ^ 2
def damping (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) : ℝ :=
  1 / (1 + frobenius s t A)
def reconstruction (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) (y : ι → ℝ) (c : κ) : ℝ :=
  damping s t A * adjoint t A y c

theorem energy_nonneg (s : Finset κ) (v : κ → ℝ) : 0 ≤ energy s v :=
  Finset.sum_nonneg (fun _ _ => sq_nonneg _)

theorem adjoint_energy_le (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) (y : ι → ℝ) :
    energy s (adjoint t A y) ≤ frobenius s t A * energy t y := by
  unfold energy adjoint frobenius
  rw [Finset.sum_mul]
  apply Finset.sum_le_sum
  intro c _
  exact Finset.sum_mul_sq_le_sq_mul_sq t (fun n => A n c) y

theorem duality (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) (v : κ → ℝ) :
    (∑ c ∈ s, v c * adjoint t A (applyMatrix s A v) c) = energy t (applyMatrix s A v) := by
  unfold adjoint
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  unfold energy
  apply Finset.sum_congr rfl
  intro n _
  calc
    _ = (∑ c ∈ s, A n c * v c) * applyMatrix s A v n := by
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro c _
      ring
    _ = _ := by rw [← applyMatrix]; ring

theorem damping_bounds (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) :
    0 < damping s t A ∧ damping s t A ≤ 1 ∧
      damping s t A ^ 2 * frobenius s t A ≤ damping s t A := by
  have hB : 0 ≤ frobenius s t A := Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg (fun _ _ => sq_nonneg _))
  have hd : 0 < 1 + frobenius s t A := by linarith
  have hp : 0 < damping s t A := div_pos (by norm_num) hd
  have he : damping s t A * (1 + frobenius s t A) = 1 := by
    unfold damping
    field_simp
  have hle : damping s t A ≤ 1 := by nlinarith [mul_nonneg hp.le hB]
  have hprod : damping s t A * frobenius s t A ≤ 1 := by nlinarith
  have hsq := mul_le_mul_of_nonneg_left hprod hp.le
  exact ⟨hp, hle, by nlinarith only [hsq]⟩

theorem reconstruction_energy (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) (y : ι → ℝ) :
    energy s (reconstruction s t A y) = damping s t A ^ 2 * energy s (adjoint t A y) := by
  simp [energy, reconstruction, mul_pow, Finset.mul_sum]

theorem reconstruction_bound (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) (y : ι → ℝ) :
    energy s (reconstruction s t A y) ≤ energy t y := by
  rw [reconstruction_energy]
  have h1 := mul_le_mul_of_nonneg_left (adjoint_energy_le s t A y) (sq_nonneg (damping s t A))
  have hc : damping s t A ^ 2 * frobenius s t A ≤ 1 :=
    (damping_bounds s t A).2.2.trans (damping_bounds s t A).2.1
  have h2 := mul_le_mul_of_nonneg_right hc (energy_nonneg t y)
  nlinarith only [h1, h2]

theorem residual_identity (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) (v : κ → ℝ) :
    energy s (fun c => v c - reconstruction s t A (applyMatrix s A v) c) =
      energy s v - 2 * damping s t A * energy t (applyMatrix s A v) +
        damping s t A ^ 2 * energy s (adjoint t A (applyMatrix s A v)) := by
  have he (c : κ) : (v c - reconstruction s t A (applyMatrix s A v) c) ^ 2 =
      v c ^ 2 - (2 * damping s t A) * (v c * adjoint t A (applyMatrix s A v) c) +
        damping s t A ^ 2 * (adjoint t A (applyMatrix s A v) c) ^ 2 := by
    unfold reconstruction
    ring
  unfold energy
  simp_rw [he]
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum, ← Finset.mul_sum, duality]
  rfl

theorem residual_descent (s : Finset κ) (t : Finset ι) (A : ι → κ → ℝ) (v : κ → ℝ) :
    energy s (fun c => v c - reconstruction s t A (applyMatrix s A v) c) ≤
      energy s v - damping s t A * energy t (applyMatrix s A v) := by
  rw [residual_identity]
  have h1 := mul_le_mul_of_nonneg_left (adjoint_energy_le s t A (applyMatrix s A v))
    (sq_nonneg (damping s t A))
  have h2 := mul_le_mul_of_nonneg_right (damping_bounds s t A).2.2
    (energy_nonneg t (applyMatrix s A v))
  nlinarith only [h1, h2]
end GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent
