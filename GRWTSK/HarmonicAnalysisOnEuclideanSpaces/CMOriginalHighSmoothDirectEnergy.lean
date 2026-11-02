/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveHighSmoothAllShell
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareEnergyIntegration
import Mathlib.Tactic

/-!
# Direct unsmoothed original Möbius high/low energy reduction

These coefficients are the ORIGINAL moebiusReal n * pickupResponse n u, not a
regularized source. The selected shells are the existing true fixed-prime-
bank high-smooth DIVISOR subsets of the original dyadic integer inventory.
No source sign, n label, squareful zero, or causal event has been replaced.

The high-shell count bounds the ORIGINAL source amplitude independently of
time. Once the previously isolated fixed-bank scalar geometric envelope is
proved, the high wave is uniformly bounded. A coherent original full/low
energy comparison then needs NO smoothing error or Fourier Lp theorem.

The low is initially the exact original-minus-high remainder. Its equality
to the source-filtered complementary inventory is tracked as a separate
finite combinatorial Prop rather than silently postulated.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareEnergyIntegration
open GRWTSK.NumberTheory.Moebius.HighSmoothTimeLocalGramProof
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell

def originalSignedAtom (n : ℕ) (u : ℝ) : ℝ :=
  moebiusReal n * pickupResponse n u

def originalHighShellWave (B : PrimeBand) (s : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ highShell B s, originalSignedAtom n u

theorem originalSignedAtom_abs_le_shell
    {X n : ℕ} (hX : 1 ≤ X) (hXn : X < n) (u : ℝ) :
    |originalSignedAtom n u| ≤ 2 * (Real.sqrt (X : ℝ))⁻¹ := by
  have hr := sourceResponse_nonneg_le_dyadic_amplitude hX hXn u
  have hm : |moebiusReal n| ≤ 1 := by
    rcases ArithmeticFunction.moebius_eq_or n with h | h | h <;>
      simp [moebiusReal, h]
  calc
    |originalSignedAtom n u| = |moebiusReal n| * pickupResponse n u := by
      simp [originalSignedAtom, abs_mul, abs_of_nonneg hr.1]
    _ ≤ 1 * pickupResponse n u :=
      mul_le_mul_of_nonneg_right hm hr.1
    _ = pickupResponse n u := one_mul _
    _ ≤ 2 * (Real.sqrt (X : ℝ))⁻¹ := hr.2

/-- Actual original coherent amplitude for one genuine high-smooth shell. -/
theorem originalHighShellWave_abs_le_count
    (B : PrimeBand) (s : ℕ) (u : ℝ) :
    |originalHighShellWave B s u| ≤
      2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹ *
        Real.exp (2 * Real.sqrt (Real.log (2 * ((2 ^ s : ℕ) : ℝ)))) *
        (1 + Real.log (2 * ((2 ^ s : ℕ) : ℝ)) / Real.log 2) ^ B.primes.card := by
  have hcount := highSmoothCofactorCount_target B (2 ^ s)
    (by positivity : 1 ≤ 2 ^ s)
  have hnonneg : 0 ≤ 2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹ := by
    positivity
  calc
    |originalHighShellWave B s u| ≤
        ∑ n ∈ highShell B s, |originalSignedAtom n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _n ∈ highShell B s,
        (2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹) := by
      apply Finset.sum_le_sum
      intro n hn
      exact originalSignedAtom_abs_le_shell (by positivity)
        (highShell_gt_lower B s n hn) u
    _ = ((highShell B s).card : ℝ) *
          (2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹) := by simp
    _ ≤ (Real.exp (2 * Real.sqrt (Real.log
            (2 * ((2 ^ s : ℕ) : ℝ)))) *
          (1 + Real.log (2 * ((2 ^ s : ℕ) : ℝ)) / Real.log 2) ^ B.primes.card) *
          (2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹) :=
      mul_le_mul_of_nonneg_right hcount hnonneg
    _ = _ := by ring

/-- The original high packet has NO extra n=1 term: index 1 stays low. -/
def originalHighWave (B : PrimeBand) (j : ℕ) (u : ℝ) : ℝ :=
  ∑ s ∈ Finset.range j, originalHighShellWave B s u

def originalLowWave (B : PrimeBand) (j : ℕ) (u : ℝ) : ℝ :=
  originalFixedWave j u - originalHighWave B j u

theorem originalFixedWave_eq_high_add_low
    (B : PrimeBand) (j : ℕ) (u : ℝ) :
    originalFixedWave j u =
      originalHighWave B j u + originalLowWave B j u := by
  unfold originalLowWave
  ring

/-- ALL original mixed high-low terms remain inside the exact square. -/
theorem original_signed_high_low_square
    (B : PrimeBand) (j : ℕ) (u : ℝ) :
    (originalFixedWave j u) ^ 2 =
      (originalHighWave B j u) ^ 2 +
        2 * originalHighWave B j u * originalLowWave B j u +
          (originalLowWave B j u) ^ 2 := by
  rw [originalFixedWave_eq_high_add_low]
  ring

theorem originalHighWave_abs_le_finiteEnvelope
    (B : PrimeBand) (j : ℕ) (u : ℝ) :
    |originalHighWave B j u| ≤ finiteHighEnvelope B j := by
  unfold originalHighWave finiteHighEnvelope
  calc
    _ ≤ ∑ s ∈ Finset.range j, |originalHighShellWave B s u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro s hs
      exact originalHighShellWave_abs_le_count B s u

/-- No global Mertens or RH assumption: only the explicit geometric sum. -/
theorem originalHighWave_uniform_of_global_envelope
    (B : PrimeBand) (h : GlobalHighEnvelope) :
    ∃ K : ℝ, 0 ≤ K ∧
      ∀ (j : ℕ) (u : ℝ), |originalHighWave B j u| ≤ K := by
  obtain ⟨K, hK, hk⟩ := h B
  exact ⟨K, hK, fun j u =>
    (originalHighWave_abs_le_finiteEnvelope B j u).trans (hk j)⟩

/-- The ORIGINAL coherent point observation: no smoothed-error allowance. -/
theorem original_sq_le_low_of_high_bound
    (B : PrimeBand) (j : ℕ) (u K : ℝ)
    (hK : |originalHighWave B j u| ≤ K) :
    (originalFixedWave j u) ^ 2 ≤
      2 * (originalLowWave B j u) ^ 2 + 2 * K ^ 2 := by
  have habs := abs_le.mp hK
  have hsq : (originalHighWave B j u) ^ 2 ≤ K ^ 2 := by
    nlinarith [mul_nonneg
      (show 0 ≤ K - originalHighWave B j u by linarith)
      (show 0 ≤ K + originalHighWave B j u by linarith)]
  rw [originalFixedWave_eq_high_add_low]
  nlinarith [sq_nonneg (originalHighWave B j u - originalLowWave B j u)]

theorem original_low_sq_le_full_of_high_bound
    (B : PrimeBand) (j : ℕ) (u K : ℝ)
    (hK : |originalHighWave B j u| ≤ K) :
    (originalLowWave B j u) ^ 2 ≤
      2 * (originalFixedWave j u) ^ 2 + 2 * K ^ 2 := by
  have habs := abs_le.mp hK
  have hsq : (originalHighWave B j u) ^ 2 ≤ K ^ 2 := by
    nlinarith [mul_nonneg
      (show 0 ≤ K - originalHighWave B j u by linarith)
      (show 0 ≤ K + originalHighWave B j u by linarith)]
  unfold originalLowWave
  nlinarith [sq_nonneg (originalFixedWave j u + originalHighWave B j u)]

/-- Exact source-filter complement identification is FINITE, but not yet
proved in this Lean leaf. Its explicit statement prevents any claim that
the remainder is already a certified deletion of distinct shell indices. -/
def OriginalLowComplementReturn (B : PrimeBand) : Prop :=
  ∀ (j : ℕ) (u : ℝ), originalLowWave B j u =
    ∑ n ∈ indices j,
      if (∃ s ∈ Finset.range j, n ∈ highShell B s) then 0
      else originalSignedAtom n u

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
