/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.GcdWeightedRectangleExcess

/-!
# Counting the actual moving quotient inventory

The signed rectangle is first transported to its exact filtered positive
inventory, then bounded above by its cardinality. Both source cutoffs remain
literal. No absolute value or signed-cancellation premise is introduced.
This supplies only the counting step for the growing-gcd excess tail;
weighted first-moment and reciprocal-square tail assembly remain separate.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open scoped BigOperators

def gcdRectangleEligible (g Q i : ℕ) : Finset ℕ :=
  (Finset.Icc 1 Q).filter (fun a => g*a ≤ i)

theorem gcdSignedRectangle_eq_eligible (g Q i j : ℕ) :
    gcdSignedRectangle g Q i j =
      ∑ a ∈ gcdRectangleEligible g Q i, ∑ b ∈ gcdRectangleEligible g Q j,
        gcdQuotientSignedCoefficient g a b := by
  unfold gcdSignedRectangle gcdRectangleEligible
  simp only [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro a _
  by_cases h : g*a ≤ i <;> simp [h]

theorem gcdQuotientSignedCoefficient_le_one (g a b : ℕ) :
    gcdQuotientSignedCoefficient g a b ≤ 1 := by
  unfold gcdQuotientSignedCoefficient
  split_ifs
  · exact (le_abs_self _).trans
      (GRWTSK.RiemannHypothesis.CCC.moebiusReal_abs_le_one _)
  · norm_num

theorem gcdRectangleEligible_card_le_div {g : ℕ} (hg : 1 ≤ g) (Q i : ℕ) :
    (gcdRectangleEligible g Q i).card ≤ i/g := by
  have hsub : gcdRectangleEligible g Q i ⊆ Finset.Icc 1 (i/g) := by
    intro a ha
    obtain ⟨haQ,hai⟩ := Finset.mem_filter.mp ha
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp haQ).1,
      (Nat.le_div_iff_mul_le (by omega : 0 < g)).mpr
        (by simpa only [Nat.mul_comm] using hai)⟩
  simpa using Finset.card_le_card hsub

/-- Actual signed upper bound; no magnitude bound on the signed sum is used. -/
theorem gcdSignedRectangle_le_eligible_product (g Q i j : ℕ) :
    gcdSignedRectangle g Q i j ≤
      ((gcdRectangleEligible g Q i).card : ℝ)*
        ((gcdRectangleEligible g Q j).card : ℝ) := by
  rw [gcdSignedRectangle_eq_eligible]
  calc
    _ ≤ ∑ _a ∈ gcdRectangleEligible g Q i,
        ∑ _b ∈ gcdRectangleEligible g Q j, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro a _
      exact Finset.sum_le_sum (fun b _ => gcdQuotientSignedCoefficient_le_one g a b)
    _ = _ := by simp [nsmul_eq_mul]

theorem natDiv_cast_le_realDiv {g : ℕ} (hg : 1 ≤ g) (i : ℕ) :
    ((i/g : ℕ) : ℝ) ≤ (i : ℝ)/(g : ℝ) := by
  have hpos : (0 : ℝ) < g := by exact_mod_cast (by omega : 0 < g)
  apply (le_div_iff₀ hpos).mpr
  exact_mod_cast Nat.div_mul_le_self i g

theorem gcdSignedRectangle_le_moving_product {g : ℕ} (hg : 1 ≤ g) (Q i j : ℕ) :
    gcdSignedRectangle g Q i j ≤ (i : ℝ)*(j : ℝ)/(g : ℝ)^2 := by
  calc
    _ ≤ ((gcdRectangleEligible g Q i).card : ℝ)*
        ((gcdRectangleEligible g Q j).card : ℝ) :=
      gcdSignedRectangle_le_eligible_product g Q i j
    _ ≤ ((i/g : ℕ) : ℝ)*((j/g : ℕ) : ℝ) :=
      mul_le_mul (by exact_mod_cast gcdRectangleEligible_card_le_div hg Q i)
        (by exact_mod_cast gcdRectangleEligible_card_le_div hg Q j)
        (by positivity) (by positivity)
    _ ≤ ((i : ℝ)/(g : ℝ))*((j : ℝ)/(g : ℝ)) :=
      mul_le_mul (natDiv_cast_le_realDiv hg i) (natDiv_cast_le_realDiv hg j)
        (by positivity) (by positivity)
    _ = _ := by rw [div_mul_div_comm, pow_two]

/-- Nonnegative baselines suffice for the moving-cutoff excess envelope. -/
theorem gcdRectangle_excess_le_moving_product {g : ℕ} (hg : 1 ≤ g)
    (Q i j : ℕ) (b : ℝ) (hb : 0 ≤ b) :
    max (gcdSignedRectangle g Q i j-b) 0 ≤
      (i : ℝ)*(j : ℝ)/(g : ℝ)^2 := by
  apply max_le
  · have h := gcdSignedRectangle_le_moving_product hg Q i j
    linarith
  · positivity

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
