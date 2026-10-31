/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePrimeDelayFiniteInterchange
import Mathlib

/-!
# Original one-prime Liouville delay: positive multiple reindexing

All n=p*k with k>=1 are retained, including k divisible by p and all
higher powers. We use the literal CCC.pickupResponse and original Liouville
coefficients with no squarefree proxy. This is a candidate Lean proof script
pending actual elaboration and trust=0 replay; source publication is not
kernel acceptance.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleGrowingPrimeBandIdentity
open GRWTSK.NumberTheory.LiouvillePrimeDelayIntegratedReturn
open GRWTSK.NumberTheory.LiouvillePrimeDelayFiniteInterchange

namespace GRWTSK.NumberTheory.LiouvillePrimeDelayMultipleReindex

/-- Multiplication by positive p transports the full original integer
cutoff to the shifted cutoff, including zero-width birth endpoints. -/
theorem positive_multiple_cutoff_iff
    (p k : ℕ) (hp : 0 < p) (u : ℝ) :
    p * k ≤ ⌊Real.exp u⌋₊ ↔
      k ≤ ⌊Real.exp (u - Real.log p)⌋₊ := by
  have hpr : 0 < (p : ℝ) := by exact_mod_cast hp
  rw [Nat.le_floor_iff (le_of_lt (Real.exp_pos u)),
    Nat.le_floor_iff (le_of_lt (Real.exp_pos _))]
  have hexp : Real.exp (u - Real.log (p : ℝ)) =
      Real.exp u / (p : ℝ) := by
    rw [Real.exp_sub, Real.exp_log hpr]
  rw [hexp]
  push_cast
  exact (le_div_iff₀ hpr).symm

/-- The original response has exact multiplicative causal delay at each
positive p,k, both before and after their shared birth boundary. -/
theorem pickupResponse_mul_shift
    (p k : ℕ) (hp : 0 < p) (hk : 0 < k) (u : ℝ) :
    pickupResponse (p * k) u =
      (Real.sqrt (p : ℝ))⁻¹ *
        pickupResponse k (u - Real.log p) := by
  have hpr : 0 < (p : ℝ) := by exact_mod_cast hp
  have hkr : 0 < (k : ℝ) := by exact_mod_cast hk
  have hlog : Real.log ((p * k : ℕ) : ℝ) =
      Real.log (p : ℝ) + Real.log (k : ℝ) := by
    rw [Nat.cast_mul, Real.log_mul (ne_of_gt hpr) (ne_of_gt hkr)]
  have hroot : (Real.sqrt (((p * k : ℕ) : ℝ)))⁻¹ =
      (Real.sqrt (p : ℝ))⁻¹ * (Real.sqrt (k : ℝ))⁻¹ := by
    rw [Nat.cast_mul, Real.sqrt_mul' _ (le_of_lt hkr), mul_inv_rev]
  have hpHalf : Real.exp (-Real.log (p : ℝ) / 2) =
      (Real.sqrt (p : ℝ))⁻¹ := by
    rw [← Real.exp_neg, Real.exp_half, Real.exp_log hpr]
  have hexp : Real.exp (-u / 2) =
      (Real.sqrt (p : ℝ))⁻¹ *
        Real.exp (-(u - Real.log p) / 2) := by
    rw [← hpHalf, ← Real.exp_add]
    congr 1
    ring
  have hbirth : Real.log ((p * k : ℕ) : ℝ) ≤ u ↔
      Real.log (k : ℝ) ≤ u - Real.log (p : ℝ) := by
    rw [hlog]
    constructor <;> intro h <;> linarith
  by_cases h : Real.log ((p * k : ℕ) : ℝ) ≤ u
  · have h' := hbirth.mp h
    simp only [pickupResponse, if_pos h, if_pos h']
    rw [hroot, hexp]
    ring
  · have h' : ¬ Real.log (k : ℝ) ≤ u - Real.log (p : ℝ) :=
      fun hk' => h (hbirth.mpr hk')
    simp [pickupResponse, h, h']

/-- All positive p-multiples in the original finite inventory correspond
to all positive quotient indices in the shifted finite inventory. -/
theorem positive_multiple_finset_sum
    (p : ℕ) (hp : 0 < p) (u : ℝ) (f : ℕ → ℝ) :
    (∑ n ∈ (Finset.Icc 1 ⌊Real.exp u⌋₊).filter (fun n => p ∣ n),
      f n) =
    ∑ k ∈ Finset.Icc 1 ⌊Real.exp (u - Real.log p)⌋₊,
      f (p * k) := by
  classical
  symm
  apply Finset.sum_bij (fun k hk => p * k)
  · intro k hk
    have hkr := (Finset.mem_Icc.mp hk).1
    have hbound := (positive_multiple_cutoff_iff p k hp u).2
      (Finset.mem_Icc.mp hk).2
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨(by nlinarith : 1 ≤ p * k), hbound⟩,
        dvd_mul_right p k⟩
  · intro k hk
    rfl
  · intro k l hk hl heq
    exact Nat.eq_of_mul_eq_mul_left hp heq
  · intro n hn
    have hndiv : p ∣ n := (Finset.mem_filter.mp hn).2
    obtain ⟨k, hk⟩ := hndiv
    have hnpos : 1 ≤ n := (Finset.mem_Icc.mp
      (Finset.mem_filter.mp hn).1).1
    have hkp : 1 ≤ k := by
      by_contra h
      have hz : k = 0 := by omega
      simp [hk, hz] at hnpos
    have hbound : p * k ≤ ⌊Real.exp u⌋₊ := by
      simpa [hk] using (Finset.mem_Icc.mp
        (Finset.mem_filter.mp hn).1).2
    refine ⟨k, Finset.mem_Icc.mpr
      ⟨hkp, (positive_multiple_cutoff_iff p k hp u).1 hbound⟩, ?_⟩
    simpa [hk]

/-- The original open one-prime proposition, with no remaining analytical
or arithmetic hypothesis: the mathematical proof is complete, while the
Lean script is a proof candidate until accepted by pinned Lean/Mathlib. -/
theorem primeDivisorWaveformIdentity :
    PrimeDivisorWaveformIdentity := by
  intro p u hp
  have hpp : 0 < p := hp.pos
  unfold primeDivisorWaveform
  rw [positive_multiple_finset_sum p hpp u
    (fun n => coefficient n * pickupResponse n u)]
  calc
    (∑ k ∈ Finset.Icc 1 ⌊Real.exp (u - Real.log p)⌋₊,
      coefficient (p * k) * pickupResponse (p * k) u) =
      ∑ k ∈ Finset.Icc 1 ⌊Real.exp (u - Real.log p)⌋₊,
        -(1 / Real.sqrt (p : ℝ)) *
          (coefficient k * pickupResponse k (u - Real.log p)) := by
            apply Finset.sum_congr rfl
            intro k hk
            have hkpos := (Finset.mem_Icc.mp hk).1
            rw [coefficient_mul, pickupResponse_mul_shift p k hpp hkpos u]
            have hpcoef : coefficient p = -1 := by
              unfold coefficient
              rw [ArithmeticFunction.liouville_apply hp.ne_zero,
                ArithmeticFunction.cardFactors_apply_prime hp]
              norm_num
            rw [hpcoef]
            ring
    _ = -(1 / Real.sqrt (p : ℝ)) * waveform (u - Real.log p) := by
      unfold waveform
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k hk
      ring

end GRWTSK.NumberTheory.LiouvillePrimeDelayMultipleReindex
