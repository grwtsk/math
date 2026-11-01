/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamEnergyCounting
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticSquarefulCancellation
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Direct Putnam sparse-gap theorem for the unchanged Möbius source

Source: the ACTUAL pickupResponseGram and pickupDiagonal, and the
ACTUAL endpointGapSetCross from MoebiusEndpointPutnamEnergyCounting.
Both original ordered orientations, Möbius signs, original support,
birth-window integrals, and diagonal exclusion remain unchanged.

The two mathematically elementary but previously explicit PROPOSITIONS
are discharged by an integrated two-vector Young inequality and the
fact that each positive additive distance supplies at most two
neighbors. These prove the noncircular all-positive-rate bound
on the gap sector |m-n| <= floor(exp(epsilon*T/2)), with constant
32/epsilon². Squarefree pairs of every original least-prime tag
(rough/rough, both mixed, matched/matched) are all covered WHERE
their distance lies in that band.

This theorem does NOT control the complementary long-gap dense
original signed squarefree correlation and does NOT prove RH.
-/

namespace GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- The FULL original signed response Gram satisfies Young's inequality.
The proof uses the real interval integral of the two actual source
responses, not an assumed PSD certificate or free comparison field. -/
theorem source_gram_young
    {T : ℝ} (hT : 0 ≤ T)
    {m n : ℕ} (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T) :
    2 * |moebiusReal m * moebiusReal n *
        pickupResponseGram T m n| ≤
      moebiusReal m ^ 2 * pickupResponseGram T m m +
        moebiusReal n ^ 2 * pickupResponseGram T n n := by
  have hmpos : 0 < m := (Finset.mem_Icc.mp hm).1
  have hnpos : 0 < n := (Finset.mem_Icc.mp hn).1
  let a : ℝ → ℝ := fun u => moebiusReal m * pickupResponse m u
  let b : ℝ → ℝ := fun u => moebiusReal n * pickupResponse n u
  have ha : Continuous a :=
    continuous_const.mul (pickupResponse_continuous hmpos)
  have hb : Continuous b :=
    continuous_const.mul (pickupResponse_continuous hnpos)
  have habs :
      2 * |∫ u in (0 : ℝ)..T, a u * b u| ≤
        2 * ∫ u in (0 : ℝ)..T, |a u * b u| :=
    mul_le_mul_of_nonneg_left
      (intervalIntegral.abs_integral_le_integral_abs hT) (by norm_num)
  have hmono :
      (∫ u in (0 : ℝ)..T, 2 * |a u * b u|) ≤
        ∫ u in (0 : ℝ)..T, a u ^ 2 + b u ^ 2 := by
    apply intervalIntegral.integral_mono hT
      ((continuous_const.mul (ha.mul hb).abs).intervalIntegrable 0 T)
      (((ha.pow 2).add (hb.pow 2)).intervalIntegrable 0 T)
    intro u
    exact two_abs_mul_le_sq_add_sq (a u) (b u)
  have hplus :
      2 * |∫ u in (0 : ℝ)..T, a u * b u| ≤
        (∫ u in (0 : ℝ)..T, a u ^ 2) +
          (∫ u in (0 : ℝ)..T, b u ^ 2) := by
    calc
      2 * |∫ u in (0 : ℝ)..T, a u * b u| ≤
          2 * ∫ u in (0 : ℝ)..T, |a u * b u| := habs
      _ = ∫ u in (0 : ℝ)..T, 2 * |a u * b u| := by
        rw [intervalIntegral.integral_const_mul]
      _ ≤ ∫ u in (0 : ℝ)..T, a u ^ 2 + b u ^ 2 := hmono
      _ = (∫ u in (0 : ℝ)..T, a u ^ 2) +
            (∫ u in (0 : ℝ)..T, b u ^ 2) := by
        rw [intervalIntegral.integral_add
          ((ha.pow 2).intervalIntegrable 0 T)
          ((hb.pow 2).intervalIntegrable 0 T)]
  have hcross :
      (∫ u in (0 : ℝ)..T, a u * b u) =
        moebiusReal m * moebiusReal n * pickupResponseGram T m n := by
    calc
      (∫ u in (0 : ℝ)..T, a u * b u) =
          ∫ u in (0 : ℝ)..T,
            (moebiusReal m * moebiusReal n) *
              (pickupResponse m u * pickupResponse n u) := by
        congr 1
        funext u
        dsimp [a, b]
        ring
      _ = _ := by
        rw [intervalIntegral.integral_const_mul]
        rfl
  have hleft :
      (∫ u in (0 : ℝ)..T, a u ^ 2) =
        moebiusReal m ^ 2 * pickupResponseGram T m m := by
    calc
      (∫ u in (0 : ℝ)..T, a u ^ 2) =
          ∫ u in (0 : ℝ)..T,
            moebiusReal m ^ 2 * (pickupResponse m u * pickupResponse m u) := by
        congr 1
        funext u
        dsimp [a]
        ring
      _ = _ := by
        rw [intervalIntegral.integral_const_mul]
        rfl
  have hright :
      (∫ u in (0 : ℝ)..T, b u ^ 2) =
        moebiusReal n ^ 2 * pickupResponseGram T n n := by
    calc
      (∫ u in (0 : ℝ)..T, b u ^ 2) =
          ∫ u in (0 : ℝ)..T,
            moebiusReal n ^ 2 * (pickupResponse n u * pickupResponse n u) := by
        congr 1
        funext u
        dsimp [b]
        ring
      _ = _ := by
        rw [intervalIntegral.integral_const_mul]
        rfl
  rwa [hcross, hleft, hright] at hplus

/-- Existing Putnam source's exact Gram-Young proposition, without
an input that supplies the desired inequality. -/
theorem source_gram_young_all : EndpointMobiusGramYoung := by
  intro T hT m hm n hn
  exact source_gram_young hT hm hn

/-- A signed source index has at most two original neighbors for
each chosen positive additive distance, regardless of its prime
tag, squarefree status, or elliptic curve-channel membership. -/
theorem gap_neighbor_card_le (A S : Finset ℕ) (m : ℕ) :
    (S.filter fun n => m ≠ n ∧ Nat.dist m n ∈ A).card ≤
      2 * A.card := by
  classical
  let L : Finset ℕ := A.image (fun d => m + d)
  let R : Finset ℕ := A.image (fun d => m - d)
  have hsubset :
      (S.filter fun n => m ≠ n ∧ Nat.dist m n ∈ A) ⊆ L ∪ R := by
    intro n hn
    obtain ⟨_, _, hd⟩ := Finset.mem_filter.mp hn
    by_cases hmn : m ≤ n
    · apply Finset.mem_union.mpr
      left
      apply Finset.mem_image.mpr
      refine ⟨Nat.dist m n, hd, ?_⟩
      rw [Nat.dist_eq_sub_of_le hmn]
      omega
    · apply Finset.mem_union.mpr
      right
      apply Finset.mem_image.mpr
      refine ⟨Nat.dist m n, hd, ?_⟩
      have hnm : n ≤ m := by omega
      rw [Nat.dist_eq_sub_of_le_right hnm]
      omega
  calc
    (S.filter fun n => m ≠ n ∧ Nat.dist m n ∈ A).card ≤
        (L ∪ R).card := Finset.card_le_card hsubset
    _ ≤ L.card + R.card := Finset.card_union_le _ _
    _ ≤ A.card + A.card := add_le_add Finset.card_image_le Finset.card_image_le
    _ = 2 * A.card := by omega

theorem gap_neighbor_count_all : GapSetNeighbourCount := by
  intro A S m
  exact gap_neighbor_card_le A S m

end GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
