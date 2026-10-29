/- Copyright (c) 2026 grwtsk. MIT.
Imported Mathlib and GRWTSK results retain their upstream notices and licenses. -/
import GRWTSK.RealFunctions.DiscreteFourierReadout
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedAbelFourierCompletion
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelFiniteRows

/-!
# Source-exact dual Fourier response of the combined arithmetic row

The three cofactor rows are combined with signs +,-,- before Fourier transport.
The finite observation is the original signedResponse. Full-spectrum equality
and complementary-mode splitting preserve all interference. The L2 comparison
retains both energies and makes no assertion that either has RH-strength size.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourierReadout
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.FiniteSums.DiscreteFourierSynthesis
open GRWTSK.Analysis.FiniteSums.DiscreteFourierReadout
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourierCompletion
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows

/-- The true signed arithmetic row tested against a canonical phase. -/
def frequencyResponse (width : ℕ → ℕ) (j : ℕ) (k : ZMod (fourierPeriod j)) : ℂ :=
  modeReadout (Finset.Icc 1 (2 ^ (j + 1)))
    (fun n => (signedRow width j n : ℂ)) k

def partialReadout (width : ℕ → ℕ) (j : ℕ)
    (S : Finset (ZMod (fourierPeriod j))) : ℝ :=
  (∑ k ∈ S, mobiusCoefficient j k * frequencyResponse width j k).re

/-- No Fourier-mode estimate or periodicity assumption on Mobius enters this identity. -/
theorem signedResponse_eq_spectral_sum (width : ℕ → ℕ) (j : ℕ) :
    (signedResponse width j moebiusReal : ℂ) =
      ∑ k : ZMod (fourierPeriod j),
        mobiusCoefficient j k * frequencyResponse width j k := by
  calc
    _ = ∑ n ∈ Finset.Icc 1 (2 ^ (j + 1)),
        (signedRow width j n : ℂ) * (moebiusReal n : ℂ) := by
      rw [signedResponse_eq_row_sum]
      push_cast
    _ = ∑ n ∈ Finset.Icc 1 (2 ^ (j + 1)),
        (signedRow width j n : ℂ) * mobiusSamples j (n : ZMod (fourierPeriod j)) := by
      apply Finset.sum_congr rfl
      intro n hn
      have hny := (Finset.mem_Icc.mp hn).2
      have hnD : n < fourierPeriod j := by unfold fourierPeriod; omega
      have hs : mobiusSamples j (n : ZMod (fourierPeriod j)) = (moebiusReal n : ℂ) :=
        sample_natCast _ hnD
      rw [hs]
    _ = _ := pairing_eq_modes _ _ (mobiusSamples j)

theorem signedResponse_eq_partial_add_complement (width : ℕ → ℕ) (j : ℕ)
    (S : Finset (ZMod (fourierPeriod j))) :
    signedResponse width j moebiusReal = partialReadout width j S + partialReadout width j Sᶜ := by
  have h := congrArg Complex.re (signedResponse_eq_spectral_sum width j)
  simp only [Complex.ofReal_re] at h
  rw [h]
  unfold partialReadout
  rw [← Complex.add_re, Finset.sum_add_sum_compl]

/-- Only the scalar's omitted modes are paid, not full input reconstruction. -/
theorem signedResponse_sub_partial_eq (width : ℕ → ℕ) (j : ℕ)
    (S : Finset (ZMod (fourierPeriod j))) :
    signedResponse width j moebiusReal - partialReadout width j S =
      partialReadout width j Sᶜ := by
  rw [signedResponse_eq_partial_add_complement width j S]
  ring

/-- Dual L2 allowance in the actual frequency-response measure. -/
theorem signedResponse_sub_partial_sq_le (width : ℕ → ℕ) (j : ℕ)
    (S : Finset (ZMod (fourierPeriod j))) :
    (signedResponse width j moebiusReal - partialReadout width j S) ^ 2 ≤
      (∑ k ∈ Sᶜ, ‖mobiusCoefficient j k‖ ^ 2) *
        ∑ k ∈ Sᶜ, ‖frequencyResponse width j k‖ ^ 2 := by
  rw [signedResponse_sub_partial_eq]
  unfold partialReadout
  have hr := (sq_le_sq₀ (abs_nonneg _) (norm_nonneg _)).2
    (Complex.abs_re_le_norm
      (∑ k ∈ Sᶜ, mobiusCoefficient j k * frequencyResponse width j k))
  rw [sq_abs] at hr
  exact hr.trans (norm_pairing_sq_le Sᶜ (mobiusCoefficient j) (frequencyResponse width j))

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourierReadout
