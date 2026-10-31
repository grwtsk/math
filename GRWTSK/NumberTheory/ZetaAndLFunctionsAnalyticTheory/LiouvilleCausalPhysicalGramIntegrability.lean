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

/-- The full physical-time Gram bridge follows without a hidden
integrability premise once the literal finite-cutoff identity is supplied.
Unlike the previous interface, integrability and finite sum interchange
are established by the preceding candidate declarations. -/
theorem physicalTimeGramBridge_of_cutoff
    (hcut : CausalCutoffIdentity) :
    PhysicalTimeGramBridge := by
  intro P w T hT
  have hfix := original_fixed_mixed_integral_eq_gram P w T
  symm
  calc
    originalMixedGram P (Finset.Icc 1 ⌊Real.exp T⌋₊)
        w (originalCausalKernel T) =
      (∫ u in (0 : ℝ)..T,
        fixedWaveform T u *
        (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          coefficient m * selectedDivisorWeight P w m *
            pickupResponse m u)) := by
              simpa only [fixedWaveform] using hfix.symm
    _ = (∫ u in (0 : ℝ)..T,
        waveform u *
        (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          coefficient m * selectedDivisorWeight P w m *
            pickupResponse m u)) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [hcut T u (le_of_lt hu.1) hu.2]

end GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
