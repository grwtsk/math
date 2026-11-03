/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.FactorialPrimeFiberUniformEnergy
import Mathlib

/-!
# The Gödel visualizer's seven colors versus actual Möbius correlations

The archived browser has 64 rotor samples, 33 DFT bins, and seven color
channels obtained from frequency index modulo 7.  The colors here reuse
those existing, exact types and functions; they are not fabricated
simulator measurements.  Finite random-choice identities are mathematical
facts about *independently chosen signs*, NOT assumptions about Möbius.

The arithmetic variance difference is the FULL signed off-diagonal
correlation with every index and causal birth retained.  The module makes
no assertion that random expectation bounds that deterministic defect.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.SignedWaveformEnergy
open GRWTSK.NumberTheory.FactorialPrimeFiberUniformEnergy

namespace GRWTSK.NumberTheory.GodelRandomChoiceSignedCorrelation

abbrev SampleIndex := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.SampleIndex
abbrev FrequencyIndex := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.FrequencyIndex
abbrev Residue := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.Residue

/-- The exact existing browser frequency color map k -> k mod 7. -/
def frequencyColor (k : FrequencyIndex) : Residue :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.frequencyResidue k.val

/-- The sampled 64/33 temporal DFT is the pre-existing browser model.
No map from integer Möbius indices to rotor samples is invented here. -/
def rotorSpectrum (history : SampleIndex → ℂ) : FrequencyIndex → ℂ :=
  GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain.finiteRotorFourier history

/-- Seven complex bins; sum the phases before taking a norm. -/
def colorBin (history : SampleIndex → ℂ) (cutoff : ℕ) : Residue → ℂ :=
  GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain.finiteResidueChannel
    history cutoff

/-- The real visualizer has exactly this reassembly of complex modes. -/
theorem colorBin_complete (history : SampleIndex → ℂ) (cutoff : ℕ) :
    (∑ r : Residue, colorBin history cutoff r) =
      ∑ k : FrequencyIndex,
        if k.val ≤ cutoff then rotorSpectrum history k else 0 := by
  exact GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain.sum_residue_channels
    history cutoff

/-- A **single** random sign applied to a whole color bin leaves that
bin's squared energy unchanged, whatever its internal interference. -/
def flipColor (choice : Residue → Bool) (z : Residue → ℂ) : Residue → ℂ :=
  fun r => if choice r then z r else -z r

/-- Randomly recoloring whole bins is an energy isometry, not a source
of arithmetic cancellation. -/
theorem harmonicEnergy_flipColor (choice : Residue → Bool)
    (z : Residue → ℂ) :
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.harmonicEnergy
      (flipColor choice z) =
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.harmonicEnergy z := by
  unfold GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.harmonicEnergy
  apply Finset.sum_congr rfl
  intro r hr
  by_cases h : choice r
  · simp [flipColor, h]
  · simp [flipColor, h]

/-- Two separate fair sign choices, enumerated exactly. This is the
four-outcome mean cross term; it is not a simulation-provided statistic. -/
def independentChoiceCorrelation (x y : ℂ) : ℂ :=
  (x * star y + x * star (-y) + (-x) * star y + (-x) * star (-y)) / 4

/-- Off-diagonal **model** expectation is zero under independent signs. -/
theorem independentChoiceCorrelation_zero (x y : ℂ) :
    independentChoiceCorrelation x y = 0 := by
  unfold independentChoiceCorrelation
  simp only [map_neg]
  ring

/-- Same-sign squared modulus does not vanish under random choice. -/
def singleChoiceDiagonal (x : ℂ) : ℝ :=
  (‖x‖ ^ 2 + ‖-x‖ ^ 2) / 2

theorem singleChoiceDiagonal_eq (x : ℂ) :
    singleChoiceDiagonal x = ‖x‖ ^ 2 := by
  simp [singleChoiceDiagonal]

/-- Frequencies 1 and 8 have the same visualizer residue color, so their
complex coefficients +1 and -1 can cancel inside ONE color, even though
the separate squared moduli have total energy two. -/
theorem sameColor_interference_witness :
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.frequencyResidue 1 =
      GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.frequencyResidue 8 ∧
    (1 : ℂ) + (-1) = 0 ∧
    ‖(1 : ℂ)‖ ^ 2 + ‖(-1 : ℂ)‖ ^ 2 = (2 : ℝ) := by
  constructor
  · decide
  constructor
  · ring
  · norm_num

/-- The original arithmetic coefficient and birth value, not a random sign. -/
def originalAmplitude (n : ℕ) (u : ℝ) : ℝ :=
  moebiusReal n * pickupResponse n u

/-- Actual original ordered off-diagonal covariance at one physical time.
It contains both pair orientations and every squareful-zero label. -/
def deterministicCovariance (S : Finset ℕ) (u : ℝ) : ℝ :=
  ∑ m ∈ S, ∑ n ∈ S,
    if m ≠ n then originalAmplitude m u * originalAmplitude n u else 0

/-- Exact difference between deterministic original square and the
independent-Rademacher diagonal expectation. This is an identity, not a
smallness bound, and preserves the complete signed covariance. -/
theorem actualSquare_eq_randomDiagonal_add_covariance
    (S : Finset ℕ) (u : ℝ) :
    (∑ n ∈ S, originalAmplitude n u) ^ 2 =
      (∑ n ∈ S, (originalAmplitude n u) ^ 2) +
        deterministicCovariance S u := by
  let c : ℕ → ℝ := fun n => originalAmplitude n u
  have h := complete_gram_split S c (fun _ _ => (1 : ℝ))
  calc
    (∑ n ∈ S, originalAmplitude n u) ^ 2 =
        ∑ m ∈ S, ∑ n ∈ S, c m * c n * 1 := by
      simp only [mul_one]
      rw [pow_two, Finset.sum_mul_sum]
    _ = (∑ n ∈ S, c n ^ 2) +
          ∑ m ∈ S, ∑ n ∈ S, if m ≠ n then c m * c n else 0 := by
      simpa only [mul_one] using h
    _ = _ := rfl

/-- A typed assignment of original arithmetic labels to visualizer
frequencies is EXTERNAL DATA, and is deliberately NOT chosen by random
selection. Any such assignment returns all original source terms. -/
def sourceColorBucket (S : Finset ℕ)
    (address : ℕ → FrequencyIndex) (c : ℕ → ℝ) (r : Residue) : ℝ :=
  ∑ n ∈ S, if frequencyColor (address n) = r then c n else 0

/-- Full seven-color reassembly of any real-valued arithmetic observation,
including the actual Möbius waveform. -/
theorem sourceColorBucket_complete (S : Finset ℕ)
    (address : ℕ → FrequencyIndex) (c : ℕ → ℝ) :
    (∑ r : Residue, sourceColorBucket S address c r) =
      ∑ n ∈ S, c n := by
  classical
  unfold sourceColorBucket
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  simpa only [Finset.sum_ite_eq', Finset.mem_univ, ite_true]

/-- The original full causal index set can be color-addressed without
assuming a visualizer-to-arithmetic correspondence or changing mu signs. -/
theorem colored_originalWave_complete (u : ℝ)
    (address : ℕ → FrequencyIndex) :
    (∑ r : Residue,
      sourceColorBucket (Finset.Icc 1 ⌊Real.exp u⌋₊)
        address (fun n => originalAmplitude n u) r) = waveform u := by
  exact sourceColorBucket_complete _ _ _

/-- Colors can be reflected or sampled, but the arithmetic covariance
must be bounded by a separate theorem. This is a source-identified open
research predicate, NOT an axiom or a proved probabilistic estimate. -/
def DenseSignedCorrelationSupplier : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ Cδ : ℝ, 0 ≤ Cδ ∧
    ∀ j : ℕ,
      denseEnergy ((j : ℝ) * Real.log 2) ≤
        Cδ * (2 : ℝ) ^ (δ * (j : ℝ))

/-- This equality only identifies the earlier open target. It is not a
proof of that target by a random-choice model. -/
theorem denseSignedCorrelationSupplier_iff_openBudget :
    DenseSignedCorrelationSupplier ↔ DenseUniformEnergyBudget := by
  rfl

end GRWTSK.NumberTheory.GodelRandomChoiceSignedCorrelation
