/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarCutoffEffective

/-!
# A p-dependent envelope for the surviving left gap strip

After the actual block Gram removes every closed-N loss crossing, the only left-loss
geometry is
  m + H < n <= p*m + H,   p*m <= N.
For fixed m the strip has at most p*m-m points.  The actual inverse-square-root
Gram majorant at (p*m,n), together with n>m, contributes 1/(sqrt(p)*m).
The m-range is the exact quotient range 1 <= m <= N/p.

Consequently the complete left-gap absolute envelope is
  K * (N/p) * (p-1)/sqrt(p).
This is O(K*N/sqrt(p)); no prime-range choice is made here.

The outer rough(p::P) signs and the original pairWeight are retained in the source
definition. Absolute values enter only the independent envelope theorem.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No acceptance or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarLeftGapBound

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffEffective

/-- Complete signed left-gap contribution on its exact quotient range. -/
def leftGapContribution (P : List ℕ) (N L Z H p : ℕ)
    (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (N/p), ∑ n ∈ Finset.Icc 1 N,
    if leftGapLost N L H p m n then
      rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) n
    else 0

/-- The original full m-range gives the same source because leftGapLost already
contains p*m <= N. -/
theorem leftGapContribution_eq_full_range
    (P : List ℕ) (N L Z H p : ℕ) (hp : 0 < p)
    (G : ℕ → ℕ → ℝ) :
    leftGapContribution P N L Z H p G =
      ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
        if leftGapLost N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) n
        else 0 := by
  unfold leftGapContribution
  have hsub : Finset.Icc 1 (N/p) ⊆ Finset.Icc 1 N := by
    intro m hm
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1,
      (Finset.mem_Icc.mp hm).2.trans (Nat.div_le_self N p)⟩
  apply (Finset.sum_subset hsub).symm
  intro m hm hout
  apply Finset.sum_eq_zero
  intro n hn
  by_cases hgap : leftGapLost N L H p m n
  · have hpmN := hgap.2.1
    have hmdiv : m ≤ N/p := (Nat.le_div_iff_mul_le hp).mpr (by
      simpa only [Nat.mul_comm] using hpmN)
    exact (hout (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1, hmdiv⟩)).elim
  · simp [hgap]

/-- Literal source coefficient is one-bounded even though pairWeight belongs to
the original stage P while the transported rough coefficients belong to p::P. -/
theorem transported_coefficient_abs_le
    (P : List ℕ) (N Z p m n : ℕ) :
    |rough (p::P) m * rough (p::P) n * pairWeight P N Z m n| ≤ 1 := by
  have hm : |rough (p::P) m| ≤ 1 := rough_abs_le_one (p::P) m
  have hn : |rough (p::P) n| ≤ 1 := rough_abs_le_one (p::P) n
  have hw := pairWeight_le_one P N Z m n
  have hw0 := pairWeight_nonnegative P N Z m n
  rw [abs_mul, abs_mul, abs_of_nonneg hw0]
  nlinarith [abs_nonneg (rough (p::P) m), abs_nonneg (rough (p::P) n)]

/-- The inverse-square-root kernel at (p*m,n) is at most
1/(sqrt(p)*m) on the left-gap strip. -/
theorem shifted_kernel_le
    {N L H p m n : ℕ} (hp : 1 ≤ p)
    (hgap : leftGapLost N L H p m n) :
    inverseSqrtKernel (p*m) n ≤
      (Real.sqrt (p : ℝ))⁻¹ * (m : ℝ)⁻¹ := by
  have hm1 : 1 ≤ m := hgap.1.1
  have hmn : m < n := by
    unfold leftGapLost farActive at hgap
    omega
  have hpR : (0 : ℝ) ≤ p := by positivity
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm1
  have hsmp :
      Real.sqrt ((p*m : ℕ) : ℝ) =
        Real.sqrt (p : ℝ) * Real.sqrt (m : ℝ) := by
    rw [Nat.cast_mul, Real.sqrt_mul hpR]
  have hsmono :
      (Real.sqrt (n : ℝ))⁻¹ ≤ (Real.sqrt (m : ℝ))⁻¹ := by
    have hs : 0 < Real.sqrt (m : ℝ) := Real.sqrt_pos.mpr hmR
    simpa only [one_div] using one_div_le_one_div_of_le hs
      (Real.sqrt_le_sqrt (by exact_mod_cast hmn.le))
  unfold inverseSqrtKernel
  rw [hsmp, mul_inv_rev]
  have hsquare :
      (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (m : ℝ))⁻¹ = (m : ℝ)⁻¹ := by
    rw [← mul_inv_rev, ← pow_two, Real.sq_sqrt hmR.le]
  calc
    _ ≤ ((Real.sqrt (p : ℝ))⁻¹ * (Real.sqrt (m : ℝ))⁻¹) *
        (Real.sqrt (m : ℝ))⁻¹ := by
      gcongr
    _ = _ := by rw [hsquare]; ring

/-- Row envelope: the p*m-m points exactly cancel the m denominator, leaving
K*(p-1)/sqrt(p). -/
theorem leftGap_row_abs_le
    (P : List ℕ) (N L Z H p m : ℕ) (hp : 1 ≤ p)
    (G : ℕ → ℕ → ℝ) {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ a b : ℕ, 1 ≤ a → 1 ≤ b →
      |G a b| ≤ K * inverseSqrtKernel a b)
    (hm : m ∈ Finset.Icc 1 (N/p)) :
    |∑ n ∈ Finset.Icc 1 N,
      if leftGapLost N L H p m n then
        rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) n
      else 0| ≤
      K * (((p-1 : ℕ) : ℝ) * (Real.sqrt (p : ℝ))⁻¹) := by
  have hm1 := (Finset.mem_Icc.mp hm).1
  have hcount :
      (((Finset.Icc 1 N).filter (fun n => leftGapLost N L H p m n)).card : ℝ) ≤
        ((p*m-m : ℕ) : ℝ) := by
    exact_mod_cast leftGapLost_count_le N L H p m hp
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 N,
        |if leftGapLost N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) n
        else 0| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 1 N,
        if leftGapLost N L H p m n then
          K * ((Real.sqrt (p : ℝ))⁻¹ * (m : ℝ)⁻¹)
        else 0 := by
      apply Finset.sum_le_sum
      intro n hn
      by_cases hgap : leftGapLost N L H p m n
      · simp only [if_pos hgap, abs_mul]
        have hpm1 : 1 ≤ p*m := by nlinarith
        have hn1 := (Finset.mem_Icc.mp hn).1
        have hc := transported_coefficient_abs_le P N Z p m n
        have hg := (hG (p*m) n hpm1 hn1).trans
          (mul_le_mul_of_nonneg_left (shifted_kernel_le hp hgap) hK)
        exact mul_le_mul hc hg (abs_nonneg _) (by positivity)
      · simp [hgap]
    _ = (((Finset.Icc 1 N).filter (fun n => leftGapLost N L H p m n)).card : ℝ) *
        (K * ((Real.sqrt (p : ℝ))⁻¹ * (m : ℝ)⁻¹)) := by
      rw [← Finset.sum_filter]
      simp
    _ ≤ ((p*m-m : ℕ) : ℝ) *
        (K * ((Real.sqrt (p : ℝ))⁻¹ * (m : ℝ)⁻¹)) := by
      exact mul_le_mul_of_nonneg_right hcount (by positivity)
    _ = K * (((p-1 : ℕ) : ℝ) * (Real.sqrt (p : ℝ))⁻¹) := by
      have hmR : (m : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hm1)
      have hnat : p*m-m = (p-1)*m := by omega
      rw [hnat, Nat.cast_mul, mul_assoc]
      field_simp
      <;> ring

/-- Complete quotient-range envelope. -/
theorem leftGapContribution_abs_le
    (P : List ℕ) (N L Z H p : ℕ) (hp : 1 ≤ p)
    (G : ℕ → ℕ → ℝ) {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ a b : ℕ, 1 ≤ a → 1 ≤ b →
      |G a b| ≤ K * inverseSqrtKernel a b) :
    |leftGapContribution P N L Z H p G| ≤
      (N/p : ℝ) * K *
        (((p-1 : ℕ) : ℝ) * (Real.sqrt (p : ℝ))⁻¹) := by
  unfold leftGapContribution
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 (N/p),
        |∑ n ∈ Finset.Icc 1 N,
          if leftGapLost N L H p m n then
            rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) n
          else 0| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _m ∈ Finset.Icc 1 (N/p),
        K * (((p-1 : ℕ) : ℝ) * (Real.sqrt (p : ℝ))⁻¹) := by
      apply Finset.sum_le_sum
      intro m hm
      exact leftGap_row_abs_le P N L Z H p m hp G hK hG hm
    _ = _ := by
      simp [Finset.card_Icc]
      ring

/-- Actual dyadic-stage specialization with the existing Gram supplier. -/
theorem actual_leftGapContribution_abs_le
    (j p : ℕ) (hp : 1 ≤ p) :
    |leftGapContribution (stages j) (2^j) (thinCutoff j) (thinCutoff j)
        (gapWidth j) p (gram (stages j) (dyadicTime j))| ≤
      ((2^j)/p : ℝ) * (4*dyadicTime j*factor (stages j)^2) *
        (((p-1 : ℕ) : ℝ) * (Real.sqrt (p : ℝ))⁻¹) := by
  have hT := dyadicTime_nonnegative j
  apply leftGapContribution_abs_le (stages j) (2^j) (thinCutoff j)
    (thinCutoff j) (gapWidth j) p hp
    (gram (stages j) (dyadicTime j))
    (by positivity : 0 ≤ 4*dyadicTime j*factor (stages j)^2)
  intro a b ha hb
  simpa only [inverseSqrtKernel, mul_assoc] using
    gram_abs_le (stages j) (stages_prime j) hT ha hb

end GRWTSK.NumberTheory.Moebius.PickupRoughFarLeftGapBound
