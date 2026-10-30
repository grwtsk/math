/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarRightGainBound

/-!
# Remaining geometric gain sectors

This source keeps the original transported rough coefficients, pairWeight, closed
cutoffs and moved Gram entries.  It splits simultaneous gain disjointly into
lower-cutoff and near sectors, and records the p-dependent envelopes needed by the
complete cutoff consumer.

SOURCE_PROOF_CANDIDATE. Compilation, fresh replay, axiom audit and expected-interface
checking: NOT_RUN.  No complete far-source or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarRemainingGainBound

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffStrips
open GRWTSK.NumberTheory.Moebius.PickupRoughFarLeftGapBound
open GRWTSK.NumberTheory.Moebius.PickupRoughFarRightGainBound

def bothLowGained (N L H p m n : ℕ) : Prop :=
  bothGained N L H p m n ∧ m ≤ L

def bothNearGained (N L H p m n : ℕ) : Prop :=
  bothGained N L H p m n ∧ L < m

theorem bothGained_iff_low_or_near {N L H p m n : ℕ} :
    bothGained N L H p m n ↔
      bothLowGained N L H p m n ∨ bothNearGained N L H p m n := by
  constructor
  · intro h
    by_cases hm : m ≤ L
    · exact Or.inl ⟨h, hm⟩
    · exact Or.inr ⟨h, by omega⟩
  · rintro (h | h) <;> exact h.1

theorem bothLow_near_disjoint {N L H p m n : ℕ} :
    ¬(bothLowGained N L H p m n ∧ bothNearGained N L H p m n) := by
  intro h
  omega

def leftGainContribution (P : List ℕ) (N L Z H p : ℕ)
    (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 L, ∑ n ∈ Finset.Icc 1 N,
    if leftGained N L H p m n then
      rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) n
    else 0

def bothLowGainContribution (P : List ℕ) (N L Z H p : ℕ)
    (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 L, ∑ n ∈ Finset.Icc 1 (N/p),
    if bothLowGained N L H p m n then
      rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) (p*n)
    else 0

def bothNearGainContribution (P : List ℕ) (N L Z H p : ℕ)
    (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (N/p), ∑ n ∈ Finset.Icc 1 (N/p),
    if bothNearGained N L H p m n then
      rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) (p*n)
    else 0

theorem leftGain_kernel_le {N L H p m n : ℕ} (hp : 1 ≤ p)
    (h : leftGained N L H p m n) :
    inverseSqrtKernel (p*m) n ≤ ((p*m : ℕ) : ℝ)⁻¹ := by
  have hmoved := h.1
  unfold farActive at hmoved
  have hlt : p*m < n := by omega
  have hpos : (0 : ℝ) < (p*m : ℕ) := by exact_mod_cast hmoved.1
  have hs : 0 < Real.sqrt ((p*m : ℕ) : ℝ) := Real.sqrt_pos.mpr hpos
  have hmono : (Real.sqrt (n : ℝ))⁻¹ ≤
      (Real.sqrt ((p*m : ℕ) : ℝ))⁻¹ := by
    simpa [one_div] using one_div_le_one_div_of_le hs
      (Real.sqrt_le_sqrt (by exact_mod_cast hlt.le))
  unfold inverseSqrtKernel
  calc
    _ ≤ (Real.sqrt ((p*m : ℕ) : ℝ))⁻¹ *
        (Real.sqrt ((p*m : ℕ) : ℝ))⁻¹ := by gcongr
    _ = ((p*m : ℕ) : ℝ)⁻¹ := by
      rw [← mul_inv_rev, ← pow_two, Real.sq_sqrt hpos.le]

/-- Coarse but p-decaying lower-cutoff envelope. -/
theorem leftGainContribution_abs_le
    (P : List ℕ) (N L Z H p : ℕ) (hp : 1 ≤ p)
    (G : ℕ → ℕ → ℝ) {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ a b, 1 ≤ a → 1 ≤ b →
      |G a b| ≤ K * inverseSqrtKernel a b) :
    |leftGainContribution P N L Z H p G| ≤
      (N : ℝ) * K * (p : ℝ)⁻¹ *
        (∑ m ∈ Finset.Icc 1 L, (m : ℝ)⁻¹) := by
  unfold leftGainContribution
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 L, ∑ n ∈ Finset.Icc 1 N,
        |if leftGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) n
        else 0| := by
          exact (Finset.abs_sum_le_sum_abs _ _).trans
            (Finset.sum_le_sum fun _ _ => Finset.abs_sum_le_sum_abs _ _)
    _ ≤ ∑ m ∈ Finset.Icc 1 L, ∑ _n ∈ Finset.Icc 1 N,
        K * (p : ℝ)⁻¹ * (m : ℝ)⁻¹ := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      by_cases hg : leftGained N L H p m n
      · simp only [if_pos hg, abs_mul]
        have hc := transported_coefficient_abs_le P N Z p m n
        have hmoved := hg.1
        unfold farActive at hmoved
        have hk := (hG (p*m) n hmoved.1 hmoved.2.2.1).trans
          (mul_le_mul_of_nonneg_left (leftGain_kernel_le hp hg) hK)
        rw [Nat.cast_mul, mul_inv_rev] at hk
        exact mul_le_mul hc hk (abs_nonneg _) (by positivity)
      · simp [hg]
    _ = _ := by
      simp [Finset.card_Icc, Finset.mul_sum]
      ring

theorem bothGain_kernel_le {N L H p m n : ℕ} (hp : 1 ≤ p)
    (h : bothGained N L H p m n) :
    inverseSqrtKernel (p*m) (p*n) ≤
      (p : ℝ)⁻¹ * (m : ℝ)⁻¹ := by
  have hmoved := h.1
  unfold farActive at hmoved
  have hmn : m < n := by nlinarith [hmoved.2.2.2.2.2]
  have hm1 : 1 ≤ m := by nlinarith [hmoved.1]
  have hpR : (0 : ℝ) ≤ p := by positivity
  have hp0 : (0 : ℝ) < p := by exact_mod_cast (show 0 < p by omega)
  have hm0 : (0 : ℝ) < m := by exact_mod_cast hm1
  unfold inverseSqrtKernel
  rw [Nat.cast_mul, Nat.cast_mul, Real.sqrt_mul hpR, Real.sqrt_mul hpR,
    mul_inv_rev, mul_inv_rev]
  have hnmono : (Real.sqrt (n : ℝ))⁻¹ ≤ (Real.sqrt (m : ℝ))⁻¹ := by
    have hs := Real.sqrt_pos.mpr hm0
    simpa [one_div] using one_div_le_one_div_of_le hs
      (Real.sqrt_le_sqrt (by exact_mod_cast hmn.le))
  calc
    _ ≤ ((Real.sqrt (p : ℝ))⁻¹ * (Real.sqrt (m : ℝ))⁻¹) *
        ((Real.sqrt (p : ℝ))⁻¹ * (Real.sqrt (m : ℝ))⁻¹) := by gcongr
    _ = _ := by
      rw [← mul_inv_rev, ← mul_inv_rev, ← pow_two, ← pow_two,
        Real.sq_sqrt hp0.le, Real.sq_sqrt hm0.le]
      ring

/-- Simultaneous lower-cutoff gain is smaller by a second p factor. -/
theorem bothLowGainContribution_abs_le
    (P : List ℕ) (N L Z H p : ℕ) (hp : 1 ≤ p)
    (G : ℕ → ℕ → ℝ) {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ a b, 1 ≤ a → 1 ≤ b →
      |G a b| ≤ K * inverseSqrtKernel a b) :
    |bothLowGainContribution P N L Z H p G| ≤
      ((N/p : ℕ) : ℝ) * K * (p : ℝ)⁻¹ *
        (∑ m ∈ Finset.Icc 1 L, (m : ℝ)⁻¹) := by
  unfold bothLowGainContribution
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 L, ∑ n ∈ Finset.Icc 1 (N/p),
        |if bothLowGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) (p*n)
        else 0| := by
          exact (Finset.abs_sum_le_sum_abs _ _).trans
            (Finset.sum_le_sum fun _ _ => Finset.abs_sum_le_sum_abs _ _)
    _ ≤ ∑ m ∈ Finset.Icc 1 L, ∑ _n ∈ Finset.Icc 1 (N/p),
        K * (p : ℝ)⁻¹ * (m : ℝ)⁻¹ := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      by_cases hg : bothLowGained N L H p m n
      · simp only [if_pos hg, abs_mul]
        have hb := hg.1
        have hmoved := hb.1
        unfold farActive at hmoved
        have hc := transported_coefficient_abs_le P N Z p m n
        have hk := (hG (p*m) (p*n) hmoved.1 hmoved.2.2.1).trans
          (mul_le_mul_of_nonneg_left (bothGain_kernel_le hp hb) hK)
        exact mul_le_mul hc hk (abs_nonneg _) (by positivity)
      · simp [hg]
    _ = _ := by
      simp [Finset.card_Icc, Finset.mul_sum]
      ring

theorem bothNearGain_count_le (N L H p m : ℕ) :
    ((Finset.Icc 1 (N/p)).filter
      (fun n => bothNearGained N L H p m n)).card ≤ H := by
  have hsub :
      (Finset.Icc 1 (N/p)).filter
        (fun n => bothNearGained N L H p m n) ⊆ Finset.Icc (m+1) (m+H) := by
    intro n hn
    have hg := (Finset.mem_filter.mp hn).2
    have hb := hg.1
    rw [bothGained_iff (show 1 ≤ p by
      have hmoved := hb.1
      unfold farActive at hmoved
      nlinarith [hmoved.1])] at hb
    have hnear : n ≤ m+H := (hb.2.resolve_left (by omega))
    have hmoved := hg.1.1
    unfold farActive at hmoved
    have hmn : m<n := by nlinarith [hmoved.2.2.2.2.2]
    exact Finset.mem_Icc.mpr ⟨by omega, hnear⟩
  have hc : (Finset.Icc (m+1) (m+H)).card = H := by
    rw [Nat.card_Icc]
    omega
  simpa [hc] using Finset.card_le_card hsub

/-- Simultaneous near gain retains only H successors and one full p^{-1}. -/
theorem bothNearGainContribution_abs_le
    (P : List ℕ) (N L Z H p : ℕ) (hp : 1 ≤ p)
    (G : ℕ → ℕ → ℝ) {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ a b, 1 ≤ a → 1 ≤ b →
      |G a b| ≤ K * inverseSqrtKernel a b) :
    |bothNearGainContribution P N L Z H p G| ≤
      K * (H : ℝ) * (p : ℝ)⁻¹ *
        (∑ m ∈ Finset.Icc 1 (N/p), (m : ℝ)⁻¹) := by
  unfold bothNearGainContribution
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 (N/p), ∑ n ∈ Finset.Icc 1 (N/p),
        |if bothNearGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) (p*n)
        else 0| := by
          exact (Finset.abs_sum_le_sum_abs _ _).trans
            (Finset.sum_le_sum fun _ _ => Finset.abs_sum_le_sum_abs _ _)
    _ ≤ ∑ m ∈ Finset.Icc 1 (N/p),
        (H : ℝ) * (K * (p : ℝ)⁻¹ * (m : ℝ)⁻¹) := by
      apply Finset.sum_le_sum
      intro m hm
      have hcount :
          (((Finset.Icc 1 (N/p)).filter
            (fun n => bothNearGained N L H p m n)).card : ℝ) ≤ H := by
        exact_mod_cast bothNearGain_count_le N L H p m
      calc
        _ ≤ ∑ n ∈ Finset.Icc 1 (N/p),
            if bothNearGained N L H p m n then
              K * (p : ℝ)⁻¹ * (m : ℝ)⁻¹ else 0 := by
          apply Finset.sum_le_sum
          intro n hn
          by_cases hg : bothNearGained N L H p m n
          · simp only [if_pos hg, abs_mul]
            have hb := hg.1
            have hmoved := hb.1
            unfold farActive at hmoved
            have hc := transported_coefficient_abs_le P N Z p m n
            have hk := (hG (p*m) (p*n) hmoved.1 hmoved.2.2.1).trans
              (mul_le_mul_of_nonneg_left (bothGain_kernel_le hp hb) hK)
            exact mul_le_mul hc hk (abs_nonneg _) (by positivity)
          · simp [hg]
        _ = (((Finset.Icc 1 (N/p)).filter
              (fun n => bothNearGained N L H p m n)).card : ℝ) *
            (K * (p : ℝ)⁻¹ * (m : ℝ)⁻¹) := by
          rw [← Finset.sum_filter]
          simp
        _ ≤ _ := mul_le_mul_of_nonneg_right hcount (by positivity)
    _ = _ := by
      rw [Finset.mul_sum]
      ring

end GRWTSK.NumberTheory.Moebius.PickupRoughFarRemainingGainBound
