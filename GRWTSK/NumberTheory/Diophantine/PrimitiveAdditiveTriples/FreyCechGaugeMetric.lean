/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Least-energy representatives in the ACTUAL gauge quotient of the old real
W_k-valued Cech data. The metric uses all six old coefficient energies.
Both old finite flows descend to one reduced flow, but only after quotienting.
The same weighted port preserves the normal form while retaining (ab)^(2k).
No intrinsic Hodge metric, complete H0, integral projection or height theorem.
Unelaborated source proof scripts; no global norm/topology instance.
-/
import GRWTSK.Algebra.LinearAlgebra.ThreeCellGaugeMetric
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHodgeComparison

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechGaugeMetric

open FreyWeightedSections FreyWeightedBasis FreyWeightedEnergy
open FreyCechHodgeComparison
open GRWTSK.Algebra.Homology.ThreeCellCech
open GRWTSK.Algebra.LinearAlgebra
open ThreeCellHodgeGauge
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

abbrev GaugeQuotient (a b : ℝ) (k : ℕ) :=
  ThreeCellGaugeMetric.GaugeQuotient (V := stage a b k)

/-- Apply the explicit formula to actual function-valued data BEFORE taking coefficients. -/
def normalForm (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) : FreyCechHeat.Data a b k :=
  ThreeCellGaugeMetric.normalForm v

/-- The coefficient calculation is a consequence of the same-map linearity theorem. -/
theorem coefficient_normalForm (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) (i : Index k) :
    coefficientCell a b k (normalForm a b k v) i =
      ThreeCellGaugeMetric.normalForm (coefficientCell a b k v i) :=
  (ThreeCellGaugeMetric.normalForm_map (coordinateMap a b k i) v).symm

/-- Reuse the old coefficient frame on every reduced scalar cell. -/
def reducedEnergy (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) : ℝ :=
  ∑ i, ThreeCellGaugeMetric.reducedEnergy
    (reduced (coefficientCell a b k v i)).1 (reduced (coefficientCell a b k v i)).2

def removedEnergy (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) : ℝ :=
  ∑ i, dot3 (ThreeCellGaugeMetric.gaugeRemainder (coefficientCell a b k v i))
    (ThreeCellGaugeMetric.gaugeRemainder (coefficientCell a b k v i))

/-- The minimizing representative is measured in the PREVIOUS sixEnergy. -/
theorem normalForm_energy (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) :
    sixEnergy a b k (normalForm a b k v) = reducedEnergy a b k v := by
  simp only [sixEnergy, coefficient_normalForm, ThreeCellGaugeMetric.normalForm,
    ThreeCellGaugeMetric.minimumRep_energy, reducedEnergy]

/-- Pythagoras survives actual function-space realization at every existing stage. -/
theorem energy_pythagorean (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) :
    sixEnergy a b k v = reducedEnergy a b k v + 4 * removedEnergy a b k v := by
  simp only [sixEnergy, ThreeCellGaugeMetric.pythagorean, Finset.sum_add_distrib,
    ← Finset.mul_sum, reducedEnergy, removedEnergy]

theorem removedEnergy_nonneg (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) :
    0 ≤ removedEnergy a b k v := by
  apply Finset.sum_nonneg
  intro i _
  apply Finset.sum_nonneg
  intro j _
  exact mul_self_nonneg _

theorem minimum_energy_le (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) :
    reducedEnergy a b k v ≤ sixEnergy a b k v := by
  have hp := energy_pythagorean a b k v
  linarith [removedEnergy_nonneg a b k v]

/-- Equal classes have the same positive reduced energy, not the same raw norm. -/
theorem reducedEnergy_eq_of_class (a b : ℝ) (k : ℕ) (u v : FreyCechHeat.Data a b k)
    (h : ThreeCellGaugeMetric.classOf u = ThreeCellGaugeMetric.classOf v) :
    reducedEnergy a b k u = reducedEnergy a b k v := by
  have hr := (ThreeCellGaugeMetric.classOf_eq_iff_reduced u v).mp h
  apply Finset.sum_congr rfl
  intro i _
  have hc : reduced (coefficientCell a b k u i) = reduced (coefficientCell a b k v i) := by
    simp only [coefficientCell, ThreeCellGaugeMetric.reduced_map, hr]
  rw [hc]

/-- An energy on an actual quotient carrier, evaluated on its canonical representative. -/
def quotientEnergy (a b : ℝ) (k : ℕ) (q : GaugeQuotient a b k) : ℝ :=
  sixEnergy a b k (ThreeCellGaugeMetric.representative q)

@[simp] theorem quotientEnergy_classOf (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) :
    quotientEnergy a b k (ThreeCellGaugeMetric.classOf v) = reducedEnergy a b k v :=
  normalForm_energy a b k v

/-- Every representative is compared with the same gauge-class minimum. -/
theorem quotientEnergy_minimum (a b : ℝ) (k : ℕ) (q : GaugeQuotient a b k)
    (v : FreyCechHeat.Data a b k) (hv : ThreeCellGaugeMetric.classOf v = q) :
    quotientEnergy a b k q ≤ sixEnergy a b k v := by
  rw [← hv, quotientEnergy_classOf]
  exact minimum_energy_le a b k v

/-- The OLD tree and standard Hodge evolutions give the SAME actual quotient class. -/
theorem same_quotient_evolution (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) :
    ThreeCellGaugeMetric.classOf (FreyCechHeat.evolve a b k t v) =
      ThreeCellGaugeMetric.classOf (hodge a b k t v) :=
  (ThreeCellGaugeMetric.classOf_eq_iff_reduced _ _).mpr (same_reduced_evolution a b k t v)

/-- Standard heat commutes with normalization in the OLD function space. -/
theorem normalForm_hodge (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) :
    normalForm a b k (hodge a b k t v) = hodge a b k t (normalForm a b k v) :=
  ThreeCellGaugeMetric.normalForm_hodge (ThreePhaseCoefficientHeat.decay t) v

/-- Both full flows contract this QUOTIENT energy at positive time.
This does not transfer full-six-energy contraction to the old tree flow. -/
theorem reducedEnergy_contraction (a b : ℝ) (k : ℕ) (t : ℝ) (ht : 0 ≤ t)
    (v : FreyCechHeat.Data a b k) :
    reducedEnergy a b k (hodge a b k t v) ≤ reducedEnergy a b k v ∧
    reducedEnergy a b k (FreyCechHeat.evolve a b k t v) ≤ reducedEnergy a b k v := by
  have hh : reducedEnergy a b k (hodge a b k t v) ≤ reducedEnergy a b k v := by
    rw [← normalForm_energy, normalForm_hodge, ← normalForm_energy a b k v]
    exact hodge_sixEnergy_contraction a b k t ht (normalForm a b k v)
  refine ⟨hh, ?_⟩
  rw [reducedEnergy_eq_of_class a b k _ _ (same_quotient_evolution a b k t v)]
  exact hh

/-- Exactly the OLD weighted stageEquiv acts on every vertex and transition. -/
theorem port_normalForm (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ)
    (v : FreyCechHeat.Data a b k) :
    normalForm a b k (FreyCechHeat.port a b l hl k v) =
      FreyCechHeat.port a b l hl k (normalForm a b k v) :=
  ThreeCellGaugeMetric.normalForm_map (stageEquiv a b l hl k).toLinearMap v

/-- The old six-field metric retains all the old source/grade multipliers. -/
theorem sixEnergy_port_bounds (a b l : ℝ) (hl : a * b * l = 1) (hab : 1 ≤ a * b)
    (k : ℕ) (v : FreyCechHeat.Data a b k) :
    sixEnergy a b k v ≤ sixEnergy a b k (FreyCechHeat.port a b l hl k v) ∧
    sixEnergy a b k (FreyCechHeat.port a b l hl k v) ≤ ((a * b) ^ 2) ^ k * sixEnergy a b k v := by
  have hb := coefficientEnergy_bounds a b l hl hab k
  simp only [sixEnergy_agrees, FreyCechHeat.port]
  constructor
  · exact add_le_add (Finset.sum_le_sum (fun j _ => (hb (v.1 j)).1))
      (Finset.sum_le_sum (fun j _ => (hb (v.2 j)).1))
  · calc
      _ ≤ (∑ j, ((a * b) ^ 2) ^ k * coefficientEnergy a b k (v.1 j)) +
          ∑ j, ((a * b) ^ 2) ^ k * coefficientEnergy a b k (v.2 j) :=
        add_le_add (Finset.sum_le_sum (fun j _ => (hb (v.1 j)).2))
          (Finset.sum_le_sum (fun j _ => (hb (v.2 j)).2))
      _ = _ := by rw [← Finset.mul_sum, ← Finset.mul_sum, ← mul_add]

/-- Quotienting gauges is NOT a source-independent metric normalization of the port. -/
theorem reducedEnergy_port_bounds (a b l : ℝ) (hl : a * b * l = 1) (hab : 1 ≤ a * b)
    (k : ℕ) (v : FreyCechHeat.Data a b k) :
    reducedEnergy a b k v ≤ reducedEnergy a b k (FreyCechHeat.port a b l hl k v) ∧
    reducedEnergy a b k (FreyCechHeat.port a b l hl k v) ≤
      ((a * b) ^ 2) ^ k * reducedEnergy a b k v := by
  have hb := sixEnergy_port_bounds a b l hl hab k (normalForm a b k v)
  simpa only [← port_normalForm, normalForm_energy] using hb

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechGaugeMetric
