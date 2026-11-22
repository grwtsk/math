/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimeWindowHeatSchedule
import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# Error propagation under reverse heat composition

`OrderedHeatSchedule.run` applies the stages in time order. Its inverse
applies the inverse stages in reverse time order. A perturbation at stage
`j` is amplified only by the inverse of the prefix through `j`. This removes
the inverse gains of later stages from the budget for that perturbation.

The spectral specialization allows a separate chart per prime position.
Each chart must identify the same state metric with the Euclidean metric.
Only the actual calibrated times enter the bound. Recovery of an arithmetic
source still needs a full-state encoder and a decoder on its image.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.OperatorTheory.InverseHeatSchedule

open OrderedHeatSchedule (run)
open GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat

variable {X : Type*}

/-- Invert the last step first, then the previous prefix. -/
def undo (back : ℕ → X → X) : ℕ → X → X
  | 0 => id
  | n + 1 => fun x => undo back n (back n x)

theorem undo_run (forward back : ℕ → X → X) (initial : X) (n : ℕ)
    (left : ∀ j < n, Function.LeftInverse (back j) (forward j)) :
    undo back n (run forward initial n) = initial := by
  induction n with
  | zero => rfl
  | succ n ih =>
    change undo back n (back n (forward n (run forward initial n))) = initial
    rw [left n (Nat.lt_succ_self n)]
    exact ih (fun j hj => left j (Nat.lt_trans hj (Nat.lt_succ_self n)))

theorem undo_dist_le [PseudoMetricSpace X] (back : ℕ → X → X) (gain : ℕ → ℝ)
    (n : ℕ) (x y : X) (nonneg : ∀ j < n, 0 ≤ gain j)
    (stepBound : ∀ j < n, ∀ a b, dist (back j a) (back j b) ≤ gain j * dist a b) :
    dist (undo back n x) (undo back n y) ≤
      (∏ j ∈ Finset.range n, gain j) * dist x y := by
  induction n generalizing x y with
  | zero => simp [undo]
  | succ n ih =>
    have prior (j : ℕ) (hj : j < n) : j < n + 1 :=
      Nat.lt_trans hj (Nat.lt_succ_self n)
    have product_nonneg : 0 ≤ ∏ j ∈ Finset.range n, gain j :=
      Finset.prod_nonneg fun j hj => nonneg j (prior j (Finset.mem_range.mp hj))
    rw [undo, Finset.prod_range_succ, mul_assoc]
    exact (ih (back n x) (back n y) (fun j hj => nonneg j (prior j hj))
      (fun j hj => stepBound j (prior j hj))).trans
        (mul_le_mul_of_nonneg_left (stepBound n (Nat.lt_succ_self n) x y) product_nonneg)

/-- A local error is amplified by its own inverse and those before it. -/
theorem undo_error_le [PseudoMetricSpace X] (forward back : ℕ → X → X)
    (gain error : ℕ → ℝ) (observed : ℕ → X) (initial : X) (n : ℕ)
    (left : ∀ j < n, Function.LeftInverse (back j) (forward j))
    (nonneg : ∀ j < n, 0 ≤ gain j)
    (stepBound : ∀ j < n, ∀ x y, dist (back j x) (back j y) ≤ gain j * dist x y)
    (localError : ∀ j < n, dist (observed (j + 1)) (forward j (observed j)) ≤ error j) :
    dist (undo back n (observed n)) initial ≤ dist (observed 0) initial +
      ∑ j ∈ Finset.range n, (∏ k ∈ Finset.range (j + 1), gain k) * error j := by
  induction n with
  | zero => simp [undo]
  | succ n ih =>
    have prior (j : ℕ) (hj : j < n) : j < n + 1 :=
      Nat.lt_trans hj (Nat.lt_succ_self n)
    have prev := ih (fun j hj => left j (prior j hj)) (fun j hj => nonneg j (prior j hj))
      (fun j hj => stepBound j (prior j hj)) (fun j hj => localError j (prior j hj))
    have current := undo_dist_le back gain (n + 1) (observed (n + 1))
      (forward n (observed n)) nonneg stepBound
    have cancel : undo back (n + 1) (forward n (observed n)) = undo back n (observed n) := by
      change undo back n (back n (forward n (observed n))) = undo back n (observed n)
      rw [left n (Nat.lt_succ_self n)]
    rw [cancel] at current
    have product_nonneg : 0 ≤ ∏ j ∈ Finset.range (n + 1), gain j :=
      Finset.prod_nonneg fun j hj => nonneg j (Finset.mem_range.mp hj)
    have grow := mul_le_mul_of_nonneg_left (localError n (Nat.lt_succ_self n)) product_nonneg
    have triangle := dist_triangle (undo back (n + 1) (observed (n + 1)))
      (undo back n (observed n)) initial
    rw [Finset.sum_range_succ]
    linarith

section Spectral

variable {ι E : Type*} [Fintype ι] [AddCommGroup E] [Module ℝ E]

/-- Inverse time in the same chart cancels one finite spectral heat map. -/
theorem heat_leftInverse (model : Model ι E) (s : ℝ) :
    Function.LeftInverse (model.heat (-s)) (model.heat s) := by
  intro x
  have identity : (model.heat (-s)).comp (model.heat s) = LinearMap.id := by
    rw [← model.heat_add, neg_add_cancel, model.heat_zero]
  exact DFunLike.congr_fun identity x

/-- Isometric Euclidean coordinates let each stage use its own orthonormal
chart while bounding distances in the same physical space. -/
theorem inverse_heat_dist_le [PseudoMetricSpace E] (model : Model ι E)
    (metric : Isometry (fun x : E => (WithLp.toLp 2 (model.frame x) : EuclideanSpace ℝ ι)))
    (s bound : ℝ) (exposureBound : ∀ i, s * model.eigenvalue i ≤ bound) (x y : E) :
    dist (model.heat (-s) x) (model.heat (-s) y) ≤ Real.exp bound * dist x y := by
  have pointwise (i : ι) :
      dist (model.frame (model.heat (-s) x) i) (model.frame (model.heat (-s) y) i) ≤
        Real.exp bound * dist (model.frame x i) (model.frame y i) := by
    rw [model.heat_coordinates, model.heat_coordinates, Real.dist_eq, Real.dist_eq]
    change |Real.exp (-(-s) * model.eigenvalue i) * model.frame x i -
      Real.exp (-(-s) * model.eigenvalue i) * model.frame y i| ≤
        Real.exp bound * |model.frame x i - model.frame y i|
    rw [neg_neg, ← mul_sub, abs_mul, abs_of_pos (Real.exp_pos _)]
    exact mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr (exposureBound i)) (abs_nonneg _)
  apply (sq_le_sq₀ dist_nonneg (mul_nonneg (Real.exp_nonneg _) dist_nonneg)).mp
  rw [mul_pow, ← metric.dist_eq (model.heat (-s) x) (model.heat (-s) y),
    ← metric.dist_eq x y, EuclideanSpace.dist_sq_eq, EuclideanSpace.dist_sq_eq, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i _
  rw [← mul_pow]
  exact pow_le_pow_left₀ dist_nonneg (pointwise i) 2

theorem undo_heat_run (model : ℕ → Model ι E) (time : ℕ → ℝ) (initial : E) (n : ℕ) :
    undo (fun j => (model j).heat (-time j)) n
      (run (fun j => (model j).heat (time j)) initial n) = initial :=
  undo_run _ _ initial n (fun j _ => heat_leftInverse (model j) (time j))

theorem undo_encoded_source {Source : Type*} (model : ℕ → Model ι E) (time : ℕ → ℝ)
    (encode : Source → E) (decode : E → Source) (roundTrip : Function.LeftInverse decode encode)
    (source : Source) (n : ℕ) :
    decode (undo (fun j => (model j).heat (-time j)) n
      (run (fun j => (model j).heat (time j)) (encode source) n)) = source := by
  rw [undo_heat_run]
  exact roundTrip source

theorem undo_heat_error_le [PseudoMetricSpace E] (model : ℕ → Model ι E)
    (time bound error : ℕ → ℝ) (observed : ℕ → E) (initial : E) (n : ℕ)
    (metric : ∀ j < n, Isometry
      (fun x : E => (WithLp.toLp 2 ((model j).frame x) : EuclideanSpace ℝ ι)))
    (modalBound : ∀ j < n, ∀ i, time j * (model j).eigenvalue i ≤ bound j)
    (localError : ∀ j < n,
      dist (observed (j + 1)) ((model j).heat (time j) (observed j)) ≤ error j) :
    dist (undo (fun j => (model j).heat (-time j)) n (observed n)) initial ≤
      dist (observed 0) initial +
        ∑ j ∈ Finset.range n, Real.exp (∑ k ∈ Finset.range (j + 1), bound k) * error j := by
  simp only [Real.exp_sum]
  exact undo_error_le (fun j => (model j).heat (time j)) (fun j => (model j).heat (-time j))
    (fun j => Real.exp (bound j)) error observed initial n
    (fun j _ => heat_leftInverse (model j) (time j)) (fun _ _ => Real.exp_nonneg _)
    (fun j hj => inverse_heat_dist_le (model j) (metric j hj) (time j) (bound j) (modalBound j hj))
    localError

/-- Prefix-dependent inverse budget for calibrated prime-window dwell in
possibly varying Euclidean charts. `rateBound j` bounds the spectrum at
prime position `j`. -/
theorem prime_window_undo_error_le [PseudoMetricSpace E]
    (schedule : GRWTSK.NumberTheory.PrimeWindowHeatSchedule.Schedule)
    (model : ℕ → Model ι E) (rateBound error : ℕ → ℝ) (observed : ℕ → E) (initial : E)
    (metric : ∀ j < 95, Isometry
      (fun x : E => (WithLp.toLp 2 ((model j).frame x) : EuclideanSpace ℝ ι)))
    (rate : ∀ j < 95, ∀ i, (model j).eigenvalue i ≤ rateBound j)
    (localError : ∀ j < 95,
      dist (observed (j + 1)) ((model j).heat (schedule.time j) (observed j)) ≤ error j) :
    dist (undo (fun j => (model j).heat (-schedule.time j)) 95 (observed 95)) initial ≤
      dist (observed 0) initial +
        ∑ j ∈ Finset.range 95,
          Real.exp (∑ k ∈ Finset.range (j + 1), schedule.time k * rateBound k) * error j :=
  undo_heat_error_le model schedule.time (fun k => schedule.time k * rateBound k) error
    observed initial 95 metric
    (fun j hj i => mul_le_mul_of_nonneg_left (rate j hj i) (schedule.time_bounds j).1) localError

end Spectral

/-- Two positive heat stages in different bases recover in reverse order.
Applying the inverse stages chronologically gives a different vector. -/
theorem reverse_order_control :
    let heated := OrderedHeatSchedule.mixedStage (1 / 2)
      (OrderedHeatSchedule.axisStage (1 / 2) (0, 1))
    OrderedHeatSchedule.axisStage 2 (OrderedHeatSchedule.mixedStage 2 heated) = (0, 1) ∧
      OrderedHeatSchedule.mixedStage 2 (OrderedHeatSchedule.axisStage 2 heated) = (-3 / 16, 17 / 16) := by
  norm_num [OrderedHeatSchedule.axisStage, OrderedHeatSchedule.mixedStage]

/-- In a growing resolution tower each step may heat a different mode. -/
def disjointRates {n : ℕ} (stage : ℕ) (mode : Fin n) : ℝ :=
  if stage = mode.val then 1 else 0

theorem disjointRates_max {n j : ℕ} (hj : j < n) :
    (∀ i : Fin n, disjointRates j i ≤ 1) ∧
      ∃ i : Fin n, disjointRates j i = 1 := by
  refine ⟨fun i => ?_, ⟨⟨j, hj⟩, by simp [disjointRates]⟩⟩
  by_cases h : j = i.val <;> simp [disjointRates, h]

theorem disjointRates_exposure {n : ℕ} (mode : Fin n) :
    OrderedHeatSchedule.exposure (fun _ => 1) disjointRates n mode = 1 := by
  simp [OrderedHeatSchedule.exposure, disjointRates, Finset.mem_range.mpr mode.isLt]

/-- The sum of the per-stage maximum exposures is n. The exact full inverse
gain nonetheless admits the same bound at every resolution. -/
theorem disjointRates_uniform_inverse {n : ℕ} (x y : Fin n → ℝ) :
    let exposure := OrderedHeatSchedule.exposure (fun _ => 1) disjointRates n
    dist (spectralHeat exposure (-1) x) (spectralHeat exposure (-1) y) ≤
      Real.exp 1 * dist x y :=
  OrderedHeatSchedule.recover_dist_le _ 1 (fun i => (disjointRates_exposure i).le) x y

end GRWTSK.OperatorTheory.InverseHeatSchedule
