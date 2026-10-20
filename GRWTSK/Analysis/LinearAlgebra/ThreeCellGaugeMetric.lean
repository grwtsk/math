/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib's first isomorphism theorem and the existing finite Cech maps.
Formalization assistance: OpenAI.

The actual mean-zero gauge quotient, its least-six-energy representative,
and its positive reduced quadratic energy. The metric is derived by an exact
Pythagorean identity, not inherited from mere equality of reduced data.
This is a finite real coefficient construction, not a geometric gauge quotient,
an intrinsic Hodge metric, an integral projection, or Lean acceptance.
Unelaborated source proof scripts. Historical definitions are unchanged.
-/
import GRWTSK.Analysis.LinearAlgebra.ThreeCellHodgeGauge
import Mathlib.LinearAlgebra.Isomorphisms

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.LinearAlgebra.ThreeCellGaugeMetric

open GRWTSK.Algebra.Homology.ThreeCellCech
open ThreeCellHodgeGauge
open scoped BigOperators

section Modules
variable {V W : Type*} [AddCommGroup V] [Module ℝ V]
  [AddCommGroup W] [Module ℝ W]

/-- Bundle the OLD reduction, keeping the ORIGINAL vertex mean and full mismatch. -/
def reduction : Cell V →ₗ[ℝ] V × Triple V where
  toFun := reduced
  map_add' u v := by
    apply Prod.ext
    · exact average_add _ _
    · funext j
      fin_cases j <;> dsimp [reduced, mismatch, delta0] <;> abel
  map_smul' c v := by
    apply Prod.ext
    · dsimp [reduced, average]; module
    · funext j
      fin_cases j <;> dsimp [reduced, mismatch, delta0] <;> module

/-- A genuine module quotient; the next theorem identifies its kernel as gauges. -/
abbrev GaugeQuotient := Cell V ⧸ LinearMap.ker (reduction (V := V))

def classOf (v : Cell V) : GaugeQuotient := Submodule.Quotient.mk v

/-- No compatibility condition is hidden in the reduced carrier. -/
def quotientEquiv : GaugeQuotient (V := V) ≃ₗ[ℝ] V × Triple V :=
  reduction.quotKerEquivOfSurjective reduced_surjective

@[simp] theorem quotientEquiv_classOf (v : Cell V) :
    quotientEquiv (classOf v) = reduced v := rfl

theorem classOf_eq_iff_reduced (u v : Cell V) :
    classOf u = classOf v ↔ reduced u = reduced v := by
  constructor
  · intro h
    simpa only [quotientEquiv_classOf] using congrArg quotientEquiv h
  · intro h
    apply quotientEquiv.injective
    simpa only [quotientEquiv_classOf] using h

/-- Exactly mean-zero coboundaries, not arbitrary gauges or full-state equality. -/
theorem classOf_eq_iff_gauge (u v : Cell V) :
    classOf u = classOf v ↔ ∃ w : Triple V, average w = 0 ∧ u = gaugeShift w v := by
  rw [classOf_eq_iff_reduced, reduced_eq_iff_gauge]

/-- Explicit representative of (m,e), where e is the ACTUAL ordered edge mismatch.
The minimum property below is for the standard six-coordinate metric. -/
def minimumRep (m : V) (e : Triple V) : Cell V :=
  (fun j => m + (1 / 4 : ℝ) • delta0Transpose e j,
   fun j => (-1 / 4 : ℝ) • (e j + delta1 e))

@[simp] theorem reduced_minimumRep (m : V) (e : Triple V) :
    reduced (minimumRep m e) = (m, e) := by
  apply Prod.ext
  · dsimp [reduced, minimumRep, average, delta0Transpose]; module
  · funext j
    fin_cases j <;> dsimp [reduced, minimumRep, mismatch, delta0,
      delta0Transpose, delta1] <;> module

def normalForm (v : Cell V) : Cell V := minimumRep (reduced v).1 (reduced v).2

@[simp] theorem reduced_normalForm (v : Cell V) : reduced (normalForm v) = reduced v :=
  reduced_minimumRep _ _

@[simp] theorem normalForm_idempotent (v : Cell V) : normalForm (normalForm v) = normalForm v := by
  unfold normalForm
  rw [reduced_minimumRep]

/-- The removed vertex vector; its simultaneous edge difference is not omitted. -/
def gaugeRemainder (v : Cell V) : Triple V := v.1 - (normalForm v).1

@[simp] theorem gaugeRemainder_mean (v : Cell V) : average (gaugeRemainder v) = 0 := by
  have hm := congrArg Prod.fst (reduced_normalForm v)
  change average (normalForm v).1 = average v.1 at hm
  rw [gaugeRemainder, average_sub, hm, sub_self]

theorem normal_decomposition (v : Cell V) : v = gaugeShift (gaugeRemainder v) (normalForm v) := by
  apply Prod.ext
  · dsimp [gaugeShift, gaugeRemainder]; abel
  · funext j
    fin_cases j <;> dsimp [gaugeShift, gaugeRemainder, normalForm, minimumRep,
      reduced, mismatch, average, delta0, delta0Transpose, delta1] <;> module

/-- One canonical representative for each ACTUAL quotient class. -/
def representative (q : GaugeQuotient (V := V)) : Cell V :=
  minimumRep (quotientEquiv q).1 (quotientEquiv q).2

@[simp] theorem classOf_representative (q : GaugeQuotient (V := V)) :
    classOf (representative q) = q := by
  apply quotientEquiv.injective
  rw [quotientEquiv_classOf, representative, reduced_minimumRep]

@[simp] theorem representative_classOf (v : Cell V) : representative (classOf v) = normalForm v := rfl

/-- Define reduced attenuation transparently and bind it to both OLD full flows below. -/
def quotientRelax (d : ℝ) (q : GaugeQuotient (V := V)) : GaugeQuotient :=
  quotientEquiv.symm ((quotientEquiv q).1, d • (quotientEquiv q).2)

@[simp] theorem quotientRelax_classOf_hodge (d : ℝ) (v : Cell V) :
    quotientRelax d (classOf v) = classOf (hodgeRelax d v) := by
  apply quotientEquiv.injective
  simp only [quotientRelax, LinearEquiv.apply_symm_apply, quotientEquiv_classOf, reduced_hodge]

theorem quotientRelax_classOf_tree (d : ℝ) (v : Cell V) :
    quotientRelax d (classOf v) = classOf (treeRelax d v) := by
  rw [quotientRelax_classOf_hodge, classOf_eq_iff_reduced]
  exact (reduced_tree_hodge d v).symm

/-- Standard heat preserves the minimizing representatives; tree heat need not. -/
theorem normalForm_hodge (d : ℝ) (v : Cell V) :
    normalForm (hodgeRelax d v) = hodgeRelax d (normalForm v) := by
  apply Prod.ext <;> funext j <;> fin_cases j <;>
    dsimp [normalForm, minimumRep, reduced, hodgeRelax, phaseRelax, centered,
      average, mismatch, delta0, delta0Transpose, delta1] <;> module

theorem normalForm_tree (d : ℝ) (v : Cell V) :
    normalForm (treeRelax d v) = hodgeRelax d (normalForm v) := by
  change minimumRep (reduced (treeRelax d v)).1 (reduced (treeRelax d v)).2 = _
  rw [reduced_tree_hodge]
  exact normalForm_hodge d v

/-- Transport the old reduced fields through one and the same real-linear map. -/
theorem reduced_map (F : V →ₗ[ℝ] W) (v : Cell V) :
    reduced (mapCell F v) = (F (reduced v).1, fun j => F ((reduced v).2 j)) := by
  apply Prod.ext
  · simp [reduced, mapCell, average, map_smul]
  · funext j
    fin_cases j <;> simp [reduced, mapCell, mismatch, delta0]

/-- Clearing the normal form is an integer linear combination of the ORIGINAL fields.
This is a fixed coefficient-chart identity, not an intrinsic lattice theorem. -/
theorem normalForm_clear12 (v : Cell V) (j : Fin 3) :
    (12 : ℝ) • (normalForm v).1 j =
      (9 : ℝ) • v.1 j + (v.1 0 + v.1 1 + v.1 2) -
        (3 : ℝ) • delta0Transpose v.2 j ∧
    (12 : ℝ) • (normalForm v).2 j =
      (-3 : ℝ) • (mismatch v.1 v.2 j + delta1 (mismatch v.1 v.2)) := by
  constructor <;> fin_cases j <;>
    dsimp [normalForm, minimumRep, reduced, average, mismatch, delta0, delta0Transpose, delta1] <;>
    module

/-- A single real-linear map on every field preserves the SAME representative formula. -/
theorem normalForm_map (F : V →ₗ[ℝ] W) (v : Cell V) :
    normalForm (mapCell F v) = mapCell F (normalForm v) := by
  apply Prod.ext <;> funext j <;> fin_cases j <;>
    simp [normalForm, minimumRep, reduced, mapCell, mismatch, average,
      delta0, delta0Transpose, delta1, map_add, map_sub, map_smul]

end Modules

/-- The reduced quadratic energy is DERIVED from minimizing the old six-field metric. -/
def reducedEnergy (m : ℝ) (e : Triple ℝ) : ℝ :=
  3 * m ^ 2 + (dot3 e e + delta1 e ^ 2) / 4

def quotientEnergy (q : GaugeQuotient (V := ℝ)) : ℝ :=
  reducedEnergy (quotientEquiv q).1 (quotientEquiv q).2

private theorem dot3_self_nonneg (w : Triple ℝ) : 0 ≤ dot3 w w :=
  Finset.sum_nonneg (fun j _ => mul_self_nonneg _)

private theorem dot3_self_zero_iff (w : Triple ℝ) : dot3 w w = 0 ↔ w = 0 := by
  constructor
  · intro h
    funext j
    have hj : w j * w j ≤ dot3 w w :=
      Finset.single_le_sum (fun i _ => mul_self_nonneg _) (Finset.mem_univ j)
    rw [h] at hj
    change w j = 0
    nlinarith [sq_nonneg (w j)]
  · rintro rfl
    simp [dot3]

/-- Complete the square in the actual cochain variables, not in plotted samples. -/
theorem pythagorean (v : Cell ℝ) :
    rawEnergy v = reducedEnergy (reduced v).1 (reduced v).2 +
      4 * dot3 (gaugeRemainder v) (gaugeRemainder v) := by
  simp only [rawEnergy, reducedEnergy, dot3, Fin.sum_univ_three]
  dsimp [gaugeRemainder, normalForm, minimumRep, reduced, average, mismatch,
    delta0, delta0Transpose, delta1]
  ring

theorem minimumRep_energy (m : ℝ) (e : Triple ℝ) :
    rawEnergy (minimumRep m e) = reducedEnergy m e := by
  simp only [rawEnergy, reducedEnergy, dot3, Fin.sum_univ_three]
  dsimp [minimumRep, delta0Transpose, delta1]
  ring

/-- The same reduced datum has a UNIQUE six-energy minimizer. -/
theorem minimumRep_unique (m : ℝ) (e : Triple ℝ) (v : Cell ℝ)
    (hv : reduced v = (m, e)) :
    rawEnergy v = reducedEnergy m e ↔ v = minimumRep m e := by
  have hp := pythagorean v
  rw [hv] at hp
  constructor
  · intro he
    have hr : dot3 (gaugeRemainder v) (gaugeRemainder v) = 0 := by
      dsimp at hp
      linarith
    have hz := (dot3_self_zero_iff _).mp hr
    calc
      v = gaugeShift (gaugeRemainder v) (normalForm v) := normal_decomposition v
      _ = minimumRep m e := by simp [hz, normalForm, hv, gaugeShift, delta0]
  · rintro rfl
    exact minimumRep_energy m e

theorem minimumRep_le (v : Cell ℝ) :
    rawEnergy (normalForm v) ≤ rawEnergy v := by
  rw [normalForm, minimumRep_energy, pythagorean]
  linarith [dot3_self_nonneg (gaugeRemainder v)]

theorem reducedEnergy_nonneg (m : ℝ) (e : Triple ℝ) : 0 ≤ reducedEnergy m e := by
  unfold reducedEnergy
  have he := dot3_self_nonneg e
  nlinarith [sq_nonneg m, sq_nonneg (delta1 e)]

/-- It is a norm-square on the reduced carrier, unlike a mismatch-only seminorm. -/
theorem reducedEnergy_zero_iff (m : ℝ) (e : Triple ℝ) :
    reducedEnergy m e = 0 ↔ m = 0 ∧ e = 0 := by
  have he := dot3_self_nonneg e
  have hs := sq_nonneg (delta1 e)
  constructor
  · intro h
    have hm : m = 0 := by unfold reducedEnergy at h; nlinarith [sq_nonneg m]
    have hz : dot3 e e = 0 := by unfold reducedEnergy at h; nlinarith [sq_nonneg m]
    exact ⟨hm, (dot3_self_zero_iff e).mp hz⟩
  · rintro ⟨rfl, rfl⟩
    simp [reducedEnergy, dot3, delta1]

theorem quotientEnergy_zero_iff (q : GaugeQuotient (V := ℝ)) :
    quotientEnergy q = 0 ↔ q = 0 := by
  change reducedEnergy (quotientEquiv q).1 (quotientEquiv q).2 = 0 ↔ q = 0
  rw [reducedEnergy_zero_iff]
  constructor
  · rintro ⟨hm, he⟩
    apply quotientEquiv.injective
    apply Prod.ext
    · simpa only [map_zero] using hm
    · simpa only [map_zero] using he
  · rintro rfl
    simp

/-- Sharp mismatch weights range from 1/4 to 1 in the standard edge metric. -/
theorem reducedEnergy_bounds (m : ℝ) (e : Triple ℝ) :
    3 * m ^ 2 + dot3 e e / 4 ≤ reducedEnergy m e ∧
      reducedEnergy m e ≤ 3 * m ^ 2 + dot3 e e := by
  have hs : delta1 e ^ 2 ≤ 3 * dot3 e e := by
    simp only [delta1, dot3, Fin.sum_univ_three]
    nlinarith [sq_nonneg (e 0 - e 1), sq_nonneg (e 1 - e 2), sq_nonneg (e 2 - e 0)]
  unfold reducedEnergy
  constructor <;> nlinarith [sq_nonneg (delta1 e)]

/-- Actual quotient energy, characterized variationally on every representative. -/
theorem quotientEnergy_minimum (q : GaugeQuotient (V := ℝ)) :
    quotientEnergy q = rawEnergy (representative q) ∧
      ∀ v : Cell ℝ, classOf v = q → quotientEnergy q ≤ rawEnergy v := by
  constructor
  · exact (minimumRep_energy _ _).symm
  · intro v hv
    rw [← hv]
    change reducedEnergy (reduced v).1 (reduced v).2 ≤ rawEnergy v
    have hp := pythagorean v
    linarith [dot3_self_nonneg (gaugeRemainder v)]

/-- Reduced mismatch decays, but the coherent mean is retained. -/
theorem reducedEnergy_attenuation (d m : ℝ) (e : Triple ℝ) :
    reducedEnergy m (d • e) = 3 * m ^ 2 + d ^ 2 * reducedEnergy 0 e := by
  simp only [reducedEnergy, dot3, Fin.sum_univ_three]
  dsimp [delta1]
  ring

theorem quotientEnergy_contraction (d : ℝ) (hd0 : 0 ≤ d) (hd1 : d ≤ 1)
    (q : GaugeQuotient (V := ℝ)) : quotientEnergy (quotientRelax d q) ≤ quotientEnergy q := by
  change reducedEnergy (quotientEquiv (quotientRelax d q)).1
    (quotientEquiv (quotientRelax d q)).2 ≤ _
  simp only [quotientRelax, LinearEquiv.apply_symm_apply]
  rw [reducedEnergy_attenuation]
  have hn := reducedEnergy_nonneg 0 (quotientEquiv q).2
  have hsq : d ^ 2 ≤ 1 := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hsq hn
  dsimp [quotientEnergy, reducedEnergy] at *
  nlinarith

/-- Integral cochains can have a nonintegral least-energy representative.
The factor twelve is visible, not hidden in a purported integral gauge. -/
theorem unit_vertex_normalForm :
    normalForm (![1, 0, 0], (0 : Triple ℝ)) =
      (![5 / 6, 1 / 12, 1 / 12], ![1 / 4, 0, -1 / 4]) ∧
    rawEnergy (normalForm (![1, 0, 0], (0 : Triple ℝ))) = 5 / 6 := by
  constructor
  · apply Prod.ext <;> funext j <;> fin_cases j <;>
      norm_num [normalForm, minimumRep, reduced, average, mismatch, delta0, delta0Transpose, delta1]
  · norm_num [rawEnergy, dot3, Fin.sum_univ_three, normalForm, minimumRep,
      reduced, average, mismatch, delta0, delta0Transpose, delta1]

/-- Reduction is source-faithful only modulo the named gauge subspace. -/
theorem nonzero_gauge_zero_class :
    classOf (![1, -1, 0], ![-2, 1, 1]) = classOf ((0 : Triple ℝ), (0 : Triple ℝ)) ∧
      rawEnergy (![1, -1, 0], ![-2, 1, 1]) = 8 := by
  constructor
  · apply classOf_eq_iff_reduced.mpr
    apply Prod.ext
    · norm_num [reduced, average]
    · funext j
      fin_cases j <;> norm_num [reduced, mismatch, delta0]
  · norm_num [rawEnergy, dot3, Fin.sum_univ_three]

theorem sharp_reduced_weights :
    reducedEnergy 0 ![1, -1, 0] = (1 / 4 : ℝ) * dot3 ![1, -1, 0] ![1, -1, 0] ∧
    reducedEnergy 0 ![1, 1, 1] = dot3 ![1, 1, 1] ![1, 1, 1] := by
  norm_num [reducedEnergy, dot3, Fin.sum_univ_three, delta1]

end GRWTSK.Analysis.LinearAlgebra.ThreeCellGaugeMetric
