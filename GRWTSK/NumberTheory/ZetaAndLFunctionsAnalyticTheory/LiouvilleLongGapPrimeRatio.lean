/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleInteriorLongGapRH
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Original Liouville prime-dilation sign inside the RH-facing long-gap sum

This is a genuine coefficient sign consequence of complete multiplicativity,
not a probabilistic model. Every prime multiplier p contributes the exact
product lambda(m)*lambda(p*m) = -lambda(m)^2.

The original positive-index pickupResponse and physical causalKernel are
unchanged. The exact prime-ratio sector is NONPOSITIVE at every scale.
The complementary signed remainder is NOT proven subexponential; the
mathematical review demonstrates a substantial forced positive compensation
and a separate fixed-exponent bound on the whole divisible-ratio sector.

Neither InteriorLongGapAllRate nor RiemannHypothesis is proved here.
These are uncompiled Lean source candidates; no axiom or omitted sign.
-/

namespace GRWTSK.NumberTheory.LiouvilleLongGapPrimeRatio

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
open GRWTSK.NumberTheory.LiouvilleInteriorLongGapRH

/-- The actual integer Liouville coefficient at a positive prime is -1. -/
theorem coefficient_prime (p : ℕ) (hp : Nat.Prime p) :
    coefficient p = -1 := by
  unfold coefficient
  rw [ArithmeticFunction.liouville_apply hp.ne_zero,
      ArithmeticFunction.cardFactors_apply_prime hp]
  norm_num

/-- Exact source-specific arithmetic sign on every prime-ratio pair,
without assuming an independence estimate or a squarefree restriction. -/
theorem prime_ratio_signed_product (m p : ℕ) (hp : Nat.Prime p) :
    coefficient m * coefficient (p * m) = -(coefficient m) ^ 2 := by
  rw [coefficient_mul, coefficient_prime p hp]
  ring

/-- Index correspondence between original additive gap and prime dilation. -/
theorem prime_ratio_gap_index (m p : ℕ) (hp : 1 ≤ p) :
    m + (p - 1) * m = p * m := by
  have heq : p - 1 + 1 = p := Nat.sub_add_cancel hp
  calc
    m + (p - 1) * m = ((p - 1) + 1) * m := by ring
    _ = p * m := by rw [heq]

/-- Source-specific nonnegativity of the literal positive-index causal Gram.
No sign of the arithmetic coefficient is assumed here. -/
theorem source_causalKernel_nonneg (T : ℝ) (hT : 0 ≤ T)
    (m g : ℕ) (hm : 1 ≤ m) :
    0 ≤ causalKernel T m g := by
  unfold causalKernel
  apply intervalIntegral.integral_nonneg_of_forall hT
  intro u
  exact mul_nonneg
    (pickupResponse_nonneg_positive m hm u)
    (pickupResponse_nonneg_positive (m + g) (by omega) u)

/-- Every original prime-ratio signed Gram term is nonpositive. -/
theorem prime_ratio_gram_nonpos
    (T : ℝ) (hT : 0 ≤ T) (m p : ℕ)
    (hm : 1 ≤ m) (hp : Nat.Prime p) :
    coefficient m * coefficient (p * m) *
      causalKernel T m ((p - 1) * m) ≤ 0 := by
  rw [prime_ratio_signed_product m p hp]
  have hk : 0 ≤ causalKernel T m ((p - 1) * m) :=
    source_causalKernel_nonneg T hT m ((p - 1) * m) hm
  have hprod : 0 ≤ (coefficient m) ^ 2 *
      causalKernel T m ((p - 1) * m) :=
    mul_nonneg (sq_nonneg _) hk
  linarith

/-- Exact original prime-ratio subfamily of the unresolved interior long gaps.
There is no projection or independent-prime replacement. -/
def primeRatioLongGapSector (j : ℕ) : ℝ :=
  ∑ p ∈ (Finset.Icc 2 (longGapBulkCutoff j)).filter Nat.Prime,
    ∑ m ∈ Finset.Icc 1 (longGapBulkCutoff j),
      if p * m ≤ longGapBulkCutoff j ∧
           longGapShortCutoff j < (p - 1) * m then
        coefficient m * coefficient (p * m) *
          causalKernel (longGapTime j) m ((p - 1) * m)
      else 0

/-- A complete unconditional negative arithmetic sector of P. -/
theorem primeRatioLongGapSector_nonpos (j : ℕ) :
    primeRatioLongGapSector j ≤ 0 := by
  classical
  have hT : 0 ≤ longGapTime j := by
    unfold longGapTime
    positivity
  unfold primeRatioLongGapSector
  apply Finset.sum_nonpos
  intro p hp
  have hprime : Nat.Prime p := (Finset.mem_filter.mp hp).2
  apply Finset.sum_nonpos
  intro m hm
  by_cases hkeep :
      p * m ≤ longGapBulkCutoff j ∧
      longGapShortCutoff j < (p - 1) * m
  · rw [if_pos hkeep]
    exact prime_ratio_gram_nonpos (longGapTime j) hT m p
      (Finset.mem_Icc.mp hm).1 hprime
  · simp [hkeep]

/-- Retains every complement pair with its original signed coefficient. -/
def nonPrimeRatioRemainder (j : ℕ) : ℝ :=
  interiorLongGapAt j - primeRatioLongGapSector j

/-- The actual source never loses the negative prime-ratio credit. -/
theorem prime_ratio_complete_split (j : ℕ) :
    interiorLongGapAt j =
      primeRatioLongGapSector j + nonPrimeRatioRemainder j := by
  unfold nonPrimeRatioRemainder
  ring

/-- A forced positive compensation follows when the original long-gap
sum has a polynomial lower bound and the prime sector has negative mass.
This is a scalar consumer, NOT an arithmetic upper estimate. -/
theorem remainder_forced_lower
    (total primePart remaining credit error : ℝ)
    (hsplit : total = primePart + remaining)
    (htotal : -error ≤ total)
    (hprime : primePart ≤ -credit) :
    credit - error ≤ remaining := by
  linarith

end GRWTSK.NumberTheory.LiouvilleLongGapPrimeRatio
