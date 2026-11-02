/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveSignedTupleMoments
import Mathlib.Tactic

/-!
# Exact finite cyclic sampling of the coherent original-index waveform

The full-index additive moment in CMAdaptiveSignedTupleMoments needs neither
wave dispersion nor periodic Poisson summation for its Cauchy bound.
This file records the finite cyclic Fourier samples with the same sharp
modulus k*(2^j-1)+1 and a *proved-source-candidate* positive point-to-grid
comparison. Orthogonality equating the grid average to a spatial integral or
the signed tuple moment remains a distinct unproved Lean Prop.

Retain the integer winding. No kernel, original signed cross product or
nonunit arithmetic residue is replaced by a residue-only evolution.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveFiniteCyclicTrace

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveFourierMoments
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveSignedTupleMoments

/-- An exact point on the cyclic grid with full integer Fourier frequencies. -/
def cyclicSample (k j : ℕ) (t : ℝ) (a : ℕ) : ℂ :=
  coherentCircleWave j t ((a : ℝ) / (tupleModulus k j : ℝ))

theorem cyclicSample_zero_returns_source (k j : ℕ) (t : ℝ) :
    cyclicSample k j t 0 = ((adaptiveSmoothWave j t : ℝ) : ℂ) := by
  simpa [cyclicSample] using coherentCircleWave_at_zero j t

/-- Source-true, nonnegative finite 2k-th moment over EVERY grid address. -/
def cyclicPowerSum (k j : ℕ) (t : ℝ) : ℝ :=
  ∑ a ∈ Finset.range (tupleModulus k j),
    ‖cyclicSample k j t a‖ ^ (2 * k)

theorem cyclicPowerSum_nonneg (k j : ℕ) (t : ℝ) :
    0 ≤ cyclicPowerSum k j t := by
  unfold cyclicPowerSum
  apply Finset.sum_nonneg
  intro a ha
  exact pow_nonneg (norm_nonneg _) _

/-- The coherent zero address is one of the ACTUAL cyclic samples, so
point power is bounded by the complete finite sum without any averaging
or cancellation hypothesis. -/
theorem coherent_zero_power_le_cyclicPowerSum (k j : ℕ) (t : ℝ) :
    ‖cyclicSample k j t 0‖ ^ (2 * k) ≤ cyclicPowerSum k j t := by
  have h0 : 0 ∈ Finset.range (tupleModulus k j) :=
    Finset.mem_range.mpr (tupleModulus_pos k j)
  exact Finset.single_le_sum
    (f := fun a => ‖cyclicSample k j t a‖ ^ (2 * k))
    (fun a ha => pow_nonneg (norm_nonneg _) _) h0

/-- Normalization is by the actual positive modulus; no q-dependent loss
is silently deleted from a point observation. -/
def cyclicAverageMoment (k j : ℕ) (t : ℝ) : ℝ :=
  cyclicPowerSum k j t / (tupleModulus k j : ℝ)

/-- This explicit orthogonality target is NOT asserted as a theorem:
for original frequency support 1..N and q>k(N-1), the normalized grid
moment should coincide with the existing physical-circle 2k moment. -/
def ExactCyclicToCircleMoment : Prop :=
  ∀ k j : ℕ, 1 ≤ k → ∀ t : ℝ,
    cyclicAverageMoment k j t =
      ∫ x in (0 : ℝ)..1, ‖coherentCircleWave j t x‖ ^ (2 * k)

/-- The related signed k-fold convolution identity is likewise an
orthogonality obligation, not a theorem inferred from the point bound. -/
def ExactCyclicToSignedTupleMoment : Prop :=
  ∀ k j : ℕ, 1 ≤ k → ∀ t : ℝ,
    cyclicAverageMoment k j t = signedTupleMoment k j t

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveFiniteCyclicTrace
