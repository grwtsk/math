/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.WeightedConjugatePairing
import GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation
import Mathlib.Analysis.Normed.Module.Basic

/-!
# Continuity and dense detection for the full weighted signed pairing

RP-OC-02, research issue #51, W1 and W4; formalization coordination: math#1801.
Reuse the existing signed pairing and OCERT-1 dense/enclosure consumers (#1807).
A weighted linear evaluation model supplies an actual summable majorant, not
positivity or an arithmetic divisor. Its quadratic value is explicitly the real
part; Hermitian symmetry is not assumed or claimed by this module.

For `M = sum m_i w_i^2`, the existing whole-divisor estimate gives
`|q(y)-q(x)| <= M (2 norm(x) norm(y-x) + norm(y-x)^2)`.
An explicit epsilon-delta argument proves continuity, rather than taking it as
an additional hypothesis. Dense detection then uses the canonical OCERT-1
results. Density, sound shrinking enclosures and exhaustive scheduling remain
explicit hypotheses. A finite prefix is not an exhaustive certificate.

This is a standard analytical consequence, not a novelty claim. The normed test
space and its Fourier evaluation model must still be constructed for arithmetic
use; completion is not needed here. No Gaussian inversion, pole removal, prime
truncation, source explicit formula or GRH conclusion is introduced.

Source candidate: elaboration, fresh kernel replay, transitive axiom audit and
independent analytical review NOT_RUN. Source basis: math main
5f66eb82a40921253664f53602851091ccd01d94, Lean 4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612. See adjacent theorem-local provenance.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.FunctionalAnalysis.WeightedConjugatePairing

/-- A normed test space with a linear evaluation map and a summable envelope.
The reflection need not be involutive for norm bounds. Arithmetic identification
and Hermitian symmetry require additional data, not fields silently supplied here. -/
structure EvaluationModel (ι E : Type*) [NormedAddCommGroup E] [NormedSpace ℂ E] where
  multiplicity : ι → ℝ
  weight : ι → ℝ
  reflect : ι → ι
  transform : E →ₗ[ℂ] (ι → ℂ)
  multiplicity_nonneg : ∀ i, 0 ≤ multiplicity i
  weight_nonneg : ∀ i, 0 ≤ weight i
  weight_reflect : ∀ i, weight (reflect i) = weight i
  moment_summable : Summable (fun i => multiplicity i * weight i ^ 2)
  transform_le : ∀ x i, ‖transform x i‖ ≤ ‖x‖ * weight i

namespace EvaluationModel

variable {ι E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

/-- The full summable majorant mass, not the signed quadratic value. -/
def mass (D : EvaluationModel ι E) : ℝ :=
  ∑' i, D.multiplicity i * D.weight i ^ 2

/-- The full signed quadratic value before taking its real part. -/
def value (D : EvaluationModel ι E) (x : E) : ℂ :=
  pairing D.multiplicity D.reflect (D.transform x) (D.transform x)

/-- Real part of the full signed pairing, not a positive norm-square surrogate. -/
def quadratic (D : EvaluationModel ι E) (x : E) : ℝ := (D.value x).re

theorem mass_nonneg (D : EvaluationModel ι E) : 0 ≤ D.mass := by
  exact tsum_nonneg fun i => mul_nonneg (D.multiplicity_nonneg i) (sq_nonneg _)

/-- Absolute convergence licenses interpreting the totalized sum as a series. -/
theorem summable_norm_value (D : EvaluationModel ι E) (x : E) :
    Summable (fun i => ‖term D.multiplicity D.reflect (D.transform x) (D.transform x) i‖) := by
  exact summable_norm_term D.multiplicity D.weight D.reflect
    (D.transform x) (D.transform x) ‖x‖ ‖x‖ D.multiplicity_nonneg
    D.weight_nonneg D.weight_reflect (norm_nonneg x)
    (D.transform_le x) (D.transform_le x) D.moment_summable

/-- Uniform control of the full complex value, without asserting positivity. -/
theorem norm_value_le (D : EvaluationModel ι E) (x : E) :
    ‖D.value x‖ ≤ D.mass * ‖x‖ ^ 2 := by
  have h := norm_pairing_le D.multiplicity D.weight D.reflect
    (D.transform x) (D.transform x) ‖x‖ ‖x‖ D.mass D.multiplicity_nonneg
    D.weight_nonneg D.weight_reflect (norm_nonneg x) (norm_nonneg x)
    (D.transform_le x) (D.transform_le x) D.moment_summable (le_refl D.mass)
  simpa only [value, pow_two, mul_assoc] using h

theorem quadratic_zero (D : EvaluationModel ι E) : D.quadratic 0 = 0 := by
  simp [quadratic, value, pairing, term]

/-- Quantitative continuity from the same majorant used for absolute convergence. -/
theorem abs_quadratic_sub_le (D : EvaluationModel ι E) (x y : E) :
    |D.quadratic y - D.quadratic x| ≤
      D.mass * (2 * ‖x‖ * ‖y - x‖ + ‖y - x‖ ^ 2) := by
  have h := norm_pairing_add_self_sub_le D.multiplicity D.weight D.reflect
    (D.transform x) (D.transform (y - x)) ‖x‖ ‖y - x‖ D.mass
    D.multiplicity_nonneg D.weight_nonneg D.weight_reflect
    (norm_nonneg x) (norm_nonneg (y - x))
    (D.transform_le x) (D.transform_le (y - x))
    D.moment_summable (le_refl D.mass)
  have hmap : D.transform x + D.transform (y - x) = D.transform y := by
    rw [map_sub]
    abel
  rw [hmap] at h
  calc
    |D.quadratic y - D.quadratic x| = |(D.value y - D.value x).re| := by
      simp only [quadratic, Complex.sub_re]
    _ ≤ ‖D.value y - D.value x‖ := Complex.abs_re_le_norm _
    _ ≤ D.mass * (2 * ‖x‖ * ‖y - x‖ + ‖y - x‖ ^ 2) := h

/-- Continuity is proved from weighted evaluation, not a new source assumption. -/
theorem continuous_quadratic (D : EvaluationModel ι E) : Continuous D.quadratic := by
  apply continuous_iff_continuousAt.mpr
  intro x
  rw [Metric.continuousAt_iff]
  intro epsilon hepsilon
  let C : ℝ := D.mass * (2 * ‖x‖ + 1)
  have hC : 0 ≤ C := mul_nonneg D.mass_nonneg (by positivity)
  have hC1 : 0 < C + 1 := by linarith
  refine ⟨min 1 (epsilon / (C + 1)),
    lt_min (by norm_num) (div_pos hepsilon hC1), ?_⟩
  intro y hy
  have hr : ‖y - x‖ < min 1 (epsilon / (C + 1)) := by
    simpa only [dist_eq_norm] using hy
  have hr1 : ‖y - x‖ ≤ 1 := (lt_of_lt_of_le hr (min_le_left _ _)).le
  have hrepsilon : ‖y - x‖ < epsilon / (C + 1) :=
    lt_of_lt_of_le hr (min_le_right _ _)
  have hsmall : (C + 1) * ‖y - x‖ < epsilon := by
    have h := (lt_div_iff₀ hC1).mp hrepsilon
    nlinarith
  have hsquare : ‖y - x‖ ^ 2 ≤ ‖y - x‖ := by
    nlinarith [norm_nonneg (y - x)]
  have hreduce : D.mass * (2 * ‖x‖ * ‖y - x‖ + ‖y - x‖ ^ 2) ≤
      C * ‖y - x‖ := by
    calc
      _ ≤ D.mass * (2 * ‖x‖ * ‖y - x‖ + ‖y - x‖) :=
        mul_le_mul_of_nonneg_left (by linarith) D.mass_nonneg
      _ = C * ‖y - x‖ := by dsimp [C]; ring
  have hlast : C * ‖y - x‖ < epsilon := by
    nlinarith [norm_nonneg (y - x)]
  rw [Real.dist_eq]
  exact lt_of_le_of_lt ((D.abs_quadratic_sub_le x y).trans hreduce) hlast

/-- Every strictly negative value is seen by any genuinely dense dictionary. -/
theorem exists_negative_dictionary (D : EvaluationModel ι E) {Code : Type*}
    (encode : Code → E) (dense : DenseRange encode) {x : E}
    (negative : D.quadratic x < 0) : ∃ d : Code, D.quadratic (encode d) < 0 := by
  exact DenseNonnegativeApproximation.exists_negative_on_dense_range
    D.quadratic encode dense D.continuous_quadratic negative

/-- The entire dense dictionary suffices; finite prefixes or basis values do not. -/
theorem nonneg_iff_dictionary (D : EvaluationModel ι E) {Code : Type*}
    (encode : Code → E) (dense : DenseRange encode) :
    (∀ x : E, 0 ≤ D.quadratic x) ↔ ∀ d : Code, 0 ≤ D.quadratic (encode d) := by
  exact DenseNonnegativeApproximation.nonneg_iff_on_dense_range
    D.quadratic encode dense D.continuous_quadratic

/-- A supplied exhaustive schedule eventually contains a negative upper bound.
This is an existence theorem, not execution, a time bound, or an enclosure engine. -/
theorem exists_negative_scheduled_enclosure (D : EvaluationModel ι E) {Code : Type*}
    (encode : Code → E) (dense : DenseRange encode) (lower upper : Code → ℕ → ℝ)
    (encloses : ∀ d k, lower d k ≤ D.quadratic (encode d) ∧
      D.quadratic (encode d) ≤ upper d k)
    (smallWidth : ∀ d (delta : ℝ), 0 < delta →
      ∃ k : ℕ, upper d k - lower d k < delta)
    (schedule : ℕ → Code × ℕ) (fair : Function.Surjective schedule)
    (negative : ∃ x : E, D.quadratic x < 0) :
    ∃ n : ℕ, upper (schedule n).1 (schedule n).2 < 0 := by
  exact DenseNonnegativeApproximation.exists_negative_at_surjective_schedule
    D.quadratic encode dense D.continuous_quadratic lower upper encloses
    smallWidth schedule fair negative

end EvaluationModel
end GRWTSK.FunctionalAnalysis.WeightedConjugatePairing
