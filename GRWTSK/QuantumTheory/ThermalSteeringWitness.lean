/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FinitePositiveHodgeHeat
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

/-!
# Convex Bloch bounds and robust conditional-heat witnesses

This is the finite real-vector inequality underlying the three-axis steering
witness, followed by its affine heat readout. A response vector has coordinates
in [-1,1]; a hidden Bloch vector has squared Euclidean norm at most one.
Cauchy--Schwarz bounds their normalized anti-correlation by sqrt(3)/3.
Finite nonnegative mixtures with total mass one retain that bound.

Reuse the existing finite positive pairing and Mathlib's finite Cauchy--Schwarz
inequality; do not identify Hodge heat with quantum time evolution. The heat
readout Q=epsilon/2*(C-t) is a supplied idealized stroke relation. Its physical
realization, density-operator correspondence, arbitrary-measure hidden-variable
reduction, switching work and cycle accounting are separate obligations.

Primary physical comparison: Beyer, Luoma and Strunz, Steering Heat Engines:
A Truly Quantum Maxwell's Demon, Phys. Rev. Lett. 123, 250606 (2019),
arXiv:1906.12163. This file proves its stated elementary finite model, not a
formal port of that experiment/protocol or a theorem relating steering to RH.
Robust rejection needs an observed excess larger than the complete error.
Compilation, fresh kernel checking, transitive axiom audit and independent
review: NOT_RUN. No novelty claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Quantum.Steering.ThermalWitness

open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat

abbrev Vector := Fin 3 → ℝ

def correlation (response bloch : Vector) : ℝ := -(dot response bloch) / 3

def hiddenBound : ℝ := Real.sqrt 3 / 3

/-- The response norm bound follows from its three independent coordinate bounds. -/
theorem response_energy (response : Vector) (bounded : ∀ i, |response i| ≤ 1) :
    dot response response ≤ 3 := by
  calc
    dot response response ≤ ∑ _i : Fin 3, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro i hi
      obtain ⟨lo, up⟩ := abs_le.mp (bounded i)
      have nonnegative := mul_nonneg (sub_nonneg.mpr up)
        (show 0 ≤ 1 + response i by linarith)
      nlinarith
    _ = 3 := by simp

/-- The mathematical witness bound retains both the response and Bloch assumptions. -/
theorem single_hidden_bound (response bloch : Vector)
    (responseBound : ∀ i, |response i| ≤ 1) (blochBound : dot bloch bloch ≤ 1) :
    correlation response bloch ≤ hiddenBound := by
  have cauchy : dot response bloch ^ 2 ≤ dot response response * dot bloch bloch := by
    simpa only [dot, pow_two] using
      Finset.sum_mul_sq_le_sq_mul_sq (Finset.univ : Finset (Fin 3)) response bloch
  have squared : dot response bloch ^ 2 ≤ 3 :=
    cauchy.trans ((mul_le_mul_of_nonneg_left blochBound (dot_self_nonneg response)).trans
      (by simpa only [mul_one] using response_energy response responseBound))
  have rootNonnegative := Real.sqrt_nonneg (3 : ℝ)
  have rootSquared := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 3)
  unfold correlation hiddenBound
  nlinarith

universe u

/-- Mathematical mixture data; identities do not authenticate physical hidden states. -/
structure FiniteHiddenModel (Λ : Type u) [Fintype Λ] where
  weight : Λ → ℝ
  response : Λ → Vector
  bloch : Λ → Vector
  weight_nonnegative : ∀ l, 0 ≤ weight l
  weight_sum : ∑ l, weight l = 1
  response_bound : ∀ l i, |response l i| ≤ 1
  bloch_bound : ∀ l, dot (bloch l) (bloch l) ≤ 1

namespace FiniteHiddenModel

variable {Λ : Type u} [Fintype Λ]

def value (model : FiniteHiddenModel Λ) : ℝ :=
  ∑ l, model.weight l * correlation (model.response l) (model.bloch l)

theorem value_le (model : FiniteHiddenModel Λ) : model.value ≤ hiddenBound := by
  calc
    model.value ≤ ∑ l, model.weight l * hiddenBound := by
      apply Finset.sum_le_sum
      intro l hl
      exact mul_le_mul_of_nonneg_left
        (single_hidden_bound _ _ (model.response_bound l) (model.bloch_bound l))
        (model.weight_nonnegative l)
    _ = (∑ l, model.weight l) * hiddenBound := (Finset.sum_mul _ _ _).symm
    _ = hiddenBound := by rw [model.weight_sum, one_mul]

end FiniteHiddenModel

/-- The idealized thermal-stroke readout, kept distinct from a full engine's net work. -/
def heat (gap bias score : ℝ) : ℝ := gap / 2 * (score - bias)

def classicalHeatBound (gap bias : ℝ) : ℝ := heat gap bias hiddenBound

theorem heat_mono {gap bias first second : ℝ} (positiveGap : 0 ≤ gap)
    (ordered : first ≤ second) : heat gap bias first ≤ heat gap bias second :=
  mul_le_mul_of_nonneg_left (sub_le_sub_right ordered bias) (by positivity)

theorem hidden_heat_bound {Λ : Type u} [Fintype Λ] (model : FiniteHiddenModel Λ)
    {gap bias : ℝ} (positiveGap : 0 ≤ gap) :
    heat gap bias model.value ≤ classicalHeatBound gap bias :=
  heat_mono positiveGap model.value_le

/-- The reference bath bias cancels in the comparison; preparation correlations do not. -/
theorem heat_excess (gap bias score : ℝ) :
    heat gap bias score - classicalHeatBound gap bias = gap / 2 * (score - hiddenBound) := by
  dsimp [heat, classicalHeatBound]
  ring

/-- A finite-model explanation is excluded only after the complete measurement error is paid. -/
theorem robust_exclusion {Λ : Type u} [Fintype Λ]
    (model : FiniteHiddenModel Λ) {gap bias observed error : ℝ}
    (positiveGap : 0 ≤ gap)
    (measurement : |observed - heat gap bias model.value| ≤ error)
    (violation : classicalHeatBound gap bias + error < observed) : False := by
  have actualBound := hidden_heat_bound model positiveGap (bias := bias)
  have errorBound := (abs_le.mp measurement).2
  linarith

/-- A thermodynamic error bound is an affine image of a correlation error bound. -/
theorem heat_error {gap bias first second error : ℝ}
    (positiveGap : 0 ≤ gap) (correlationError : |first - second| ≤ error) :
    |heat gap bias first - heat gap bias second| ≤ gap / 2 * error := by
  have identity : heat gap bias first - heat gap bias second = gap / 2 * (first - second) := by
    dsimp [heat]
    ring
  rw [identity, abs_mul, abs_of_nonneg (by positivity : 0 ≤ gap / 2)]
  exact mul_le_mul_of_nonneg_left correlationError (by positivity)

/-- A concrete strictly violating correlation value, not an asserted experimental state. -/
theorem rational_score_exceeds_hidden_bound : hiddenBound < (4 / 5 : ℝ) := by
  have rootNonnegative := Real.sqrt_nonneg (3 : ℝ)
  have rootSquared := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 3)
  unfold hiddenBound
  nlinarith

/-- A nonpositive level gap must not silently use the increasing-payoff rule. -/
theorem negative_gap_reverses_order :
    heat (-2) 0 0 > heat (-2) 0 1 := by norm_num [heat]

end GRWTSK.Quantum.Steering.ThermalWitness
