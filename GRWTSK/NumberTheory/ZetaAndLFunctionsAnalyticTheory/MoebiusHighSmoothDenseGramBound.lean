/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFiniteSmoothEulerMoments
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusQuantitativeMertensAbsoluteAbel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalPhysicalGramIntegrability
import Mathlib

/-!
# Original signed high/high Möbius physical-Gram upper

This is a SOURCE proof candidate for the EXACT existing proposition
HighSmoothDenseFormalizationTarget, for all true finite prime banks,
both original rough/matched Bool tags, any finite distance mask and
all positive dyadic shell sizes.

The finite smooth Euler moments and exact high-smooth divisor counting
are consumed from the previously published, separate source scripts.
The remaining argument bounds the ORIGINAL positive causal response,
integrates the ORIGINAL pickupResponseGram, pays both absolute Möbius
coefficients and sums the complete ORIGINAL off-diagonal masked HH
rectangle. It never assumes positivity of a SIGNED masked Gram, drops
an ordered orientation or changes the original source.

The upper is exactly
  8*T*exp(2*sqrt T)*(bankSquareRootWeight B.primes)^2
for T=log(2*X), not a bank-independent constant or an RH-scale
all-source signed estimate. No new axiom or sorry is introduced.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.NumberTheory.Moebius.HighSmoothDenseGramBound

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.FiniteSmoothEulerMomentsProof
open GRWTSK.NumberTheory.Moebius.QuantitativeMertensAbsoluteAbel

/-- A selected high index is still literally an ORIGINAL integer in
the clipped interval (X,2X]. No birth-time, diagonal or mask
information is silently replaced by an unbounded interval. -/
theorem highSmooth_member_shell
    (B : PrimeBand) (X n : ℕ) (T : ℝ)
    (hn : n ∈ highSmoothBlock B X T) :
    X < n ∧ n ≤ 2 * X := by
  have hb : n ∈ balancedBlock X T := (Finset.mem_filter.mp hn).1
  change n ∈ (Finset.Ioc X (2 * X)).filter
    (fun k => k ∈ endpointIndex T) at hb
  exact Finset.mem_Ioc.mp (Finset.mem_filter.mp hb).1

/-- On the genuine high carrier, the original response is
nonnegative and at most 2/sqrt(X), uniformly in physical time u.
The original r_n, not a positive substitute wave, is used. -/
theorem highSmooth_response_bounds
    (B : PrimeBand) (X n : ℕ) (T u : ℝ)
    (hX : 1 ≤ X)
    (hn : n ∈ highSmoothBlock B X T) :
    0 ≤ pickupResponse n u ∧
      pickupResponse n u ≤ 2 * (Real.sqrt (X : ℝ))⁻¹ := by
  have hshell := highSmooth_member_shell B X n T hn
  have hnOne : 1 ≤ n := by omega
  have hXreal : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hXleN : (X : ℝ) ≤ (n : ℝ) := by
    exact_mod_cast hshell.1.le
  have hroot :
      Real.sqrt (X : ℝ) ≤ Real.sqrt (n : ℝ) :=
    Real.sqrt_le_sqrt hXleN
  have hinv :
      (Real.sqrt (n : ℝ))⁻¹ ≤ (Real.sqrt (X : ℝ))⁻¹ :=
    one_div_le_one_div_of_le (Real.sqrt_pos.2 hXreal) hroot
  constructor
  · exact pickupResponse_nonneg_positive n hnOne u
  · calc
      pickupResponse n u ≤
          2 * (Real.sqrt (n : ℝ))⁻¹ :=
        pickupResponse_le_two_inv_sqrt n hnOne u
      _ ≤ 2 * (Real.sqrt (X : ℝ))⁻¹ :=
        mul_le_mul_of_nonneg_left hinv (by norm_num)

/-- The original causal Gram of any two genuine high-smooth
indices is nonnegative and bounded by the original physical
time length times the sharp shell upper 4/X. This result uses
the literal interval integral of the two actual responses. -/
theorem highSmooth_originalGram_bounds
    (B : PrimeBand) (X m n : ℕ) (T : ℝ)
    (hX : 1 ≤ X) (hT : 0 ≤ T)
    (hm : m ∈ highSmoothBlock B X T)
    (hn : n ∈ highSmoothBlock B X T) :
    0 ≤ pickupResponseGram T m n ∧
      pickupResponseGram T m n ≤ 4 * T / (X : ℝ) := by
  have hXreal : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hmpos : 0 < m := by
    have h := highSmooth_member_shell B X m T hm
    omega
  have hnpos : 0 < n := by
    have h := highSmooth_member_shell B X n T hn
    omega
  let b : ℝ := 2 * (Real.sqrt (X : ℝ))⁻¹
  have hb : 0 ≤ b := by
    dsimp [b]
    positivity
  have hb_sq : b * b = 4 / (X : ℝ) := by
    dsimp [b]
    calc
      (2 * (Real.sqrt (X : ℝ))⁻¹) *
          (2 * (Real.sqrt (X : ℝ))⁻¹) =
        4 * (Real.sqrt (X : ℝ) * Real.sqrt (X : ℝ))⁻¹ := by
          rw [mul_inv_rev]
          ring
      _ = 4 / (X : ℝ) := by
        rw [Real.mul_self_sqrt hXreal.le]
        ring
  have hpoint (u : ℝ) :
      pickupResponse m u * pickupResponse n u ≤
        4 / (X : ℝ) := by
    obtain ⟨hmNonneg, hmBound⟩ :=
      highSmooth_response_bounds B X m T u hX hm
    obtain ⟨hnNonneg, hnBound⟩ :=
      highSmooth_response_bounds B X n T u hX hn
    have hprod :
        pickupResponse m u * pickupResponse n u ≤ b * b :=
      mul_le_mul hmBound hnBound hnNonneg hb
    exact hprod.trans hb_sq.le
  constructor
  · unfold pickupResponseGram
    exact intervalIntegral.integral_nonneg hT (fun u _ =>
      mul_nonneg
        (highSmooth_response_bounds B X m T u hX hm).1
        (highSmooth_response_bounds B X n T u hX hn).1)
  · unfold pickupResponseGram
    calc
      (∫ u in (0 : ℝ)..T,
        pickupResponse m u * pickupResponse n u) ≤
        ∫ u in (0 : ℝ)..T, (4 : ℝ) / (X : ℝ) := by
          apply intervalIntegral.integral_mono hT
            (pickupResponse_product_intervalIntegrable m n hmpos hnpos T)
            intervalIntegrable_const
          intro u
          exact hpoint u
      _ = 4 * T / (X : ℝ) := by
          rw [intervalIntegral.integral_const]
          simp only [sub_zero, smul_eq_mul]
          ring

/-- Even with arbitrary signs on BOTH original coordinates,
each individual actual high/high masked term has absolute value
at most the positive physical Gram allowance 4T/X.
This is NOT a claim that the masked signed Gram is PSD. -/
theorem original_high_high_term_abs_le
    (B : PrimeBand) (a b : Bool) (X m n : ℕ) (T : ℝ)
    (hX : 1 ≤ X) (hT : 0 ≤ T)
    (hm : m ∈ highSmoothBlock B X T)
    (hn : n ∈ highSmoothBlock B X T) :
    |taggedMoebius B.primes a m *
      taggedMoebius B.primes b n *
        pickupResponseGram T m n| ≤ 4 * T / (X : ℝ) := by
  obtain ⟨hgNonneg, hgBound⟩ :=
    highSmooth_originalGram_bounds B X m n T hX hT hm hn
  have habs :
      |taggedMoebius B.primes a m *
        taggedMoebius B.primes b n| ≤ (1 : ℝ) := by
    rw [abs_mul]
    calc
      |taggedMoebius B.primes a m| *
          |taggedMoebius B.primes b n| ≤
        (1 : ℝ) * 1 :=
          mul_le_mul
            (taggedMoebius_abs_le_one B.primes a m)
            (taggedMoebius_abs_le_one B.primes b n)
            (abs_nonneg _) (by norm_num)
      _ = 1 := by ring
  rw [abs_mul, abs_of_nonneg hgNonneg]
  calc
    |taggedMoebius B.primes a m *
        taggedMoebius B.primes b n| *
          pickupResponseGram T m n ≤
      1 * pickupResponseGram T m n :=
        mul_le_mul_of_nonneg_right habs hgNonneg
    _ = pickupResponseGram T m n := one_mul _
    _ ≤ 4 * T / (X : ℝ) := hgBound

/-- Finite two-dimensional triangle and uniform term allowance.
The exact two independent original indices are retained, with no
assumption of pair independence or cancellation. -/
private theorem finite_square_sum_abs_le_card_sq
    (H : Finset ℕ) (f : ℕ → ℕ → ℝ) (C : ℝ)
    (hterm : ∀ m ∈ H, ∀ n ∈ H, |f m n| ≤ C) :
    |∑ m ∈ H, ∑ n ∈ H, f m n| ≤ (H.card : ℝ) ^ 2 * C := by
  classical
  calc
    |∑ m ∈ H, ∑ n ∈ H, f m n| ≤
        ∑ m ∈ H, |∑ n ∈ H, f m n| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ H, ∑ n ∈ H, |f m n| := by
      apply Finset.sum_le_sum
      intro m hm
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ H, ∑ n ∈ H, C := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      exact hterm m hm n hn
    _ = (H.card : ℝ) ^ 2 * C := by
      simp only [Finset.sum_const, nsmul_eq_mul]
      ring

/-- The ORIGINAL off-diagonal, arbitrary-gap-masked signed HH
source is bounded by the entire physical cardinal square.
No ordered pair or squareful-zero coefficient is omitted, and
the literal mask only replaces selected terms by zero. -/
theorem masked_high_high_abs_le_card_sq
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (T : ℝ) (hX : 1 ≤ X) (hT : 0 ≤ T) :
    |maskedTaggedBlock B.primes a b A
      (highSmoothBlock B X T) (highSmoothBlock B X T) T| ≤
        ((highSmoothBlock B X T).card : ℝ) ^ 2 *
          (4 * T / (X : ℝ)) := by
  classical
  let H : Finset ℕ := highSmoothBlock B X T
  have hC : 0 ≤ 4 * T / (X : ℝ) := by
    have hx : (0 : ℝ) < (X : ℝ) := by
      exact_mod_cast (show 0 < X by omega)
    positivity
  have hterm (m : ℕ) (hm : m ∈ H) (n : ℕ) (hn : n ∈ H) :
      |if m ≠ n ∧ Nat.dist m n ∉ A then
        taggedMoebius B.primes a m *
          taggedMoebius B.primes b n *
            pickupResponseGram T m n
        else 0| ≤ 4 * T / (X : ℝ) := by
    by_cases hmask : m ≠ n ∧ Nat.dist m n ∉ A
    · simp only [if_pos hmask]
      exact original_high_high_term_abs_le B a b X m n T hX hT hm hn
    · simp [hmask, hC]
  have hsum := finite_square_sum_abs_le_card_sq H
    (fun m n =>
      if m ≠ n ∧ Nat.dist m n ∉ A then
        taggedMoebius B.primes a m *
          taggedMoebius B.primes b n *
            pickupResponseGram T m n
      else 0)
    (4 * T / (X : ℝ)) hterm
  simpa only [H, maskedTaggedBlock] using hsum

/-- FULL exact original HighSmoothDenseFormalizationTarget with NO
arithmetic, Euler-moment or cancellation premise in its statement.
The finite smooth Euler half-moment supplier is a separate source
proof candidate and the actual high count is imported unchanged.
This is a SOURCE PROOF CANDIDATE until pinned Lean acceptance. -/
theorem highSmoothDenseFormalizationTarget :
    HighSmoothDenseFormalizationTarget := by
  intro B a b A X hX
  let T : ℝ := Real.log (2 * (X : ℝ))
  let H : Finset ℕ := highSmoothBlock B X T
  let V : ℝ := bankSquareRootWeight B.primes
  let R : ℝ :=
    Real.sqrt (2 * (X : ℝ)) *
      Real.exp (Real.sqrt T) * V
  let C : ℝ := 4 * T / (X : ℝ)
  have hT : 0 ≤ T := by
    dsimp [T]
    have hXreal : (1 : ℝ) ≤ (X : ℝ) := by exact_mod_cast hX
    exact Real.log_nonneg (by nlinarith : (1 : ℝ) ≤ 2 * (X : ℝ))
  have hXreal : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hXne : (X : ℝ) ≠ 0 := ne_of_gt hXreal
  have hCount : (H.card : ℝ) ≤ R := by
    simpa only [H, R, V] using
      highSmooth_card_unconditional B X T hX
  have hHnonneg : (0 : ℝ) ≤ (H.card : ℝ) := Nat.cast_nonneg _
  have hRnonneg : 0 ≤ R := hHnonneg.trans hCount
  have hCnonneg : 0 ≤ C := by
    dsimp [C]
    positivity
  have hCountSquare : (H.card : ℝ) ^ 2 ≤ R ^ 2 := by
    nlinarith [mul_nonneg
      (sub_nonneg.mpr hCount) (add_nonneg hRnonneg hHnonneg)]
  have hGram :
      |maskedTaggedBlock B.primes a b A
          (highSmoothBlock B X T) (highSmoothBlock B X T) T| ≤
        (H.card : ℝ) ^ 2 * C := by
    simpa only [H, C] using
      masked_high_high_abs_le_card_sq B a b A X T hX hT
  have hRootSquare :
      (Real.sqrt (2 * (X : ℝ))) ^ 2 = 2 * (X : ℝ) :=
    Real.sq_sqrt (by positivity)
  have hExpSquare :
      (Real.exp (Real.sqrt T)) ^ 2 =
        Real.exp (2 * Real.sqrt T) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hIdentity :
      R ^ 2 * C =
        8 * T * Real.exp (2 * Real.sqrt T) * V ^ 2 := by
    dsimp [R, C]
    calc
      (Real.sqrt (2 * (X : ℝ)) *
          Real.exp (Real.sqrt T) * V) ^ 2 *
          (4 * T / (X : ℝ)) =
        ((Real.sqrt (2 * (X : ℝ))) ^ 2 *
          (Real.exp (Real.sqrt T)) ^ 2 * V ^ 2) *
            (4 * T / (X : ℝ)) := by ring
      _ = (2 * (X : ℝ) *
          Real.exp (2 * Real.sqrt T) * V ^ 2) *
            (4 * T / (X : ℝ)) := by
          rw [hRootSquare, hExpSquare]
      _ = 8 * T * Real.exp (2 * Real.sqrt T) * V ^ 2 := by
          field_simp [hXne]
          ring
  change |maskedTaggedBlock B.primes a b A
      (highSmoothBlock B X T) (highSmoothBlock B X T) T| ≤
    8 * T * Real.exp (2 * Real.sqrt T) * V ^ 2
  calc
    _ ≤ (H.card : ℝ) ^ 2 * C := hGram
    _ ≤ R ^ 2 * C :=
      mul_le_mul_of_nonneg_right hCountSquare hCnonneg
    _ = 8 * T * Real.exp (2 * Real.sqrt T) * V ^ 2 :=
      hIdentity

end GRWTSK.NumberTheory.Moebius.HighSmoothDenseGramBound
