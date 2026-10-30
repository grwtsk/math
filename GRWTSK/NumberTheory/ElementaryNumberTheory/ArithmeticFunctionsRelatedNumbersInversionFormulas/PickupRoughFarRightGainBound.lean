/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarLeftGapBound

/-!
# A quotient-range envelope for the right near-to-far gain strip

The right gain region is
  farActive N L H m (p*n)  and  n <= m+H.
Its moved source condition already gives p*n <= N, hence the exact outer range
1 <= n <= N/p.  For fixed n, every contributing m satisfies L < m < p*n,
so there are at most p*n possible m values and every moved Gram entry G(m,p*n)
has first coordinate at least L+1.

Using only the existing inverse-square-root Gram majorant, the row is bounded by
  K * sqrt(N) / sqrt(L+1),
and the complete right-gain contribution by
  (N/p) * K * sqrt(N) / sqrt(L+1).

At the dyadic source L=floor(sqrt N), this is a genuine p-dependent allowance.
No prime scale is selected and no complete cutoff/far-source gain is claimed.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No acceptance or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarRightGainBound

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffStrips
open GRWTSK.NumberTheory.Moebius.PickupRoughFarLeftGapBound

/-- Complete signed right gain contribution on its exact quotient range. -/
def rightGainContribution (P : List ℕ) (N L Z H p : ℕ)
    (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 (N/p), ∑ m ∈ Finset.Icc 1 N,
    if rightGained N L H p m n then
      rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G m (p*n)
    else 0

/-- The moved far condition forces the exact quotient range n <= N/p. -/
theorem rightGainContribution_eq_full_range
    (P : List ℕ) (N L Z H p : ℕ) (hp : 0 < p)
    (G : ℕ → ℕ → ℝ) :
    rightGainContribution P N L Z H p G =
      ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        if rightGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G m (p*n)
        else 0 := by
  unfold rightGainContribution
  have hsub : Finset.Icc 1 (N/p) ⊆ Finset.Icc 1 N := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans (Nat.div_le_self N p)⟩
  apply (Finset.sum_subset hsub).symm
  intro n hn hout
  apply Finset.sum_eq_zero
  intro m hm
  by_cases hgain : rightGained N L H p m n
  · have hmoved := hgain.1
    unfold farActive at hmoved
    have hpnN := hmoved.2.2.2.1
    have hndiv : n ≤ N/p := (Nat.le_div_iff_mul_le hp).mpr
      (by simpa only [Nat.mul_comm] using hpnN)
    exact (hout (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, hndiv⟩)).elim
  · simp [hgain]

/-- For fixed n, right-gain m values lie below p*n. -/
theorem rightGain_count_le (N L H p n : ℕ) :
    ((Finset.Icc 1 N).filter (fun m => rightGained N L H p m n)).card ≤ p*n := by
  have hsub :
      (Finset.Icc 1 N).filter (fun m => rightGained N L H p m n) ⊆
        Finset.Icc 1 (p*n) := by
    intro m hm
    have hgain := (Finset.mem_filter.mp hm).2
    have hmoved := hgain.1
    unfold farActive at hmoved
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp (Finset.mem_filter.mp hm).1).1,
      by omega⟩
  have hc : (Finset.Icc 1 (p*n)).card = p*n := by simp [Finset.card_Icc]
  simpa only [hc] using Finset.card_le_card hsub

/-- On right gain, the kernel is bounded using m >= L+1 and the moved coordinate p*n. -/
theorem rightGain_kernel_le
    {N L H p m n : ℕ} (hgain : rightGained N L H p m n) :
    inverseSqrtKernel m (p*n) ≤
      (Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ *
        (Real.sqrt ((p*n : ℕ) : ℝ))⁻¹ := by
  have hmoved := hgain.1
  unfold farActive at hmoved
  have hLm := hmoved.2.2.2.2.1
  have hle : (L+1 : ℝ) ≤ m := by exact_mod_cast (show L+1 ≤ m by omega)
  have hspos : 0 < Real.sqrt ((L+1 : ℕ) : ℝ) := by positivity
  have hsmono :
      (Real.sqrt (m : ℝ))⁻¹ ≤ (Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ := by
    simpa only [one_div] using one_div_le_one_div_of_le hspos
      (Real.sqrt_le_sqrt hle)
  unfold inverseSqrtKernel
  exact mul_le_mul_of_nonneg_right hsmono (by positivity)

/-- Row envelope after using cardinality <= p*n. -/
theorem rightGain_row_abs_le
    (P : List ℕ) (N L Z H p n : ℕ) (hp : 1 ≤ p)
    (G : ℕ → ℕ → ℝ) {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ a b : ℕ, 1 ≤ a → 1 ≤ b →
      |G a b| ≤ K * inverseSqrtKernel a b)
    (hn : n ∈ Finset.Icc 1 (N/p)) :
    |∑ m ∈ Finset.Icc 1 N,
      if rightGained N L H p m n then
        rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G m (p*n)
      else 0| ≤
      K * Real.sqrt (N : ℝ) * (Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ := by
  have hn1 := (Finset.mem_Icc.mp hn).1
  have hpn1 : 1 ≤ p*n := by nlinarith
  have hcount :
      (((Finset.Icc 1 N).filter (fun m => rightGained N L H p m n)).card : ℝ) ≤
        (p*n : ℕ) := by
    exact_mod_cast rightGain_count_le N L H p n
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 N,
        |if rightGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G m (p*n)
        else 0| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Icc 1 N,
        if rightGained N L H p m n then
          K * ((Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ *
            (Real.sqrt ((p*n : ℕ) : ℝ))⁻¹)
        else 0 := by
      apply Finset.sum_le_sum
      intro m hm
      by_cases hgain : rightGained N L H p m n
      · simp only [if_pos hgain, abs_mul]
        have hm1 := (Finset.mem_Icc.mp hm).1
        have hc := transported_coefficient_abs_le P N Z p m n
        have hg := (hG m (p*n) hm1 hpn1).trans
          (mul_le_mul_of_nonneg_left (rightGain_kernel_le hgain) hK)
        exact mul_le_mul hc hg (abs_nonneg _) (by positivity)
      · simp [hgain]
    _ = (((Finset.Icc 1 N).filter (fun m => rightGained N L H p m n)).card : ℝ) *
        (K * ((Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ *
          (Real.sqrt ((p*n : ℕ) : ℝ))⁻¹)) := by
      rw [← Finset.sum_filter]
      simp
    _ ≤ ((p*n : ℕ) : ℝ) *
        (K * ((Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ *
          (Real.sqrt ((p*n : ℕ) : ℝ))⁻¹)) := by
      exact mul_le_mul_of_nonneg_right hcount (by positivity)
    _ = K * Real.sqrt ((p*n : ℕ) : ℝ) *
        (Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ := by
      have hpos : (0 : ℝ) < (p*n : ℕ) := by exact_mod_cast (Nat.mul_pos (by omega) hn1)
      have hs : Real.sqrt ((p*n : ℕ) : ℝ) ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr hpos)
      rw [show ((p*n : ℕ) : ℝ) = Real.sqrt ((p*n : ℕ) : ℝ) *
          Real.sqrt ((p*n : ℕ) : ℝ) by
            rw [← pow_two, Real.sq_sqrt hpos.le]]
      field_simp
      <;> ring
    _ ≤ K * Real.sqrt (N : ℝ) *
        (Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ := by
      have hpnN : p*n ≤ N := by
        exact (Nat.le_div_iff_mul_le (by omega : 0 < p)).mp
          (Finset.mem_Icc.mp hn).2
      gcongr
      exact Real.sqrt_le_sqrt (by exact_mod_cast hpnN)

/-- Complete quotient-range right-gain envelope. -/
theorem rightGainContribution_abs_le
    (P : List ℕ) (N L Z H p : ℕ) (hp : 1 ≤ p)
    (G : ℕ → ℕ → ℝ) {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ a b : ℕ, 1 ≤ a → 1 ≤ b →
      |G a b| ≤ K * inverseSqrtKernel a b) :
    |rightGainContribution P N L Z H p G| ≤
      (N/p : ℝ) * K * Real.sqrt (N : ℝ) *
        (Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ := by
  unfold rightGainContribution
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 (N/p),
        |∑ m ∈ Finset.Icc 1 N,
          if rightGained N L H p m n then
            rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G m (p*n)
          else 0| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _n ∈ Finset.Icc 1 (N/p),
        K * Real.sqrt (N : ℝ) *
          (Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ := by
      apply Finset.sum_le_sum
      intro n hn
      exact rightGain_row_abs_le P N L Z H p n hp G hK hG hn
    _ = _ := by
      simp [Finset.card_Icc]
      ring

/-- Actual dyadic-stage specialization. -/
theorem actual_rightGainContribution_abs_le
    (j p : ℕ) (hp : 1 ≤ p) :
    |rightGainContribution (stages j) (2^j) (thinCutoff j) (thinCutoff j)
        (gapWidth j) p (gram (stages j) (dyadicTime j))| ≤
      ((2^j)/p : ℝ) * (4*dyadicTime j*factor (stages j)^2) *
        Real.sqrt ((2^j : ℕ) : ℝ) *
        (Real.sqrt ((thinCutoff j + 1 : ℕ) : ℝ))⁻¹ := by
  have hT := dyadicTime_nonnegative j
  apply rightGainContribution_abs_le (stages j) (2^j) (thinCutoff j)
    (thinCutoff j) (gapWidth j) p hp
    (gram (stages j) (dyadicTime j))
    (by positivity : 0 ≤ 4*dyadicTime j*factor (stages j)^2)
  intro a b ha hb
  simpa only [inverseSqrtKernel, mul_assoc] using
    gram_abs_le (stages j) (stages_prime j) hT ha hb

end GRWTSK.NumberTheory.Moebius.PickupRoughFarRightGainBound
