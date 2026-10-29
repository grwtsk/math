/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ParityMertensDyadicReconstruction
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.SignedPrefixDyadicCorrelation

/-!
# A genuinely arithmetic negative subpacket of Mertens products

The exact parity/multiplicativity identity for mu(2r) makes the selected pairs
(r,2r) nonpositive. The complement in M(m)*M(n) is retained explicitly.
No estimate of that complement, of its full triangular H kernel, or of RH is
asserted. The dilation identity is not an additive fixed-shift Chowla estimate.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

theorem moebius_doubling_product (r : ℕ) :
    moebiusReal r * moebiusReal (2 * r) =
      if r % 2 = 1 then -(moebiusReal r ^ 2) else 0 := by
  rw [moebiusReal_two_mul_eq_parity]
  split_ifs <;> ring

theorem moebius_doubling_product_nonpos (r : ℕ) :
    moebiusReal r * moebiusReal (2 * r) ≤ 0 := by
  rw [moebius_doubling_product]
  split_ifs
  · exact neg_nonpos.mpr (sq_nonneg _)
  · exact le_rfl

/-- Selected actual coefficient pairs with their original two cutoffs. -/
def mertensDoublingPairPacket (m n : ℕ) : ℝ :=
  ∑ r ∈ Finset.Icc 1 m,
    if 2 * r ≤ n then moebiusReal r * moebiusReal (2 * r) else 0

/-- Every other actual ordered pair, including the original coefficient
diagonal and both possible signs. No complement estimate is hidden here. -/
def mertensDoublingPairRemainder (m n : ℕ) : ℝ :=
  ∑ r ∈ Finset.Icc 1 m, ∑ s ∈ Finset.Icc 1 n,
    if s = 2 * r then 0 else moebiusReal r * moebiusReal s

theorem mertensDoublingPairPacket_nonpos (m n : ℕ) :
    mertensDoublingPairPacket m n ≤ 0 := by
  unfold mertensDoublingPairPacket
  apply Finset.sum_nonpos
  intro r _
  split_ifs
  · exact moebius_doubling_product_nonpos r
  · exact le_rfl

/-- Exact finite source split. A sign estimate on the selected subpacket
alone must never be promoted to an upper estimate for the whole product. -/
theorem mertens_product_eq_doubling_add_remainder (m n : ℕ) :
    pickupMertensPrefix m * pickupMertensPrefix n =
      mertensDoublingPairPacket m n + mertensDoublingPairRemainder m n := by
  have hselected (r : ℕ) (hr : r ∈ Finset.Icc 1 m) :
      (∑ s ∈ Finset.Icc 1 n,
        if s = 2 * r then moebiusReal r * moebiusReal s else 0) =
      if 2 * r ≤ n then moebiusReal r * moebiusReal (2 * r) else 0 := by
    have hrpos : 1 ≤ r := (Finset.mem_Icc.mp hr).1
    by_cases h : 2 * r ≤ n
    · have hmem : 2 * r ∈ Finset.Icc 1 n := Finset.mem_Icc.mpr ⟨by omega, h⟩
      simp [h, hmem]
    · have hmem : 2 * r ∉ Finset.Icc 1 n := by simp only [Finset.mem_Icc]; omega
      simp [h, hmem]
  calc
    _ = ∑ r ∈ Finset.Icc 1 m, ∑ s ∈ Finset.Icc 1 n,
        moebiusReal r * moebiusReal s := by
      unfold pickupMertensPrefix
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro r _
      rw [Finset.mul_sum]
    _ = ∑ r ∈ Finset.Icc 1 m,
        ((if 2 * r ≤ n then moebiusReal r * moebiusReal (2 * r) else 0) +
          ∑ s ∈ Finset.Icc 1 n, if s = 2 * r then 0 else moebiusReal r * moebiusReal s) := by
      apply Finset.sum_congr rfl
      intro r hr
      rw [← hselected r hr, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro s _
      split_ifs <;> ring
    _ = _ := by
      rw [Finset.sum_add_distrib]
      rfl

theorem mertens_product_le_doubling_remainder (m n : ℕ) :
    pickupMertensPrefix m * pickupMertensPrefix n ≤ mertensDoublingPairRemainder m n := by
  rw [mertens_product_eq_doubling_add_remainder]
  have h := mertensDoublingPairPacket_nonpos m n
  linarith

/-- Exact source conversion, including the zero source term. -/
theorem dilationIncrementSource_eq_prefixGap (n : ℕ) :
    sampleSignedIncrementSource n = pickupMertensPrefix n * criticalEndpointGap n := by
  simp only [sampleSignedIncrementSource, pickupMertensPrefix, mertensPrefix,
    Nat.floor_natCast, criticalEndpointGap]

/-- The COMPLETE signed complement with the literal triangular H kernel.
No absolute values, fixed-shift replacement, or discarded diagonal occurs. -/
def triangularDoublingRemainder (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N, ∑ m ∈ Finset.range (k + 1),
    (2 * criticalEndpointGap m * criticalEndpointGap (k + 1)) *
      mertensDoublingPairRemainder m (k + 1)

/-- Genuine arithmetic sign removal in H: only the proved nonpositive
doubling-pair subpacket is removed. The remaining upper bound is OPEN. -/
theorem signedMixedPrefix_le_triangularDoublingRemainder (N : ℕ) :
    sampleSignedMixedPrefix N ≤ triangularDoublingRemainder N := by
  rw [sampleSignedMixedPrefix_eq_triangular]
  unfold triangularDoublingRemainder
  apply Finset.sum_le_sum
  intro k _
  rw [Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_le_sum
  intro m _
  simp only [dilationIncrementSource_eq_prefixGap]
  by_cases hm : m = 0
  · subst m
    simp [pickupMertensPrefix, mertensDoublingPairRemainder]
  have hgapm := criticalEndpointGap_nonneg (Nat.one_le_iff_ne_zero.mpr hm)
  have hgapn := criticalEndpointGap_nonneg (n := k + 1) (by omega)
  calc
    _ = (2 * criticalEndpointGap m * criticalEndpointGap (k + 1)) *
        (pickupMertensPrefix m * pickupMertensPrefix (k + 1)) := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left
      (mertens_product_le_doubling_remainder m (k + 1))
      (mul_nonneg (mul_nonneg (by norm_num) hgapm) hgapn)

/-- Conditional source bridge only. The whole signed remainder, uniformly
over N, still needs a new arithmetic estimate; none is constructed here. -/
theorem signedPrefixUpper_of_doublingRemainderUpper {ε K : ℝ}
    (hR : ∀ N : ℕ, triangularDoublingRemainder N ≤ K * (((N + 1 : ℕ) : ℝ) ^ ε)) :
    SampleSignedPrefixUpper ε K := by
  intro N
  exact (signedMixedPrefix_le_triangularDoublingRemainder N).trans (hR N)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
