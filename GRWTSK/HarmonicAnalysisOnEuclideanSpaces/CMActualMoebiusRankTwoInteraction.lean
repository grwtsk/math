/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Source proof candidate / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMArithmeticRankTwoCoupling
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMLabelledCocycleIntertwiner
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMLabelledCausalDefectComparison
import Mathlib.Analysis.InnerProductSpace.Projection.Basic
import Mathlib.Tactic

/-!
# Genuine CM-cycle-to-original-Mobius two-way source coupling

The geometric vector is the ACTUAL rational Thom/Betti cycle-class image on
its already chosen finite rational Betti coordinate realization. The causal
vector is the ACTUAL complete finite signed Mobius labelled state, retaining
all integer labels, births, squareful zeros and positive/negative coefficients.

This constructs a nonzero rank-two SELF-ADJOINT interaction when a specified
geometric cycle has a nonzero Betti realization. The arithmetic factor is
provably nonzero for EVERY j,t from the original latent mu(1)=1. The two
independent directional maps are literal adjoints. Both off-diagonal blocks
relative to the ACTUAL geometric CM projection have exact rank-one source
formulas; their operator norms are 1 when both source factors are normalized.

The normalization changes only the optional interaction, not the arithmetic
state nor its original signed coherent observable. The selected coordinate
metric is basis-dependent. The interaction is a source-derived bounded
comparison operator, NOT a derived physical Hamiltonian, self-adjoint PDE
generator, unitarity proof, or global arithmetic-energy bound. In particular,
adding the interaction to the genuine decoupled causal cocycle does NOT
silently grant a cocycle law or source-graph transport.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualMoebiusRankTwoInteraction

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMGeometricCycleHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleResidueHilbertAttachment
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCausalDefectComparison
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCocycleIntertwiner
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMArithmeticRankTwoCoupling

variable (d : ℕ) [NeZero d]
variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
variable (p : ℕ) [FiniteDimensional ℚ (OriginalBetti X p)]

/-- The EXACT actual cycle-class image, not an arbitrary labelled vector. -/
abbrev actualCMVector (z : ActualRationalCycle X p) : CommonHilbert d :=
  originalCycleToSelectedHilbert X p (squareProfile d) z

/-- The EXACT signed latent/response source, not a reconstructed proxy. -/
abbrev actualMobiusVector (j : ℕ) (u : ℝ) : LabelledState j :=
  originalLabelledState j u

/-- A source fact independent of every arithmetic cancellation premise:
the actual integer n=1 latent coordinate is 1 for every finite inventory. -/
theorem actualMobiusVector_nonzero (j : ℕ) (u : ℝ) :
    actualMobiusVector j u ≠ 0 := by
  intro hz
  have hcoordinate := congrArg
    (fun y : LabelledState j => y.fst (0 : SourceLabels j)) hz
  have hone : (actualMobiusVector j u).fst (0 : SourceLabels j) = (1 : ℂ) := by
    simp [actualMobiusVector, originalLabelledState_latent,
      actualMoebiusLabels, moebiusReal]
  rw [hone] at hcoordinate
  norm_num at hcoordinate

/-- The cycle's actual Hilbert vector belongs to the closure of the
GEOMETRIC cycle-class span, not a freely selected purported algebraic set. -/
theorem actualCMVector_in_cycle_carrier (z : ActualRationalCycle X p) :
    actualCMVector d X p z ∈
      (algebraicClosedSpan (geometricSource d X p) :
        Submodule ℂ (CommonHilbert d)) := by
  let S : Set (CommonHilbert d) := geometricSource d X p
  have hs : actualCMVector d X p z ∈ S := by
    exact ⟨z, rfl⟩
  have hh : actualCMVector d X p z ∈ Submodule.span ℂ S :=
    Submodule.subset_span hs
  change actualCMVector d X p z ∈ (Submodule.span ℂ S).topologicalClosure
  exact Submodule.le_topologicalClosure _ hh

/-- Its actual Hilbert orthogonal projector fixes this genuine cycle. -/
theorem actualCMVector_algebraic (z : ActualRationalCycle X p) :
    algebraicProjection (geometricSource d X p)
        (actualCMVector d X p z) = actualCMVector d X p z := by
  exact ((algebraicClosedSpan (geometricSource d X p) :
    Submodule ℂ (CommonHilbert d)).starProjection_eq_self_iff).mpr
      (actualCMVector_in_cycle_carrier d X p z)

/-- Normalized geometric and actual arithmetic factors. All original
signed source data remain unchanged in `actualMobiusVector`. -/
def actualCMUnit (z : ActualRationalCycle X p) : CommonHilbert d :=
  unitVector (actualCMVector d X p z)

def actualMobiusUnit (j : ℕ) (u : ℝ) : LabelledState j :=
  unitVector (actualMobiusVector j u)

/-- The source arithmetic factor has unit norm at every time and at every
finite dyadic inventory, without an independent Möbius-energy estimate. -/
theorem actualMobiusUnit_norm (j : ℕ) (u : ℝ) :
    ‖actualMobiusUnit j u‖ = 1 :=
  unitVector_norm_one _ (actualMobiusVector_nonzero j u)

/-- Explicit nonzero geometric cycle-class hypothesis, which must not be
inferred from algebraicity of every cycle, notably for zero cycles. -/
theorem actualCMUnit_norm (z : ActualRationalCycle X p)
    (hz : actualCMVector d X p z ≠ 0) :
    ‖actualCMUnit d X p z‖ = 1 :=
  unitVector_norm_one _ hz

/-- The actual normalized cycle remains inside the SAME geometric span. -/
theorem actualCMUnit_algebraic (z : ActualRationalCycle X p) :
    algebraicProjection (geometricSource d X p) (actualCMUnit d X p z) =
      actualCMUnit d X p z := by
  change algebraicProjection (geometricSource d X p)
    ((‖actualCMVector d X p z‖⁻¹ : ℂ) • actualCMVector d X p z) = _
  rw [map_smul, actualCMVector_algebraic]

/-- Two-way NONZERO geometric/arithmetic coupling in their genuine joint
Hilbert space. The coupling is zero if its actual cycle image is zero. -/
def actualCoupling (z : ActualRationalCycle X p) (j : ℕ) (u : ℝ) :
    ActualJoint d j →L[ℂ] ActualJoint d j :=
  coupledOperator (actualCMUnit d X p z) (actualMobiusUnit j u)

/-- Both actual off-diagonal directions are adjoints; the total interaction
is self-adjoint in the CHOSEN positive inner-product structure. -/
theorem actualCoupling_selfAdjoint (z : ActualRationalCycle X p)
    (j : ℕ) (u : ℝ) :
    (actualCoupling d X p z j u).adjoint = actualCoupling d X p z j u :=
  coupledOperator_selfAdjoint _ _

/-- The exact source-specific interaction on arbitrary Hilbert states. -/
theorem actualCoupling_apply (z : ActualRationalCycle X p)
    (j : ℕ) (u : ℝ) (x : ActualJoint d j) :
    actualCoupling d X p z j u x =
      WithLp.toLp 2
        (inner ℂ (actualMobiusUnit j u) x.snd • actualCMUnit d X p z,
         inner ℂ (actualCMUnit d X p z) x.fst • actualMobiusUnit j u) :=
  coupledOperator_apply _ _ _

/-- The positive-Hilbert norm of EACH ACTUAL directional coupling is exactly
one as soon as the selected genuine CM cycle class is nonzero. -/
theorem actual_CM_to_arithmetic_channel_norm
    (z : ActualRationalCycle X p) (j : ℕ) (u : ℝ)
    (hz : actualCMVector d X p z ≠ 0) :
    ‖cmToArithmetic (actualCMUnit d X p z) (actualMobiusUnit j u)‖ = 1 :=
  by
    rw [cmToArithmetic_norm, actualCMUnit_norm d X p z hz,
      actualMobiusUnit_norm j u, one_mul]

theorem actual_arithmetic_to_CM_channel_norm
    (z : ActualRationalCycle X p) (j : ℕ) (u : ℝ)
    (hz : actualCMVector d X p z ≠ 0) :
    ‖arithmeticToCM (actualCMUnit d X p z) (actualMobiusUnit j u)‖ = 1 :=
  by
    rw [arithmeticToCM_norm, actualCMUnit_norm d X p z hz,
      actualMobiusUnit_norm j u, one_mul]

/-- Uniform-in-inventory bound for the NORMALIZED interaction. This bound
is NOT a uniform estimate for the unnormalized signed Möbius source energy. -/
theorem actualCoupling_opNorm_le_two
    (z : ActualRationalCycle X p) (j : ℕ) (u : ℝ)
    (hz : actualCMVector d X p z ≠ 0) :
    ‖actualCoupling d X p z j u‖ ≤ 2 := by
  have h := coupledOperator_norm_bound
    (actualCMUnit d X p z) (actualMobiusUnit j u)
  rw [actualCMUnit_norm d X p z hz, actualMobiusUnit_norm j u] at h
  simpa only [one_mul, mul_one] using h

/-- A source-defined bounded comparison operator with BOTH off-diagonal
channels. It is NOT claimed to obey the time-cocycle law or preserve the
source graph; these remain separate physical/dynamic obligations. -/
def interactingComparison (z : ActualRationalCycle X p) (j : ℕ)
    (s t u : ℝ) : ActualJoint d j →L[ℂ] ActualJoint d j :=
  exactLabelledJointEvolution d j s t + actualCoupling d X p z j u

/-- The interaction is the EXACT difference from the genuine decoupled
finite-inventory causal evolution. -/
theorem interactingComparison_sub_evolution
    (z : ActualRationalCycle X p) (j : ℕ) (s t u : ℝ) :
    interactingComparison d X p z j s t u - exactLabelledJointEvolution d j s t =
      actualCoupling d X p z j u := by
  simp [interactingComparison]

/-- The source interaction does not change the pre-existing signed
physical readout of the ORIGINAL UNCOUPLED packet. After coupling, its
coherent readout must be recomputed, not declared invariant. -/
theorem unchanged_source_signed_energy (j : ℕ) :
    pickupEnergy (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j) =
      ∫ u in (0 : ℝ)..GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j,
        (finiteCoherentReadout d j (actualSignedPacket d j u)) ^ 2 :=
  originalPickupEnergy_eq_selectedPacketIntegral d j

/-- Actual retained cross-direction defect of the COUPLED comparison;
only the source-normalized interaction contributes, because the genuine
labelled evolution commutes with the selected geometric projector. -/
theorem interactingComparison_QWP
    (z : ActualRationalCycle X p) (j : ℕ) (s t u : ℝ)
    (x : ActualJoint d j) :
    jointQ d X p j
      (interactingComparison d X p z j s t u (jointP d X p j x)) =
      includeActualCausal d j
        (inner ℂ (actualCMUnit d X p z)
            (algebraicProjection (geometricSource d X p) x.fst) •
          actualMobiusUnit j u) := by
  rw [interactingComparison, ContinuousLinearMap.add_apply, map_add]
  have hzero := exact_evolution_commutes_CM_residual d X p j s t
    (jointP d X p j x)
  have hP : jointQ d X p j (jointP d X p j x) = 0 := by
    change WithLp.toLp 2
      (residualProjection (geometricSource d X p)
        (algebraicProjection (geometricSource d X p) x.fst),
        (0 : LabelledState j)) = 0
    have hcarrier := (algebraicClosedSpan (geometricSource d X p) :
      Submodule ℂ (CommonHilbert d)).starProjection_apply_mem x.fst
    have hh := ((algebraicClosedSpan (geometricSource d X p) :
      Submodule ℂ (CommonHilbert d)).starProjection_eq_self_iff).mpr hcarrier
    have hsplit := complete_reconstruction (geometricSource d X p)
      (algebraicProjection (geometricSource d X p) x.fst)
    rw [hh] at hsplit
    have hz : residualProjection (geometricSource d X p)
      (algebraicProjection (geometricSource d X p) x.fst) = 0 := by
      apply add_left_cancel
      simpa using hsplit
    simp [hz]
  have hevol : jointQ d X p j
      (exactLabelledJointEvolution d j s t (jointP d X p j x)) = 0 := by
    rw [hzero, hP]
  rw [hevol, zero_add]
  change jointResidualProjection (geometricSource d X p)
    (coupledOperator (actualCMUnit d X p z) (actualMobiusUnit j u)
      (jointAlgebraicProjection (geometricSource d X p) x)) = _
  rw [jointAlgebraicProjection_apply, coupledOperator_apply,
    jointResidualProjection_apply]
  simp [includeActualCausal_apply]

/-- Independently retained reverse coupling, with actual CM cycle image
rather than an invented algebraic unit vector. -/
theorem interactingComparison_PWQ
    (z : ActualRationalCycle X p) (j : ℕ) (s t u : ℝ)
    (x : ActualJoint d j) :
    jointP d X p j
      (interactingComparison d X p z j s t u (jointQ d X p j x)) =
      includeSelectedCM d j
        (inner ℂ (actualMobiusUnit j u) x.snd • actualCMUnit d X p z) := by
  rw [interactingComparison, ContinuousLinearMap.add_apply, map_add]
  have hevol : jointP d X p j
      (exactLabelledJointEvolution d j s t (jointQ d X p j x)) = 0 := by
    have hcomm := exact_evolution_commutes_CM_projection d X p j s t
      (jointQ d X p j x)
    rw [hcomm]
    have hsource : jointP d X p j (jointQ d X p j x) = 0 := by
      change WithLp.toLp 2
        (algebraicProjection (geometricSource d X p)
          (residualProjection (geometricSource d X p) x.fst),
          (0 : LabelledState j)) = 0
      have hq : residualProjection (geometricSource d X p) x.fst ∈
          (algebraicClosedSpan (geometricSource d X p) : Submodule ℂ (CommonHilbert d))ᗮ :=
        ((algebraicClosedSpan (geometricSource d X p) :
          Submodule ℂ (CommonHilbert d))ᗮ).starProjection_apply_mem x.fst
      have hp := ((algebraicClosedSpan (geometricSource d X p) :
        Submodule ℂ (CommonHilbert d)).starProjection_apply_eq_zero_iff).mpr hq
      simp [hp]
    rw [hsource, map_zero]
  rw [hevol, zero_add]
  change jointAlgebraicProjection (geometricSource d X p)
    (coupledOperator (actualCMUnit d X p z) (actualMobiusUnit j u)
      (jointResidualProjection (geometricSource d X p) x)) = _
  rw [jointResidualProjection_apply, coupledOperator_apply,
    jointAlgebraicProjection_apply]
  simp [actualCMUnit_algebraic, includeSelectedCM_apply]


/-- Orthogonality to the actual CM-cycle complement makes the rank-one
CM input detector insensitive to the orthogonal residual, not to the
independent signed arithmetic channel. -/
theorem actualCMUnit_inner_projection
    (z : ActualRationalCycle X p) (x : CommonHilbert d) :
    inner ℂ (actualCMUnit d X p z)
      (algebraicProjection (geometricSource d X p) x) =
    inner ℂ (actualCMUnit d X p z) x := by
  have h := (algebraicClosedSpan (geometricSource d X p) :
    Submodule ℂ (CommonHilbert d)).inner_starProjection_left_eq_right
      (actualCMUnit d X p z) x
  change inner ℂ
      (algebraicProjection (geometricSource d X p) (actualCMUnit d X p z)) x =
    inner ℂ (actualCMUnit d X p z)
      (algebraicProjection (geometricSource d X p) x) at h
  rw [actualCMUnit_algebraic] at h
  exact h.symm

/-- This is an EXACT operator equality with the COMPRESSED genuine Q K P
block, not just a bound on a separately named convenient map. -/
theorem interactingComparison_QWP_operator
    (z : ActualRationalCycle X p) (j : ℕ) (s t u : ℝ) :
    (jointQ d X p j).comp
        ((interactingComparison d X p z j s t u).comp (jointP d X p j)) =
      cmToArithmetic (actualCMUnit d X p z) (actualMobiusUnit j u) := by
  apply ContinuousLinearMap.ext
  intro x
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.comp_apply,
    interactingComparison_QWP]
  rw [actualCMUnit_inner_projection]
  simp [cmToArithmetic, InnerProductSpace.rankOne_apply,
    includeSelectedCM_apply, includeActualCausal_apply, includeCM_apply,
    includeCausal_apply, WithLp.prod_inner_apply]

/-- The independently compressed P K Q block is the exact reverse rank-one
operator, not an arbitrary output bound or a cancelled cross term. -/
theorem interactingComparison_PWQ_operator
    (z : ActualRationalCycle X p) (j : ℕ) (s t u : ℝ) :
    (jointP d X p j).comp
        ((interactingComparison d X p z j s t u).comp (jointQ d X p j)) =
      arithmeticToCM (actualCMUnit d X p z) (actualMobiusUnit j u) := by
  apply ContinuousLinearMap.ext
  intro x
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.comp_apply,
    interactingComparison_PWQ]
  simp [arithmeticToCM, InnerProductSpace.rankOne_apply,
    includeSelectedCM_apply, includeActualCausal_apply, includeCM_apply,
    includeCausal_apply, WithLp.prod_inner_apply]

/-- When a particular actual rational CM cycle has nonzero Betti image,
BOTH genuine compressed leakage operators have norm EXACTLY ONE at every
finite inventory and every time. This does not assert such a nonzero cycle
in every degree or provide a physical generator. -/
theorem interactingComparison_QWP_opNorm_one
    (z : ActualRationalCycle X p) (j : ℕ) (s t u : ℝ)
    (hz : actualCMVector d X p z ≠ 0) :
    ‖(jointQ d X p j).comp
        ((interactingComparison d X p z j s t u).comp (jointP d X p j))‖ = 1 := by
  rw [interactingComparison_QWP_operator]
  exact actual_CM_to_arithmetic_channel_norm d X p z j u hz

theorem interactingComparison_PWQ_opNorm_one
    (z : ActualRationalCycle X p) (j : ℕ) (s t u : ℝ)
    (hz : actualCMVector d X p z ≠ 0) :
    ‖(jointP d X p j).comp
        ((interactingComparison d X p z j s t u).comp (jointQ d X p j))‖ = 1 := by
  rw [interactingComparison_PWQ_operator]
  exact actual_arithmetic_to_CM_channel_norm d X p z j u hz

/-- In particular, *both* off-diagonal compressed operators are genuinely
nonzero under precisely the actual geometric source witness. -/
theorem interactingComparison_two_nonzero_defects
    (z : ActualRationalCycle X p) (j : ℕ) (s t u : ℝ)
    (hz : actualCMVector d X p z ≠ 0) :
    (jointQ d X p j).comp
        ((interactingComparison d X p z j s t u).comp (jointP d X p j)) ≠ 0 ∧
    (jointP d X p j).comp
        ((interactingComparison d X p z j s t u).comp (jointQ d X p j)) ≠ 0 := by
  constructor
  · intro h
    have hn := interactingComparison_QWP_opNorm_one d X p z j s t u hz
    rw [h, norm_zero] at hn
    norm_num at hn
  · intro h
    have hn := interactingComparison_PWQ_opNorm_one d X p z j s t u hz
    rw [h, norm_zero] at hn
    norm_num at hn

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualMoebiusRankTwoInteraction
