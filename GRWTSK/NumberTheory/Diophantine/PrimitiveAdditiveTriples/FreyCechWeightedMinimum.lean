/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

The SAME weighted Frey map restricted to minimum-integral reduced data.
Its exact composite cokernel is not the old one-section cokernel, the free
integral gauge quotient, or the denominator of a rectangular projection.
Function realization uses the old six-field embeddings and normal form.
Source proof scripts only: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Algebra.LinearAlgebra.ThreeCellWeightedMinimum
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechIntegralGauge
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedCokernel

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechWeightedMinimum

open FreyWeightedSections FreyWeightedBasis FreyArchimedeanRealization
open FreyCechIntegralGauge FreyCechHodgeComparison
open GRWTSK.Algebra.Homology.ThreeCellCech
open GRWTSK.Algebra.Homology.ThreeCellIntegralGauge
open GRWTSK.Algebra.LinearAlgebra.ThreeCellIntegralMinimum
open GRWTSK.Algebra.LinearAlgebra.ThreeCellWeightedMinimum
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

abbrev ReducedStage (k : ℕ) := Reduced (Index k → ℤ)
abbrev Parameters (k : ℕ) := Slots (Index k) → ℤ

/-- Four integral minimum parameters per OLD basis index, followed by the OLD port. -/
def combinedMap (a b : ℤ) (k : ℕ) : Parameters k →ₗ[ℤ] ReducedStage k :=
  composite (FreyWeightedLattice.reverse k) (FreyWeightedLattice.weight (a*b) k)

/-- Bind the composite to the original integer function port and its reduction. -/
theorem combinedMap_agrees (a b : ℤ) (k : ℕ) (q : Parameters k) :
    reduce (integerPort a b k (integralCell q)) = combinedMap a b k q := by
  rw [integerPort_reduction, reduce_integralCell]
  rfl

/-- All four conditions are read at the TARGET of the same source column i. -/
theorem combined_image_iff (a b : ℤ) (k : ℕ) (r : ReducedStage k) :
    (∃ q, combinedMap a b k q = r) ↔
    ∀ i : Index k,
      (3 * FreyWeightedLattice.weight (a*b) k i) ∣ r.1 (FreyWeightedLattice.reverse k i) ∧
      FreyWeightedLattice.weight (a*b) k i ∣ r.2 0 (FreyWeightedLattice.reverse k i) ∧
      (4 * FreyWeightedLattice.weight (a*b) k i) ∣
        r.2 1 (FreyWeightedLattice.reverse k i)-r.2 0 (FreyWeightedLattice.reverse k i) ∧
      (4 * FreyWeightedLattice.weight (a*b) k i) ∣
        r.2 2 (FreyWeightedLattice.reverse k i)-r.2 0 (FreyWeightedLattice.reverse k i) := by
  rw [combinedMap, composite_image_iff]
  constructor
  · intro h i
    exact ⟨by simpa [combinedWeight, baseWeight, frame, slotPerm, mul_comm] using h (i,0),
      by simpa [combinedWeight, baseWeight, frame, slotPerm] using h (i,1),
      by simpa [combinedWeight, baseWeight, frame, slotPerm, mul_comm] using h (i,2),
      by simpa [combinedWeight, baseWeight, frame, slotPerm, mul_comm] using h (i,3)⟩
  · intro h s
    rcases s with ⟨i,j⟩
    fin_cases j
    · simpa [combinedWeight, baseWeight, frame, slotPerm, mul_comm] using (h i).1
    · simpa [combinedWeight, baseWeight, frame, slotPerm] using (h i).2.1
    · simpa [combinedWeight, baseWeight, frame, slotPerm, mul_comm] using (h i).2.2.1
    · simpa [combinedWeight, baseWeight, frame, slotPerm, mul_comm] using (h i).2.2.2

abbrev CombinedCokernel (a b : ℤ) (k : ℕ) :=
  ReducedStage k ⧸ LinearMap.range (combinedMap a b k)

def combinedCokernelEquiv (a b : ℤ) (k : ℕ) :
    CombinedCokernel a b k ≃ₗ[ℤ]
      GRWTSK.Algebra.LinearAlgebra.WeightedPermutationCokernel.Residues
        (combinedWeight (FreyWeightedLattice.weight (a*b) k)) :=
  cokernelEquiv (FreyWeightedLattice.reverse k) (FreyWeightedLattice.weight (a*b) k)

/-- Rank and the FOUR weighted reduced fields are charged independently. -/
theorem combined_index (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    Nat.card (CombinedCokernel a b k) =
      48 ^ Fintype.card (Index k) * ((a*b).natAbs ^ (k*k)) ^ 4 := by
  change Nat.card (Cokernel (FreyWeightedLattice.reverse k)
    (FreyWeightedLattice.weight (a*b) k)) = _
  rw [cokernel_card _ _ (FreyWeightedCokernel.weight_ne_zero _ hab k)]
  simp only [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ]
  rw [Finset.prod_pow, FreyWeightedCokernel.weight_product]

/-- A product of indices is not substituted for the sharp common clearing scalar. -/
theorem combined_clearing_iff (a b : ℤ) (k : ℕ) (d : ℤ) :
    (∀ r : ReducedStage k, ∃ q, combinedMap a b k q = d • r) ↔
      12 * (-(a*b)) ^ k ∣ d := by
  rw [combinedMap, clearing_iff]
  constructor
  · intro h
    simpa [FreyWeightedLattice.weight] using h (Sum.inl ⟨k, Nat.lt_succ_self k⟩)
  · intro h i
    obtain ⟨u, hu⟩ := FreyWeightedLattice.weight_dvd_power (a*b) k i
    have hd : 12 * FreyWeightedLattice.weight (a*b) k i ∣ 12 * (-(a*b)) ^ k :=
      ⟨u, by rw [hu]; ring⟩
    exact hd.trans h

/-- Complete OLD coefficient observations separate the realized six-field functions. -/
private theorem fields_ext (a b : ℤ) (k : ℕ) (u v : RealCell a b k)
    (h : ∀ i : Index k,
      coefficientCell ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k u i =
      coefficientCell ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k v i) : u = v := by
  apply Prod.ext
  · funext j
    apply (basis ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k).repr.injective
    ext i
    exact congrFun (congrArg Prod.fst (h i)) j
  · funext j
    apply (basis ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k).repr.injective
    ext i
    exact congrFun (congrArg Prod.snd (h i)) j

/-- These are actual INTEGRAL minimum representatives in the old realized lattice. -/
theorem realized_source_normal (a b : ℤ) (k : ℕ) (q : Parameters k) :
    FreyCechGaugeMetric.normalForm ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k
      (FreyCechIntegralGauge.realize a b k (integralCell q)) =
      FreyCechIntegralGauge.realize a b k (integralCell q) := by
  apply fields_ext a b k
  intro i
  rw [FreyCechGaugeMetric.coefficient_normalForm, coefficient_realize, coefficient_realize,
    normalForm_cast]
  have hr : reduce (scalarCell k (integralCell q) i) =
      ((minimumData q).1 i, fun j => (minimumData q).2 j i) := by
    apply Prod.ext
    · simp [scalarCell, reduce, total, integralCell, minimumData]; ring
    · funext j
      fin_cases j <;> simp [scalarCell, reduce, mismatch, delta0, integralCell, minimumData] <;> ring
  rw [hr]
  exact (integralCell_minimum q i).symm

/-- Same integral source, same rationally sourced REAL weighted lift, all six fields. -/
theorem realized_port_source (a b : ℤ) (k : ℕ) (l : ℚ)
    (hl : (a : ℚ)*(b : ℚ)*l = 1) (q : Parameters k) :
    FreyCechIntegralGauge.realize a b k (integerPort a b k (integralCell q)) =
      (fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechIntegralGauge.realize a b k (integralCell q)).1 j),
       fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechIntegralGauge.realize a b k (integralCell q)).2 j)) :=
  realize_integerPort a b k l hl (integralCell q)

/-- Normalization does not change the transported admissible source. The old
weighted map commutes with the normal form; it is not declared isometric. -/
theorem realized_port_normal (a b : ℤ) (k : ℕ) (l : ℚ)
    (hl : (a : ℚ)*(b : ℚ)*l = 1) (q : Parameters k) :
    FreyCechGaugeMetric.normalForm ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k
      (FreyCechIntegralGauge.realize a b k (integerPort a b k (integralCell q))) =
      FreyCechIntegralGauge.realize a b k (integerPort a b k (integralCell q)) := by
  rw [realized_port_source]
  have hn := GRWTSK.Algebra.LinearAlgebra.ThreeCellGaugeMetric.normalForm_map
    (realLift (a : ℚ) (b : ℚ) l hl k).toLinearMap
    (FreyCechIntegralGauge.realize a b k (integralCell q))
  change FreyCechGaugeMetric.normalForm _ _ _
      (fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechIntegralGauge.realize a b k (integralCell q)).1 j),
       fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechIntegralGauge.realize a b k (integralCell q)).2 j)) =
      (fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechGaugeMetric.normalForm _ _ _
          (FreyCechIntegralGauge.realize a b k (integralCell q))).1 j),
       fun j => realLift (a : ℚ) (b : ℚ) l hl k
        ((FreyCechGaugeMetric.normalForm _ _ _
          (FreyCechIntegralGauge.realize a b k (integralCell q))).2 j)) at hn
  rw [realized_source_normal] at hn
  exact hn

/-- Native grade two: the composite costs differ from 36, 48, and 1296. -/
theorem two_three_grade_two_clearing :
    (∀ r : ReducedStage 2, ∃ q, combinedMap 2 3 2 q = (432 : ℤ) • r) ∧
    ¬ (∀ r : ReducedStage 2, ∃ q, combinedMap 2 3 2 q = (36 : ℤ) • r) := by
  constructor <;> rw [combined_clearing_iff] <;> norm_num

theorem two_three_grade_two_index :
    Nat.card (CombinedCokernel 2 3 2) = 48 ^ 4 * (1296 : ℕ) ^ 4 := by
  rw [combined_index 2 3 (by norm_num) 2]
  norm_num [FreyWeightedBasis.Index]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechWeightedMinimum
