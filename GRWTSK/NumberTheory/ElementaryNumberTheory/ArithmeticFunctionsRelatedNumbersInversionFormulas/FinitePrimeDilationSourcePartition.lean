/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PrimeDilationSignedPackets

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact union-of-prime-slopes source partition, preserving all other pairs.
No signed-complement estimate or growing-family cancellation is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

def selectedPrimeSlope (P : Finset ℕ) (r s : ℕ) : Prop :=
  ∃ p ∈ P, Nat.Coprime p r ∧ s=p*r

noncomputable def finitePrimeSelectedSource (P : Finset ℕ) (m n : ℕ) : ℝ := by
  classical
  exact ∑ r ∈ Finset.Icc 1 m, ∑ s ∈ Finset.Icc 1 n,
    if selectedPrimeSlope P r s then moebiusReal r*moebiusReal s else 0

noncomputable def finitePrimeComplementSource (P : Finset ℕ) (m n : ℕ) : ℝ := by
  classical
  exact ∑ r ∈ Finset.Icc 1 m, ∑ s ∈ Finset.Icc 1 n,
    if selectedPrimeSlope P r s then 0 else moebiusReal r*moebiusReal s

theorem finitePrimeSelectedSource_nonpos (P : Finset ℕ) (m n : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) : finitePrimeSelectedSource P m n ≤ 0 := by
  classical
  unfold finitePrimeSelectedSource
  apply Finset.sum_nonpos
  intro r _
  apply Finset.sum_nonpos
  intro s _
  split_ifs with h
  · obtain ⟨p,hp,hcop,hs⟩ := h
    rw [hs, prime_dilation_product p r (hP p hp) hcop]
    exact neg_nonpos.mpr (sq_nonneg _)
  · exact le_rfl

theorem mertens_product_eq_finitePrime_partition (P : Finset ℕ) (m n : ℕ) :
    pickupMertensPrefix m*pickupMertensPrefix n =
      finitePrimeSelectedSource P m n+finitePrimeComplementSource P m n := by
  classical
  calc
    _ = ∑ r ∈ Finset.Icc 1 m, ∑ s ∈ Finset.Icc 1 n, moebiusReal r*moebiusReal s := by
      unfold pickupMertensPrefix
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro r _
      rw [Finset.mul_sum]
    _ = _ := by
      unfold finitePrimeSelectedSource finitePrimeComplementSource
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro r _
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro s _
      split_ifs <;> ring

theorem mertens_product_le_finitePrime_complement (P : Finset ℕ) (m n : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) :
    pickupMertensPrefix m*pickupMertensPrefix n ≤ finitePrimeComplementSource P m n := by
  rw [mertens_product_eq_finitePrime_partition]
  linarith [finitePrimeSelectedSource_nonpos P m n hP]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
