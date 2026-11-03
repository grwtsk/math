/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-preserving finite rectangular collar for a signed Gram packet

Let S be the original finite source index inventory; do NOT quotient
duplicate labels or replace the signed kernel by geometric mass.

Suppose a source-derived nonnegative rank-one envelope
  |k(i,j)| <= B*w(i)*w(j)
holds for every actual ordered source pair, w>=0, B>=0.
For ANY (possibly sign-sensitive) selected relation R, the ordered
packet with at least one index in a smaller set L satisfies
  |X_(R ∩ (L×S ∪ S×L))|
      <= 2*B*sum_(i in L) w(i) * sum_(j in S) w(j).

The factor two pays BOTH orientations; overlap L×L is overpaid
harmlessly instead of double-subtracted. No symmetry or positivity
of k is presumed. For actual Mobius physical-time responses,
B=4*T and w(n)=1/sqrt(n). This gives a real unconditional early
index saving on the dense long-gap/strong physical packet.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSignedRectangularCollar

universe u
variable {ι : Type u} [DecidableEq ι]
classical

/-- Full ordered selected packet, with the exact original signed
kernel, AND at least one small/source collar endpoint. -/
def selectedEarlyCross (S : Finset ι)
    (R : ι → ι → Prop) (early : ι → Prop)
    (k : ι → ι → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i ≠ j ∧ R i j ∧ (early i ∨ early j)
      then k i j else 0

/-- Nonnegative source mass paid at the selected early indices. -/
def earlyWeight (S : Finset ι) (early : ι → Prop)
    (w : ι → ℝ) : ℝ :=
  ∑ i ∈ S, if early i then w i else 0

/-- Full source weight with independent labels and original inventory. -/
def completeWeight (S : Finset ι) (w : ι → ℝ) : ℝ :=
  ∑ i ∈ S, w i

/-- Entrywise domination by the TWO rectangular orientations.
The selection R is unrestricted: a geometric-incidence subpacket
cannot be larger in absolute cost than its FULL rectangular cover. -/
theorem abs_selectedEarlyCross_le_two_rectangles
    (S : Finset ι) (R : ι → ι → Prop) (early : ι → Prop)
    (k : ι → ι → ℝ) (w : ι → ℝ) (B : ℝ)
    (hB : 0 ≤ B)
    (hw : ∀ i ∈ S, 0 ≤ w i)
    (hkernel : ∀ i ∈ S, ∀ j ∈ S,
      |k i j| ≤ B * w i * w j) :
    |selectedEarlyCross S R early k| ≤
      (∑ i ∈ S, ∑ j ∈ S,
        if early i then B * w i * w j else 0) +
      (∑ i ∈ S, ∑ j ∈ S,
        if early j then B * w i * w j else 0) := by
  let term : ι → ι → ℝ := fun i j =>
    if i ≠ j ∧ R i j ∧ (early i ∨ early j)
      then k i j else 0
  have hpair (i : ι) (hi : i ∈ S) (j : ι) (hj : j ∈ S) :
      |term i j| ≤
        (if early i then B * w i * w j else 0) +
        (if early j then B * w i * w j else 0) := by
    have hcost : 0 ≤ B * w i * w j :=
      mul_nonneg (mul_nonneg hB (hw i hi)) (hw j hj)
    have hk := hkernel i hi j hj
    by_cases hEi : early i
    · by_cases hEj : early j
      · by_cases hsel : i ≠ j ∧ R i j ∧ (early i ∨ early j)
        · simp only [term, if_pos hsel, if_pos hEi, if_pos hEj]
          linarith
        · simp [term, hsel, hEi, hEj, hcost]
      · by_cases hsel : i ≠ j ∧ R i j ∧ (early i ∨ early j)
        · simp only [term, if_pos hsel, if_pos hEi, if_neg hEj]
          exact hk
        · simp [term, hsel, hEi, hEj, hcost]
    · by_cases hEj : early j
      · by_cases hsel : i ≠ j ∧ R i j ∧ (early i ∨ early j)
        · simp only [term, if_pos hsel, if_neg hEi, if_pos hEj]
          exact hk
        · simp [term, hsel, hEi, hEj, hcost]
      · have hsel :
          ¬ (i ≠ j ∧ R i j ∧ (early i ∨ early j)) := by
          simp [hEi, hEj]
        simp [term, hsel, hEi, hEj]
  have htriangle :
      |∑ i ∈ S, ∑ j ∈ S, term i j| ≤
        ∑ i ∈ S, ∑ j ∈ S, |term i j| := by
    calc
      _ ≤ ∑ i ∈ S, |∑ j ∈ S, term i j| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ i ∈ S, ∑ j ∈ S, |term i j| := by
        apply Finset.sum_le_sum
        intro i hi
        exact Finset.abs_sum_le_sum_abs _ _
  have hsum :
      (∑ i ∈ S, ∑ j ∈ S, |term i j|) ≤
      (∑ i ∈ S, ∑ j ∈ S,
        if early i then B * w i * w j else 0) +
      (∑ i ∈ S, ∑ j ∈ S,
        if early j then B * w i * w j else 0) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_le_sum
    intro i hi
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_le_sum
    intro j hj
    exact hpair i hi j hj
  change |∑ i ∈ S, ∑ j ∈ S, term i j| ≤ _
  exact htriangle.trans hsum

/-- The two ordered rectangles factor into their original
nonnegative source weights. Both source orientations remain paid. -/
theorem two_rectangles_eq_rank_one
    (S : Finset ι) (early : ι → Prop)
    (w : ι → ℝ) (B : ℝ) :
    (∑ i ∈ S, ∑ j ∈ S,
      if early i then B * w i * w j else 0) +
    (∑ i ∈ S, ∑ j ∈ S,
      if early j then B * w i * w j else 0) =
        2 * B * earlyWeight S early w * completeWeight S w := by
  have hleft :
      (∑ i ∈ S, ∑ j ∈ S,
        if early i then B * w i * w j else 0) =
        B * earlyWeight S early w * completeWeight S w := by
    have hrow (i : ι) :
        (∑ j ∈ S, if early i then B * w i * w j else 0) =
        (if early i then w i else 0) *
          (B * completeWeight S w) := by
      by_cases h : early i
      · simp only [if_pos h, completeWeight]
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro j hj
        ring
      · simp [h]
    simp_rw [hrow]
    rw [← Finset.sum_mul]
    rw [Finset.mul_sum]
    ring
  have hright :
      (∑ i ∈ S, ∑ j ∈ S,
        if early j then B * w i * w j else 0) =
        B * earlyWeight S early w * completeWeight S w := by
    calc
      _ = ∑ j ∈ S, ∑ i ∈ S,
          if early j then B * w i * w j else 0 := Finset.sum_comm
      _ = ∑ j ∈ S, ∑ i ∈ S,
          if early j then B * w j * w i else 0 := by
        apply Finset.sum_congr rfl
        intro j hj
        apply Finset.sum_congr rfl
        intro i hi
        by_cases he : early j <;> simp [he, mul_comm, mul_left_comm, mul_assoc]
      _ = B * earlyWeight S early w * completeWeight S w := hleft
  rw [hleft, hright]
  ring

/-- General finite signed rectangular collar inequality; no
source-specific arithmetic supplier other than the entrywise bound. -/
theorem abs_selectedEarlyCross_le_rank_one
    (S : Finset ι) (R : ι → ι → Prop) (early : ι → Prop)
    (k : ι → ι → ℝ) (w : ι → ℝ) (B : ℝ)
    (hB : 0 ≤ B)
    (hw : ∀ i ∈ S, 0 ≤ w i)
    (hkernel : ∀ i ∈ S, ∀ j ∈ S,
      |k i j| ≤ B * w i * w j) :
    |selectedEarlyCross S R early k| ≤
      2 * B * earlyWeight S early w * completeWeight S w := by
  calc
    _ ≤ (∑ i ∈ S, ∑ j ∈ S,
        if early i then B * w i * w j else 0) +
      (∑ i ∈ S, ∑ j ∈ S,
        if early j then B * w i * w j else 0) :=
      abs_selectedEarlyCross_le_two_rectangles
        S R early k w B hB hw hkernel
    _ = _ := two_rectangles_eq_rank_one S early w B

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSignedRectangularCollar
