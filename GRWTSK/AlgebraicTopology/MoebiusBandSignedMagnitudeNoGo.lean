/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.AlgebraicTopology.MoebiusBandUnfoldedSeamGauge
import GRWTSK.AlgebraicTopology.MoebiusBandParitySignedWaveGauge
import Mathlib.Tactic

/-!
# Mod-two orientation is invisible to the compensated arithmetic readout

The existing arithmetic gauge detector exactly reconstructs the original
signed wave for ANY sector frame. In particular, two topologically
inequivalent one-edge orientation loops return the same waveform when
used to choose sector phases. This exposes a missing, NONTRIVIAL
source-to-topology coupling requirement; parity alone cannot imply
an all-positive-rate bound for the original signed Möbius source.

A separate exact two-coordinate counterexample shows that pointwise
magnitude cannot determine the ordered signed Gram cross term.
This is a sign-uniform no-go, NOT a failure of a Möbius-sign-specific
future Kakeya estimate.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandSignedMagnitudeNoGo

open GRWTSK.Topology.AlgebraicTopology.MoebiusBandGaugePacking
open GRWTSK.Topology.AlgebraicTopology.MoebiusBandHolonomyClassification
open GRWTSK.Topology.AlgebraicTopology.MoebiusBandParitySignedWaveGauge
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform

/-- Trivial and half-twisted one-edge transition patterns. -/
def evenLoop : ℕ → ZMod 2 := fun _ => 0
def oddLoop : ℕ → ZMod 2 := fun _ => 1

/-- Their true closed-loop parities are different. -/
theorem odd_even_holonomy_ne :
    parityHolonomy oddLoop 1 ≠ parityHolonomy evenLoop 1 := by
  norm_num [oddLoop, evenLoop, parityHolonomy]

/-- Contradiction if a closed orientation gauge equates the two loops. -/
theorem odd_even_no_closed_gauge :
    ¬ ∃ g : ℕ → ZMod 2,
      g 1 = g 0 ∧
      ∀ i ∈ Finset.range 1, transportEdge oddLoop g i = evenLoop i := by
  intro hex
  have h := (closed_gauge_exists_iff_holonomy_eq oddLoop evenLoop 1).mp hex
  exact odd_even_holonomy_ne h

/-- The EXACT original source detector after a chosen sector-frame gauge. -/
def signedWaveReadout (j d : ℕ) [NeZero d]
    (frame : ℕ → ZMod 2) (t : ℝ) : ℝ :=
  (detector d (orientationSectorGauge d frame)
    (gaugePacket d (orientationSectorGauge d frame)
      (originalSectorPacket j d t))).re

/-- Every sector-phase gauge returns the unchanged original signed wave. -/
theorem signedWaveReadout_original (j d : ℕ) [NeZero d]
    (frame : ℕ → ZMod 2) (t : ℝ) :
    signedWaveReadout j d frame t = completeWave j d t :=
  original_signed_wave_under_parity_gauge j d frame t

/-- The detector is exactly blind to changes of the frame (not merely
an inequality on absolute values). -/
theorem signedWaveReadout_frame_independent (j d : ℕ) [NeZero d]
    (f g : ℕ → ZMod 2) (t : ℝ) :
    signedWaveReadout j d f t = signedWaveReadout j d g t := by
  rw [signedWaveReadout_original j d f t,
      signedWaveReadout_original j d g t]

/-- Here the holonomies really differ, yet the source readout agrees
at EVERY real time and every dyadic scale. No arithmetic bound follows. -/
theorem inequivalent_orientation_same_signed_wave (j d : ℕ) [NeZero d] :
    parityHolonomy oddLoop 1 ≠ parityHolonomy evenLoop 1 ∧
      ∀ t : ℝ, signedWaveReadout j d oddLoop t =
        signedWaveReadout j d evenLoop t := by
  exact ⟨odd_even_holonomy_ne, fun t =>
    signedWaveReadout_frame_independent j d oddLoop evenLoop t⟩

/-- Two coefficients, each of magnitude one, with aligned signs. -/
def aligned (i : Fin 2) : ℤ := 1

/-- The same magnitudes with the second sign reversed. -/
def opposed (i : Fin 2) : ℤ := if i.val = 0 then 1 else -1

/-- Complete ordered off-diagonal signed Gram of two source amplitudes,
computed as total square minus the exact diagonal. -/
def offDiagonalGram (a : Fin 2 → ℤ) : ℤ :=
  (∑ i : Fin 2, a i) ^ 2 - ∑ i : Fin 2, (a i) ^ 2

/-- Pointwise magnitudes are identical, despite different signs. -/
theorem aligned_opposed_same_magnitude (i : Fin 2) :
    |aligned i| = |opposed i| := by
  fin_cases i <;> norm_num [aligned, opposed]

/-- Aligned signs give the positive ordered cross term +2. -/
theorem aligned_gram : offDiagonalGram aligned = 2 := by
  norm_num [offDiagonalGram, aligned, Fin.sum_univ_two]

/-- Opposing signs give the negative ordered cross term -2. -/
theorem opposed_gram : offDiagonalGram opposed = -2 := by
  norm_num [offDiagonalGram, opposed, Fin.sum_univ_two]

/-- This is the exact finite, sign-blindness obstruction relevant to
absolute-value Kakeya maxima. It DOES NOT replace the true Möbius signs. -/
theorem same_unsigned_observation_different_signed_gram :
    (∀ i : Fin 2, |aligned i| = |opposed i|) ∧
    offDiagonalGram aligned = 2 ∧ offDiagonalGram opposed = -2 :=
  ⟨aligned_opposed_same_magnitude, aligned_gram, opposed_gram⟩

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandSignedMagnitudeNoGo
