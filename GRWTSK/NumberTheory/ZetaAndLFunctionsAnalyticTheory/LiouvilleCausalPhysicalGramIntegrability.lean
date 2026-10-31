/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePrimeOverlapReconstruction
import Mathlib

/-!
# Literal causal response: continuous births and integrable physical-time Gram

This increment proves the real-variable birth joining and elementary
interval-integrability for the unchanged CCC.pickupResponse, then consumes
the previous finite mixed-gram interchange. No altered causal kernel or
research axiom is introduced.

A separate fixed/dynamic cutoff identity is stated explicitly as a premise
until its Nat.floor and log/exp source conversion has been compiled.
The exact prime-delay identity remains a separate obligation.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleGrowingPrimeBandIdentity
open GRWTSK.NumberTheory.LiouvillePrimeOverlapReconstruction

namespace GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability

/-- At the original birth u=log n the response is exactly zero.
The positivity of n is essential: do not invoke exp_log at n=0. -/
theorem pickupResponse_birth_zero (n : ℕ) (hn : 0 < n) :
    pickupResponse n (Real.log n) = 0 := by
  have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
  have hsqrt :
      (Real.sqrt (n : ℝ))⁻¹ =
        Real.exp (-Real.log (n : ℝ) / 2) := by
    calc
      (Real.sqrt (n : ℝ))⁻¹ =
          (Real.exp (Real.log (n : ℝ) / 2))⁻¹ := by
            rw [Real.exp_half, Real.exp_log hnreal]
      _ = Real.exp (-(Real.log (n : ℝ) / 2)) := by
            rw [Real.exp_neg]
      _ = Real.exp (-Real.log (n : ℝ) / 2) := by ring
  simp [pickupResponse, hsqrt]

/-- Original positive-index response, not a continuous surrogate:
the two conditional branches join at their common zero birth. -/
theorem pickupResponse_continuous (n : ℕ) (hn : 0 < n) :
    Continuous (pickupResponse n) := by
  have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
  have hsqrt :
      (Real.sqrt (n : ℝ))⁻¹ =
        Real.exp (-Real.log (n : ℝ) / 2) := by
    calc
      (Real.sqrt (n : ℝ))⁻¹ =
          (Real.exp (Real.log (n : ℝ) / 2))⁻¹ := by
            rw [Real.exp_half, Real.exp_log hnreal]
      _ = Real.exp (-(Real.log (n : ℝ) / 2)) := by
            rw [Real.exp_neg]
      _ = Real.exp (-Real.log (n : ℝ) / 2) := by ring
  have hbranch :
      Continuous (fun u : ℝ =>
        2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2))) := by
    fun_prop
  have hjoin : ∀ u : ℝ, Real.log (n : ℝ) = u →
      2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)) = 0 := by
    intro u hu
    subst u
    rw [hsqrt]
    ring
  have hcont :
      Continuous (fun u : ℝ =>
        if Real.log (n : ℝ) ≤ u then
          2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2))
        else 0) :=
    hbranch.if_le continuous_const continuous_const continuous_id hjoin
  simpa only [pickupResponse] using hcont

/-- Literal Gram integrand is interval integrable for every T, including
T=0 and negative T; no arithmetic cancellation is used. -/
theorem pickupResponse_product_intervalIntegrable
    (n m : ℕ) (hn : 0 < n) (hm : 0 < m) (T : ℝ) :
    IntervalIntegrable
      (fun u : ℝ => pickupResponse n u * pickupResponse m u)
      volume 0 T := by
  exact ((pickupResponse_continuous n hn).mul
    (pickupResponse_continuous m hm)).intervalIntegrable 0 T

/-- The exact coefficient-weighted products of the original selected-divisor
mixed Gram are integrable: weights have no extra regularity assumptions. -/
theorem original_mixed_term_intervalIntegrable
    (P : Finset ℕ) (w : ℕ → ℝ) (n m : ℕ)
    (hn : 0 < n) (hm : 0 < m) (T : ℝ) :
    IntervalIntegrable
      (fun u : ℝ =>
        coefficient n * (coefficient m * selectedDivisorWeight P w m) *
          (pickupResponse n u * pickupResponse m u))
      volume 0 T := by
  exact (pickupResponse_product_intervalIntegrable n m hn hm T).const_mul
    (coefficient n * (coefficient m * selectedDivisorWeight P w m))

/-- Full original fixed-inventory mixed Gram: an unconditional analytical
interchange, using only the literal positive indices in Icc 1 N. -/
theorem original_fixed_mixed_integral_eq_gram
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ) :
    (∫ u in (0 : ℝ)..T,
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        coefficient n * pickupResponse n u) *
      (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        coefficient m * selectedDivisorWeight P w m *
          pickupResponse m u)) =
    originalMixedGram P (Finset.Icc 1 ⌊Real.exp T⌋₊)
      w (originalCausalKernel T) := by
  apply finite_mixed_integral_eq_originalGram_of_integrable
  intro n hn m hm
  exact original_mixed_term_intervalIntegrable P w n m
    (Finset.mem_Icc.mp hn).1 (Finset.mem_Icc.mp hm).1 T

/-- Fixed-inventory waveform at a global time T, even when evaluated at
an earlier time u; future birth terms have their literal zero response. -/
def fixedWaveform (T u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    coefficient n * pickupResponse n u

/-- Exact support statement required for changing cutoff. This is NOT an
arithmetic hypothesis; it is to be discharged by floor/log conversions. -/
def CausalCutoffIdentity : Prop :=
  ∀ (T u : ℝ), 0 ≤ u → u ≤ T → waveform u = fixedWaveform T u

/-- Exact support of every source term above the dynamic floor.
The strict inequality is valid at integral birth heights because the
terminal response is zero there as well. -/
theorem pickupResponse_zero_of_floor_lt
    (n : ℕ) (u : ℝ) (hn : ⌊Real.exp u⌋₊ < n) :
    pickupResponse n u = 0 := by
  have hne : 0 < n := by omega
  have hnreal : 0 < (n : ℝ) := by exact_mod_cast hne
  have hfloor : Real.exp u < (⌊Real.exp u⌋₊ : ℝ) + 1 :=
    Nat.lt_floor_add_one _
  have hnext : (⌊Real.exp u⌋₊ : ℝ) + 1 ≤ (n : ℝ) := by
    exact_mod_cast (Nat.succ_le_iff.mpr hn)
  have hlt : Real.exp u < (n : ℝ) := lt_of_lt_of_le hfloor hnext
  have hbirth : u < Real.log (n : ℝ) :=
    (Real.lt_log_iff_exp_lt hnreal).2 hlt
  exact pickupResponse_before_birth n u hbirth

/-- Finite source at dynamic cutoff equals the longer fixed inventory:
all future entries have zero literal response. -/
theorem waveform_eq_fixed_of_le
    (T u : ℝ) (hu : u ≤ T) :
    waveform u = fixedWaveform T u := by
  classical
  have hfloor : ⌊Real.exp u⌋₊ ≤ ⌊Real.exp T⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr hu)
  have hsub :
      Finset.Icc 1 ⌊Real.exp u⌋₊ ⊆
        Finset.Icc 1 ⌊Real.exp T⌋₊ := by
    intro n hn
    exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp hn).1,
        le_trans (Finset.mem_Icc.mp hn).2 hfloor⟩
  unfold waveform fixedWaveform
  apply Finset.sum_subset hsub
  intro n hlarge hnot
  have hsmall : 1 ≤ n := (Finset.mem_Icc.mp hlarge).1
  have hn : ⌊Real.exp u⌋₊ < n := by
    by_contra h
    exact hnot (Finset.mem_Icc.mpr ⟨hsmall, Nat.le_of_not_gt h⟩)
  rw [pickupResponse_zero_of_floor_lt n u hn]
  ring

/-- The exact original dynamic/fixed cutoff identity, without any
new hypothesis or replacement of the physical-time source. -/
theorem causalCutoffIdentity : CausalCutoffIdentity := by
  intro T u hu0 huT
  exact waveform_eq_fixed_of_le T u huT

/-- The selected-divisor weighted source itself is a finite original-index
sum. Squaring and integrating recovers the full selected-divisor Gram,
rather than the distinct MIXED gram. -/
theorem selected_fixed_integral_eq_gram
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ) :
    (∫ u in (0 : ℝ)..T,
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        coefficient n * selectedDivisorWeight P w n *
          pickupResponse n u) ^ 2) =
    divisorSignedGram P (Finset.Icc 1 ⌊Real.exp T⌋₊)
      w (originalCausalKernel T) := by
  classical
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hInt : ∀ n ∈ S, ∀ m ∈ S,
      IntervalIntegrable
        (fun u : ℝ =>
          (coefficient n * selectedDivisorWeight P w n) *
          (coefficient m * selectedDivisorWeight P w m) *
          (pickupResponse n u * pickupResponse m u))
        volume 0 T := by
    intro n hn m hm
    exact (pickupResponse_product_intervalIntegrable n m
      (Finset.mem_Icc.mp hn).1 (Finset.mem_Icc.mp hm).1 T).const_mul
      ((coefficient n * selectedDivisorWeight P w n) *
        (coefficient m * selectedDivisorWeight P w m))
  have hExpand (u : ℝ) :
      (∑ n ∈ S,
        coefficient n * selectedDivisorWeight P w n *
          pickupResponse n u) ^ 2 =
      ∑ n ∈ S, ∑ m ∈ S,
        (coefficient n * selectedDivisorWeight P w n) *
        (coefficient m * selectedDivisorWeight P w m) *
        (pickupResponse n u * pickupResponse m u) := by
    rw [pow_two, Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    apply Finset.sum_congr rfl
    intro m hm
    ring
  have hExchange := integrate_finite_double_sum S T
    (fun n m u =>
      (coefficient n * selectedDivisorWeight P w n) *
      (coefficient m * selectedDivisorWeight P w m) *
      (pickupResponse n u * pickupResponse m u)) hInt
  change (∫ u in (0 : ℝ)..T,
      (∑ n ∈ S, coefficient n * selectedDivisorWeight P w n *
        pickupResponse n u) ^ 2) =
    divisorSignedGram P S w (originalCausalKernel T)
  calc
    _ = (∫ u in (0 : ℝ)..T, ∑ n ∈ S, ∑ m ∈ S,
      (coefficient n * selectedDivisorWeight P w n) *
      (coefficient m * selectedDivisorWeight P w m) *
      (pickupResponse n u * pickupResponse m u)) := by
        apply intervalIntegral.integral_congr
        intro u hu
        exact hExpand u
    _ = ∑ n ∈ S, ∑ m ∈ S,
      ∫ u in (0 : ℝ)..T,
        (coefficient n * selectedDivisorWeight P w n) *
        (coefficient m * selectedDivisorWeight P w m) *
        (pickupResponse n u * pickupResponse m u) := hExchange
    _ = divisorSignedGram P S w (originalCausalKernel T) := by
      unfold divisorSignedGram signedGram originalCausalKernel pickupResponseGram
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro m hm
      rw [intervalIntegral.integral_const_mul]
      ring

/-- Complete pre-existing PhysicalTimeGramBridge is established as a
source proof candidate with no additional arithmetic or cutoff hypothesis.
Its RHS is the squared SELECTED waveform, matching the original definition. -/
theorem physicalTimeGramBridge :
    PhysicalTimeGramBridge := by
  intro P w T hT
  exact (selected_fixed_integral_eq_gram P w T).symm

/-- The mixed physical-time Gram is a different identity. Only conversion
of the full dynamic Liouville waveform to its fixed global inventory is
needed after the literal integrability result above. -/
theorem mixedPhysicalGram_of_cutoff
    (hcut : CausalCutoffIdentity)
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ) (hT : 0 ≤ T) :
    (∫ u in (0 : ℝ)..T,
      waveform u *
        (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          coefficient m * selectedDivisorWeight P w m *
            pickupResponse m u)) =
      originalMixedGram P (Finset.Icc 1 ⌊Real.exp T⌋₊)
        w (originalCausalKernel T) := by
  rw [← original_fixed_mixed_integral_eq_gram P w T]
  apply intervalIntegral.integral_congr
  intro u hu
  rw [hcut T u (le_of_lt hu.1) hu.2]
  rfl

/-- The complete existing mixed physical-time Gram now requires no
cutoff, integrability, or arbitrary finite-sum exchange hypothesis. -/
theorem mixedPhysicalGram
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ) (hT : 0 ≤ T) :
    (∫ u in (0 : ℝ)..T,
      waveform u *
        (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          coefficient m * selectedDivisorWeight P w m *
            pickupResponse m u)) =
      originalMixedGram P (Finset.Icc 1 ⌊Real.exp T⌋₊)
        w (originalCausalKernel T) :=
  mixedPhysicalGram_of_cutoff causalCutoffIdentity P w T hT

end GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
