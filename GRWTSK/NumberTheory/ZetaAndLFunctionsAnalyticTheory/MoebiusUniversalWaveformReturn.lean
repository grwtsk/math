/- Copyright (c) 2026 grwtsk contributors. MIT.
Source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.UniversalWaveformInput
import GRWTSK.MeasureAndIntegration.FiniteResponseSum
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact original Möbius specialization of the UNIVERSAL waveform port

Any real function, not just Möbius pickup, is a legal source.
An arbitrary positive-integer coefficient sequence is another OPTIONAL
specialization, with the existing arrival-gated source atom.

The ORIGINAL wholePickup and pickupCross are identified by theorem;
their integer source, original μ coefficients, BOTH ordered off-diagonal
orientations, zero terms and response Gram are unchanged.

A finite two-bit Möbius sign codec is NOT a universal amplitude codec.
For any lossy observation, the full source-minus-observation remainder
and all three mixed-error terms remain in the signed cross packet.
No RH-strength cancellation theorem is inferred for any waveform.
-/

namespace GRWTSK.NumberTheory.Moebius.UniversalWaveformReturn

open GRWTSK.MeasureAndIntegration.UniversalWaveformInput
open GRWTSK.RiemannHypothesis.CCC

/-- ANY arbitrary real-valued time waveform is an admitted input. -/
def arbitraryRealWaveform (waveform : ℝ → ℝ) : UniversalInput ℝ ℝ :=
  UniversalInput.ofFunction waveform

theorem arbitraryRealWaveform_exact (waveform : ℝ → ℝ) (t : ℝ) :
    (arbitraryRealWaveform waveform).source t = waveform t := rfl

/-- Original inventory with its literal integer, birth and cutoff. -/
def arithmeticInventory (T : ℝ) : Finset ℕ :=
  Finset.Icc 1 ⌊Real.exp T⌋₊

/-- The original causal atom supports ANY coefficient function. No
Möbius constraint is imposed on these input coefficients. -/
def arbitraryCoefficientWaveform (coefficient : ℕ → ℝ) :
    UniversalInput ℝ ℝ :=
  indexedSynthesis arithmeticInventory coefficient pickupResponse

/-- The ORIGINAL waveform is an explicit specialization; it is not a
default imposed on all arbitrary waveforms. -/
def originalMoebiusWaveform : UniversalInput ℝ ℝ :=
  arbitraryRealWaveform wholePickup

/-- On the original physical time range, generic coefficient synthesis
returns exactly the UNCHANGED original pickup signal. -/
theorem moebiusCoefficientWaveform_eq_original
    (T : ℝ) (hT : 0 ≤ T) :
    (arbitraryCoefficientWaveform moebiusReal).source T =
      originalMoebiusWaveform.source T := by
  change (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    moebiusReal n * pickupResponse n T) = wholePickup T
  exact (wholePickup_response_sum hT).symm

/-- The original energy is literally the universal-input energy
specialized to the same original Möbius waveform; no new energy. -/
theorem realEnergy_original_eq_pickupEnergy (T : ℝ) :
    realEnergy originalMoebiusWaveform T = pickupEnergy T := rfl

/-- The original ordered off-diagonal Gram can consume ANY signed
real integer coefficient sequence and ANY real kernel. -/
def arbitraryOrderedCross
    (coefficient : ℕ → ℝ) (kernel : ℝ → ℕ → ℕ → ℝ) (T : ℝ) : ℝ :=
  ∑ m ∈ arithmeticInventory T, ∑ n ∈ arithmeticInventory T,
    if m ≠ n then coefficient m * coefficient n * kernel T m n else 0

/-- Specializing the GENERIC ordered cross to the actual Möbius
coefficient and response kernel returns the ORIGINAL pickupCross. -/
theorem arbitraryOrderedCross_moebius_eq_pickupCross (T : ℝ) :
    arbitraryOrderedCross moebiusReal pickupResponseGram T =
      pickupCross T := rfl

/-- The complete signed source-minus-observation defect at the
ordered quadratic level; no absolute-value or unsigned surrogate. -/
def orderedCrossDefect
    (source observed : ℕ → ℝ) (kernel : ℝ → ℕ → ℕ → ℝ)
    (T : ℝ) : ℝ :=
  arbitraryOrderedCross source kernel T -
    arbitraryOrderedCross observed kernel T

/-- Any observed integer-coefficient waveform returns the original
ordered Möbius cross PLUS the COMPLETE signed defect. -/
theorem pickupCross_eq_observed_add_full_defect
    (observed : ℕ → ℝ) (T : ℝ) :
    pickupCross T =
      arbitraryOrderedCross observed pickupResponseGram T +
        orderedCrossDefect moebiusReal observed pickupResponseGram T := by
  rw [← arbitraryOrderedCross_moebius_eq_pickupCross]
  unfold orderedCrossDefect
  ring

/-- The defect has exactly the two MIXED orientations and the
error-error packet. All off-diagonal indices and signs are retained. -/
theorem orderedCrossDefect_signed_expansion
    (source observed : ℕ → ℝ) (kernel : ℝ → ℕ → ℕ → ℝ)
    (T : ℝ) :
    orderedCrossDefect source observed kernel T =
      ∑ m ∈ arithmeticInventory T, ∑ n ∈ arithmeticInventory T,
        if m ≠ n then
          ((source m - observed m) * observed n +
            observed m * (source n - observed n) +
            (source m - observed m) * (source n - observed n)) *
            kernel T m n
        else 0 := by
  classical
  unfold orderedCrossDefect arbitraryOrderedCross
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases h : m ≠ n
  · simp only [if_pos h]
    ring
  · simp [h]

end GRWTSK.NumberTheory.Moebius.UniversalWaveformReturn
