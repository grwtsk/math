/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMSourceRankTwoShearEvolution
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMFullCycleNonzeroCoupling
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMLabelledCocycleIntertwiner
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.FiniteLabelledPickupUniformTransport
import Mathlib.Tactic

/-!
# A time-composing source-coupled CM–Möbius causal evolution

The original rational degree-zero full-cycle class on X supplies a nonzero
selected CM Betti coordinate v, with the exact path-connectedness and finite-
rational-Betti-dimensionality hypotheses kept visible. The labelled causal
source is the original complete Mobius coefficient/response graph at t=0,
including the n=1 latent unit and every n ≤ 2^j. Their normalized vectors
have norm one in the EXISTING chosen positive Hilbert structures.

F = |arithmetic> <CM|, G = |CM> <arithmetic|, F²=G²=0.
Define A(t)=(I+t F)(I+t G) and the genuine causal labelled transport E(s,t)
from the original pickupResponse. The joint *constructed* evolution is

 U(s,t) = E(0,t) A(t) A(s)⁻¹ E(s,0).

It obeys exact identity, inverse and time composition on the ENTIRE joint
Hilbert space, not merely one source orbit. Its two cross-channel defects
are nonzero already for s=0,t=1. The associated arithmetic readout can
change under the coupling; the original uncoupled signed pickup energy is
never redefined or inferred from the positive Hilbert norm.

This is an explicit, bounded, reversible, finite-rank *coupled evolution
model* selected from the two mathematical sources. Neither the interaction
clock nor its amplitude follows uniquely from an external physical action,
Hamiltonian, geometric PDE, or constitutive law. A physical identification
requires a separate source-derived generator/limit and measurement theorem.
Uniform operator bounds do NOT imply all-rate signed Mobius cancellation.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualCoupledCausalPropagator

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMGeometricCycleHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCausalDefectComparison
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCocycleIntertwiner
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMArithmeticRankTwoCoupling
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualMoebiusRankTwoInteraction
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMFullCycleNonzeroCoupling
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceRankTwoShearEvolution
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupUniformTransport
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn

variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
  [FiniteDimensional ℚ (OriginalBetti X 0)]
variable (d : ℕ) [NeZero d]

local notation "V" => OAI.AlgebraicGeometry.ComplexMultiplication.BundledAbelianBridge.originalIntegralProjectiveVariety X

/-- Actual normalized, geometric degree-zero whole-variety Thom/Betti unit. -/
abbrev sourceCMUnit : CommonHilbert d :=
  actualCMUnit d X 0 (actualFullCycle X)

/-- The unchanged original SIGNED full integer-labelled source at physical
initial time 0, normalized only for the optional bounded interaction. -/
abbrev sourceArithmeticUnit (j : ℕ) : LabelledState j :=
  actualMobiusUnit j 0

/-- This geometric nonzero certificate comes from the genuine full cycle. -/
theorem sourceCMUnit_norm [PathConnectedSpace V.analyticSpace] :
    ‖sourceCMUnit X d‖ = 1 :=
  actualCMUnit_norm d X 0 (actualFullCycle X)
    (actualFullCycle_selected_nonzero X d)

/-- The n=1 latent coefficient makes the arithmetic factor nonzero for
all inventories, including j=0 and the zero observed-response initial time. -/
theorem sourceArithmeticUnit_norm (j : ℕ) :
    ‖sourceArithmeticUnit j‖ = 1 := actualMobiusUnit_norm j 0

/-- Source-specific, genuinely two-way invertible frame. -/
def actualInteractionFrame (j : ℕ) (t : ℝ) :
    ActualJoint d j →L[ℂ] ActualJoint d j :=
  coupledFrame (sourceCMUnit X d) (sourceArithmeticUnit j) (t : ℂ)

def actualInteractionFrameInverse (j : ℕ) (t : ℝ) :
    ActualJoint d j →L[ℂ] ActualJoint d j :=
  coupledFrameInverse (sourceCMUnit X d) (sourceArithmeticUnit j) (t : ℂ)

/-- True original causal transport AFTER the explicitly chosen interaction. -/
def sourceCoupledFrame (j : ℕ) (t : ℝ) :
    ActualJoint d j →L[ℂ] ActualJoint d j :=
  (exactLabelledJointEvolution d j 0 t).comp (actualInteractionFrame X d j t)

/-- A global bounded inverse on the same positive Hilbert state. -/
def sourceCoupledFrameInverse (j : ℕ) (t : ℝ) :
    ActualJoint d j →L[ℂ] ActualJoint d j :=
  (actualInteractionFrameInverse X d j t).comp
    (exactLabelledJointEvolution d j t 0)

/-- Every time frame has an exact, source-identical left inverse. -/
theorem sourceCoupledFrame_inverse_left (j : ℕ) (t : ℝ) :
    (sourceCoupledFrameInverse X d j t).comp
        (sourceCoupledFrame X d j t) =
      ContinuousLinearMap.id ℂ (ActualJoint d j) := by
  apply ContinuousLinearMap.ext
  intro x
  change actualInteractionFrameInverse X d j t
      (exactLabelledJointEvolution d j t 0
        (exactLabelledJointEvolution d j 0 t
          (actualInteractionFrame X d j t x))) = x
  have he := congrArg (fun T : ActualJoint d j →L[ℂ] ActualJoint d j =>
      T (actualInteractionFrame X d j t x))
    (exactLabelledJointEvolution_inverse d j 0 t)
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply] at he
  rw [he]
  have hi := congrArg (fun T : ActualJoint d j →L[ℂ] ActualJoint d j => T x)
    (coupledFrame_inverse_left (sourceCMUnit X d) (sourceArithmeticUnit j) (t : ℂ))
  simpa only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply,
    actualInteractionFrame, actualInteractionFrameInverse] using hi

/-- The reverse ordering also returns the identity. -/
theorem sourceCoupledFrame_inverse_right (j : ℕ) (t : ℝ) :
    (sourceCoupledFrame X d j t).comp
        (sourceCoupledFrameInverse X d j t) =
      ContinuousLinearMap.id ℂ (ActualJoint d j) := by
  apply ContinuousLinearMap.ext
  intro x
  change exactLabelledJointEvolution d j 0 t
      (actualInteractionFrame X d j t
        (actualInteractionFrameInverse X d j t
          (exactLabelledJointEvolution d j t 0 x))) = x
  have hi := congrArg (fun T : ActualJoint d j →L[ℂ] ActualJoint d j =>
      T (exactLabelledJointEvolution d j t 0 x))
    (coupledFrame_inverse_right (sourceCMUnit X d) (sourceArithmeticUnit j) (t : ℂ))
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply] at hi
  rw [hi]
  have he := congrArg (fun T : ActualJoint d j →L[ℂ] ActualJoint d j => T x)
    (exactLabelledJointEvolution_inverse d j t 0)
  simpa only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply] using he

/-- This is a genuine global two-time OPERATOR, not E(s,t)+K. -/
def actualCoupledTwoTime (j : ℕ) (s t : ℝ) :
    ActualJoint d j →L[ℂ] ActualJoint d j :=
  (sourceCoupledFrame X d j t).comp (sourceCoupledFrameInverse X d j s)

/-- Causal identity for arbitrary CM/arithmetic Hilbert data. -/
theorem actualCoupledTwoTime_self (j : ℕ) (s : ℝ) :
    actualCoupledTwoTime X d j s s =
      ContinuousLinearMap.id ℂ (ActualJoint d j) :=
  sourceCoupledFrame_inverse_right X d j s

/-- EXACT two-time composition, including original n=1 birth. -/
theorem actualCoupledTwoTime_comp (j : ℕ) (s t u : ℝ) :
    (actualCoupledTwoTime X d j t u).comp
        (actualCoupledTwoTime X d j s t) =
      actualCoupledTwoTime X d j s u := by
  apply ContinuousLinearMap.ext
  intro x
  change sourceCoupledFrame X d j u
      (sourceCoupledFrameInverse X d j t
        (sourceCoupledFrame X d j t
          (sourceCoupledFrameInverse X d j s x))) = _
  have hi := congrArg (fun T : ActualJoint d j →L[ℂ] ActualJoint d j =>
      T (sourceCoupledFrameInverse X d j s x))
    (sourceCoupledFrame_inverse_left X d j t)
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply] at hi
  rw [hi]
  rfl

/-- Every time pair has a bounded reverse, even if an observed source
response vanishes before birth. This is NOT unitarity. -/
theorem actualCoupledTwoTime_inverse (j : ℕ) (s t : ℝ) :
    (actualCoupledTwoTime X d j t s).comp
        (actualCoupledTwoTime X d j s t) =
      ContinuousLinearMap.id ℂ (ActualJoint d j) := by
  rw [actualCoupledTwoTime_comp, actualCoupledTwoTime_self]

/-- Physical time zero has no interaction or causal shear. -/
theorem sourceCoupledFrame_zero (j : ℕ) :
    sourceCoupledFrame X d j 0 =
      ContinuousLinearMap.id ℂ (ActualJoint d j) := by
  simp [sourceCoupledFrame, actualInteractionFrame,
    coupledFrame_zero, exactLabelledJointEvolution_self]

/-- Consequently the source-coupled propagator from time zero is literally
its chosen time-t frame. -/
theorem actualCoupledTwoTime_zero_start (j : ℕ) (t : ℝ) :
    actualCoupledTwoTime X d j 0 t = sourceCoupledFrame X d j t := by
  have hzero : sourceCoupledFrameInverse X d j 0 =
      ContinuousLinearMap.id ℂ (ActualJoint d j) := by
    simp [sourceCoupledFrameInverse, actualInteractionFrameInverse,
      coupledFrameInverse_zero, exactLabelledJointEvolution_self]
  simp only [actualCoupledTwoTime, hzero, ContinuousLinearMap.comp_id]

/-- Source-exact arithmetic cocycle gives a positive-metric joint bound.
The factor 5 is independent of j, not uniform over the time horizon. -/
theorem exactLabelledJointEvolution_opNorm_le_five (j : ℕ) {s t : ℝ}
    (hs : 0 ≤ s) (ht : 0 ≤ t) :
    ‖exactLabelledJointEvolution d j s t‖ ≤ 5 := by
  apply ContinuousLinearMap.opNorm_le_bound _ (by norm_num)
  intro z
  have hT : ‖actualLabelTwoTime j s t z.snd‖ ≤ 5 * ‖z.snd‖ := by
    calc
      _ ≤ ‖actualLabelTwoTime j s t‖ * ‖z.snd‖ :=
        (actualLabelTwoTime j s t).le_opNorm _
      _ ≤ 5 * ‖z.snd‖ :=
        mul_le_mul_of_nonneg_right
          (actualLabelTwoTime_opNorm_le_five j hs ht) (norm_nonneg _)
  have h0 : 0 ≤ ‖actualLabelTwoTime j s t z.snd‖ := norm_nonneg _
  have h1 : 0 ≤ 5 * ‖z.snd‖ := by positivity
  have hTsq : ‖actualLabelTwoTime j s t z.snd‖ ^ 2 ≤
      25 * ‖z.snd‖ ^ 2 := by nlinarith
  have hSource := WithLp.prod_norm_sq_eq_of_L2 z
  have hOutput := WithLp.prod_norm_sq_eq_of_L2
    (exactLabelledJointEvolution d j s t z)
  rw [exactLabelledJointEvolution_apply] at hOutput
  simp only [WithLp.toLp_fst, WithLp.toLp_snd] at hOutput
  have hsq : ‖exactLabelledJointEvolution d j s t z‖ ^ 2 ≤
      (5 * ‖z‖) ^ 2 := by
    calc
      _ = ‖z.fst‖ ^ 2 + ‖actualLabelTwoTime j s t z.snd‖ ^ 2 := hOutput
      _ ≤ 25 * (‖z.fst‖ ^ 2 + ‖z.snd‖ ^ 2) := by
        nlinarith [sq_nonneg ‖z.fst‖]
      _ = (5 * ‖z‖) ^ 2 := by rw [← hSource]; ring
  nlinarith [norm_nonneg (exactLabelledJointEvolution d j s t z),
    norm_nonneg z]

/-- The source-specific interaction frame is polynomially bounded on the
finite positive clock, with constants independent of the label inventory. -/
theorem actualInteractionFrame_norm_bound [PathConnectedSpace V.analyticSpace]
    (j : ℕ) (t : ℝ) :
    ‖actualInteractionFrame X d j t‖ ≤ (1 + |t|) ^ 2 := by
  have h := coupledFrame_norm_bound (sourceCMUnit X d)
    (sourceArithmeticUnit j) (t : ℂ)
  simpa [actualInteractionFrame, sourceCMUnit_norm X d,
    sourceArithmeticUnit_norm j] using h

theorem actualInteractionFrameInverse_norm_bound [PathConnectedSpace V.analyticSpace]
    (j : ℕ) (t : ℝ) :
    ‖actualInteractionFrameInverse X d j t‖ ≤ (1 + |t|) ^ 2 := by
  have h := coupledFrameInverse_norm_bound (sourceCMUnit X d)
    (sourceArithmeticUnit j) (t : ℂ)
  simpa [actualInteractionFrameInverse, sourceCMUnit_norm X d,
    sourceArithmeticUnit_norm j] using h

/-- Each true finite-inventory coupled source frame has explicit operator
norm, with no exponential dependence on the source inventory. -/
theorem sourceCoupledFrame_norm_bound [PathConnectedSpace V.analyticSpace]
    (j : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    ‖sourceCoupledFrame X d j t‖ ≤ 5 * (1 + |t|) ^ 2 := by
  calc
    _ ≤ ‖exactLabelledJointEvolution d j 0 t‖ *
        ‖actualInteractionFrame X d j t‖ :=
      ContinuousLinearMap.opNorm_comp_le _ _
    _ ≤ 5 * (1 + |t|) ^ 2 :=
      mul_le_mul (exactLabelledJointEvolution_opNorm_le_five d j
        (by norm_num) ht) (actualInteractionFrame_norm_bound X d j t)
        (by positivity) (by norm_num)

/-- Reverse-time frame remains bounded without dividing by a response. -/
theorem sourceCoupledFrameInverse_norm_bound [PathConnectedSpace V.analyticSpace]
    (j : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    ‖sourceCoupledFrameInverse X d j t‖ ≤ 5 * (1 + |t|) ^ 2 := by
  calc
    _ ≤ ‖actualInteractionFrameInverse X d j t‖ *
        ‖exactLabelledJointEvolution d j t 0‖ :=
      ContinuousLinearMap.opNorm_comp_le _ _
    _ ≤ (1 + |t|) ^ 2 * 5 :=
      mul_le_mul (actualInteractionFrameInverse_norm_bound X d j t)
        (exactLabelledJointEvolution_opNorm_le_five d j ht (by norm_num))
        (by positivity) (by positivity)
    _ = 5 * (1 + |t|) ^ 2 := by ring

/-- Pointwise time-polynomial / inventory-uniform BOUND on the constructed
coupled operator. It is not a signed Mobius energy estimate. -/
theorem actualCoupledTwoTime_opNorm_bound [PathConnectedSpace V.analyticSpace]
    (j : ℕ) {s t : ℝ} (hs : 0 ≤ s) (ht : 0 ≤ t) :
    ‖actualCoupledTwoTime X d j s t‖ ≤
      25 * (1 + |s|) ^ 2 * (1 + |t|) ^ 2 := by
  calc
    _ ≤ ‖sourceCoupledFrame X d j t‖ *
        ‖sourceCoupledFrameInverse X d j s‖ :=
      ContinuousLinearMap.opNorm_comp_le _ _
    _ ≤ (5 * (1 + |t|) ^ 2) * (5 * (1 + |s|) ^ 2) :=
      mul_le_mul (sourceCoupledFrame_norm_bound X d j ht)
        (sourceCoupledFrameInverse_norm_bound X d j hs)
        (by positivity) (by positivity)
    _ = 25 * (1 + |s|) ^ 2 * (1 + |t|) ^ 2 := by ring

/-- The first CM-input excitation has an exact NONZERO original labelled
arithmetic output at unit interaction-clock time. -/
theorem coupled_CM_to_arithmetic_witness [PathConnectedSpace V.analyticSpace]
    (j : ℕ) :
    (actualCoupledTwoTime X d j 0 1
      (includeSelectedCM d j (sourceCMUnit X d))).snd =
        actualLabelTwoTime j 0 1 (sourceArithmeticUnit j) := by
  rw [actualCoupledTwoTime_zero_start]
  change (exactLabelledJointEvolution d j 0 1
    (coupledFrame (sourceCMUnit X d) (sourceArithmeticUnit j) (1 : ℂ)
      (includeCM (H := CommonHilbert d) (C := LabelledState j) (sourceCMUnit X d)))).snd = _
  rw [coupledFrame_one_on_CM (sourceCMUnit X d) (sourceArithmeticUnit j)
    (sourceCMUnit_norm X d)]
  rw [exactLabelledJointEvolution_apply]
  rfl

/-- Nonzero forward compressed leakage cannot be hidden in the CM algebraic
projection. Its image is in the retained causal complement. -/
theorem coupled_CM_to_arithmetic_witness_ne_zero [PathConnectedSpace V.analyticSpace]
    (j : ℕ) :
    (actualCoupledTwoTime X d j 0 1
      (includeSelectedCM d j (sourceCMUnit X d))).snd ≠ 0 := by
  rw [coupled_CM_to_arithmetic_witness X d j]
  intro hz
  have hinv := congrArg (fun T : LabelledState j →L[ℂ] LabelledState j =>
    T (actualLabelTwoTime j 0 1 (sourceArithmeticUnit j)))
    (actualLabelTwoTime_inverse j 0 1)
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply, hz, map_zero] at hinv
  have hw := sourceArithmeticUnit_norm j
  rw [hinv, norm_zero] at hw
  norm_num at hw

/-- Reverse-time arithmetic input genuinely excites the selected CM sector;
the geometry is the ACTUAL nonzero whole-variety rational cycle class. -/
theorem coupled_arithmetic_to_CM_witness [PathConnectedSpace V.analyticSpace]
    (j : ℕ) :
    (actualCoupledTwoTime X d j 0 1
      (includeActualCausal d j (sourceArithmeticUnit j))).fst =
        sourceCMUnit X d := by
  rw [actualCoupledTwoTime_zero_start]
  change (exactLabelledJointEvolution d j 0 1
    (coupledFrame (sourceCMUnit X d) (sourceArithmeticUnit j) (1 : ℂ)
      (includeCausal (H := CommonHilbert d) (C := LabelledState j) (sourceArithmeticUnit j)))).fst = _
  rw [exactLabelledJointEvolution_apply]
  exact coupledFrame_one_on_C (sourceCMUnit X d) (sourceArithmeticUnit j)
    (sourceArithmeticUnit_norm j)

/-- The same actual CM source vector survives in the geometric factor
while a genuinely new causal response is produced. -/
theorem coupled_CM_witness_first [PathConnectedSpace V.analyticSpace]
    (j : ℕ) :
    (actualCoupledTwoTime X d j 0 1
      (includeSelectedCM d j (sourceCMUnit X d))).fst = sourceCMUnit X d := by
  rw [actualCoupledTwoTime_zero_start]
  change (exactLabelledJointEvolution d j 0 1
    (coupledFrame (sourceCMUnit X d) (sourceArithmeticUnit j) (1 : ℂ)
      (includeCM (H := CommonHilbert d) (C := LabelledState j) (sourceCMUnit X d)))).fst = _
  rw [coupledFrame_one_on_CM (sourceCMUnit X d) (sourceArithmeticUnit j)
    (sourceCMUnit_norm X d), exactLabelledJointEvolution_apply]
  rfl

/-- The genuine geometric projector fixes the actual H^0 unit vector. -/
theorem jointP_sourceCMUnit (j : ℕ) :
    jointP d X 0 j (includeSelectedCM d j (sourceCMUnit X d)) =
      includeSelectedCM d j (sourceCMUnit X d) := by
  change WithLp.toLp 2
      (algebraicProjection (geometricSource d X 0) (sourceCMUnit X d),
        (0 : LabelledState j)) = _
  rw [actualCMUnit_algebraic d X 0 (actualFullCycle X)]
  rfl

/-- A REAL Q U P compressed witness: one selected CM class generates a
nonzero source-labelled arithmetic state; it is not an isolated analogy. -/
theorem actualCoupled_QWP_witness [PathConnectedSpace V.analyticSpace]
    (j : ℕ) :
    jointQ d X 0 j
      (actualCoupledTwoTime X d j 0 1
        (jointP d X 0 j
          (includeSelectedCM d j (sourceCMUnit X d)))) =
      includeActualCausal d j
        (actualLabelTwoTime j 0 1 (sourceArithmeticUnit j)) := by
  rw [jointP_sourceCMUnit X d j]
  have hfirst := coupled_CM_witness_first X d j
  have hsecond := coupled_CM_to_arithmetic_witness X d j
  change WithLp.toLp 2
      (residualProjection (geometricSource d X 0)
        (actualCoupledTwoTime X d j 0 1
          (includeSelectedCM d j (sourceCMUnit X d))).fst,
       (actualCoupledTwoTime X d j 0 1
          (includeSelectedCM d j (sourceCMUnit X d))).snd) = _
  rw [hfirst, hsecond]
  have hP := actualCMUnit_algebraic d X 0 (actualFullCycle X)
  have hsplit := complete_reconstruction (geometricSource d X 0)
    (sourceCMUnit X d)
  rw [hP] at hsplit
  have hQ : residualProjection (geometricSource d X 0)
      (sourceCMUnit X d) = 0 := by
    apply add_left_cancel
    simpa using hsplit
  simp [hQ, includeActualCausal_apply]

/-- A distinct REAL P U Q compressed witness. No arithmetic cancellation
premise and no CM-to-arithmetic physical Hamiltonian are inserted. -/
theorem actualCoupled_PWQ_witness [PathConnectedSpace V.analyticSpace]
    (j : ℕ) :
    jointP d X 0 j
      (actualCoupledTwoTime X d j 0 1
        (jointQ d X 0 j
          (includeActualCausal d j (sourceArithmeticUnit j)))) =
      includeSelectedCM d j (sourceCMUnit X d) := by
  have hsource : jointQ d X 0 j
      (includeActualCausal d j (sourceArithmeticUnit j)) =
      includeActualCausal d j (sourceArithmeticUnit j) := by
    exact causal_is_in_joint_residual (geometricSource d X 0)
      (sourceArithmeticUnit j)
  rw [hsource]
  have hfirst := coupled_arithmetic_to_CM_witness X d j
  change WithLp.toLp 2
    (algebraicProjection (geometricSource d X 0)
      (actualCoupledTwoTime X d j 0 1
        (includeActualCausal d j (sourceArithmeticUnit j))).fst,
     (0 : LabelledState j)) = _
  rw [hfirst, actualCMUnit_algebraic d X 0 (actualFullCycle X)]
  rfl

/-- BOTH compressed cross-sector operators are nonzero at unit coupling
time for the actual nonzero degree-zero geometric cycle. -/
theorem actualCoupled_both_defects_nonzero [PathConnectedSpace V.analyticSpace]
    (j : ℕ) :
    (jointQ d X 0 j).comp
      ((actualCoupledTwoTime X d j 0 1).comp (jointP d X 0 j)) ≠ 0 ∧
    (jointP d X 0 j).comp
      ((actualCoupledTwoTime X d j 0 1).comp (jointQ d X 0 j)) ≠ 0 := by
  constructor
  · intro hz
    have h := congrArg (fun T : ActualJoint d j →L[ℂ] ActualJoint d j =>
      T (includeSelectedCM d j (sourceCMUnit X d))) hz
    simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.zero_apply] at h
    rw [actualCoupled_QWP_witness X d j] at h
    have hzero : actualLabelTwoTime j 0 1 (sourceArithmeticUnit j) = 0 :=
      (includeActualCausal d j).injective h
    have hinv := congrArg (fun T : LabelledState j →L[ℂ] LabelledState j =>
        T (actualLabelTwoTime j 0 1 (sourceArithmeticUnit j)))
      (actualLabelTwoTime_inverse j 0 1)
    rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply,
      hzero, map_zero] at hinv
    have hw := sourceArithmeticUnit_norm j
    rw [← hinv, norm_zero] at hw
    norm_num at hw
  · intro hz
    have h := congrArg (fun T : ActualJoint d j →L[ℂ] ActualJoint d j =>
      T (includeActualCausal d j (sourceArithmeticUnit j))) hz
    simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.zero_apply] at h
    rw [actualCoupled_PWQ_witness X d j] at h
    have hzero : sourceCMUnit X d = 0 := (includeSelectedCM d j).injective h
    have hv := sourceCMUnit_norm X d
    rw [hzero, norm_zero] at hv
    norm_num at hv

/-- Both actual selected projection channels are contractions for the
joint positive Hilbert norm. -/
theorem jointP_norm_le (j : ℕ) (z : ActualJoint d j) :
    ‖jointP d X 0 j z‖ ≤ ‖z‖ := by
  have h := actual_joint_energy_decomposes d X 0 j z
  nlinarith [sq_nonneg ‖jointQ d X 0 j z‖,
    norm_nonneg (jointP d X 0 j z), norm_nonneg z]

theorem jointQ_norm_le (j : ℕ) (z : ActualJoint d j) :
    ‖jointQ d X 0 j z‖ ≤ ‖z‖ := by
  have h := actual_joint_energy_decomposes d X 0 j z
  nlinarith [sq_nonneg ‖jointP d X 0 j z‖,
    norm_nonneg (jointQ d X 0 j z), norm_nonneg z]

/-- At unit interaction time the complete coupled operator has a source-
independent upper bound 100. It is intentionally conservative: no amount
of signed arithmetic cancellation is assumed. -/
theorem actualCoupled_unitTime_opNorm_le_hundred
    [PathConnectedSpace V.analyticSpace] (j : ℕ) :
    ‖actualCoupledTwoTime X d j 0 1‖ ≤ 100 := by
  have h := actualCoupledTwoTime_opNorm_bound X d j
    (s := 0) (t := 1) (by norm_num) (by norm_num)
  norm_num at h ⊢
  exact h

/-- Full ACTUAL compressed QUP operator bound on the source-derived
nontrivial two-time evolution, with no skipped residual components. -/
theorem actualCoupled_QWP_opNorm_le_hundred
    [PathConnectedSpace V.analyticSpace] (j : ℕ) :
    ‖(jointQ d X 0 j).comp
        ((actualCoupledTwoTime X d j 0 1).comp (jointP d X 0 j))‖ ≤ 100 := by
  apply ContinuousLinearMap.opNorm_le_bound _ (by norm_num)
  intro z
  change ‖jointQ d X 0 j
      (actualCoupledTwoTime X d j 0 1 (jointP d X 0 j z))‖ ≤
        100 * ‖z‖
  calc
    _ ≤ ‖actualCoupledTwoTime X d j 0 1 (jointP d X 0 j z)‖ :=
      jointQ_norm_le X d j _
    _ ≤ ‖actualCoupledTwoTime X d j 0 1‖ * ‖jointP d X 0 j z‖ :=
      (actualCoupledTwoTime X d j 0 1).le_opNorm _
    _ ≤ 100 * ‖jointP d X 0 j z‖ :=
      mul_le_mul_of_nonneg_right
        (actualCoupled_unitTime_opNorm_le_hundred X d j) (norm_nonneg _)
    _ ≤ 100 * ‖z‖ :=
      mul_le_mul_of_nonneg_left (jointP_norm_le X d j z) (by norm_num)

/-- The reverse compressed operator is bounded independently, without
assuming cancellation between PWQ and QWP. -/
theorem actualCoupled_PWQ_opNorm_le_hundred
    [PathConnectedSpace V.analyticSpace] (j : ℕ) :
    ‖(jointP d X 0 j).comp
        ((actualCoupledTwoTime X d j 0 1).comp (jointQ d X 0 j))‖ ≤ 100 := by
  apply ContinuousLinearMap.opNorm_le_bound _ (by norm_num)
  intro z
  change ‖jointP d X 0 j
      (actualCoupledTwoTime X d j 0 1 (jointQ d X 0 j z))‖ ≤
        100 * ‖z‖
  calc
    _ ≤ ‖actualCoupledTwoTime X d j 0 1 (jointQ d X 0 j z)‖ :=
      jointP_norm_le X d j _
    _ ≤ ‖actualCoupledTwoTime X d j 0 1‖ * ‖jointQ d X 0 j z‖ :=
      (actualCoupledTwoTime X d j 0 1).le_opNorm _
    _ ≤ 100 * ‖jointQ d X 0 j z‖ :=
      mul_le_mul_of_nonneg_right
        (actualCoupled_unitTime_opNorm_le_hundred X d j) (norm_nonneg _)
    _ ≤ 100 * ‖z‖ :=
      mul_le_mul_of_nonneg_left (jointQ_norm_le X d j z) (by norm_num)

/-- The two genuine off-diagonal operators have quantitative lower bounds
from the actual geometric cycle, signed source and invertible causal lift. -/
theorem actualCoupled_offDiagonal_norm_lower
    [PathConnectedSpace V.analyticSpace] (j : ℕ) :
    (1 / 5 : ℝ) ≤
      ‖(jointQ d X 0 j).comp
        ((actualCoupledTwoTime X d j 0 1).comp (jointP d X 0 j))‖ ∧
    (1 : ℝ) ≤
      ‖(jointP d X 0 j).comp
        ((actualCoupledTwoTime X d j 0 1).comp (jointQ d X 0 j))‖ := by
  constructor
  · let T := (jointQ d X 0 j).comp
        ((actualCoupledTwoTime X d j 0 1).comp (jointP d X 0 j))
    let w := sourceArithmeticUnit j
    let v := sourceCMUnit X d
    have heval : ‖actualLabelTwoTime j 0 1 w‖ ≤ ‖T‖ := by
      have h := T.le_opNorm (includeSelectedCM d j v)
      change ‖T (includeSelectedCM d j v)‖ ≤
        ‖T‖ * ‖includeSelectedCM d j v‖ at h
      rw [show T (includeSelectedCM d j v) =
          includeActualCausal d j (actualLabelTwoTime j 0 1 w) from
            actualCoupled_QWP_witness X d j,
          LinearIsometry.norm_map,
          show ‖includeSelectedCM d j v‖ = 1 from
            (includeSelectedCM d j).norm_map v |>.trans
              (sourceCMUnit_norm X d), mul_one] at h
      exact h
    have hinverse :
        actualLabelTwoTime j 1 0 (actualLabelTwoTime j 0 1 w) = w := by
      have h := congrArg (fun T : LabelledState j →L[ℂ] LabelledState j => T w)
        (actualLabelTwoTime_inverse j 0 1)
      simpa only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply] using h
    have hnorm := (actualLabelTwoTime j 1 0).le_opNorm
      (actualLabelTwoTime j 0 1 w)
    rw [hinverse, show ‖w‖ = 1 from sourceArithmeticUnit_norm j] at hnorm
    have hbound := actualLabelTwoTime_opNorm_le_five j (by norm_num) (by norm_num)
    have ht : 1 ≤ 5 * ‖actualLabelTwoTime j 0 1 w‖ :=
      hnorm.trans (mul_le_mul_of_nonneg_right hbound (norm_nonneg _))
    nlinarith
  · let T := (jointP d X 0 j).comp
        ((actualCoupledTwoTime X d j 0 1).comp (jointQ d X 0 j))
    let w := sourceArithmeticUnit j
    let v := sourceCMUnit X d
    have h := T.le_opNorm (includeActualCausal d j w)
    change ‖T (includeActualCausal d j w)‖ ≤
        ‖T‖ * ‖includeActualCausal d j w‖ at h
    rw [show T (includeActualCausal d j w) = includeSelectedCM d j v from
          actualCoupled_PWQ_witness X d j,
        LinearIsometry.norm_map,
        show ‖v‖ = 1 from sourceCMUnit_norm X d,
        show ‖includeActualCausal d j w‖ = 1 from
          (includeActualCausal d j).norm_map w |>.trans
            (sourceArithmeticUnit_norm j), mul_one] at h
    exact h

/-- Original signed Möbius energy is not silently replaced by a positive
Hilbert norm, nor claimed invariant under this new interaction. -/
theorem original_uncoupled_signed_energy (j : ℕ) :
    GRWTSK.RiemannHypothesis.CCC.pickupEnergy
      (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j) =
      ∫ u in (0 : ℝ)..GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j,
        (finiteCoherentReadout d j (actualSignedPacket d j u)) ^ 2 :=
  CMSelectedSignedWaveReturn.originalPickupEnergy_eq_selectedPacketIntegral d j

/-- The observed signed scalar AFTER coupled transport has a separately
paid residual. No assumption that K preserves this readout is introduced. -/
def coupledObservedReadout (j : ℕ) (s t : ℝ)
    (z : ActualJoint d j) : ℂ :=
  originalReadout j ((actualCoupledTwoTime X d j s t z).snd.snd)

/-- Exactly the difference between coupled observation and the source's
original signed closed-inventory readout; no absolute value is taken first. -/
def coupledReadoutDefect (j : ℕ) (s t : ℝ)
    (z : ActualJoint d j) : ℂ :=
  coupledObservedReadout X d j s t z -
    originalReadout j ((exactLabelledJointEvolution d j s t z).snd.snd)

/-- The full signed observable transports with an explicit residual. -/
theorem coupledReadout_eq_source_add_defect (j : ℕ) (s t : ℝ)
    (z : ActualJoint d j) :
    coupledObservedReadout X d j s t z =
      originalReadout j ((exactLabelledJointEvolution d j s t z).snd.snd) +
        coupledReadoutDefect X d j s t z := by
  unfold coupledReadoutDefect
  abel

/-- Exact original closed-inventory causal readout on the uncoupled sector.
The coupling does NOT silently replace the real signed physical waveform. -/
theorem uncoupled_original_readout (j : ℕ) (t : ℝ) :
    originalReadout j
      ((exactLabelledJointEvolution d j 0 t (originalJointPair d j 0)).snd.snd) =
      (GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.originalFixedWave j t : ℂ) := by
  rw [actual_source_joint_transport]
  change originalReadout j (actualLabelResponse j t) = _
  exact originalReadout_actualLabelResponse j t

/-- The actual coupled output equals the ORIGINAL signed source plus its
whole, source-identified complex readout residual. -/
theorem sourceSignedReadout_coupled_return (j : ℕ) (t : ℝ) :
    coupledObservedReadout X d j 0 t (originalJointPair d j 0) =
      (GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.originalFixedWave j t : ℂ) +
        coupledReadoutDefect X d j 0 t (originalJointPair d j 0) := by
  rw [coupledReadout_eq_source_add_defect, uncoupled_original_readout]

/-- On the exact original closed dyadic window this is wholePickup, with a
separate correction determined by the new interaction. -/
theorem sourceWholePickup_coupled_return (j : ℕ) {t : ℝ}
    (ht0 : 0 ≤ t) (htT : t ≤
      GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j) :
    coupledObservedReadout X d j 0 t (originalJointPair d j 0) =
      (GRWTSK.RiemannHypothesis.CCC.wholePickup t : ℂ) +
        coupledReadoutDefect X d j 0 t (originalJointPair d j 0) := by
  rw [sourceSignedReadout_coupled_return]
  have h := (GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.wholePickup_eq_completeWave
      j d ht0 htT).trans
    (GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeWave_eq_originalFixedWave
      j d t)
  rw [h]

/-- Squaring the COUPLED signed observable retains the original energy,
the mixed signed correction and the correction square. The Hilbert norm
Pythagoras cannot be substituted for this identity. -/
theorem sourceWholePickup_coupled_square (j : ℕ) {t : ℝ}
    (ht0 : 0 ≤ t) (htT : t ≤
      GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j) :
    ((coupledObservedReadout X d j 0 t
       (originalJointPair d j 0)).re) ^ 2 =
      (GRWTSK.RiemannHypothesis.CCC.wholePickup t) ^ 2 +
      2 * GRWTSK.RiemannHypothesis.CCC.wholePickup t *
        (coupledReadoutDefect X d j 0 t (originalJointPair d j 0)).re +
      ((coupledReadoutDefect X d j 0 t (originalJointPair d j 0)).re) ^ 2 := by
  rw [sourceWholePickup_coupled_return X d j ht0 htT, Complex.add_re,
    Complex.ofReal_re]
  ring

/-- The *entire* signed correction is carried into the physical-time
integral. No positivity or integrability supplier is inserted for the
new cross term. -/
theorem sourceWholePickup_coupled_integrand_return (j : ℕ) :
    (∫ t in (0 : ℝ)..GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j,
      ((coupledObservedReadout X d j 0 t
          (originalJointPair d j 0)).re) ^ 2) =
    (∫ t in (0 : ℝ)..GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j,
      (GRWTSK.RiemannHypothesis.CCC.wholePickup t) ^ 2 +
      2 * GRWTSK.RiemannHypothesis.CCC.wholePickup t *
        (coupledReadoutDefect X d j 0 t (originalJointPair d j 0)).re +
      ((coupledReadoutDefect X d j 0 t (originalJointPair d j 0)).re) ^ 2) := by
  apply intervalIntegral.integral_congr
  intro t ht
  exact sourceWholePickup_coupled_square X d j ht.1 ht.2

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualCoupledCausalPropagator
