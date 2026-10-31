/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalEnergyTarget
import Mathlib.Tactic

/-!
# The exact source partition consumed by the Liouville prime-delay argument

Every term keeps its original causal weight and integer Liouville coefficient.
The p-divisible part is negated so that, for a prime, its eventual delay
identification has positive amplitude. That delay identification is NOT an
assumed field or theorem here: the floor reindexing and response scaling remain
separate source obligations. The signed covariance is retained algebraically.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.LiouvilleCausalEnergy

def freeWave (p : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
    if p ∣ n then 0 else coefficient n * GRWTSK.RiemannHypothesis.CCC.pickupResponse n u

def removedWave (p : ℕ) (u : ℝ) : ℝ :=
  -(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
    if p ∣ n then coefficient n * GRWTSK.RiemannHypothesis.CCC.pickupResponse n u else 0)

/-- No arithmetic estimate is used in the complete signed partition. -/
theorem waveform_eq_free_sub_removed (p : ℕ) (u : ℝ) :
    waveform u = freeWave p u - removedWave p u := by
  classical
  unfold waveform freeWave removedWave
  rw [sub_neg_eq_add, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases h : p ∣ n <;> simp [h]

/-- Both pieces share one source inventory; the cross term cannot be discarded. -/
theorem waveform_sq_prime_partition (p : ℕ) (u : ℝ) :
    waveform u ^ 2 = freeWave p u ^ 2 + removedWave p u ^ 2 -
      2 * (freeWave p u * removedWave p u) := by
  rw [waveform_eq_free_sub_removed]
  ring

/-- Integrating the EXACT three-term expression requires no termwise sign premise.
Separate additivity of its integrals still requires their integrability. -/
theorem energy_eq_partition_integrand (p : ℕ) (T : ℝ) :
    energy T = ∫ u in (0 : ℝ)..T,
      (freeWave p u ^ 2 + removedWave p u ^ 2 -
        2 * (freeWave p u * removedWave p u)) := by
  unfold energy
  apply intervalIntegral.integral_congr
  intro u _
  rw [sq_abs, waveform_sq_prime_partition]

/-- The original coefficient retains complete multiplicativity on p-divisible labels. -/
theorem coefficient_multiple (p k : ℕ) :
    coefficient (p * k) = coefficient p * coefficient k := coefficient_mul p k

end GRWTSK.NumberTheory.LiouvilleCausalEnergy
