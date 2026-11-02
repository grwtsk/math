/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveDisjointBirth
import Mathlib.Tactic

/-!
# Coherent Fourier address and the original signed additive moments

The full integer n remains the frequency and the arithmetic moebiusReal n
remains the coefficient. Point evaluation at x=0 reconstructs the exact
adaptive signed wave. Additive correlations retain their original signs.

The periodic L4/shift Parseval identity and the all-k Nikolskii estimate are
mathematical reduction targets documented separately, NOT declared here as
proved theorems. Polynomial bounds on the actual even moments are deliberately
a Prop rather than a synthetic certificate or new research axiom.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveFourierMoments

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth

/-- The original real arithmetic coefficient at its full integer address. -/
def signedAdaptiveCoefficient (n : ℕ) (t : ℝ) : ℝ :=
  moebiusReal n * adaptiveResponse n t

/-- Exact finite Fourier polynomial with physical unit-circle normalization. -/
def coherentCircleWave (j : ℕ) (t x : ℝ) : ℂ :=
  ∑ n ∈ indices j, ((signedAdaptiveCoefficient n t : ℝ) : ℂ) *
    Complex.exp (Complex.I * ((2 * Real.pi * (n : ℝ) * x : ℝ) : ℂ))

/-- Coherent, not spatially averaged: returns the actual signed sum at zero. -/
theorem coherentCircleWave_at_zero (j : ℕ) (t : ℝ) :
    coherentCircleWave j t 0 = ((adaptiveSmoothWave j t : ℝ) : ℂ) := by
  simp [coherentCircleWave, signedAdaptiveCoefficient, adaptiveSmoothWave]

/-- Complete original positive-shift correlation; no absolute values or
averaging over residue buckets. The final shifted index must still lie in
the same closed dyadic source inventory. -/
def signedAdaptiveShift (j h : ℕ) (t : ℝ) : ℝ :=
  ∑ n ∈ indices j,
    if n + h ∈ indices j then
      signedAdaptiveCoefficient n t * signedAdaptiveCoefficient (n + h) t
    else 0

/-- This exact signed fourth-moment ledger has both orientations of every
positive additive shift; its Fourier L4 identification is a separate gate. -/
def additiveFourthLedger (j : ℕ) (t : ℝ) : ℝ :=
  (signedAdaptiveShift j 0 t) ^ 2 +
    2 * ∑ h ∈ Finset.range (2 ^ j), (signedAdaptiveShift j (h + 1) t) ^ 2

theorem additiveFourthLedger_nonneg (j : ℕ) (t : ℝ) :
    0 ≤ additiveFourthLedger j t := by
  unfold additiveFourthLedger
  apply add_nonneg (sq_nonneg _)
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro h hh
  exact sq_nonneg _

/-- The exact physical-time / circle even moment for a finite source inventory.
A Fourier-series normalization theorem must link this integral to the
shift ledger (k=2), rather than silently discarding winding. -/
def periodicEvenMoment (k j : ℕ) : ℝ :=
  ∫ t in (0 : ℝ)..dyadicTime j,
    ∫ x in (0 : ℝ)..1, ‖coherentCircleWave j t x‖ ^ (2 * k)

/-- Missing arithmetic supplier: polynomial physical-time bounds at every
fixed even moment. This statement is NOT proved or introduced as an axiom. -/
def PolynomialEvenMoments : Prop :=
  ∀ k : ℕ, 1 ≤ k →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ A : ℕ, ∀ j : ℕ,
        periodicEvenMoment k j ≤ C * (1 + dyadicTime j) ^ A

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveFourierMoments
