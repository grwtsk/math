/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Signed incidence energy and a measured-overlap threshold

A finite, source-labelled signed Gram packet is bounded by the ACTUAL
weighted degree of a symmetric off-diagonal relation. The bound uses only
the two-vector Young inequality; it does not treat a positive physical
overlap moment as a signed arithmetic cancellation theorem.

A nonnegative symmetric pair-mass, obtained for example from the
Lebesgue measure of an actual shared straight-tube shading, supplies a
quantitative degree estimate ONLY after the positive intersection-mass
threshold eta is explicitly retained. Pairs below threshold remain in
the complement; theorems in this file do not delete that complement.

The same formalism accepts Farey arithmetic adjacency or a certified
Fary straight-line intersection graph as a relation, but establishes
neither a planar embedding nor a Kakeya volume bound merely from a name.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SignedIncidenceCongestion

universe u
variable {ι : Type u} [DecidableEq ι]
classical

/-- Complete ORDERED packet of selected distinct pairs. Source signs,
multiplicities, and both orientations are retained; no division by two. -/
def orderedCross (S : Finset ι) (R : ι → ι → Prop)
    (k : ι → ι → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S, if i ≠ j ∧ R i j then k i j else 0

/-- The exact selected degree, not a planar-graph average. -/
def selectedDegree (S : Finset ι) (R : ι → ι → Prop) (i : ι) : ℕ :=
  (S.filter fun j => i ≠ j ∧ R i j).card

/-- Finite signed Young/incidence inequality with the actual diagonal
energy at EACH source ID. A symmetric relation is essential; it
permits the right-endpoint Young cost to be reindexed exactly. -/
theorem abs_orderedCross_le_weighted_degree
    (S : Finset ι) (R : ι → ι → Prop)
    (k : ι → ι → ℝ) (d : ι → ℝ)
    (hsymm : ∀ i j, R i j ↔ R j i)
    (hyoung : ∀ i ∈ S, ∀ j ∈ S,
      2 * |k i j| ≤ d i + d j) :
    |orderedCross S R k| ≤
      ∑ i ∈ S, (selectedDegree S R i : ℝ) * d i := by
  let edge : ι → ι → Prop := fun i j => i ≠ j ∧ R i j
  have hedge (i j : ι) : edge i j ↔ edge j i := by
    dsimp [edge]
    exact ⟨fun h => ⟨Ne.symm h.1, (hsymm i j).mp h.2⟩,
      fun h => ⟨Ne.symm h.1, (hsymm i j).mpr h.2⟩⟩
  have hleft :
      (∑ i ∈ S, ∑ j ∈ S, if edge i j then d i else 0) =
        ∑ i ∈ S, ((S.filter (edge i)).card : ℝ) * d i := by
    apply Finset.sum_congr rfl
    intro i hi
    rw [← Finset.sum_filter]
    simp [mul_comm]
  have hright :
      (∑ i ∈ S, ∑ j ∈ S, if edge i j then d j else 0) =
        ∑ i ∈ S, ((S.filter (edge i)).card : ℝ) * d i := by
    calc
      _ = ∑ j ∈ S, ∑ i ∈ S, if edge i j then d j else 0 :=
        Finset.sum_comm
      _ = ∑ j ∈ S, ∑ i ∈ S, if edge j i then d j else 0 := by
        apply Finset.sum_congr rfl
        intro j hj
        apply Finset.sum_congr rfl
        intro i hi
        rw [propext (hedge i j)]
      _ = _ := hleft
  have habs :
      |∑ i ∈ S, ∑ j ∈ S, if edge i j then k i j else 0| ≤
        ∑ i ∈ S, ∑ j ∈ S,
          |if edge i j then k i j else 0| := by
    calc
      _ ≤ ∑ i ∈ S, |∑ j ∈ S, if edge i j then k i j else 0| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ i ∈ S, ∑ j ∈ S,
          |if edge i j then k i j else 0| := by
        apply Finset.sum_le_sum
        intro i hi
        exact Finset.abs_sum_le_sum_abs _ _
  have hpair :
      (∑ i ∈ S, ∑ j ∈ S,
        2 * |if edge i j then k i j else 0|) ≤
        (∑ i ∈ S, ∑ j ∈ S,
          (if edge i j then d i else 0) +
          (if edge i j then d j else 0)) := by
    apply Finset.sum_le_sum
    intro i hi
    apply Finset.sum_le_sum
    intro j hj
    by_cases h : edge i j
    · simp only [if_pos h]
      exact hyoung i hi j hj
    · simp [h]
  have htwice :
      2 * |∑ i ∈ S, ∑ j ∈ S,
        if edge i j then k i j else 0| ≤
      2 * ∑ i ∈ S, ((S.filter (edge i)).card : ℝ) * d i := by
    calc
      _ ≤ 2 * ∑ i ∈ S, ∑ j ∈ S,
          |if edge i j then k i j else 0| :=
        mul_le_mul_of_nonneg_left habs (by norm_num)
      _ = ∑ i ∈ S, ∑ j ∈ S,
          2 * |if edge i j then k i j else 0| := by
        simp only [Finset.mul_sum]
      _ ≤ ∑ i ∈ S, ∑ j ∈ S,
          (if edge i j then d i else 0) +
          (if edge i j then d j else 0) := hpair
      _ = (∑ i ∈ S, ∑ j ∈ S, if edge i j then d i else 0) +
          (∑ i ∈ S, ∑ j ∈ S, if edge i j then d j else 0) := by
        simp only [Finset.sum_add_distrib]
      _ = 2 * ∑ i ∈ S, ((S.filter (edge i)).card : ℝ) * d i := by
        rw [hleft, hright]
        ring
  have hsingle :
      |∑ i ∈ S, ∑ j ∈ S, if edge i j then k i j else 0| ≤
        ∑ i ∈ S, ((S.filter (edge i)).card : ℝ) * d i := by
    linarith
  simpa only [orderedCross, selectedDegree, edge] using hsingle

/-- A positive threshold converts physical pair mass into a LOWER
cost for each selected neighbor. No unquantified cell co-hit is used. -/
theorem threshold_degree_mul_le_row
    (S : Finset ι) (mass : ι → ι → ℝ) (η : ℝ)
    (hmass : ∀ i ∈ S, ∀ j ∈ S, 0 ≤ mass i j)
    (i : ι) (hi : i ∈ S) :
    ((selectedDegree S (fun a b => η ≤ mass a b) i : ℝ) * η) ≤
      ∑ j ∈ S, if i ≠ j then mass i j else 0 := by
  have hcount :
      ((selectedDegree S (fun a b => η ≤ mass a b) i : ℝ) * η) =
        ∑ j ∈ S, if i ≠ j ∧ η ≤ mass i j then η else 0 := by
    simp only [selectedDegree]
    rw [← Finset.sum_filter]
    simp [mul_comm]
  rw [hcount]
  apply Finset.sum_le_sum
  intro j hj
  by_cases hij : i = j
  · simp [hij]
  · by_cases hη : η ≤ mass i j
    · simp [hij, hη]
    · simp [hij, hη, hmass i hi j hj]

/-- Measured-overlap-to-signed-source bridge: a genuine (nonnegative)
physical mass matrix controls only those signed pairs with shared
physical mass at least η. The remaining pairs are NOT controlled here. -/
theorem abs_thresholdCross_le_weighted_rows
    (S : Finset ι) (mass : ι → ι → ℝ) (η : ℝ)
    (k : ι → ι → ℝ) (d : ι → ℝ)
    (hη : 0 < η)
    (hsymm : ∀ i j, mass i j = mass j i)
    (hmass : ∀ i ∈ S, ∀ j ∈ S, 0 ≤ mass i j)
    (hd : ∀ i ∈ S, 0 ≤ d i)
    (hyoung : ∀ i ∈ S, ∀ j ∈ S,
      2 * |k i j| ≤ d i + d j) :
    |orderedCross S (fun i j => η ≤ mass i j) k| ≤
      ∑ i ∈ S,
        ((∑ j ∈ S, if i ≠ j then mass i j else 0) / η) * d i := by
  have hs (i j : ι) :
      (η ≤ mass i j) ↔ (η ≤ mass j i) := by
    rw [hsymm i j]
  calc
    |orderedCross S (fun i j => η ≤ mass i j) k| ≤
        ∑ i ∈ S,
          (selectedDegree S (fun i j => η ≤ mass i j) i : ℝ) * d i :=
      abs_orderedCross_le_weighted_degree S
        (fun i j => η ≤ mass i j) k d hs hyoung
    _ ≤ ∑ i ∈ S,
        ((∑ j ∈ S, if i ≠ j then mass i j else 0) / η) * d i := by
      apply Finset.sum_le_sum
      intro i hi
      apply mul_le_mul_of_nonneg_right _ (hd i hi)
      apply (le_div_iff₀ hη).2
      exact threshold_degree_mul_le_row S mass η hmass i hi

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SignedIncidenceCongestion
