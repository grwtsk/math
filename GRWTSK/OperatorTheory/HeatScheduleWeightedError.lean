/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.OrderedHeatSchedule
import GRWTSK.NumberTheory.PrimeWindowHeatSchedule

/-!
# Stage-dependent propagation of heat readout errors

A disturbance is inserted after its stage. Only later stages can attenuate
that disturbance. The recurrence also accounts for error in the initial
state. It applies in one state metric even when the stages do not commute.
-/

set_option autoImplicit false

namespace GRWTSK.OperatorTheory.OrderedHeatSchedule

/-- The propagated error after n stages, with stage-wise Lipschitz gains. -/
def propagatedError (gain error : ℕ → ℝ) (initial : ℝ) : ℕ → ℝ
  | 0 => initial
  | n + 1 => gain n * propagatedError gain error initial n + error n

theorem run_weighted_error_le {X : Type*} [PseudoMetricSpace X]
    (stage : ℕ → X → X) (initial : X) (observed : ℕ → X)
    (gain error : ℕ → ℝ) (n : ℕ)
    (nonnegative : ∀ j < n, 0 ≤ gain j)
    (lip : ∀ j < n, ∀ x y, dist (stage j x) (stage j y) ≤ gain j * dist x y)
    (localError : ∀ j < n, dist (observed (j + 1)) (stage j (observed j)) ≤ error j) :
    dist (observed n) (run stage initial n) ≤
      propagatedError gain error (dist (observed 0) initial) n := by
  induction n with
  | zero => exact le_rfl
  | succ n ih =>
    have step := Nat.lt_succ_self n
    have prev := ih (fun j h => nonnegative j (h.trans step))
      (fun j h => lip j (h.trans step)) (fun j h => localError j (h.trans step))
    calc
      _ ≤ dist (observed (n + 1)) (stage n (observed n)) +
          dist (stage n (observed n)) (stage n (run stage initial n)) :=
        dist_triangle _ _ _
      _ ≤ error n + gain n * propagatedError gain error (dist (observed 0) initial) n :=
        add_le_add (localError n step)
          ((lip n step _ _).trans (mul_le_mul_of_nonneg_left prev (nonnegative n step)))
      _ = _ := by rw [propagatedError, add_comm]

/-- The scalar heat recurrence attains the bound when all disturbances
and the initial discrepancy are nonnegative and aligned on one mode. -/
theorem scalar_weighted_error_sharp (gain error : ℕ → ℝ) (initialError : ℝ)
    (initial_nonnegative : 0 ≤ initialError) (gain_nonnegative : ∀ j, 0 ≤ gain j)
    (error_nonnegative : ∀ j, 0 ≤ error j) (n : ℕ) :
    dist (propagatedError gain error initialError n)
        (run (fun j (x : ℝ) => gain j * x) 0 n) =
      propagatedError gain error (dist initialError 0) n := by
  have zeroRun (m : ℕ) : run (fun j (x : ℝ) => gain j * x) 0 m = 0 := by
    induction m with
    | zero => rfl
    | succ m ih => rw [run, ih, mul_zero]
  have nonnegative (m : ℕ) : 0 ≤ propagatedError gain error initialError m := by
    induction m with
    | zero => exact initial_nonnegative
    | succ m ih =>
      exact add_nonneg (mul_nonneg (gain_nonnegative m) ih) (error_nonnegative m)
  rw [zeroRun, Real.dist_eq, Real.dist_eq, sub_zero, sub_zero,
    abs_of_nonneg (nonnegative n), abs_of_nonneg initial_nonnegative]

/-- The same unit error gives different bounds at the first and last
stage of a two-stage schedule with attenuation one half. -/
theorem early_late_error_control :
    propagatedError (fun _ => (1 / 2 : ℝ)) (fun j => if j = 0 then 1 else 0) 0 2 = 1 / 2 ∧
    propagatedError (fun _ => (1 / 2 : ℝ)) (fun j => if j = 1 then 1 else 0) 0 2 = 1 := by
  norm_num [propagatedError]

end GRWTSK.OperatorTheory.OrderedHeatSchedule

namespace GRWTSK.NumberTheory.PrimeWindowHeatSchedule

open GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat
open GRWTSK.NumberTheory.OrderedPrimeGroupAddress (PrimeIndex)
open GRWTSK.OperatorTheory.OrderedHeatSchedule

variable {ι : Type*} [Fintype ι]

/-- A lower bound on each stage spectrum gives its gain in the common
sup metric, including stages that leave a zero mode undamped. -/
theorem evolve_weighted_error_le (schedule : Schedule) (spectrum : PrimeIndex → ι → ℝ)
    (floor : ℕ → ℝ) (lower : ∀ j < 95, ∀ i, floor j ≤ spectrum (primeAt schedule.window j) i)
    (initial : ι → ℝ) (observed : ℕ → ι → ℝ) (error : ℕ → ℝ)
    (localError : ∀ j < 95, dist (observed (j + 1))
      (schedule.step spectrum j (observed j)) ≤ error j) :
    dist (observed 95) (schedule.evolve spectrum initial) ≤
      propagatedError (fun j => Real.exp (-schedule.time j * floor j)) error
        (dist (observed 0) initial) 95 := by
  apply run_weighted_error_le _ _ _ _ _ _ (fun _ _ => Real.exp_nonneg _) _ localError
  intro j hj x y
  apply (dist_pi_le_iff (mul_nonneg (Real.exp_nonneg _) dist_nonneg)).2
  intro i
  rw [Real.dist_eq]
  let a := Real.exp (-schedule.time j * spectrum (primeAt schedule.window j) i)
  change |a * x i - a * y i| ≤ _
  rw [← mul_sub, abs_mul, abs_of_pos (Real.exp_pos _)]
  have coefficient : Real.exp (-schedule.time j * spectrum (primeAt schedule.window j) i) ≤
      Real.exp (-schedule.time j * floor j) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonpos_left (lower j hj i)
      (neg_nonpos.mpr (schedule.time_bounds j).1))
  have component : |x i - y i| ≤ dist x y := by
    rw [← Real.dist_eq]
    exact dist_le_pi_dist x y i
  exact mul_le_mul coefficient component (abs_nonneg _) (Real.exp_nonneg _)

end GRWTSK.NumberTheory.PrimeWindowHeatSchedule
