/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PrimeSlopeUnionPacketIdentity
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.FinitePrimeDilationCredit

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Complete actual triangular finite-prime partition.
Every original cutoff and the zero row are retained. No signed-complement
upper estimate is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

def triangularPrimeUnionCredit (P : Finset ℕ) (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N, ∑ m ∈ Finset.range (k+1),
    (2*criticalEndpointGap m*criticalEndpointGap (k+1))*(-finitePrimeSelectedSource P m (k+1))

def triangularPrimeComplement (P : Finset ℕ) (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N, ∑ m ∈ Finset.range (k+1),
    (2*criticalEndpointGap m*criticalEndpointGap (k+1))*finitePrimeComplementSource P m (k+1)

theorem signedPrefix_add_primeUnionCredit (P : Finset ℕ) (N : ℕ) :
    sampleSignedMixedPrefix N+triangularPrimeUnionCredit P N = triangularPrimeComplement P N := by
  rw [sampleSignedMixedPrefix_eq_triangular]
  unfold triangularPrimeUnionCredit triangularPrimeComplement
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  rw [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  simp only [dilationIncrementSource_eq_prefixGap]
  calc
    _ = (2*criticalEndpointGap m*criticalEndpointGap (k+1))*
        (pickupMertensPrefix m*pickupMertensPrefix (k+1)-finitePrimeSelectedSource P m (k+1)) := by ring
    _ = _ := by rw [mertens_product_eq_finitePrime_partition]; ring

theorem triangularPrimeUnionCredit_nonneg (P : Finset ℕ) (N : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) : 0 ≤ triangularPrimeUnionCredit P N := by
  unfold triangularPrimeUnionCredit
  apply Finset.sum_nonneg
  intro k _
  apply Finset.sum_nonneg
  intro m _
  by_cases hm : m=0
  · subst m
    simp [finitePrimeSelectedSource]
  have hgm := criticalEndpointGap_nonneg (Nat.one_le_iff_ne_zero.mpr hm)
  have hgn := criticalEndpointGap_nonneg (n := k+1) (by omega)
  exact mul_nonneg (mul_nonneg (mul_nonneg (by norm_num) hgm) hgn)
    (neg_nonneg.mpr (finitePrimeSelectedSource_nonpos P m (k+1) hP))

theorem signedPrefix_le_primeComplement (P : Finset ℕ) (N : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) : sampleSignedMixedPrefix N ≤ triangularPrimeComplement P N := by
  have he := signedPrefix_add_primeUnionCredit P N
  have hn := triangularPrimeUnionCredit_nonneg P N hP
  linarith

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
