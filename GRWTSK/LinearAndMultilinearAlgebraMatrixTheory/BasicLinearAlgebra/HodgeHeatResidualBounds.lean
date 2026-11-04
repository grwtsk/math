/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FinitePositiveHodgeHeat
import GRWTSK.FunctionsOfAComplexVariable.ApproximationResidualTransfer

/-!
# Hodge heat as an error-controlled approximation, not a zero-removal oracle

Reuse the existing finite positive two-term Hodge model, its exact heat map,
coordinate sectors and quadratic contraction. Heat contracts perturbations but
also changes the signal. The exact coordinate bias is (1-exp(-t*a_i^2))*|x_i|.
Numerical perturbations, this bias, and the omitted source tail are separately
charged before a strict multiplicative residual may be asserted.

A finite synthesis map returns coordinate information to an actual scalar
function. Its basis norms supply the missing evaluation price: small coordinate
energy alone is not silently interpreted as a uniform analytic residual.
The final theorem is a concrete source-return consumer for filtered models.

Comparison to Rodgers--Tao (arXiv:1801.05914) and Polymath (arXiv:1904.12438):
their H_t coefficient multiplier exp(t*u^2) has the opposite time sign to
this dissipative exp(-t*a^2). The positive-time inverse multiplier amplifies
errors. No entire-function identification, zero-motion theorem, growing-mode
limit, Hodge conjecture, spectral gap or arithmetic cancellation is inferred.
The harmonic-sector counterexample demonstrates a permanent residual floor.

Compilation, fresh kernel checking, transitive axiom auditing and independent
analytical review: NOT_RUN. Existing source inspected at
7bc6fe38019589284aa5b2d12833c7cae4cecfa4. No novelty claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.Hodge.HeatApproximation

open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
open GRWTSK.Analysis.Division

universe u v
variable {ι : Type u} {Z : Type v}

def gain (a : ι → ℝ) (t : ℝ) (i : ι) : ℝ := Real.exp (-t * a i ^ 2)

theorem gain_positive (a : ι → ℝ) (t : ℝ) (i : ι) : 0 < gain a t i := Real.exp_pos _

theorem gain_le_one (a : ι → ℝ) {t : ℝ} (time : 0 ≤ t) (i : ι) :
    gain a t i ≤ 1 := by
  apply Real.exp_le_one_iff.mpr
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr time) (sq_nonneg _)

theorem coordinate_difference (a x y : ι → ℝ) (t : ℝ) (i : ι) :
    heat a t x i - heat a t y i = gain a t i * (x i - y i) := by
  change Real.exp (-t * a i ^ 2) * x i - Real.exp (-t * a i ^ 2) * y i = _
  dsimp [gain]
  ring

/-- The exact absolute perturbation price, before weakening it to a contraction. -/
theorem coordinate_error (a x y : ι → ℝ) (t : ℝ) (i : ι) :
    |heat a t x i - heat a t y i| = gain a t i * |x i - y i| := by
  rw [coordinate_difference, abs_mul, abs_of_pos (gain_positive a t i)]

theorem coordinate_contracts (a x y : ι → ℝ) {t : ℝ} (time : 0 ≤ t) (i : ι) :
    |heat a t x i - heat a t y i| ≤ |x i - y i| := by
  rw [coordinate_error]
  simpa using mul_le_mul_of_nonneg_right (gain_le_one a time i) (abs_nonneg _)

/-- Reuse quadratic Hodge contraction on the actual difference vector. -/
theorem difference_energy_contracts [Fintype ι] (a x y : ι → ℝ)
    {t : ℝ} (time : 0 ≤ t) :
    dot (heat a t x - heat a t y) (heat a t x - heat a t y) ≤ dot (x - y) (x - y) := by
  simpa only [map_sub] using heat_contracts a (x - y) time

/-- Contracting noise is not the same as leaving the underlying source unchanged. -/
theorem bias_exact (a x : ι → ℝ) {t : ℝ} (time : 0 ≤ t) (i : ι) :
    |heat a t x i - x i| = (1 - gain a t i) * |x i| := by
  have h : gain a t i - 1 ≤ 0 := sub_nonpos.mpr (gain_le_one a time i)
  have identity : heat a t x i - x i = (gain a t i - 1) * x i := by
    change Real.exp (-t * a i ^ 2) * x i - x i = _
    dsimp [gain]
    ring
  rw [identity, abs_mul, abs_of_nonpos h]
  ring

/-- Both the measured perturbation and the deterministic filtering bias survive. -/
theorem bias_and_noise (a exact measured : ι → ℝ) {t : ℝ}
    (time : 0 ≤ t) (i : ι) :
    |heat a t measured i - exact i| ≤
      gain a t i * |measured i - exact i| + (1 - gain a t i) * |exact i| := by
  calc
    |heat a t measured i - exact i| ≤
        |heat a t measured i - heat a t exact i| + |heat a t exact i - exact i| :=
      abs_sub_le _ _ _
    _ = _ := by rw [coordinate_error, bias_exact a exact time i]

/-- Finite inverse heat has the explicitly opposite exponential gain. -/
theorem inverse_error (a x y : ι → ℝ) (t : ℝ) (i : ι) :
    |heat a (-t) x i - heat a (-t) y i| =
      Real.exp (t * a i ^ 2) * |x i - y i| := by
  rw [coordinate_error]
  simp [gain]

/-- A zero Laplacian mode is fixed, no matter how long the heat step runs. -/
theorem harmonic_coordinate (a x : ι → ℝ) (t : ℝ) (i : ι) (zero : a i = 0) :
    heat a t x i = x i := by
  simp [heat, functionalCalculus, diagonal, zero]

/-- Retain the existing exact complementary-sector decomposition. -/
theorem sector_energy [Fintype ι] (a x : ι → ℝ) (mask : ι → Bool) :
    energy a x = energy a (maskProjector mask x) +
      energy a (maskProjector (complementMask mask) x) := energy_mask_split a x mask

/-- Evaluation from finite real coordinates to a complex-valued function. -/
def synthesis [Fintype ι] (basis : ι → Z → ℂ) (coefficient : ι → ℝ) (z : Z) : ℂ :=
  ∑ i, (coefficient i : ℂ) * basis i z

/-- This explicit price prevents replacing pointwise errors by uncalibrated coefficient energy. -/
theorem synthesis_error [Fintype ι] (basis : ι → Z → ℂ) (x y : ι → ℝ) (z : Z) :
    ‖synthesis basis x z - synthesis basis y z‖ ≤
      ∑ i, |x i - y i| * ‖basis i z‖ := by
  unfold synthesis
  rw [← Finset.sum_sub_distrib]
  refine (norm_sum_le _ _).trans ?_
  apply Finset.sum_le_sum
  intro i hi
  rw [← sub_mul, ← Complex.ofReal_sub, norm_mul, Complex.norm_real, Real.norm_eq_abs]

def filterBudget [Fintype ι] (basis : ι → Z → ℂ) (a exact measured : ι → ℝ)
    (t : ℝ) (z : Z) : ℝ :=
  ∑ i, (gain a t i * |measured i - exact i| +
    (1 - gain a t i) * |exact i|) * ‖basis i z‖

theorem filtered_synthesis_error [Fintype ι] (basis : ι → Z → ℂ)
    (a exact measured : ι → ℝ) {t : ℝ} (time : 0 ≤ t) (z : Z) :
    ‖synthesis basis exact z - synthesis basis (heat a t measured) z‖ ≤
      filterBudget basis a exact measured t z := by
  refine (synthesis_error basis exact (heat a t measured) z).trans ?_
  apply Finset.sum_le_sum
  intro i hi
  apply mul_le_mul_of_nonneg_right _ (norm_nonneg _)
  simpa only [abs_sub_comm] using bias_and_noise a exact measured time i

/-- The true source also pays its complete omitted-coordinate or analytic tail. -/
theorem complete_source_error [Fintype ι] (source : Z → ℂ) (basis : ι → Z → ℂ)
    (a exact measured : ι → ℝ) {t tail : ℝ} (time : 0 ≤ t) (z : Z)
    (sourceTail : ‖source z - synthesis basis exact z‖ ≤ tail) :
    ‖source z - synthesis basis (heat a t measured) z‖ ≤
      tail + filterBudget basis a exact measured t z :=
  (norm_sub_le_norm_sub_add_norm_sub _ (synthesis basis exact z) _).trans
    (add_le_add sourceTail (filtered_synthesis_error basis a exact measured time z))

/-- Hodge heat enters the source residual only through the fully charged synthesis return. -/
theorem residual_after_filter [Fintype ι] (source : Z → ℂ) (basis : ι → Z → ℂ)
    (a exact measured : ι → ℝ) {t tail ε M : ℝ} (time : 0 ≤ t)
    (z : Z) (inverse : ℂ)
    (sourceTail : ‖source z - synthesis basis exact z‖ ≤ tail)
    (modelResidual : ‖residual (synthesis basis (heat a t measured) z) inverse 1‖ ≤ ε)
    (inverseBound : ‖inverse‖ ≤ M) :
    ‖residual (source z) inverse 1‖ ≤
      ε + (tail + filterBudget basis a exact measured t z) * M :=
  Approximation.residual_source_bound modelResidual
    (complete_source_error source basis a exact measured time z sourceTail) inverseBound

/-- Heat alone cannot remove a harmonic component representing a unit residual. -/
theorem harmonic_residual_floor (t : ℝ) :
    |heat (fun _ : Unit => 0) t (fun _ : Unit => 1) ()| = 1 := by
  simp [heat, functionalCalculus, diagonal]

end GRWTSK.Analysis.Hodge.HeatApproximation
