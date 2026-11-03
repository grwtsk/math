/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PrimeDilationSignedPackets
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusDoublingCredit

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact finite-family cost for genuine prime-dilation credits.
No complete source split or signed-complement estimate is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

def primeDilationCreditRow (p n : ℕ) : ℝ :=
  ∑ m ∈ Finset.range n, (2*criticalEndpointGap m*criticalEndpointGap n)*
    (-primeDilationPacket p m n)

theorem primeDilationCreditRow_le (p n : ℕ) (hp : Nat.Prime p) (hn : 1 ≤ n) :
    primeDilationCreditRow p n ≤ 2/((n+1 : ℕ) : ℝ) := by
  have hgn := criticalEndpointGap_nonneg hn
  calc
    _ ≤ ∑ m ∈ Finset.range n, (2*criticalEndpointGap n)*((m : ℝ)*criticalEndpointGap m) := by
      unfold primeDilationCreditRow
      apply Finset.sum_le_sum
      intro m _
      by_cases hm : m=0
      · subst m
        simp [primeDilationPacket]
      have hgm := criticalEndpointGap_nonneg (Nat.one_le_iff_ne_zero.mpr hm)
      have hh := mul_le_mul_of_nonneg_left (primeDilationPacket_credit_le p m n hp)
        (mul_nonneg (mul_nonneg (by norm_num) hgm) hgn)
      convert hh using 1 <;> ring
    _ = (2*criticalEndpointGap n)* (∑ m ∈ Finset.range n, (m : ℝ)*criticalEndpointGap m) := by
      rw [Finset.mul_sum]
    _ ≤ (2*criticalEndpointGap n)*Real.sqrt n :=
      mul_le_mul_of_nonneg_left (sum_nat_mul_endpointGap_le_sqrt n) (by positivity)
    _ ≤ 2/((n+1 : ℕ) : ℝ) := by
      have h := endpointGap_mul_sqrt_le_succ_inv hn
      nlinarith

def finitePrimeDilationCredit (P : Finset ℕ) (N : ℕ) : ℝ :=
  ∑ p ∈ P, ∑ k ∈ Finset.range N, primeDilationCreditRow p (k+1)

theorem finitePrimeDilationCredit_le_harmonic (P : Finset ℕ) (N : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) :
    finitePrimeDilationCredit P N ≤
      (P.card : ℝ)*(2*∑ k ∈ Finset.range N, 1/((k+2 : ℕ) : ℝ)) := by
  unfold finitePrimeDilationCredit
  calc
    _ ≤ ∑ _p ∈ P, (2*∑ k ∈ Finset.range N, 1/((k+2 : ℕ) : ℝ)) := by
      apply Finset.sum_le_sum
      intro p hp
      rw [Finset.mul_sum]
      apply Finset.sum_le_sum
      intro k _
      simpa only [Nat.add_assoc, mul_one_div] using
        primeDilationCreditRow_le p (k+1) (hP p hp) (by omega)
    _ = _ := by simp [nsmul_eq_mul]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
