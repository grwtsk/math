/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib inner-product continuity and positive-operator theory retain their
upstream authorship and Apache-2.0 license. Imports retain attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceInvariantContinuousDensity
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceContinuousOperatorQuadratic
import Mathlib.Analysis.InnerProductSpace.Positive

/-!
# Positivity of the actual bounded self-adjoint invariant slice operator

The actual invariant continuous embedding is proved dense in the actual
fixed Hilbert subspace. Its quadratic values use the maintained exact
continuous agreement and integrated Gram positivity. Continuity of the actual
bounded operator's quadratic expression closes the inequality on EVERY
fixed-space vector. No positivity or density certificate is assumed.

This is semidefiniteness: beta0 retains the rank-one mean map and null vectors.
Compactness, strict positivity, infinite rank and all spectral consumers
remain separate. No physical Hamiltonian or mass gap is supplied.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantOperatorPositive

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAveragePairing
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousOperatorQuadratic

variable (L : ℕ) [NeZero L]

theorem continuous_invariantQuadratic (β : ℝ) (hβ : 0 ≤ β) :
    Continuous (fun h : gaugeInvariantSpace L => inner ℝ h (invariantOperator L β hβ h)) :=
  continuous_id.inner (invariantOperator L β hβ).continuous

/-- Every actual fixed-space vector, with no density or positivity premise. -/
theorem invariantOperator_inner_nonnegative (β : ℝ) (hβ : 0 ≤ β) (h : gaugeInvariantSpace L) :
    0 ≤ inner ℝ h (invariantOperator L β hβ h) := by
  have hc : IsClosed {v : gaugeInvariantSpace L | 0 ≤ inner ℝ v (invariantOperator L β hβ v)} :=
    isClosed_le continuous_const (continuous_invariantQuadratic L β hβ)
  have hs : Set.range (invariantEmbedding L) ⊆
      {v : gaugeInvariantSpace L | 0 ≤ inner ℝ v (invariantOperator L β hβ v)} := by
    rintro v ⟨f, rfl⟩
    change 0 ≤ inner ℝ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f.val)
      (operator L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f.val))
    exact continuous_quadratic_nonnegative L β hβ f.val f.property
  exact (closure_minimal hs hc) ((invariantEmbedding_denseRange L) h)

/-- The maintained Mathlib positive-operator convention, with the actual operator supplied. -/
theorem invariantOperator_isPositive (β : ℝ) (hβ : 0 ≤ β) :
    (invariantOperator L β hβ).IsPositive := by
  apply (ContinuousLinearMap.isPositive_iff' (invariantOperator L β hβ)).mpr
  refine ⟨invariantOperator_isSelfAdjoint L β hβ, fun h => ?_⟩
  rw [real_inner_comm h (invariantOperator L β hβ h)]
  exact invariantOperator_inner_nonnegative L β hβ h

/-- The beta0 value remains the square of the actual mean, including null directions. -/
theorem invariantOperator_zero_quadratic (h : gaugeInvariantSpace L) :
    inner ℝ h (invariantOperator L 0 (by norm_num) h) = mean L h ^ 2 := by
  have hi : inner ℝ (h : RealSliceL2 L) (oneVector L) = mean L h := by
    simpa only [oneVector, mean, ContinuousMap.const_apply, mul_one] using
      inner_toLp L (h : RealSliceL2 L) (ContinuousMap.const (Slice L SU2) (1 : ℝ))
  change inner ℝ (h : RealSliceL2 L) (operator L 0 (by norm_num) h) = _
  rw [operator_zero_mean, real_inner_smul_right, hi]
  ring

end GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantOperatorPositive
