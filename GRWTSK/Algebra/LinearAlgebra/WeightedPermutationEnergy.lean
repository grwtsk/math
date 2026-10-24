/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib finite sums and real ordered-ring arithmetic (Apache-2.0).
Formalization assistance: OpenAI.

Exact energy of a finite weighted permutation. The weights and metric are
explicit inputs. No intrinsic geometric metric or uniform family bound is
inferred. These are source proof scripts, not elaboration receipts.
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.WeightedPermutationEnergy

open scoped BigOperators

variable {ι : Type*} [Fintype ι]

/-- Source coefficient i is sent to target slot e(i), with multiplier w(i). -/
def transport (e : Equiv.Perm ι) (w v : ι → ℝ) : ι → ℝ :=
  fun j => w (e.symm j) * v (e.symm j)

@[simp] theorem transport_at (e : Equiv.Perm ι) (w v : ι → ℝ) (i : ι) :
    transport e w v (e i) = w i * v i := by
  simp [transport]

/-- Squared coefficient Euclidean norm, not a norm on an ambient curve. -/
def energy (v : ι → ℝ) : ℝ := ∑ i, (v i) ^ 2

/-- A selected diagonal form. Positivity must be supplied separately. -/
def energyWith (μ v : ι → ℝ) : ℝ := ∑ i, μ i * (v i) ^ 2

@[simp] theorem energyWith_one (v : ι → ℝ) : energyWith (fun _ => 1) v = energy v := by
  simp [energyWith, energy]

theorem energy_nonneg (v : ι → ℝ) : 0 ≤ energy v :=
  Finset.sum_nonneg (fun i _ => sq_nonneg (v i))

/-- The standard form detects zero over the full finite coefficient space. -/
theorem energy_eq_zero_iff (v : ι → ℝ) : energy v = 0 ↔ v = 0 := by
  constructor
  · intro h
    funext i
    have hi : (v i) ^ 2 ≤ energy v :=
      Finset.single_le_sum (fun j _ => sq_nonneg (v j)) (Finset.mem_univ i)
    rw [h] at hi
    change v i = 0
    nlinarith [sq_nonneg (v i)]
  · rintro rfl
    simp [energy]

/-- Reindexing accounts for every source coefficient exactly once. -/
theorem energyWith_transport (e : Equiv.Perm ι) (w μ v : ι → ℝ) :
    energyWith μ (transport e w v) = ∑ i, μ (e i) * (w i) ^ 2 * (v i) ^ 2 := by
  classical
  unfold energyWith
  rw [← e.sum_comp (fun j => μ j * (transport e w v j) ^ 2)]
  apply Finset.sum_congr rfl
  intro i _
  rw [transport_at, mul_pow]
  ring

theorem energy_transport (e : Equiv.Perm ι) (w v : ι → ℝ) :
    energy (transport e w v) = ∑ i, (w i) ^ 2 * (v i) ^ 2 := by
  simpa only [energyWith_one, one_mul] using
    energyWith_transport e w (fun _ => 1) v

/-- Pointwise diagonal bounds give bounds on the entire vector, including zero. -/
theorem energyWith_bounds (μ v : ι → ℝ) (A B : ℝ)
    (hlo : ∀ i, A ≤ μ i) (hhi : ∀ i, μ i ≤ B) :
    A * energy v ≤ energyWith μ v ∧ energyWith μ v ≤ B * energy v := by
  constructor
  · rw [energy, Finset.mul_sum]
    exact Finset.sum_le_sum (fun i _ => mul_le_mul_of_nonneg_right (hlo i) (sq_nonneg _))
  · rw [energy, Finset.mul_sum]
    exact Finset.sum_le_sum (fun i _ => mul_le_mul_of_nonneg_right (hhi i) (sq_nonneg _))

/-- A metric law requires this exact source/target weight equation. -/
theorem energyWith_conformal (e : Equiv.Perm ι) (w μ : ι → ℝ) (D : ℝ)
    (hμ : ∀ i, μ (e i) * (w i) ^ 2 = D * μ i) (v : ι → ℝ) :
    energyWith μ (transport e w v) = D * energyWith μ v := by
  rw [energyWith_transport, energyWith, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [hμ]
  ring

/-- Scalar normalization is explicit and can be charged independently. -/
theorem energyWith_scale (μ v : ι → ℝ) (q : ℝ) :
    energyWith μ (fun i => q * v i) = q ^ 2 * energyWith μ v := by
  simp only [energyWith]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  ring

/-- Coordinate witnesses can establish sharpness, not only an upper estimate. -/
def unitVector [DecidableEq ι] (j : ι) : ι → ℝ := fun i => if i = j then 1 else 0

@[simp] theorem energyWith_unitVector [DecidableEq ι] (μ : ι → ℝ) (j : ι) :
    energyWith μ (unitVector j) = μ j := by
  simp [energyWith, unitVector]

@[simp] theorem energy_unitVector [DecidableEq ι] (j : ι) :
    energy (unitVector j) = 1 := by
  simp [energy, unitVector]

theorem energy_transport_unitVector [DecidableEq ι] (e : Equiv.Perm ι)
    (w : ι → ℝ) (j : ι) : energy (transport e w (unitVector j)) = (w j) ^ 2 := by
  rw [energy_transport]
  simp [unitVector]

end GRWTSK.Algebra.LinearAlgebra.WeightedPermutationEnergy
