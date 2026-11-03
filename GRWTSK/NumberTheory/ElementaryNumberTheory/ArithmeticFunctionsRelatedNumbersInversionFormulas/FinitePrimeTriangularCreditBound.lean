/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.FinitePrimeTriangularSourceIdentity

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Complete source credit equals its bounded finite-prime sum.
No uniform bound on the signed remainder is supplied. NOT_RUN. -/
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

theorem triangularPrimeUnionCredit_eq_family (P : Finset ℕ) (N : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) :
    triangularPrimeUnionCredit P N = finitePrimeDilationCredit P N := by
  unfold triangularPrimeUnionCredit
  simp_rw [finitePrimeSelectedSource_eq_packets P _ _ hP,
    ← Finset.sum_neg_distrib, Finset.mul_sum]
  calc
    _ = ∑ k ∈ Finset.range N, ∑ p ∈ P, ∑ m ∈ Finset.range (k+1),
        (2*criticalEndpointGap m*criticalEndpointGap (k+1))*(-primeDilationPacket p m (k+1)) := by
      apply Finset.sum_congr rfl
      intro k _
      exact Finset.sum_comm
    _ = ∑ p ∈ P, ∑ k ∈ Finset.range N, ∑ m ∈ Finset.range (k+1),
        (2*criticalEndpointGap m*criticalEndpointGap (k+1))*(-primeDilationPacket p m (k+1)) :=
      Finset.sum_comm
    _ = _ := rfl

theorem triangularPrimeUnionCredit_le_harmonic (P : Finset ℕ) (N : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) :
    triangularPrimeUnionCredit P N ≤
      (P.card : ℝ)*(2*∑ k ∈ Finset.range N, 1/((k+2 : ℕ) : ℝ)) := by
  rw [triangularPrimeUnionCredit_eq_family P N hP]
  exact finitePrimeDilationCredit_le_harmonic P N hP

theorem signedPrefix_primeComplement_distance (P : Finset ℕ) (N : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) :
    |sampleSignedMixedPrefix N-triangularPrimeComplement P N| ≤
      (P.card : ℝ)*(2*∑ k ∈ Finset.range N, 1/((k+2 : ℕ) : ℝ)) := by
  have he := signedPrefix_add_primeUnionCredit P N
  have hn := triangularPrimeUnionCredit_nonneg P N hP
  have hb := triangularPrimeUnionCredit_le_harmonic P N hP
  rw [abs_le]
  constructor <;> linarith

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
