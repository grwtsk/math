/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelExceptionalCardinality

/-!
# Exact finite-family transfer for the actual Abel packet

OpenAI family 007 gives fixed-form statements. This module aligns the ordinary
sum convention and proves what a FIXED finite shift family can supply to the
actual packet. It does not import the upstream analytic proof or establish
Mobius nonpretentiousness. The complementary growing shift contribution stays
SIGNED and explicit. The atom bound is the actual 2/(2^j+1), not just an
abstract subprobability bound.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelFixedShiftTransfer
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelExceptionalCardinality

/-- Literal ordinary-sum convention of OAI.TwoPointCorrelations.correlationSum.
This local definition is not an imported OAI theorem. -/
def ordinaryCorrelation (f g : ℕ → ℂ) (h₁ h₂ N : ℕ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N, f (n + h₁) * g (n + h₂)

/-- Exact alignment of the shifted source, including N=0. -/
theorem ordinaryCorrelation_moebius (h N : ℕ) :
    ordinaryCorrelation (fun n => (moebiusReal n : ℂ))
      (fun n => (moebiusReal n : ℂ)) 0 h N = (mertensTwoPointPrefix h N : ℂ) := by
  have hr : (∑ n ∈ Finset.Icc 1 N, moebiusReal n * moebiusReal (n + h)) =
      mertensTwoPointPrefix h N := by
    change _ = ∑ a ∈ Finset.range N, moebiusReal (a + 1) * moebiusReal (a + 1 + h)
    symm
    apply Finset.sum_bij (fun a _ => a + 1)
    · intro a ha
      have := Finset.mem_range.mp ha
      exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
    · intro a _ b _ he; omega
    · intro n hn
      have := Finset.mem_Icc.mp hn
      exact ⟨n - 1, Finset.mem_range.mpr (by omega), by omega⟩
    · intro a _; rfl
  unfold ordinaryCorrelation
  simp only [Nat.add_zero]
  have hc := congrArg (fun x : ℝ => (x : ℂ)) hr
  push_cast at hc
  exact hc

/-- Complete signed contribution of the selected shifts, not an absolute majorant. -/
def fixedShiftPacket (S : Finset ℕ) (j : ℕ) : ℝ :=
  2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
    ∑ t ∈ Finset.range (2 ^ (j + 1)), exceptionalPrefixPairing j t S

/-- The unestimated growing complement is retained exactly. -/
theorem full_packet_eq_regular_add_fixed (S : Finset ℕ) (j : ℕ) :
    weightedMertensDyadicSignedAbelDepthPacket j =
      signedRegularPacket (fun _ _ => S) j + fixedShiftPacket S j := by
  rw [depthPacket_eq_scaled_kernelPrefixSum]
  unfold signedRegularPacket fixedShiftPacket
  simp_rw [kernelPrefixPairing_eq_regular_add_exceptional j _ S]
  rw [Finset.sum_add_distrib, mul_add]

/-- An all-prefix affine envelope on the SAME ordinary correlations. -/
theorem abs_fixed_slice_le (S : Finset ℕ) (j t : ℕ) (A η : ℝ)
    (hprefix : ∀ h ∈ S, ∀ N, |mertensTwoPointPrefix h N| ≤ A + η * (N : ℝ)) :
    |exceptionalPrefixPairing j t S| ≤
      (A + η * ((t + 1 : ℕ) : ℝ)) * exceptionalKernelMass j t S := by
  unfold exceptionalPrefixPairing exceptionalKernelMass
  rw [Finset.mul_sum]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro h _
  by_cases hs : h ∈ S
  · simp only [if_pos hs, abs_mul,
      abs_of_nonneg (normalizedSignedAbelShiftKernel_nonneg j t h)]
    simpa only [mul_comm] using mul_le_mul_of_nonneg_left (hprefix h hs (t + 1))
      (normalizedSignedAbelShiftKernel_nonneg j t h)
  · simp only [if_neg hs, abs_zero, mul_zero, le_refl]

/-- Kernel geometry converts a fixed-family envelope into O(A/X)+O(eta).
The count of selected shifts is explicit; it cannot grow for free. -/
theorem abs_fixedShiftPacket_le (S : Finset ℕ) (j : ℕ) (A η : ℝ)
    (hA : 0 ≤ A) (hη : 0 ≤ η)
    (hprefix : ∀ h ∈ S, ∀ N, |mertensTwoPointPrefix h N| ≤ A + η * (N : ℝ)) :
    |fixedShiftPacket S j| ≤
      4 * (S.card : ℝ) * (A / ((((2 ^ j : ℕ) : ℝ)) + 1) + η) := by
  let Y : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hY : Y ≠ 0 := by dsimp [Y]; positivity
  have hX : X + 1 ≠ 0 := by dsimp [X]; positivity
  have hmass : (2 * Y⁻¹) *
      (∑ t ∈ Finset.range (2 ^ (j + 1)), exceptionalKernelMass j t S) ≤
      4 * (S.card : ℝ) / (X + 1) := by
    calc
      _ ≤ (2 * Y⁻¹) * ∑ _t ∈ Finset.range (2 ^ (j + 1)),
          (S.card : ℝ) * (2 / (X + 1)) := by
        apply mul_le_mul_of_nonneg_left _ (by dsimp [Y]; positivity)
        exact Finset.sum_le_sum (fun t _ => exceptionalKernelMass_le_card j t S)
      _ = _ := by
        simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
        change (2 * Y⁻¹) * (Y * ((S.card : ℝ) * (2 / (X + 1)))) = _
        field_simp [hY, hX]
        <;> ring
  have hcost := weightedExceptionalCost_le_four_mul (fun _ _ => S) j
    (B := (S.card : ℝ)) (Nat.cast_nonneg _) (fun _ _ => le_rfl)
  have hsplit : (2 * Y⁻¹) *
      (∑ t ∈ Finset.range (2 ^ (j + 1)),
        (A + η * ((t + 1 : ℕ) : ℝ)) * exceptionalKernelMass j t S) =
      A * ((2 * Y⁻¹) * ∑ t ∈ Finset.range (2 ^ (j + 1)), exceptionalKernelMass j t S) +
        η * weightedExceptionalCost (fun _ _ => S) j := by
    unfold weightedExceptionalCost
    simp_rw [add_mul, Finset.sum_add_distrib]
    simp_rw [mul_assoc]
    rw [← Finset.mul_sum, ← Finset.mul_sum]
    dsimp [Y]
    ring
  calc
    |fixedShiftPacket S j| ≤ (2 * Y⁻¹) *
        ∑ t ∈ Finset.range (2 ^ (j + 1)),
          (A + η * ((t + 1 : ℕ) : ℝ)) * exceptionalKernelMass j t S := by
      unfold fixedShiftPacket
      rw [abs_mul, abs_of_nonneg (show 0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ by positivity)]
      apply mul_le_mul_of_nonneg_left _ (by dsimp [Y]; positivity)
      exact (Finset.abs_sum_le_sum_abs _ _).trans
        (Finset.sum_le_sum (fun t _ => abs_fixed_slice_le S j t A η hprefix))
    _ = _ := hsplit
    _ ≤ A * (4 * (S.card : ℝ) / (X + 1)) + η * (4 * (S.card : ℝ)) :=
      add_le_add (mul_le_mul_of_nonneg_left hmass hA) (mul_le_mul_of_nonneg_left hcost hη)
    _ = 4 * (S.card : ℝ) * (A / (X + 1) + η) := by ring

/-- An admitted fixed-shift tail theorem can feed the finite part only.
The cutoff can depend on S and eta; no bound for the complementary packet follows. -/
theorem fixed_family_packet_bound (S : Finset ℕ) {η : ℝ} (hη : 0 ≤ η)
    (htail : ∀ h ∈ S, ∃ K : ℕ, ∀ N, K ≤ N →
      |mertensTwoPointPrefix h N| ≤ η * (N : ℝ)) :
    ∃ K : ℕ, ∀ j : ℕ, |fixedShiftPacket S j| ≤
      4 * (S.card : ℝ) * ((K : ℝ) / ((((2 ^ j : ℕ) : ℝ)) + 1) + η) := by
  obtain ⟨K, hK⟩ := fixed_family_envelope S mertensTwoPointPrefix hη
    (fun h _ N => abs_twoPointPrefix_le_length h N) htail
  exact ⟨K, fun j => abs_fixedShiftPacket_le S j (K : ℝ) η (Nat.cast_nonneg _) hη hK⟩

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelFixedShiftTransfer
