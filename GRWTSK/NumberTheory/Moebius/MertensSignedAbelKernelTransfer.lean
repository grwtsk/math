/- Copyright (c) 2026 grwtsk. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelSubprobabilityKernel
import GRWTSK.Analysis.Inequalities.FiniteKernelCorrelation

/-!
# Exact Abel-kernel transport with weighted exceptional shifts

The actual kernel, ordinary two-point prefixes, triangular support, and
complete signed depth packet are unchanged. The regular contribution stays
signed. Exceptional shifts are paid by their KERNEL MASS, not their counting
density. An out-of-support exceptional label contributes nothing.

This is finite source algebra and a conditional consumer of the existing
RH endpoint. It proves no cancellation, entropy decrement, independence,
expander estimate, or equality between this packet and `pickupCross`.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.Inequalities.FiniteKernelCorrelation

/-- The literal weighted ordinary-prefix pairing, before any absolute values. -/
def kernelPrefixPairing (j t : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    normalizedSignedAbelShiftKernel j t h * mertensTwoPointPrefix h (t + 1)

/-- The previously generic finite rearrangement now acts on the actual Mobius source. -/
theorem depthSlice_eq_scaled_kernelPrefixPairing (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ * kernelPrefixPairing j t := by
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_kernelAutocorrelation]
  apply congrArg (fun x : ℝ => 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ * x)
  unfold kernelPrefixPairing
  simp_rw [mertensTwoPointPrefix_eq_baseSum]
  exact weighted_pairing (Finset.range (t + 1))
    (Finset.Ico 1 (2 ^ (j + 1)))
    (fun a => moebiusReal (a + 1))
    (fun a h => moebiusReal (a + 1 + h))
    (normalizedSignedAbelShiftKernel j t)

/-- The complete old packet, not a selected depth or terminal prefix. -/
theorem depthPacket_eq_scaled_kernelPrefixSum (j : ℕ) :
    weightedMertensDyadicSignedAbelDepthPacket j =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        ∑ t ∈ Finset.range (2 ^ (j + 1)), kernelPrefixPairing j t := by
  unfold weightedMertensDyadicSignedAbelDepthPacket
  simp_rw [depthSlice_eq_scaled_kernelPrefixPairing]
  rw [Finset.mul_sum]

/-- The last two depths have empty triangular support; they are not silently dropped. -/
theorem kernel_eq_zero_of_terminal_depth (j t h : ℕ)
    (ht : 2 ^ (j + 1) - 2 ≤ t) :
    normalizedSignedAbelShiftKernel j t h = 0 := by
  have hnot : ¬ (1 ≤ h ∧ h < 2 ^ (j + 1) ∧
      t < 2 ^ (j + 1) - h - 1) := by omega
  simp only [normalizedSignedAbelShiftKernel, if_neg hnot]

theorem depthSlice_eq_zero_of_terminal_depth (j t : ℕ)
    (ht : 2 ^ (j + 1) - 2 ≤ t) :
    weightedMertensDyadicSignedAbelDepthSlice j t = 0 := by
  have hz : kernelPrefixPairing j t = 0 := by
    unfold kernelPrefixPairing
    apply Finset.sum_eq_zero
    intro h _hh
    rw [kernel_eq_zero_of_terminal_depth j t h ht, zero_mul]
  rw [depthSlice_eq_scaled_kernelPrefixPairing, hz, mul_zero]

/-- Elementary allowance for the unchanged ordinary, not logarithmic, prefix. -/
theorem abs_twoPointPrefix_le_length (h n : ℕ) :
    |mertensTwoPointPrefix h n| ≤ (n : ℝ) := by
  change |∑ a ∈ Finset.range n,
    moebiusReal (a + 1) * moebiusReal (a + 1 + h)| ≤ (n : ℝ)
  calc
    _ ≤ ∑ a ∈ Finset.range n,
        |moebiusReal (a + 1) * moebiusReal (a + 1 + h)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _a ∈ Finset.range n, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro a _ha
      rw [abs_mul]
      calc
        _ ≤ 1 * 1 := mul_le_mul (moebiusReal_abs_le_one (a + 1))
          (moebiusReal_abs_le_one (a + 1 + h)) (abs_nonneg _) zero_le_one
        _ = 1 := by norm_num
    _ = (n : ℝ) := by simp

/-- Keep cancellation on shifts outside the declared exceptional set. -/
def regularPrefixPairing (j t : ℕ) (bad : Finset ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    if h ∈ bad then 0 else
      normalizedSignedAbelShiftKernel j t h * mertensTwoPointPrefix h (t + 1)

/-- The signed exceptional contribution before applying its elementary allowance. -/
def exceptionalPrefixPairing (j t : ℕ) (bad : Finset ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    if h ∈ bad then
      normalizedSignedAbelShiftKernel j t h * mertensTwoPointPrefix h (t + 1)
    else 0

/-- Kernel-weighted exceptional mass, with the actual triangular support retained. -/
def exceptionalKernelMass (j t : ℕ) (bad : Finset ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    if h ∈ bad then normalizedSignedAbelShiftKernel j t h else 0

theorem kernelPrefixPairing_eq_regular_add_exceptional
    (j t : ℕ) (bad : Finset ℕ) :
    kernelPrefixPairing j t =
      regularPrefixPairing j t bad + exceptionalPrefixPairing j t bad := by
  unfold kernelPrefixPairing regularPrefixPairing exceptionalPrefixPairing
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro h _hh
  by_cases hb : h ∈ bad <;> simp [hb]

theorem exceptionalKernelMass_nonneg (j t : ℕ) (bad : Finset ℕ) :
    0 ≤ exceptionalKernelMass j t bad := by
  unfold exceptionalKernelMass
  apply Finset.sum_nonneg
  intro h _hh
  by_cases hb : h ∈ bad
  · simp only [if_pos hb]
    exact normalizedSignedAbelShiftKernel_nonneg j t h
  · simp only [if_neg hb, le_refl]

/-- Subprobability control is only claimed on the parent's actual depth range. -/
theorem exceptionalKernelMass_le_one {j t : ℕ} (bad : Finset ℕ)
    (ht : t + 2 ≤ 2 ^ (j + 1)) :
    exceptionalKernelMass j t bad ≤ 1 := by
  calc
    exceptionalKernelMass j t bad ≤ normalizedSignedAbelShiftKernelMass j t := by
      unfold exceptionalKernelMass normalizedSignedAbelShiftKernelMass
      apply Finset.sum_le_sum
      intro h _hh
      by_cases hb : h ∈ bad
      · simp only [if_pos hb, le_refl]
      · simp only [if_neg hb]
        exact normalizedSignedAbelShiftKernel_nonneg j t h
    _ ≤ 1 := normalizedSignedAbelShiftKernelMass_le_one ht

/-- The exceptional loss is prefix length times weighted mass, with no density coercion. -/
theorem abs_exceptionalPrefixPairing_le_mass (j t : ℕ) (bad : Finset ℕ) :
    |exceptionalPrefixPairing j t bad| ≤
      ((t + 1 : ℕ) : ℝ) * exceptionalKernelMass j t bad := by
  unfold exceptionalPrefixPairing exceptionalKernelMass
  rw [Finset.mul_sum]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro h _hh
  by_cases hb : h ∈ bad
  · simp only [if_pos hb, abs_mul,
      abs_of_nonneg (normalizedSignedAbelShiftKernel_nonneg j t h)]
    simpa only [mul_comm] using
      mul_le_mul_of_nonneg_left (abs_twoPointPrefix_le_length h (t + 1))
        (normalizedSignedAbelShiftKernel_nonneg j t h)
  · simp only [if_neg hb, abs_zero, mul_zero, le_refl]

theorem abs_kernelPrefixPairing_sub_regular_le_mass
    (j t : ℕ) (bad : Finset ℕ) :
    |kernelPrefixPairing j t - regularPrefixPairing j t bad| ≤
      ((t + 1 : ℕ) : ℝ) * exceptionalKernelMass j t bad := by
  rw [kernelPrefixPairing_eq_regular_add_exceptional j t bad, add_sub_cancel_left]
  exact abs_exceptionalPrefixPairing_le_mass j t bad

/-- Only the exceptional part is replaced by an absolute upper bound. -/
theorem kernelPrefixPairing_le_regular_add_mass
    (j t : ℕ) (bad : Finset ℕ) :
    kernelPrefixPairing j t ≤ regularPrefixPairing j t bad +
      ((t + 1 : ℕ) : ℝ) * exceptionalKernelMass j t bad := by
  rw [kernelPrefixPairing_eq_regular_add_exceptional j t bad]
  exact add_le_add_left
    ((le_abs_self _).trans (abs_exceptionalPrefixPairing_le_mass j t bad)) _

/-- A concrete upper allowance for the complete source packet. The exceptional
set may depend on both scale and depth; the regular term remains signed. -/
def exceptionalPacketUpper (bad : ℕ → ℕ → Finset ℕ) (j : ℕ) : ℝ :=
  2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
    ∑ t ∈ Finset.range (2 ^ (j + 1)),
      (regularPrefixPairing j t (bad j t) +
        ((t + 1 : ℕ) : ℝ) * exceptionalKernelMass j t (bad j t))

theorem depthPacket_le_exceptionalPacketUpper
    (bad : ℕ → ℕ → Finset ℕ) (j : ℕ) :
    weightedMertensDyadicSignedAbelDepthPacket j ≤ exceptionalPacketUpper bad j := by
  rw [depthPacket_eq_scaled_kernelPrefixSum]
  unfold exceptionalPacketUpper
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply Finset.sum_le_sum
  intro t _ht
  exact kernelPrefixPairing_le_regular_add_mass j t (bad j t)

/-- Empty exceptional sets recover the exact signed packet, with no artificial loss. -/
theorem exceptionalPacketUpper_empty (j : ℕ) :
    exceptionalPacketUpper (fun _ _ => ∅) j =
      weightedMertensDyadicSignedAbelDepthPacket j := by
  rw [depthPacket_eq_scaled_kernelPrefixSum]
  simp [exceptionalPacketUpper, regularPrefixPairing,
    exceptionalKernelMass, kernelPrefixPairing]

/-- The arithmetic estimate is still an explicit hypothesis. The criterion uses
EVERY positive exponent and EVERY dyadic scale, including all depth contributions. -/
theorem riemannHypothesis_of_kernelExceptionalBudget
    (bad : ℕ → ℕ → Finset ℕ)
    (hbudget : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      exceptionalPacketUpper bad j ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket
  intro δ hδ
  obtain ⟨C, hC, hb⟩ := hbudget δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  exact (depthPacket_le_exceptionalPacketUpper bad j).trans (hb j)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer
