/- Copyright (c) 2026 grwtsk contributors. MIT.

# Theoretical qualification of the ACTUAL signed RH pickup source

The source is PickupSignedQuadrature.pickupCross, the model is the prescribed
PickupEndpointQuadrature.endpointSum, and the residual is the NEGATIVE of the
original source-cell coefficient2-curvature sum. No remainder is adjustable.

This instance reuses the generic SignedComparison mathematical theorem.
It returns a one-sided upper estimate to the ACTUAL arithmetic source and
recovers the existing quarter-unit approximation allowance. It does NOT
construct the subexponential good-scale arithmetic estimate or prove RH.

SOURCE_PROOF_CANDIDATE: compilation, fresh kernel checking and transitive
axiom/hypothesis audit NOT_RUN. No new axiom is introduced.
-/

import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupTheoreticalQualification

open scoped BigOperators
open GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Times permitted by the actual source return. The endpoint theorem
requires nonnegative time and does not assert anything for negative times. -/
abbrev NonnegativeTime := {T : ℝ // 0 ≤ T}

/-- The EXACT prescribed signed curvature sum on the original, possibly
clipped, logarithmic birth cells. No free approximation parameter appears. -/
def curvatureCorrection (T : ℝ) : ℝ :=
  ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
    coefficient2 (k + 1) *
      curvatureMass (eventCut T k) (eventCut T (k + 1))

/-- Original endpoint sum minus original pickup cross energy equals the
signed source correction, with the two orientations and birth support
retained by the upstream source identities. -/
theorem endpoint_minus_source_eq_curvature (T : ℝ) (hT : 0 ≤ T) :
    endpointSum T - pickupCross T = curvatureCorrection T := by
  simpa only [curvatureCorrection] using endpointSum_signed_defect hT

/-- Concrete, source-bound specialization of the generic signed comparison.
The source is pickupCross, not an arbitrary model that resembles it. -/
def endpointSourceComparison : SignedComparison NonnegativeTime where
  source := fun T => pickupCross T.1
  model := fun T => endpointSum T.1
  residual := fun T => -curvatureCorrection T.1
  source_eq_model_add_residual := by
    intro T
    have h := endpoint_minus_source_eq_curvature T.1 T.2
    dsimp
    linarith

/-- All residual information is fixed by the original source; the signed
cost equals the NEGATIVE curvature correction, not an absolute-cost fiction. -/
theorem endpointSourceComparison_residual (T : NonnegativeTime) :
    endpointSourceComparison.residual T = -curvatureCorrection T.1 := rfl

/-- Direct analytic return to the original signed arithmetic source.  The
premise is a bound on the COMPLETE signed model + derived residual, not a
claim that the unsigned model, each cell, or a chosen error field is small. -/
theorem pickupCross_upper_of_signed_endpoint_bound
    (upper : ℝ → ℝ)
    (hbound : ∀ T, 0 ≤ T →
      endpointSum T - curvatureCorrection T ≤ upper T)
    (T : ℝ) (hT : 0 ≤ T) :
    pickupCross T ≤ upper T := by
  have h :
      ∀ x : NonnegativeTime,
        endpointSourceComparison.model x +
          endpointSourceComparison.residual x ≤ upper x.1 := by
    intro x
    change endpointSum x.1 + -curvatureCorrection x.1 ≤ upper x.1
    simpa only [sub_eq_add_neg] using hbound x.1 x.2
  have hs := endpointSourceComparison.source_upper_of_signed_bound
    (fun x : NonnegativeTime => upper x.1) h (⟨T, hT⟩ : NonnegativeTime)
  exact hs

/-- The source-derived signed residual has an absolute one-sided allowance.
No new arithmetic cancellation estimate is introduced by this lemma. -/
theorem endpointSourceComparison_residual_le_quarter (x : NonnegativeTime) :
    endpointSourceComparison.residual x ≤ 1 / 4 := by
  have h := (abs_le.mp (endpointSum_error x.2)).1
  have he := endpoint_minus_source_eq_curvature x.1 x.2
  change -curvatureCorrection x.1 ≤ 1 / 4
  linarith

/-- Actual one-sided source bound recovered through the generic comparison
consumer, preserving the distinction between curvature error and the
unproved growth of endpointSum. -/
theorem pickupCross_le_endpoint_plus_quarter
    (T : ℝ) (hT : 0 ≤ T) :
    pickupCross T ≤ endpointSum T + 1 / 4 := by
  have hm : ∀ x : NonnegativeTime,
      endpointSourceComparison.model x ≤ endpointSum x.1 := by
    intro x
    exact le_refl _
  have hr : ∀ x : NonnegativeTime,
      endpointSourceComparison.residual x ≤ (1 / 4 : ℝ) :=
    endpointSourceComparison_residual_le_quarter
  have hs := endpointSourceComparison.source_upper_of_separate_bounds
    (fun x : NonnegativeTime => endpointSum x.1)
    (fun _ : NonnegativeTime => (1 / 4 : ℝ))
    hm hr (⟨T, hT⟩ : NonnegativeTime)
  exact hs


/-!
## Second mathematical observation: actual endpoint samples

A second observation layer uses the source-provided observedEndpointSum and
its real endpoint samples. Composing with the first signed comparison retains
two distinct signed errors: sample-vs-exact-endpoint AND curvature-vs-pickup.
Nothing about arbitrary samples is silently assumed accurate.
-/

/-- Source-exact comparison from the original endpoint quadrature to
user-supplied endpoint samples. All sample error remains signed. -/
def endpointSampleComparison
    (left right : ℕ → ℝ) : SignedComparison NonnegativeTime where
  source := fun T => endpointSum T.1
  model := fun T => observedEndpointSum T.1 left right
  residual := fun T => endpointSum T.1 - observedEndpointSum T.1 left right
  source_eq_model_add_residual := by
    intro T
    dsimp
    ring

/-- The two legitimate mathematical comparisons are composed only because
the first model is IDENTICALLY the second source, at the same T. -/
def sampledSourceComparison (left right : ℕ → ℝ) :
    SignedComparison NonnegativeTime :=
  endpointSourceComparison.comp (endpointSampleComparison left right)
    (by intro T; rfl)

/-- No signed error disappears under comparison composition. -/
theorem sampledSourceComparison_residual
    (left right : ℕ → ℝ) (T : NonnegativeTime) :
    (sampledSourceComparison left right).residual T =
      (endpointSum T.1 - observedEndpointSum T.1 left right) -
        curvatureCorrection T.1 := by
  simp only [sampledSourceComparison, SignedComparison.comp_residual,
    endpointSampleComparison, endpointSourceComparison]
  ring

/-- Distinct sample and curvature allowances are both paid for the SAME
nonnegative physical horizon. The uniform sample premise is explicitly
quantified over every actual source birth index in this horizon. -/
theorem sampledSourceComparison_residual_le
    (T : ℝ) (hT : 0 ≤ T)
    (left right : ℕ → ℝ) (ε : ℝ)
    (hleft : ∀ k < ⌊Real.exp T⌋₊,
      |left k - polynomial (k + 1) (node (eventCut T k))| ≤ ε)
    (hright : ∀ k < ⌊Real.exp T⌋₊,
      |right k - polynomial (k + 1) (node (eventCut T (k + 1)))| ≤ ε) :
    (sampledSourceComparison left right).residual
      (⟨T, hT⟩ : NonnegativeTime) ≤ T * ε + 1 / 4 := by
  have hs := (abs_le.mp
    (observedEndpointSum_vs_chord hT left right ε hleft hright)).1
  have hc := endpointSourceComparison_residual_le_quarter
    (⟨T, hT⟩ : NonnegativeTime)
  rw [sampledSourceComparison_residual] 
  change -curvatureCorrection T ≤ (1 / 4 : ℝ) at hc
  linarith

/-- Reconstruct the ORIGINAL cross-energy from observed endpoints. This
one-sided estimate follows from the actual two-stage signed source
comparison, not a free or randomly chosen error-budget field. -/
theorem pickupCross_le_observed_plus_paid_errors
    (T : ℝ) (hT : 0 ≤ T)
    (left right : ℕ → ℝ) (ε : ℝ)
    (hleft : ∀ k < ⌊Real.exp T⌋₊,
      |left k - polynomial (k + 1) (node (eventCut T k))| ≤ ε)
    (hright : ∀ k < ⌊Real.exp T⌋₊,
      |right k - polynomial (k + 1) (node (eventCut T (k + 1)))| ≤ ε) :
    pickupCross T ≤ observedEndpointSum T left right + T * ε + 1 / 4 := by
  have he := (sampledSourceComparison left right).source_eq_model_add_residual
    (⟨T, hT⟩ : NonnegativeTime)
  have hr := sampledSourceComparison_residual_le
    T hT left right ε hleft hright
  change pickupCross T =
      observedEndpointSum T left right +
        (sampledSourceComparison left right).residual
          (⟨T, hT⟩ : NonnegativeTime) at he
  linarith

end GRWTSK.NumberTheory.Moebius.PickupTheoreticalQualification
