/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGrowingPrimeBankEulerCost
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothDenseGramBound
import Mathlib

/-!
# Genuine low/low and ordered high/low long-gap signed sources

For the ORIGINAL clipped dyadic shell X<n<=2X at physical terminal
time T=log(2X), each actual causal response vanishes before log(X).
The literal two-source pickupResponseGram therefore has the improved
physical birth-window bound 0<=G_T(m,n)<=4*log(2)/X, not just 4T/X.

Finite signed triangle (NOT masked-Gram PSD) now gives an absolute
bound for either ordered mixed high/low source:
  |HL|,|LH| <= 4*log(2)*sqrt(2X)*exp(sqrt(T))*V_P.
The source count and the bank-dependent V_P come from the published
true-divisor and pinned Euler-product source candidates. The high/high
upper similarly improves from 8*T to 8*log(2).

The exact full ORIGINAL tagged dense rectangle equals LL plus three
high-touch original packets (HH, HL, LH). The LL packet retains all
source signs and ALL remaining long-gap correlations. Its elementary
termwise bound is at exponential rate one; this module does NOT
pretend that either LL or the two mixed packets have all-positive-rate
cancellation, and does NOT prove RH.

The true finite-prime cutoff Y can vary with X. The separate bank
ledger supplies V_P<=exp(8*sqrt(Y)) without an arithmetic hypothesis,
and exposes a stronger near-critical Chebyshev mass obligation.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.NumberTheory.Moebius.DyadicBirthHighLowLongGap

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.Moebius.QuantitativeMertensAbsoluteAbel
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.HighSmoothRoughCollapse
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.FiniteSmoothEulerMomentsProof
open GRWTSK.NumberTheory.Moebius.GrowingPrimeBankEulerCost

/-- All source-clipped shell indices are in (X,2X], without changing
their original endpointIndex(T) birth restriction. -/
theorem balancedBlock_mem_shell
    (X n : ℕ) (T : ℝ) (hn : n ∈ balancedBlock X T) :
    X < n ∧ n ≤ 2 * X := by
  change n ∈ (Finset.Ioc X (2 * X)).filter
    (fun k => k ∈ endpointIndex T) at hn
  exact Finset.mem_Ioc.mp (Finset.mem_filter.mp hn).1

/-- The genuine low population has at most X original indices in a
shell, including empty clipped inventories and all squareful zeros. -/
theorem lowSmoothBlock_card_le_shell
    (B : PrimeBand) (X : ℕ) (T : ℝ) :
    (lowSmoothBlock B X T).card ≤ X := by
  classical
  have hsub : lowSmoothBlock B X T ⊆ Finset.Ioc X (2 * X) := by
    intro n hn
    have hblock : n ∈ balancedBlock X T :=
      (Finset.mem_filter.mp hn).1
    exact Finset.mem_Ioc.mpr
      (balancedBlock_mem_shell X n T hblock)
  have h := Finset.card_le_card hsub
  simp only [Finset.card_Ioc] at h
  omega

/-- The ACTUAL original response vanishes throughout every earlier
physical time u<=log X on the entire original dyadic shell n>X. -/
theorem shell_response_zero_before_logX
    (X n : ℕ) (T u : ℝ) (hX : 1 ≤ X)
    (hn : n ∈ balancedBlock X T)
    (hu : u ≤ Real.log (X : ℝ)) :
    pickupResponse n u = 0 := by
  have hs := balancedBlock_mem_shell X n T hn
  have hXpos : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hXltN : (X : ℝ) < (n : ℝ) := by exact_mod_cast hs.1
  have hlog : Real.log (X : ℝ) < Real.log (n : ℝ) :=
    Real.log_lt_log hXpos hXltN
  have hnot : ¬ Real.log (n : ℝ) ≤ u := by
    exact not_le.mpr (lt_of_le_of_lt hu hlog)
  simp [pickupResponse, hnot]

/-- Actual nonnegative original response upper on the ENTIRE source
shell, independent of prime bank and sign tags. -/
theorem shell_response_bounds
    (X n : ℕ) (T u : ℝ) (hX : 1 ≤ X)
    (hn : n ∈ balancedBlock X T) :
    0 ≤ pickupResponse n u ∧
      pickupResponse n u ≤ 2 * (Real.sqrt (X : ℝ))⁻¹ := by
  have hs := balancedBlock_mem_shell X n T hn
  have hnOne : 1 ≤ n := by omega
  have hXpos : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hXleN : (X : ℝ) ≤ (n : ℝ) := by exact_mod_cast hs.1.le
  have hRoot :
      Real.sqrt (X : ℝ) ≤ Real.sqrt (n : ℝ) :=
    Real.sqrt_le_sqrt hXleN
  have hInv :
      (Real.sqrt (n : ℝ))⁻¹ ≤
        (Real.sqrt (X : ℝ))⁻¹ :=
    one_div_le_one_div_of_le (Real.sqrt_pos.2 hXpos) hRoot
  constructor
  · exact pickupResponse_nonneg_positive n hnOne u
  · calc
      pickupResponse n u ≤
          2 * (Real.sqrt (n : ℝ))⁻¹ :=
        pickupResponse_le_two_inv_sqrt n hnOne u
      _ ≤ 2 * (Real.sqrt (X : ℝ))⁻¹ :=
        mul_le_mul_of_nonneg_left hInv (by norm_num)

/-- Sharp PHYSICAL duration: every pair of original dyadic indices
is silent before log X. The real integration interval of actual
response products has length log 2 at terminal T=log(2X).
This is stronger than the old 4*T/X bound for large X. -/
theorem shell_originalGram_le_four_log_two
    (X m n : ℕ) (hX : 1 ≤ X)
    (hm : m ∈ balancedBlock X (Real.log (2 * (X : ℝ))))
    (hn : n ∈ balancedBlock X (Real.log (2 * (X : ℝ)))) :
    0 ≤ pickupResponseGram (Real.log (2 * (X : ℝ))) m n ∧
      pickupResponseGram (Real.log (2 * (X : ℝ))) m n ≤
        4 * Real.log 2 / (X : ℝ) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let s : ℝ := Real.log (X : ℝ)
  let f : ℝ → ℝ := fun u => pickupResponse m u * pickupResponse n u
  have hXpos : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hs0 : 0 ≤ s := Real.log_nonneg (by exact_mod_cast hX)
  have hsT : s ≤ T := by
    dsimp [s, T]
    apply Real.log_le_log hXpos
    nlinarith [hXpos]
  have hT0 : 0 ≤ T := hs0.trans hsT
  have hmPos : 0 < m := by
    have h := balancedBlock_mem_shell X m T hm
    omega
  have hnPos : 0 < n := by
    have h := balancedBlock_mem_shell X n T hn
    omega
  have hcont : Continuous f :=
    (pickupResponse_continuous m hmPos).mul
      (pickupResponse_continuous n hnPos)
  have hint0 : IntervalIntegrable f volume 0 s :=
    hcont.intervalIntegrable 0 s
  have hint1 : IntervalIntegrable f volume s T :=
    hcont.intervalIntegrable s T
  let b : ℝ := 2 * (Real.sqrt (X : ℝ))⁻¹
  have hbNonneg : 0 ≤ b := by dsimp [b]; positivity
  have hbSq : b * b = 4 / (X : ℝ) := by
    dsimp [b]
    calc
      (2 * (Real.sqrt (X : ℝ))⁻¹) *
          (2 * (Real.sqrt (X : ℝ))⁻¹) =
        4 * (Real.sqrt (X : ℝ) * Real.sqrt (X : ℝ))⁻¹ := by
          rw [mul_inv_rev]
          ring
      _ = 4 / (X : ℝ) := by
        rw [Real.mul_self_sqrt hXpos.le]
        ring
  have hpoint (u : ℝ) :
      0 ≤ f u ∧ f u ≤ 4 / (X : ℝ) := by
    obtain ⟨hm0, hmle⟩ := shell_response_bounds X m T u hX hm
    obtain ⟨hn0, hnle⟩ := shell_response_bounds X n T u hX hn
    constructor
    · exact mul_nonneg hm0 hn0
    · have hprod :
          pickupResponse m u * pickupResponse n u ≤ b * b :=
        mul_le_mul hmle hnle hn0 hbNonneg
      exact hprod.trans hbSq.le
  have hzero : (∫ u in (0 : ℝ)..s, f u) = 0 := by
    calc
      (∫ u in (0 : ℝ)..s, f u) =
          ∫ u in (0 : ℝ)..s, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro u hu
        have huS : u ≤ s := by
          have huIcc : u ∈ Set.Icc (0 : ℝ) s := by
            simpa only [Set.uIcc_of_le hs0] using hu
          exact huIcc.2
        dsimp [f]
        rw [shell_response_zero_before_logX X m T u hX hm huS]
        ring
      _ = 0 := by simp
  have hwindow : T - s = Real.log (2 : ℝ) := by
    dsimp [T, s]
    rw [Real.log_mul (by norm_num) (ne_of_gt hXpos)]
    ring
  have hbound :
      (∫ u in (0 : ℝ)..T, f u) ≤
        4 * Real.log 2 / (X : ℝ) := by
    calc
      (∫ u in (0 : ℝ)..T, f u) =
          (∫ u in (0 : ℝ)..s, f u) +
            (∫ u in s..T, f u) :=
        (intervalIntegral.integral_add_adjacent_intervals hint0 hint1).symm
      _ = ∫ u in s..T, f u := by rw [hzero, zero_add]
      _ ≤ ∫ u in s..T, (4 : ℝ) / (X : ℝ) := by
        apply intervalIntegral.integral_mono hsT hint1 intervalIntegrable_const
        intro u
        exact (hpoint u).2
      _ = (T - s) * (4 / (X : ℝ)) := by
        rw [intervalIntegral.integral_const]
        simp only [smul_eq_mul]
        ring
      _ = 4 * Real.log 2 / (X : ℝ) := by rw [hwindow]; ring
  constructor
  · change 0 ≤ ∫ u in (0 : ℝ)..T, f u
    exact intervalIntegral.integral_nonneg hT0
      (fun u _ => (hpoint u).1)
  · change (∫ u in (0 : ℝ)..T, f u) ≤ _
    exact hbound

/-- Every true signed original source pair is bounded by the
physical birth-window Gram envelope, without assuming positivity
of any signed or masked Gram matrix. -/
theorem shell_original_tagged_pair_abs_le
    (B : PrimeBand) (a b : Bool) (X m n : ℕ)
    (hX : 1 ≤ X)
    (hm : m ∈ balancedBlock X (Real.log (2 * (X : ℝ))))
    (hn : n ∈ balancedBlock X (Real.log (2 * (X : ℝ)))) :
    |taggedMoebius B.primes a m *
       taggedMoebius B.primes b n *
         pickupResponseGram (Real.log (2 * (X : ℝ))) m n| ≤
      4 * Real.log 2 / (X : ℝ) := by
  obtain ⟨hg0, hgLe⟩ :=
    shell_originalGram_le_four_log_two X m n hX hm hn
  have htag :
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
  rw [abs_mul, abs_of_nonneg hg0]
  calc
    |taggedMoebius B.primes a m *
        taggedMoebius B.primes b n| *
          pickupResponseGram (Real.log (2 * (X : ℝ))) m n ≤
      1 * pickupResponseGram (Real.log (2 * (X : ℝ))) m n :=
        mul_le_mul_of_nonneg_right htag hg0
    _ ≤ 4 * Real.log 2 / (X : ℝ) := by simpa using hgLe

/-- Finite rectangular double-sum triangle; no diagonal
addition, no independence and no PSD assumption. -/
private theorem finite_rect_abs_le_card_product
    (I J : Finset ℕ) (f : ℕ → ℕ → ℝ) (C : ℝ)
    (hterm : ∀ m ∈ I, ∀ n ∈ J, |f m n| ≤ C) :
    |∑ m ∈ I, ∑ n ∈ J, f m n| ≤
      (I.card : ℝ) * (J.card : ℝ) * C := by
  classical
  calc
    |∑ m ∈ I, ∑ n ∈ J, f m n| ≤
        ∑ m ∈ I, |∑ n ∈ J, f m n| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ I, ∑ n ∈ J, |f m n| := by
      apply Finset.sum_le_sum
      intro m hm
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ I, ∑ n ∈ J, C := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      exact hterm m hm n hn
    _ = (I.card : ℝ) * (J.card : ℝ) * C := by
      simp only [Finset.sum_const, nsmul_eq_mul]
      ring

/-- Source-tagged masked rectangular Gram on ANY two genuine
subpopulations of the original dyadic shell. This handles both
ordered mixed high/low orientations. -/
theorem masked_shell_rect_abs_le_card_product
    (B : PrimeBand) (a b : Bool) (A I J : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X)
    (hI : I ⊆ balancedBlock X (Real.log (2 * (X : ℝ))))
    (hJ : J ⊆ balancedBlock X (Real.log (2 * (X : ℝ)))) :
    |maskedTaggedBlock B.primes a b A I J
      (Real.log (2 * (X : ℝ)))| ≤
      (I.card : ℝ) * (J.card : ℝ) *
        (4 * Real.log 2 / (X : ℝ)) := by
  classical
  have hC : 0 ≤ 4 * Real.log 2 / (X : ℝ) := by
    have hx : (0 : ℝ) < (X : ℝ) := by
      exact_mod_cast (show 0 < X by omega)
    have hlog : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
    positivity
  unfold maskedTaggedBlock
  apply finite_rect_abs_le_card_product
  intro m hm n hn
  by_cases hmask : m ≠ n ∧ Nat.dist m n ∉ A
  · simp only [if_pos hmask]
    exact shell_original_tagged_pair_abs_le B a b X m n hX
      (hI hm) (hJ hn)
  · simp [hmask, hC]

/-- Both genuine high and genuine low blocks are SUBSETS of the
same exact original source inventory, for arbitrary finite P. -/
theorem high_low_subset_source
    (B : PrimeBand) (X : ℕ) (T : ℝ) :
    highSmoothBlock B X T ⊆ balancedBlock X T ∧
      lowSmoothBlock B X T ⊆ balancedBlock X T := by
  exact ⟨Finset.filter_subset _ _, Finset.filter_subset _ _⟩

/-- Uniform original signed high/low bound for the FIRST ordered
orientation: no error term hides the matched source. -/
theorem original_masked_high_low_abs_le
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |maskedTaggedBlock B.primes a b A
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
        Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
          bankSquareRootWeight B.primes := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let H : Finset ℕ := highSmoothBlock B X T
  let L : Finset ℕ := lowSmoothBlock B X T
  let R : ℝ :=
    Real.sqrt (2 * (X : ℝ)) * Real.exp (Real.sqrt T) *
      bankSquareRootWeight B.primes
  let C : ℝ := 4 * Real.log 2 / (X : ℝ)
  have hx : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hx0 : (X : ℝ) ≠ 0 := ne_of_gt hx
  have hH : (H.card : ℝ) ≤ R := by
    simpa only [H, R] using
      highSmooth_card_unconditional B X T hX
  have hL : (L.card : ℝ) ≤ (X : ℝ) := by
    exact_mod_cast lowSmoothBlock_card_le_shell B X T
  have hR : 0 ≤ R := (Nat.cast_nonneg _).trans hH
  have hC : 0 ≤ C := by
    dsimp [C]
    have hlog := Real.log_nonneg (show (1 : ℝ) ≤ 2 by norm_num)
    positivity
  have hpacket :
      |maskedTaggedBlock B.primes a b A H L T| ≤
        (H.card : ℝ) * (L.card : ℝ) * C := by
    simpa only [H, L, T, C] using
      masked_shell_rect_abs_le_card_product B a b A H L X hX
        (high_low_subset_source B X T).1
        (high_low_subset_source B X T).2
  have hprod :
      (H.card : ℝ) * (L.card : ℝ) * C ≤
        R * (X : ℝ) * C := by
    apply mul_le_mul_of_nonneg_right _ hC
    exact mul_le_mul hH hL (Nat.cast_nonneg _) hR
  have hscalar :
      R * (X : ℝ) * C = 4 * Real.log 2 * R := by
    dsimp [C]
    field_simp [hx0]
    ring
  change |maskedTaggedBlock B.primes a b A H L T| ≤
    4 * Real.log 2 * R
  exact hpacket.trans (hprod.trans_eq hscalar)

/-- The SECOND ordered mixed orientation, proved independently:
no symmetry of signed tagged coefficients is assumed. -/
theorem original_masked_low_high_abs_le
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |maskedTaggedBlock B.primes a b A
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
        Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
          bankSquareRootWeight B.primes := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let H : Finset ℕ := highSmoothBlock B X T
  let L : Finset ℕ := lowSmoothBlock B X T
  let R : ℝ :=
    Real.sqrt (2 * (X : ℝ)) * Real.exp (Real.sqrt T) *
      bankSquareRootWeight B.primes
  let C : ℝ := 4 * Real.log 2 / (X : ℝ)
  have hx : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hx0 : (X : ℝ) ≠ 0 := ne_of_gt hx
  have hH : (H.card : ℝ) ≤ R := by
    simpa only [H, R] using
      highSmooth_card_unconditional B X T hX
  have hL : (L.card : ℝ) ≤ (X : ℝ) := by
    exact_mod_cast lowSmoothBlock_card_le_shell B X T
  have hC : 0 ≤ C := by
    dsimp [C]
    have hlog := Real.log_nonneg (show (1 : ℝ) ≤ 2 by norm_num)
    positivity
  have hpacket :
      |maskedTaggedBlock B.primes a b A L H T| ≤
        (L.card : ℝ) * (H.card : ℝ) * C := by
    simpa only [H, L, T, C] using
      masked_shell_rect_abs_le_card_product B a b A L H X hX
        (high_low_subset_source B X T).2
        (high_low_subset_source B X T).1
  have hprod :
      (L.card : ℝ) * (H.card : ℝ) * C ≤
        (X : ℝ) * R * C := by
    apply mul_le_mul_of_nonneg_right _ hC
    exact mul_le_mul hL hH (Nat.cast_nonneg _) hx.le
  have hscalar :
      (X : ℝ) * R * C = 4 * Real.log 2 * R := by
    dsimp [C]
    field_simp [hx0]
    ring
  change |maskedTaggedBlock B.primes a b A L H T| ≤
    4 * Real.log 2 * R
  exact hpacket.trans (hprod.trans_eq hscalar)

/-- An improved high/high bound uses the SAME original physical
birth-window length log2, sharpening the older factor T. -/
theorem original_masked_high_high_logTwo_bound
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |maskedTaggedBlock B.primes a b A
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      8 * Real.log 2 *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2 := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let H : Finset ℕ := highSmoothBlock B X T
  let V : ℝ := bankSquareRootWeight B.primes
  let R : ℝ := Real.sqrt (2 * (X : ℝ)) *
    Real.exp (Real.sqrt T) * V
  let C : ℝ := 4 * Real.log 2 / (X : ℝ)
  have hx : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hx0 : (X : ℝ) ≠ 0 := ne_of_gt hx
  have hCount : (H.card : ℝ) ≤ R := by
    simpa only [H, R, V] using
      highSmooth_card_unconditional B X T hX
  have hHnonneg : (0 : ℝ) ≤ (H.card : ℝ) := Nat.cast_nonneg _
  have hRnonneg : 0 ≤ R := hHnonneg.trans hCount
  have hC : 0 ≤ C := by
    dsimp [C]
    have hlog := Real.log_nonneg (show (1 : ℝ) ≤ 2 by norm_num)
    positivity
  have hSquare : (H.card : ℝ) ^ 2 ≤ R ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hCount)
      (add_nonneg hRnonneg hHnonneg)]
  have hsource :
      |maskedTaggedBlock B.primes a b A H H T| ≤
        (H.card : ℝ) ^ 2 * C := by
    have h := masked_shell_rect_abs_le_card_product
      B a b A H H X hX
        (high_low_subset_source B X T).1
        (high_low_subset_source B X T).1
    simpa only [H, C, T, pow_two, mul_assoc] using h
  have hroot :
      (Real.sqrt (2 * (X : ℝ))) ^ 2 = 2 * (X : ℝ) :=
    Real.sq_sqrt (by positivity)
  have hexp :
      (Real.exp (Real.sqrt T)) ^ 2 =
        Real.exp (2 * Real.sqrt T) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hfinal :
      R ^ 2 * C =
        8 * Real.log 2 * Real.exp (2 * Real.sqrt T) * V ^ 2 := by
    dsimp [R, C]
    rw [show (Real.sqrt (2 * (X : ℝ)) *
      Real.exp (Real.sqrt T) * V) ^ 2 =
      (Real.sqrt (2 * (X : ℝ))) ^ 2 *
      (Real.exp (Real.sqrt T)) ^ 2 * V ^ 2 by ring]
    rw [hroot, hexp]
    field_simp [hx0]
    ring
  change |maskedTaggedBlock B.primes a b A H H T| ≤
    8 * Real.log 2 * Real.exp (2 * Real.sqrt T) * V ^ 2
  calc
    _ ≤ (H.card : ℝ) ^ 2 * C := hsource
    _ ≤ R ^ 2 * C :=
      mul_le_mul_of_nonneg_right hSquare hC
    _ = 8 * Real.log 2 * Real.exp (2 * Real.sqrt T) * V ^ 2 :=
      hfinal

/-- Define the exact signed THREE high-touch source packets:
HH, HL, LH. This is not a newly chosen analytic remainder. -/
def signedHighTouch
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (T : ℝ) : ℝ :=
  maskedTaggedBlock B.primes a b A
    (highSmoothBlock B X T) (highSmoothBlock B X T) T +
  maskedTaggedBlock B.primes a b A
    (highSmoothBlock B X T) (lowSmoothBlock B X T) T +
  maskedTaggedBlock B.primes a b A
    (lowSmoothBlock B X T) (highSmoothBlock B X T) T

/-- EXACT signed source equality, including every ordered mixed
orientation: full original tagged dense rectangle = LL + high-touch.
No term has been absolutized in this identity. -/
theorem taggedDense_eq_lowLow_add_highTouch
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (T : ℝ) :
    taggedDenseRectangle B.primes a b A X X T =
      maskedTaggedBlock B.primes a b A
        (lowSmoothBlock B X T) (lowSmoothBlock B X T) T +
      signedHighTouch B a b A X T := by
  rw [taggedDenseRectangle_eq_four_smooth_strata]
  unfold signedHighTouch
  ring

/-- A quantitative absolute budget on ALL original high-touch
packets. Only the true low/low signed packet remains uncontrolled
at exponential rates below 1/2. -/
theorem signedHighTouch_abs_le
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |signedHighTouch B a b A X (Real.log (2 * (X : ℝ)))| ≤
      8 * Real.log 2 *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2 +
      8 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
        Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
          bankSquareRootWeight B.primes := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let HH : ℝ := maskedTaggedBlock B.primes a b A
    (highSmoothBlock B X T) (highSmoothBlock B X T) T
  let HL : ℝ := maskedTaggedBlock B.primes a b A
    (highSmoothBlock B X T) (lowSmoothBlock B X T) T
  let LH : ℝ := maskedTaggedBlock B.primes a b A
    (lowSmoothBlock B X T) (highSmoothBlock B X T) T
  have hHH := original_masked_high_high_logTwo_bound B a b A X hX
  have hHL := original_masked_high_low_abs_le B a b A X hX
  have hLH := original_masked_low_high_abs_le B a b A X hX
  change |HH + HL + LH| ≤ _
  calc
    |HH + HL + LH| ≤ |HH| + |HL| + |LH| := by
      exact (abs_add_le _ _).trans
        (add_le_add_right (abs_add_le _ _) _)
    _ ≤ (8 * Real.log 2 * Real.exp (2 * Real.sqrt T) *
          (bankSquareRootWeight B.primes) ^ 2) +
        (4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
          Real.exp (Real.sqrt T) * bankSquareRootWeight B.primes) +
        (4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
          Real.exp (Real.sqrt T) * bankSquareRootWeight B.primes) := by
      exact add_le_add (add_le_add hHH hHL) hLH
    _ = _ := by ring

/-- Actual X-dependent prime cutoff, not an assertion of a fixed
Euler factor: the mixed HL bound pays exp(8 sqrt Y) exactly. -/
theorem original_high_low_with_growing_bank_cut
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X Y : ℕ) (hX : 1 ≤ X)
    (hY : ∀ p ∈ B.primes, p ≤ Y) :
    |maskedTaggedBlock B.primes a b A
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
        Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
          Real.exp (8 * Real.sqrt (Y : ℝ)) := by
  have h := original_masked_high_low_abs_le B a b A X hX
  have hV := bankSquareRootWeight_le_exp_eight_sqrt B Y hY
  have hK : 0 ≤ 4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
      Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) := by
    have hlog : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
    positivity
  exact h.trans (by
    apply mul_le_mul_of_nonneg_left hV hK)


/-- The EXACT signed residual that remains AFTER the controlled
high/high packet is removed: low/low plus BOTH ordered mixed
high/low orientations, still using the original signed coefficients,
physical Gram, m!=n, and the unchanged excluded-gap mask. -/
def signedLowLowAndMixedResidual
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (T : ℝ) : ℝ :=
  maskedTaggedBlock B.primes a b A
    (lowSmoothBlock B X T) (lowSmoothBlock B X T) T +
  maskedTaggedBlock B.primes a b A
    (highSmoothBlock B X T) (lowSmoothBlock B X T) T +
  maskedTaggedBlock B.primes a b A
    (lowSmoothBlock B X T) (highSmoothBlock B X T) T

/-- No hidden positivity or assumed cancellation: the full original
tagged dense rectangle equals exactly HH plus the genuine remaining
signed low/low and two ordered mixed packets. -/
theorem taggedDense_eq_HH_add_signedResidual
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (T : ℝ) :
    taggedDenseRectangle B.primes a b A X X T =
      maskedTaggedBlock B.primes a b A
        (highSmoothBlock B X T) (highSmoothBlock B X T) T +
      signedLowLowAndMixedResidual B a b A X T := by
  rw [taggedDenseRectangle_eq_four_smooth_strata]
  unfold signedLowLowAndMixedResidual
  ring

/-- The empty finite prime bank is a valid genuine PrimeBand.
This is a hostile control: an arbitrary-bank low/low assumption
would otherwise silently contain the entire original source. -/
def emptyPrimeBand : PrimeBand where
  primes := ∅
  prime_mem := by
    intro p hp
    simp at hp

/-- At Q_X>=1, the empty-bank high carrier is empty: d=1
is the only empty-bank smooth positive integer and is not
above the real cutoff. Uses the earlier actual-prime witness. -/
theorem emptyBank_highSmooth_empty
    (X : ℕ) (T : ℝ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X)) :
    highSmoothBlock emptyPrimeBand X T = ∅ := by
  classical
  ext n
  simp only [Finset.mem_empty, iff_false]
  intro hn
  have hHigh : hasNearMaximalSmoothDivisor emptyPrimeBand X n :=
    (Finset.mem_filter.mp hn).2
  obtain ⟨p, hp, hpB, hpn⟩ :=
    highSmooth_has_selected_prime emptyPrimeBand X n hQ hHigh
  simpa [emptyPrimeBand] using hpB

/-- Therefore at the same true cutoff the entire ORIGINAL
source is the low-smooth carrier for the empty bank. -/
theorem emptyBank_lowSmooth_eq_source
    (X : ℕ) (T : ℝ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X)) :
    lowSmoothBlock emptyPrimeBand X T =
      balancedBlock X T := by
  have hUnion := highLow_union_eq_originalBlock emptyPrimeBand X T
  rw [emptyBank_highSmooth_empty X T hQ, Finset.empty_union] at hUnion
  exact hUnion

/-- Empty-bank rough tag equals the original signed Mobius
coefficient at EVERY source integer, including its squareful zeros. -/
theorem emptyBank_rough_eq_original (n : ℕ) :
    taggedMoebius emptyPrimeBand.primes true n =
      moebiusReal n := by
  have hzero : firstSelectedDivisor emptyPrimeBand.primes n = 0 := by
    simp [emptyPrimeBand, firstSelectedDivisor]
  simp [taggedMoebius, hzero]

/-- Empty-bank structural obstruction: assuming low/low signed
cancellation for EVERY bank (rather than proving it) would include
the entire original rough/rough source on every shell with Q_X>=1.
The bound is not proved merely by writing this equality. -/
theorem emptyBank_originalRR_eq_lowLow
    (A : Finset ℕ) (X : ℕ) (T : ℝ)
    (hQ : 1 ≤ nearSquareRootCut (2 * X)) :
    taggedDenseRectangle emptyPrimeBand.primes true true A X X T =
      maskedTaggedBlock emptyPrimeBand.primes true true A
        (lowSmoothBlock emptyPrimeBand X T)
        (lowSmoothBlock emptyPrimeBand X T) T := by
  rw [taggedDenseRectangle_eq_four_smooth_strata]
  rw [emptyBank_highSmooth_empty X T hQ]
  simp [maskedTaggedBlock]

end GRWTSK.NumberTheory.Moebius.DyadicBirthHighLowLongGap
