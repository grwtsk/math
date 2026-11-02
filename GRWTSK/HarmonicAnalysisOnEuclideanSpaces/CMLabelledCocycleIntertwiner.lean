/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMLabelledCausalDefectComparison
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMLabelledAddressIsometry
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.FiniteLabelledPickupUniformTransport
import Mathlib.Tactic

/-!
# Exact labelled evolution and paid CM diagnostic mismatch

On the already constructed positive joint Hilbert space, retain the CM factor
unchanged and advance the SOURCE-EXACT integer-labelled causal factor by the
previous nonautonomous two-time cocycle. This supplies an exact, bounded
intertwiner of the genuine labelled evolution with the isometric causal
inclusion, without falsely identifying the arbitrary CM class dynamics.

This particular decoupled extension commutes with the actual CM-cycle
projection (zero cross blocks by construction). The separately published
CM source diagnostic has independently measured nonzero QWP and PWQ channels;
its complete difference from the genuine joint evolution is computed here.

At the literal original signed source pair, the scalar mismatch after actual
labelled evolution is completeWave(j,d,s)-completeWave(j,d,t). This is paid,
not suppressed. On the finite-label Hilbert metric, causal birth forces at
least one unit of norm-squared gain, excluding a linear isometric/unitary
transport in the fixed metric. The same obstruction is inherited by the
explicit isometric embedding into the selected CM all-scale carrier.

No source-specific CM Hodge polarization, geometric PDE propagator, uniform
infinite-scale arithmetic energy estimate, or Schwartz-periodic Lp transfer
is claimed. All open source hypotheses retain their original status.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCocycleIntertwiner

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCausalDefectComparison
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledAddressIsometry
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupUniformTransport
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualSignedResponseOperator
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.RiemannHypothesis.CCC

variable (d : ℕ) [NeZero d]

/-- Complete joint evolution: identity on the actual selected CM Hilbert
carrier, and the actual integer-labelled causal cocycle on the other summand.
This is a deliberately decoupled comparison, not a physical CM-Hodge wave. -/
def exactLabelledJointEvolution (j : ℕ) (s t : ℝ) :
    ActualJoint d j →L[ℂ] ActualJoint d j :=
  let fst : ActualJoint d j →L[ℂ] CommonHilbert d :=
    WithLp.fstL 2 ℂ (CommonHilbert d) (LabelledState j)
  let snd : ActualJoint d j →L[ℂ] LabelledState j :=
    WithLp.sndL 2 ℂ (CommonHilbert d) (LabelledState j)
  ((WithLp.prodContinuousLinearEquiv 2 ℂ (CommonHilbert d) (LabelledState j)).symm :
      (CommonHilbert d × LabelledState j) →L[ℂ] ActualJoint d j).comp
    (fst.prod ((actualLabelTwoTime j s t).comp snd))

@[simp] theorem exactLabelledJointEvolution_apply (j : ℕ) (s t : ℝ)
    (z : ActualJoint d j) :
    exactLabelledJointEvolution d j s t z =
      WithLp.toLp 2 (z.fst, actualLabelTwoTime j s t z.snd) := rfl

/-- The genuine arithmetic evolution is EXACTLY intertwined by its isometric
inclusion in the joint Hilbert space. -/
theorem labelled_isometric_intertwining (j : ℕ) (s t : ℝ)
    (z : LabelledState j) :
    exactLabelledJointEvolution d j s t (includeActualCausal d j z) =
      includeActualCausal d j (actualLabelTwoTime j s t z) := by
  change WithLp.toLp 2 ((0 : CommonHilbert d), actualLabelTwoTime j s t z) = _
  rfl

/-- The CM inclusion is fixed exactly; this does not construct dynamics
on the geometric CM source. -/
theorem selectedCM_is_fixed (j : ℕ) (s t : ℝ) (x : CommonHilbert d) :
    exactLabelledJointEvolution d j s t (includeSelectedCM d j x) =
      includeSelectedCM d j x := by
  change WithLp.toLp 2 (x, actualLabelTwoTime j s t 0) =
    WithLp.toLp 2 (x, 0)
  rw [map_zero]

/-- Genuine two-time identity, with exact finite-inventory birth history. -/
theorem exactLabelledJointEvolution_self (j : ℕ) (s : ℝ) :
    exactLabelledJointEvolution d j s s =
      ContinuousLinearMap.id ℂ (ActualJoint d j) := by
  apply ContinuousLinearMap.ext
  intro z
  rw [exactLabelledJointEvolution_apply, actualLabelTwoTime_self]
  rfl

/-- The exact time-composition law holds on the FULL joint Hilbert space. -/
theorem exactLabelledJointEvolution_comp (j : ℕ) (s t u : ℝ) :
    (exactLabelledJointEvolution d j t u).comp
        (exactLabelledJointEvolution d j s t) =
      exactLabelledJointEvolution d j s u := by
  apply ContinuousLinearMap.ext
  intro z
  simp only [ContinuousLinearMap.comp_apply, exactLabelledJointEvolution_apply,
    WithLp.toLp_fst, WithLp.toLp_snd]
  apply WithLp.toLp_injective 2
  apply Prod.ext
  · rfl
  · exact congrArg (fun W : LabelledState j →L[ℂ] LabelledState j => W z.snd)
      (actualLabelTwoTime_comp j s t u)

/-- Unconditional reverse time, even across response births. -/
theorem exactLabelledJointEvolution_inverse (j : ℕ) (s t : ℝ) :
    (exactLabelledJointEvolution d j t s).comp
        (exactLabelledJointEvolution d j s t) =
      ContinuousLinearMap.id ℂ (ActualJoint d j) := by
  rw [exactLabelledJointEvolution_comp, exactLabelledJointEvolution_self]

/-- Source-exact labelled graph transport inside the common Hilbert space. -/
theorem actual_source_joint_transport (j : ℕ) (s t : ℝ) :
    exactLabelledJointEvolution d j s t (originalJointPair d j s) =
      WithLp.toLp 2 (actualSignedPacket d j s, originalLabelledState j t) := by
  rw [exactLabelledJointEvolution_apply]
  change WithLp.toLp 2
      (actualSignedPacket d j s,
        actualLabelTwoTime j s t (originalLabelledState j s)) = _
  rw [originalLabelledState_transport]

/-- The price of leaving the CM diagnostic source frozen: the two
independently exact readouts differ by the literal signed waveform increment. -/
theorem signed_source_mismatch_exact (j : ℕ) (s t : ℝ) :
    sourceReadoutMismatch d j
        (exactLabelledJointEvolution d j s t (originalJointPair d j s)) =
      (completeWave j d s : ℂ) - (completeWave j d t : ℂ) := by
  rw [actual_source_joint_transport]
  change complexCoherentReadout d j (actualSignedPacket d j s) -
    originalReadout j (actualLabelResponse j t) = _
  rw [complexCoherentReadout_original,
    originalReadout_actualLabelResponse,
    completeWave_eq_originalFixedWave j d t]

/-- Exact mismatch is bounded by the norm of the true signed CM-coordinate
packet increment, without taking absolute values of its source coefficients. -/
theorem signed_source_mismatch_norm_le (j : ℕ) (s t : ℝ) :
    ‖sourceReadoutMismatch d j
        (exactLabelledJointEvolution d j s t (originalJointPair d j s))‖ ≤
      ‖complexCoherentReadout d j‖ *
        ‖actualSignedPacket d j s - actualSignedPacket d j t‖ := by
  rw [signed_source_mismatch_exact]
  have h := (complexCoherentReadout d j).le_opNorm
    (actualSignedPacket d j s - actualSignedPacket d j t)
  rw [map_sub, complexCoherentReadout_original,
      complexCoherentReadout_original] at h
  exact h

/-- The already published CM diagnostic and the genuine labelled cocycle
share the SAME second component. Their exact difference is the entire
first-sector diagnostic error, including its possible nonzero P/Q blocks. -/
theorem diagnostic_minus_evolution (j : ℕ) (s t u : ℝ)
    (z : ActualJoint d j) :
    sourceDiagnosticJoint d j s t u z - exactLabelledJointEvolution d j s t z =
      includeSelectedCM d j (sourceResponse d j u z.fst - z.fst) := by
  rw [sourceDiagnosticJoint_apply, exactLabelledJointEvolution_apply]
  change WithLp.toLp 2
      (sourceResponse d j u z.fst, actualLabelTwoTime j s t z.snd) -
      WithLp.toLp 2 (z.fst, actualLabelTwoTime j s t z.snd) = _
  rw [← WithLp.toLp_sub]
  change WithLp.toLp 2
    (sourceResponse d j u z.fst - z.fst, (0 : LabelledState j)) =
    WithLp.toLp 2
      (sourceResponse d j u z.fst - z.fst, (0 : LabelledState j))
  rfl

/-- Quantitative exact norm equality for the paid diagnostic mismatch. -/
theorem diagnostic_minus_evolution_norm (j : ℕ) (s t u : ℝ)
    (z : ActualJoint d j) :
    ‖sourceDiagnosticJoint d j s t u z - exactLabelledJointEvolution d j s t z‖ =
      ‖sourceResponse d j u z.fst - z.fst‖ := by
  rw [diagnostic_minus_evolution, LinearIsometry.norm_map]

section CM
variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
variable (p : ℕ) [FiniteDimensional ℚ (OriginalBetti X p)]

/-- The ACTUAL selected CM projector commutes with this decoupled evolution.
This says nothing about arbitrary coupled physical evolutions; the diagnostic
source's QWP and PWQ remain in their prior source-specific theorems. -/
theorem exact_evolution_commutes_CM_projection (j : ℕ) (s t : ℝ)
    (z : ActualJoint d j) :
    jointP d X p j (exactLabelledJointEvolution d j s t z) =
      exactLabelledJointEvolution d j s t (jointP d X p j z) := by
  change WithLp.toLp 2
      (algebraicProjection (geometricSource d X p) z.fst, (0 : LabelledState j)) =
    WithLp.toLp 2
      (algebraicProjection (geometricSource d X p) z.fst,
        actualLabelTwoTime j s t 0)
  rw [map_zero]

/-- The complementary projector also commutes with the genuinely labelled
sector evolution; no arithmetic or geometric source term is discarded. -/
theorem exact_evolution_commutes_CM_residual (j : ℕ) (s t : ℝ)
    (z : ActualJoint d j) :
    jointQ d X p j (exactLabelledJointEvolution d j s t z) =
      exactLabelledJointEvolution d j s t (jointQ d X p j z) := by
  rfl

/-- The isometric placement of the REAL original finite-label source state
into the selected all-scale CM carrier inherits a minimum one-unit increase
in positive Hilbert norm squared at the literal n=1 response birth. -/
theorem selected_hilbert_birth_norm_sq_gain (j : ℕ) :
    ‖labelledToSelectedIsometry X p d j (originalLabelledState j 0)‖ ^ 2 + 1 ≤
      ‖labelledToSelectedIsometry X p d j
        (originalLabelledState j (2 * Real.log (2 : ℝ)))‖ ^ 2 := by
  simp only [LinearIsometry.norm_map]
  exact originalLabelledState_birth_norm_sq_gain j

/-- The source-selected CM Hilbert metric therefore cannot support an
isometric (hence unitary) operator evolving this exact embedded graph from
time zero to the later source response. This does NOT exclude a bounded
nonisometric evolution, which was already constructed. -/
theorem no_selected_isometric_embedded_birth_transport (j : ℕ) :
    ¬ ∃ U : CommonHilbert d →ₗᵢ[ℂ] CommonHilbert d,
      U (labelledToSelectedIsometry X p d j
          (originalLabelledState j 0)) =
        labelledToSelectedIsometry X p d j
          (originalLabelledState j (2 * Real.log (2 : ℝ))) := by
  rintro ⟨U, hU⟩
  have hnorm := U.norm_map
    (labelledToSelectedIsometry X p d j (originalLabelledState j 0))
  rw [hU] at hnorm
  have hgain := selected_hilbert_birth_norm_sq_gain d X p j
  nlinarith

end CM

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCocycleIntertwiner
