/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
OpenAI/math and Mathlib retain their original attribution and licenses.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMLabelledJointIsometry
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.FiniteLabelledPickupCocycle
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMActualSignedCausalEvolution
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMActualSignedResponseOperator
import Mathlib.Tactic

/-!
# Actual labelled causal wave versus the selected CM Betti Hilbert sector

This compares TWO real source-backed complete Hilbert spaces by *isometric*
inclusions into their positive L2 sum. The first is the already selected
complex Hilbert realization of the actual rational CM Betti cycle classes;
the second is the original finite, integer-labelled Mobius coefficient and
pickup-response Hilbert state, including birth events.

There is no manufactured canonical isometry between these different spaces.
In particular the rational Betti source uses its explicitly selected basis
metric, not an unnamed polarizing Hodge norm.

The coherent scalar detector on the selected CM carrier and the genuine
integer-labelled detector AGREE on the ORIGINAL signed source, BEFORE
squaring and without throwing away cross terms. This is a readout comparison,
not an isometry of the residue-aggregation map.

We compare a source-derived bounded, rank-one CM diagnostic B(u) on the first
sector with the actual label-preserving two-time causal cocycle W(s,t) on the
second sector. The resulting bounded joint operator has both exact defect
channels Q B P and P B Q relative to the ACTUAL CM algebraic cycle projector.
It is deliberately called diagnostic: B(u) is NOT the observed-only Mobius
time evolution. The exact first-factor mismatch on the physical source pair
is paid explicitly; it need not vanish. Neither uniform-in-j analytic estimates
nor Schwartz-to-periodic Lp smoothing are claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCausalDefectComparison

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMGeometricCycleHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleResidueHilbertAttachment
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualSignedResponseOperator

variable (d : ℕ) [NeZero d]

/-- Selected CM Betti coordinate Hilbert space, with all additional residual
states retained, and the original full finite integer-labelled causal state. -/
abbrev ActualJoint (j : ℕ) :=
  Joint (CommonHilbert d) (LabelledState j)

/-- The two genuine isometric inclusions into ONE complete positive space. -/
def includeSelectedCM (j : ℕ) :
    CommonHilbert d →ₗᵢ[ℂ] ActualJoint d j :=
  includeCM (H := CommonHilbert d) (C := LabelledState j)

def includeActualCausal (j : ℕ) :
    LabelledState j →ₗᵢ[ℂ] ActualJoint d j :=
  includeCausal (H := CommonHilbert d) (C := LabelledState j)

/-- The ORIGINAL signed source packet and the ORIGINAL causal labelled
state coexist as one vector, with the direct-sum Hilbert norm. -/
def originalJointPair (j : ℕ) (u : ℝ) : ActualJoint d j :=
  WithLp.toLp 2 (actualSignedPacket d j u, originalLabelledState j u)

/-- The difference of the two independently source-identified COMPLEX-linear
finite readouts. Neither readout has been made positive by taking absolute
values of signed Mobius coefficients. -/
def sourceReadoutMismatch (j : ℕ) (z : ActualJoint d j) : ℂ :=
  complexCoherentReadout d j z.fst - originalReadout j z.snd.snd

/-- Exact source equality on the literal original signed waveform, not an
assumed comparison map. This holds for arbitrary real u at fixed inventory. -/
theorem originalJointPair_readout_exact (j : ℕ) (u : ℝ) :
    sourceReadoutMismatch d j (originalJointPair d j u) = 0 := by
  change complexCoherentReadout d j (actualSignedPacket d j u) -
    originalReadout j (actualLabelResponse j u) = 0
  rw [complexCoherentReadout_original, originalReadout_actualLabelResponse]
  rw [completeWave_eq_originalFixedWave]
  ring

/-- With the unchanged closed dyadic clock, both joint readouts give the
actual wholePickup, including terminal births and every signed class. -/
theorem originalJointPair_wholePickup (j : ℕ) {u : ℝ}
    (hu : 0 ≤ u) (huT : u ≤ dyadicTime j) :
    (wholePickup u : ℂ) =
       originalReadout j (originalJointPair d j u).snd.snd := by
  change (wholePickup u : ℂ) = originalReadout j (actualLabelResponse j u)
  exact originalPickup_eq_labelledReadout j hu huT

/-- The actual signed physical scalar energy is the square of the coherent
readout, NOT the squared Hilbert norm of the label-vector or joint state. -/
theorem originalJointPair_signedEnergy (j : ℕ) :
    pickupEnergy (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j,
        ((complexCoherentReadout d j (originalJointPair d j u).fst).re) ^ 2 := by
  rw [← completeResidueEnergy_eq_pickupEnergy j d]
  unfold completeResidueEnergy
  apply intervalIntegral.integral_congr
  intro u _
  change (completeWave j d u) ^ 2 =
     ((complexCoherentReadout d j (actualSignedPacket d j u)).re) ^ 2
  rw [complexCoherentReadout_original, Complex.ofReal_re]

/-- Compare the actual source diagnostic on the CM-selected Hilbert carrier
with the real time-composing label-preserving causal evolution. This is a
bounded block-diagonal COMPARISON, not a semigroup on the CM factor. -/
def sourceDiagnosticJoint (j : ℕ) (s t observationTime : ℝ) :
    ActualJoint d j →L[ℂ] ActualJoint d j :=
  let fst : ActualJoint d j →L[ℂ] CommonHilbert d :=
    WithLp.fstL 2 ℂ (CommonHilbert d) (LabelledState j)
  let snd : ActualJoint d j →L[ℂ] LabelledState j :=
    WithLp.sndL 2 ℂ (CommonHilbert d) (LabelledState j)
  ((WithLp.prodContinuousLinearEquiv 2 ℂ (CommonHilbert d) (LabelledState j)).symm :
      ((CommonHilbert d) × (LabelledState j)) →L[ℂ] ActualJoint d j).comp
    (((sourceResponse d j observationTime).comp fst).prod
      ((actualLabelTwoTime j s t).comp snd))

@[simp] theorem sourceDiagnosticJoint_apply (j : ℕ)
    (s t observationTime : ℝ) (z : ActualJoint d j) :
    sourceDiagnosticJoint d j s t observationTime z =
      WithLp.toLp 2
        (sourceResponse d j observationTime z.fst,
         actualLabelTwoTime j s t z.snd) := rfl

/-- A genuine source-graph transport occurs in the SECOND isometric factor.
The first comparison operator has its own explicitly computed scalar defect. -/
theorem originalJointPair_diagnostic_transport
    (j : ℕ) (s t : ℝ) :
    sourceDiagnosticJoint d j s t t (originalJointPair d j s) =
      WithLp.toLp 2
        ((completeWave j d s : ℂ) • actualSignedPacket d j t,
          originalLabelledState j t) := by
  change WithLp.toLp 2
      (sourceResponse d j t (actualSignedPacket d j s),
        actualLabelTwoTime j s t (originalLabelledState j s)) = _
  rw [sourceResponse_actual_source d j t s,
      originalLabelledState_transport]

/-- The exact missing CM-side intertwining factor. At s=0 it cannot be
silently normalized, since every actual observed response is zero there. -/
theorem originalJointPair_first_intertwining_defect
    (j : ℕ) (s t : ℝ) :
    (sourceDiagnosticJoint d j s t t (originalJointPair d j s)).fst -
      (originalJointPair d j t).fst =
        ((completeWave j d s : ℂ) - 1) • actualSignedPacket d j t := by
  rw [originalJointPair_diagnostic_transport]
  change (completeWave j d s : ℂ) • actualSignedPacket d j t -
    actualSignedPacket d j t =
      ((completeWave j d s : ℂ) - 1) • actualSignedPacket d j t
  rw [sub_smul, one_smul]

/-- In contrast, the ENTIRE integer-labelled latent/response channel is
transported EXACTLY, with its zero-at-birth response and all original signs. -/
theorem originalJointPair_labelled_intertwining_exact
    (j : ℕ) (s t : ℝ) :
    (sourceDiagnosticJoint d j s t t (originalJointPair d j s)).snd =
      originalLabelledState j t := by
  rw [originalJointPair_diagnostic_transport]
  rfl

section CM

variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
variable (p : ℕ) [FiniteDimensional ℚ (OriginalBetti X p)]

/-- ACTUAL geometric cycle images, not a freely chosen algebraic sector. -/
abbrev geometricSource : Set (CommonHilbert d) := geometricCycles d X p

/-- The complete source-identified CM projector, plus the FULL causal
channel as its orthogonal residual. -/
def jointP (j : ℕ) : ActualJoint d j →L[ℂ] ActualJoint d j :=
  jointAlgebraicProjection (H := CommonHilbert d) (C := LabelledState j)
    (geometricSource d X p)

def jointQ (j : ℕ) : ActualJoint d j →L[ℂ] ActualJoint d j :=
  jointResidualProjection (H := CommonHilbert d) (C := LabelledState j)
    (geometricSource d X p)

/-- Both geometric and causal residuals are retained; only the actual
CM-cycle span is projected algebraically. -/
theorem actual_joint_energy_decomposes (j : ℕ) (z : ActualJoint d j) :
    ‖z‖ ^ 2 = ‖jointP d X p j z‖ ^ 2 + ‖jointQ d X p j z‖ ^ 2 :=
  joint_projection_energy (geometricSource d X p) z

/-- Exact algebraic-to-residual leakage of the concrete CM arithmetic
response on the isometric joint state. The genuine labelled source channel
has no spurious dependence on the CM readout. -/
theorem joint_QWP_defect (j : ℕ) (s t u : ℝ)
    (z : ActualJoint d j) :
    jointQ d X p j (sourceDiagnosticJoint d j s t u (jointP d X p j z)) =
      includeSelectedCM d j
        (complexCoherentReadout d j
            (algebraicProjection (geometricSource d X p) z.fst) •
          residualProjection (geometricSource d X p)
            (actualSignedPacket d j u)) := by
  change WithLp.toLp 2
      (residualProjection (geometricSource d X p)
        (sourceResponse d j u
          (algebraicProjection (geometricSource d X p) z.fst)),
       (0 : LabelledState j)) = _
  rw [sourceResponse_apply, map_smul]
  rfl

/-- The reverse PWQ defect is retained, independently of QWP. There is no
claim that either source factor vanishes from CM-Hodge algebraicity alone. -/
theorem joint_PWQ_defect (j : ℕ) (s t u : ℝ)
    (z : ActualJoint d j) :
    jointP d X p j (sourceDiagnosticJoint d j s t u (jointQ d X p j z)) =
      includeSelectedCM d j
        (complexCoherentReadout d j
            (residualProjection (geometricSource d X p) z.fst) •
          algebraicProjection (geometricSource d X p)
            (actualSignedPacket d j u)) := by
  change WithLp.toLp 2
      (algebraicProjection (geometricSource d X p)
        (sourceResponse d j u
          (residualProjection (geometricSource d X p) z.fst)),
        (0 : LabelledState j)) = _
  rw [sourceResponse_apply, map_smul]
  rfl

/-- Scale-pointwise control of QWP by the ACTUAL projected signed packet and
the bounded finite coherent readout. No rate in j is inferred. -/
theorem joint_QWP_bound (j : ℕ) (s t u : ℝ)
    (z : ActualJoint d j) :
    ‖jointQ d X p j (sourceDiagnosticJoint d j s t u (jointP d X p j z))‖ ≤
      ‖complexCoherentReadout d j‖ *
      ‖algebraicProjection (geometricSource d X p) z.fst‖ *
      ‖residualProjection (geometricSource d X p)
        (actualSignedPacket d j u)‖ := by
  rw [joint_QWP_defect, LinearIsometry.norm_map, norm_smul]
  exact mul_le_mul_of_nonneg_right
    ((complexCoherentReadout d j).le_opNorm _) (norm_nonneg _)

/-- The reverse PWQ leakage is controlled separately, with its own source
packet projection. Neither positive norm bound changes the signed observable. -/
theorem joint_PWQ_bound (j : ℕ) (s t u : ℝ)
    (z : ActualJoint d j) :
    ‖jointP d X p j (sourceDiagnosticJoint d j s t u (jointQ d X p j z))‖ ≤
      ‖complexCoherentReadout d j‖ *
      ‖residualProjection (geometricSource d X p) z.fst‖ *
      ‖algebraicProjection (geometricSource d X p)
        (actualSignedPacket d j u)‖ := by
  rw [joint_PWQ_defect, LinearIsometry.norm_map, norm_smul]
  exact mul_le_mul_of_nonneg_right
    ((complexCoherentReadout d j).le_opNorm _) (norm_nonneg _)

/-- The JOINT commutator is purely its first, genuine CM source factor, and
its squared positive Hilbert norm is the exact sum of the two directional
defect energies. It does not square the coherent source prematurely. -/
theorem joint_commutator_energy (j : ℕ) (s t u : ℝ)
    (z : ActualJoint d j) :
    ‖jointP d X p j (sourceDiagnosticJoint d j s t u z) -
        sourceDiagnosticJoint d j s t u (jointP d X p j z)‖ ^ 2 =
      ‖jointP d X p j (sourceDiagnosticJoint d j s t u (jointQ d X p j z))‖ ^ 2 +
      ‖jointQ d X p j (sourceDiagnosticJoint d j s t u (jointP d X p j z))‖ ^ 2 := by
  have h := actual_CM_arithmetic_commutator_energy d X p j u z.fst
  change ‖WithLp.toLp 2
      (algebraicProjection (geometricSource d X p) (sourceResponse d j u z.fst) -
        sourceResponse d j u (algebraicProjection (geometricSource d X p) z.fst),
       (0 : LabelledState j))‖ ^ 2 = _
  rw [WithLp.norm_toLp_fst]
  rw [joint_PWQ_defect, joint_QWP_defect]
  simp only [LinearIsometry.norm_map]
  exact h

/-- The ACTUAL original rational CM Hodge classes occupy the algebraic
joint factor, under precisely the inherited geometric/finite-dimensional
hypotheses. This is not a new CM Hodge theorem or a canonical Betti metric. -/
theorem genuine_cm_hodge_joint_residual_zero (j : ℕ)
    (hCM : OAI.AlgebraicGeometry.ComplexMultiplication.Definitions.HasComplexMultiplication X)
    (a : OriginalBetti X p) (ha : a ∈ Hdg^p(X; ℚ)) :
    jointQ d X p j
      (includeSelectedCM d j
        (originalBettiToSelectedHilbert X p (squareProfile d) a)) = 0 := by
  have h := cm_hodge_selected_residual_zero
    X p (squareProfile d) hCM a ha
  change WithLp.toLp 2
    (residualProjection (geometricSource d X p)
      (originalBettiToSelectedHilbert X p (squareProfile d) a),
       (0 : LabelledState j)) = 0
  simp [h]

/-- Exact scalar source decomposition in the actual CM projector. Orthogonal
Hilbert sectors need not be orthogonal under a coherent sum detector. -/
theorem originalJointPair_CM_signedReadout (j : ℕ) (u : ℝ) :
    (complexCoherentReadout d j (originalJointPair d j u).fst).re =
      (complexCoherentReadout d j
        (algebraicProjection (geometricSource d X p)
          (originalJointPair d j u).fst)).re +
      (complexCoherentReadout d j
        (residualProjection (geometricSource d X p)
          (originalJointPair d j u).fst)).re := by
  have h := complete_reconstruction (geometricSource d X p)
    (originalJointPair d j u).fst
  conv_lhs => rw [← h]
  rw [map_add, Complex.add_re]

/-- Both signed scalar cross terms survive the quadratic energy, even though
P and Q were built from a positive Hilbert metric. -/
theorem originalJointPair_CM_signedSquare (j : ℕ) (u : ℝ) :
    ((complexCoherentReadout d j (originalJointPair d j u).fst).re) ^ 2 =
      ((complexCoherentReadout d j
        (algebraicProjection (geometricSource d X p)
          (originalJointPair d j u).fst)).re) ^ 2 +
      ((complexCoherentReadout d j
        (residualProjection (geometricSource d X p)
          (originalJointPair d j u).fst)).re) ^ 2 +
      2 * (complexCoherentReadout d j
        (algebraicProjection (geometricSource d X p)
          (originalJointPair d j u).fst)).re *
        (complexCoherentReadout d j
          (residualProjection (geometricSource d X p)
            (originalJointPair d j u).fst)).re := by
  rw [originalJointPair_CM_signedReadout]
  ring

end CM
end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCausalDefectComparison
