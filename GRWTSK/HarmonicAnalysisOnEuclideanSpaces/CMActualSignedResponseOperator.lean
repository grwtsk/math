/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMSelectedSignedWaveReturn
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleOperatorCommutator
import Mathlib.Analysis.Normed.Lp.lpSpace
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Tactic

/-!
# Bounded, source-derived arithmetic response compared with the ACTUAL CM cycles

The source is the UNCHANGED real Möbius classWave, embedded as the finite
signed packet S(j,u) in the SAME complete selected Hilbert carrier as the
actual geometric CM Thom/Betti cycle image.

Define a finite complex-linear observable L_j by summing EXACTLY those
packet addresses. Its restriction to S(j,u) is the original signed coherent
`completeWave`. The bounded rank-one SOURCE RESPONSE at u is

        T_{j,u}(x) = L_j(x) * S(j,u).

T is an observation-driven FINITE-RANK response, not asserted to be a
propagator mapping S(j,u0) to S(j,u), or a solution operator for the original
Möbius waveform or the Euclidean wave PDE. Those require a separate source
intertwiner and time-domain analysis.

Nevertheless T IS a concrete bounded complex-linear operator, so its
comparison against the actual CM-cycle orthogonal projection is meaningful:

   Q T P(x) = L_j(P x) * Q S(j,u)
   P T Q(x) = L_j(Q x) * P S(j,u).

Both defects remain, including when either is nonzero. There is no claim
that CM-Hodge algebraicity forces invariance under this arithmetic response.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualSignedResponseOperator

open scoped BigOperators
open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMGeometricCycleHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleResidueHilbertAttachment
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint

variable (d : ℕ) [NeZero d]

/-- Complete Hilbert carrier shared with the original signed packet and CM. -/
abbrev CommonHilbert := AllScaleHilbert (squareProfile d)

/-- The genuinely CONTINUOUS complex-linear finite coherent readout, assembled
from Mathlib's norm-1 coordinate evaluation maps. This is NOT an infinite
all-stage summation of ℓ² data. -/
def complexCoherentReadout (j : ℕ) : CommonHilbert d →L[ℂ] ℂ :=
  ∑ r : Fin 2, ∑ a : ZMod (d * d),
    lp.evalCLM ℂ (fun _ : ScaleResidueIndex (squareProfile d) => ℂ)
      (2 : ℝ≥0∞) (classAddress d j r a)

/-- The exact finite additive readout on arbitrary complete-space vectors. -/
theorem complexCoherentReadout_apply (j : ℕ) (x : CommonHilbert d) :
    complexCoherentReadout d j x =
      ∑ r : Fin 2, ∑ a : ZMod (d * d),
        x (classAddress d j r a) := by
  simp [complexCoherentReadout, lp.evalCLM, lp.evalₗ]

/-- Explicit finite-cardinality bound independent of the signs of the
original Möbius coefficients. This estimates the COMPLEX-LINEAR detector;
the original physical signed-energy integral is not changed by the bound. -/
theorem complexCoherentReadout_norm_le (j : ℕ) (x : CommonHilbert d) :
    ‖complexCoherentReadout d j x‖ ≤
      (2 * (d * d) : ℝ) * ‖x‖ := by
  have hcoordinate (r : Fin 2) (a : ZMod (d * d)) :
      ‖x (classAddress d j r a)‖ ≤ ‖x‖ :=
    lp.norm_apply_le_norm (by norm_num : (2 : ℝ≥0∞) ≠ 0) x
      (classAddress d j r a)
  rw [complexCoherentReadout_apply]
  calc
    ‖∑ r : Fin 2, ∑ a : ZMod (d * d), x (classAddress d j r a)‖ ≤
        ∑ r : Fin 2,
          ‖∑ a : ZMod (d * d), x (classAddress d j r a)‖ :=
            norm_sum_le _ _
    _ ≤ ∑ r : Fin 2, ∑ a : ZMod (d * d),
        ‖x (classAddress d j r a)‖ := by
      apply Finset.sum_le_sum
      intro r _
      exact norm_sum_le _ _
    _ ≤ ∑ r : Fin 2, ∑ _a : ZMod (d * d), ‖x‖ := by
      apply Finset.sum_le_sum
      intro r _
      apply Finset.sum_le_sum
      intro a _
      exact hcoordinate r a
    _ = (2 * (d * d) : ℝ) * ‖x‖ := by
      simp [Fintype.card_fin, ZMod.card]
      ring

/-- Original signed source is returned with no absolute-value conversion. -/
theorem complexCoherentReadout_original (j : ℕ) (u : ℝ) :
    complexCoherentReadout d j (actualSignedPacket d j u) =
      (completeWave j d u : ℂ) := by
  rw [complexCoherentReadout_apply]
  simp only [actualSignedPacket_apply]
  change (∑ r : Fin 2, ∑ a : ZMod (d * d),
    (classWave j d r.val a u : ℂ)) = (completeWave j d u : ℂ)
  simp [completeWave, Fin.sum_univ_two, Finset.sum_range_succ]

/-- One explicitly source-specified finite-rank arithmetic response.
The Mathlib `smulRight` constructor proves bounded complex linearity; it
cannot be re-labelled the original PDE/Möbius evolution propagator. -/
def sourceResponse (j : ℕ) (u : ℝ) : CommonHilbert d →L[ℂ] CommonHilbert d :=
  (complexCoherentReadout d j).smulRight (actualSignedPacket d j u)

@[simp] theorem sourceResponse_apply (j : ℕ) (u : ℝ) (x : CommonHilbert d) :
    sourceResponse d j u x =
      complexCoherentReadout d j x • actualSignedPacket d j u := by
  rfl

/-- Quantitative boundedness of the actual rank-one source response.
Only the SINGLE finite inventory j is controlled; no all-j wave semigroup
bound is asserted. -/
theorem sourceResponse_norm_le (j : ℕ) (u : ℝ) (x : CommonHilbert d) :
    ‖sourceResponse d j u x‖ ≤
      ((2 * (d * d) : ℝ) * ‖x‖) * ‖actualSignedPacket d j u‖ := by
  rw [sourceResponse_apply, norm_smul]
  exact mul_le_mul_of_nonneg_right
    (complexCoherentReadout_norm_le d j x) (norm_nonneg _)

/-- Exact ORIGINAL response of the arithmetic packet to its own coherent
observation: the original source coefficient remains signed. -/
theorem sourceResponse_actual_source (j : ℕ) (u v : ℝ) :
    sourceResponse d j u (actualSignedPacket d j v) =
      (completeWave j d v : ℂ) • actualSignedPacket d j u := by
  rw [sourceResponse_apply, complexCoherentReadout_original]

/-- Source-identified, precisely ONE-pair packet transport. Its visible
nonzero coherent source premise is necessary for this chosen normalization.
It is not a time semigroup, PDE solution operator, or global arithmetic flow. -/
def sourceConditionedTimeStep (j : ℕ) (u0 u : ℝ)
    (_h : completeWave j d u0 ≠ 0) :
    CommonHilbert d →L[ℂ] CommonHilbert d :=
  ((completeWave j d u0 : ℂ)⁻¹) • sourceResponse d j u

/-- The chosen bounded map sends the GENUINE finite signed packet at u0 to
the GENUINE finite signed packet at u, with all its nonunits and signs. -/
theorem sourceConditionedTimeStep_packet (j : ℕ) (u0 u : ℝ)
    (h : completeWave j d u0 ≠ 0) :
    sourceConditionedTimeStep d j u0 u h (actualSignedPacket d j u0) =
      actualSignedPacket d j u := by
  have hc : (completeWave j d u0 : ℂ) ≠ 0 := by exact_mod_cast h
  change ((completeWave j d u0 : ℂ)⁻¹) •
    (sourceResponse d j u (actualSignedPacket d j u0)) = _
  rw [sourceResponse_actual_source]
  rw [smul_smul]
  simp [hc]

/-- Any linear wave evolution must preserve zero. If the genuine packet
vanishes at one time but not at another, NO linear operator can realize that
source pair. This conditional obstruction distinguishes the finite response
above from an unproved global arithmetic propagator. -/
theorem no_linear_wave_from_zero_packet
    (j : ℕ) (u0 u : ℝ)
    (hzero : actualSignedPacket d j u0 = 0)
    (hne : actualSignedPacket d j u ≠ 0) :
    ¬ ∃ W : CommonHilbert d →L[ℂ] CommonHilbert d,
      W (actualSignedPacket d j u0) = actualSignedPacket d j u := by
  rintro ⟨W, hW⟩
  rw [hzero, map_zero] at hW
  exact hne hW.symm

/-- Applying the bounded source response to a whole source packet retains
both ORIGINAL signed coherent amplitudes before any energy square. -/
theorem complexCoherentReadout_sourceResponse
    (j : ℕ) (u : ℝ) (x : CommonHilbert d) :
    complexCoherentReadout d j (sourceResponse d j u x) =
      complexCoherentReadout d j x * (completeWave j d u : ℂ) := by
  rw [sourceResponse_apply, map_smul, complexCoherentReadout_original]
  simp only [smul_eq_mul]

/-- A scale-indexed bounded family whose selected slot is the literal
finite-rank source response. It is constant in the auxiliary index; no PDE
scale-semigroup structure is claimed. -/
def sourceResponseFamily (j : ℕ) (u : ℝ) :
    ScaleWaveFamily (H := CommonHilbert d) := fun _ => sourceResponse d j u

section CM

variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
variable (p : ℕ) [FiniteDimensional ℚ (OriginalBetti X p)]

/-- The actual geometric-cycle image, not an independently chosen subspace. -/
abbrev geometricCycles : Set (CommonHilbert d) :=
  selectedCMCycles d X p

/-- The ACTUAL algebraic-to-residual operator on this source-built response. -/
theorem actual_CM_to_arithmetic_defect
    (j : ℕ) (u : ℝ) (x : CommonHilbert d) :
    algebraicToResidualLeak (geometricCycles d X p)
        (sourceResponseFamily d j u) 0 x =
      complexCoherentReadout d j
          (algebraicProjection (geometricCycles d X p) x) •
        residualProjection (geometricCycles d X p)
          (actualSignedPacket d j u) := by
  change residualProjection (geometricCycles d X p)
      (sourceResponse d j u
        (algebraicProjection (geometricCycles d X p) x)) = _
  rw [sourceResponse_apply, map_smul]

/-- The REVERSE residual-to-algebraic defect is retained independently. -/
theorem actual_arithmetic_to_CM_defect
    (j : ℕ) (u : ℝ) (x : CommonHilbert d) :
    residualToAlgebraicBlock (geometricCycles d X p)
        (sourceResponseFamily d j u) 0 x =
      complexCoherentReadout d j
          (residualProjection (geometricCycles d X p) x) •
        algebraicProjection (geometricCycles d X p)
          (actualSignedPacket d j u) := by
  change algebraicProjection (geometricCycles d X p)
      (sourceResponse d j u
        (residualProjection (geometricCycles d X p) x)) = _
  rw [sourceResponse_apply, map_smul]

/-- The two directions retain their different signs in the commutator:
`P T - T P = P T Q - Q T P`. -/
theorem actual_CM_arithmetic_commutator
    (j : ℕ) (u : ℝ) (x : CommonHilbert d) :
    algebraicProjection (geometricCycles d X p) (sourceResponse d j u x) -
        sourceResponse d j u (algebraicProjection (geometricCycles d X p) x) =
      complexCoherentReadout d j
          (residualProjection (geometricCycles d X p) x) •
        algebraicProjection (geometricCycles d X p)
          (actualSignedPacket d j u) -
      complexCoherentReadout d j
          (algebraicProjection (geometricCycles d X p) x) •
        residualProjection (geometricCycles d X p)
          (actualSignedPacket d j u) := by
  have h := congrArg (fun T : CommonHilbert d →L[ℂ] CommonHilbert d => T x)
    (algebraic_wave_commutator_eq_off_diagonal
      (geometricCycles d X p) (sourceResponseFamily d j u) 0)
  change algebraicProjection (geometricCycles d X p) (sourceResponse d j u x) -
      sourceResponse d j u (algebraicProjection (geometricCycles d X p) x) =
    residualToAlgebraicBlock (geometricCycles d X p)
      (sourceResponseFamily d j u) 0 x -
    algebraicToResidualLeak (geometricCycles d X p)
      (sourceResponseFamily d j u) 0 x at h
  rw [actual_arithmetic_to_CM_defect d X p j u x,
      actual_CM_to_arithmetic_defect d X p j u x] at h
  exact h

/-- The two actual CM/arithmetic defects cannot cancel by opposite
signs in a POSITIVE Hilbert norm. This is not an identity for the separate
SIGNED scalar pickup energy (which retains its mixed readout term). -/
theorem actual_CM_arithmetic_commutator_energy
    (j : ℕ) (u : ℝ) (x : CommonHilbert d) :
    ‖algebraicProjection (geometricCycles d X p) (sourceResponse d j u x) -
        sourceResponse d j u (algebraicProjection (geometricCycles d X p) x)‖ ^ 2 =
      ‖complexCoherentReadout d j
          (residualProjection (geometricCycles d X p) x) •
        algebraicProjection (geometricCycles d X p)
          (actualSignedPacket d j u)‖ ^ 2 +
      ‖complexCoherentReadout d j
          (algebraicProjection (geometricCycles d X p) x) •
        residualProjection (geometricCycles d X p)
          (actualSignedPacket d j u)‖ ^ 2 := by
  have h := algebraic_wave_commutator_energy
    (geometricCycles d X p) (sourceResponseFamily d j u) 0 x
  change ‖algebraicProjection (geometricCycles d X p) (sourceResponse d j u x) -
        sourceResponse d j u (algebraicProjection (geometricCycles d X p) x)‖ ^ 2 =
      ‖residualToAlgebraicBlock (geometricCycles d X p)
        (sourceResponseFamily d j u) 0 x‖ ^ 2 +
      ‖algebraicToResidualLeak (geometricCycles d X p)
        (sourceResponseFamily d j u) 0 x‖ ^ 2 at h
  rw [actual_arithmetic_to_CM_defect d X p j u x,
      actual_CM_to_arithmetic_defect d X p j u x] at h
  exact h

/-- Nonvanishing is not assumed: it follows when the ACTUAL source packet
has a nonzero residual and the real CM input is detected by this source
readout. Neither requirement is implied by generic CM Hodge algebraicity. -/
theorem actual_CM_to_arithmetic_defect_ne_zero_of_source
    (j : ℕ) (u : ℝ) (x : CommonHilbert d)
    (hread : complexCoherentReadout d j
      (algebraicProjection (geometricCycles d X p) x) ≠ 0)
    (hres : residualProjection (geometricCycles d X p)
      (actualSignedPacket d j u) ≠ 0) :
    algebraicToResidualLeak (geometricCycles d X p)
      (sourceResponseFamily d j u) 0 x ≠ 0 := by
  rw [actual_CM_to_arithmetic_defect d X p j u x]
  exact smul_ne_zero hread hres

/-- Independently, residual-to-algebraic leakage may be nonzero even when
algebraic-to-residual leakage vanishes. It needs its own source witnesses. -/
theorem actual_arithmetic_to_CM_defect_ne_zero_of_source
    (j : ℕ) (u : ℝ) (x : CommonHilbert d)
    (hread : complexCoherentReadout d j
      (residualProjection (geometricCycles d X p) x) ≠ 0)
    (halg : algebraicProjection (geometricCycles d X p)
      (actualSignedPacket d j u) ≠ 0) :
    residualToAlgebraicBlock (geometricCycles d X p)
      (sourceResponseFamily d j u) 0 x ≠ 0 := by
  rw [actual_arithmetic_to_CM_defect d X p j u x]
  exact smul_ne_zero hread halg

/-- Both source-specific leakage channels admit quantitative positive-metric
bounds. They do not cancel by replacing source signed coefficients with
absolute values. -/
theorem actual_CM_to_arithmetic_defect_norm
    (j : ℕ) (u : ℝ) (x : CommonHilbert d) :
    ‖algebraicToResidualLeak (geometricCycles d X p)
        (sourceResponseFamily d j u) 0 x‖ ≤
      ‖complexCoherentReadout d j‖ *
        ‖algebraicProjection (geometricCycles d X p) x‖ *
        ‖residualProjection (geometricCycles d X p)
          (actualSignedPacket d j u)‖ := by
  rw [actual_CM_to_arithmetic_defect, norm_smul]
  exact mul_le_mul_of_nonneg_right
    ((complexCoherentReadout d j).le_opNorm
      (algebraicProjection (geometricCycles d X p) x))
    (norm_nonneg _)

/-- The reverse leakage norm uses the ACTUAL algebraic projection of the
packet, not its total Hilbert norm. -/
theorem actual_arithmetic_to_CM_defect_norm
    (j : ℕ) (u : ℝ) (x : CommonHilbert d) :
    ‖residualToAlgebraicBlock (geometricCycles d X p)
        (sourceResponseFamily d j u) 0 x‖ ≤
      ‖complexCoherentReadout d j‖ *
        ‖residualProjection (geometricCycles d X p) x‖ *
        ‖algebraicProjection (geometricCycles d X p)
          (actualSignedPacket d j u)‖ := by
  rw [actual_arithmetic_to_CM_defect, norm_smul]
  exact mul_le_mul_of_nonneg_right
    ((complexCoherentReadout d j).le_opNorm
      (residualProjection (geometricCycles d X p) x))
    (norm_nonneg _)

/-- The exact CM source supplies genuine geometric classes in P. No theorem
says this source response preserves them. For the named Hodge class, the
reverse defect vanishes ON THAT INPUT but forward leakage may remain. -/
theorem actual_CM_hodge_input_forward_defect
    (j : ℕ) (u : ℝ)
    (hCM : OAI.AlgebraicGeometry.ComplexMultiplication.Definitions.HasComplexMultiplication X)
    (a : OriginalBetti X p) (ha : a ∈ Hdg^p(X; ℚ)) :
    algebraicToResidualLeak (geometricCycles d X p)
        (sourceResponseFamily d j u) 0
          (originalBettiToSelectedHilbert X p (squareProfile d) a) =
      complexCoherentReadout d j
          (originalBettiToSelectedHilbert X p (squareProfile d) a) •
        residualProjection (geometricCycles d X p)
          (actualSignedPacket d j u) := by
  let y := originalBettiToSelectedHilbert X p (squareProfile d) a
  have hyQ : residualProjection (geometricCycles d X p) y = 0 :=
    cm_hodge_selected_residual_zero X p (squareProfile d) hCM a ha
  have hyP : algebraicProjection (geometricCycles d X p) y = y := by
    have h := complete_reconstruction (geometricCycles d X p) y
    rw [hyQ, add_zero] at h
    exact h
  rw [actual_CM_to_arithmetic_defect, hyP]

/-- A NONZERO genuine CM Hodge input can leak into the orthogonal
arithmetic residual if the specifically identified two source factors are
nonzero. This is a conditional witness, not an asserted universal violation
of invariance. -/
theorem actual_CM_hodge_forward_defect_ne_zero_of_sources
    (j : ℕ) (u : ℝ)
    (hCM : OAI.AlgebraicGeometry.ComplexMultiplication.Definitions.HasComplexMultiplication X)
    (a : OriginalBetti X p) (ha : a ∈ Hdg^p(X; ℚ))
    (hread : complexCoherentReadout d j
      (originalBettiToSelectedHilbert X p (squareProfile d) a) ≠ 0)
    (hres : residualProjection (geometricCycles d X p)
      (actualSignedPacket d j u) ≠ 0) :
    algebraicToResidualLeak (geometricCycles d X p)
      (sourceResponseFamily d j u) 0
        (originalBettiToSelectedHilbert X p (squareProfile d) a) ≠ 0 := by
  rw [actual_CM_hodge_input_forward_defect d X p j u hCM a ha]
  exact smul_ne_zero hread hres

/-- A genuine CM Hodge input has no residual-input contribution to PWQ.
This does NOT imply the algebraic-to-residual operator QTP vanishes. -/
theorem actual_CM_hodge_input_reverse_defect_zero
    (j : ℕ) (u : ℝ)
    (hCM : OAI.AlgebraicGeometry.ComplexMultiplication.Definitions.HasComplexMultiplication X)
    (a : OriginalBetti X p) (ha : a ∈ Hdg^p(X; ℚ)) :
    residualToAlgebraicBlock (geometricCycles d X p)
        (sourceResponseFamily d j u) 0
          (originalBettiToSelectedHilbert X p (squareProfile d) a) = 0 := by
  rw [actual_arithmetic_to_CM_defect]
  have hQ := cm_hodge_selected_residual_zero
    X p (squareProfile d) hCM a ha
  simp [hQ]

end CM
end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualSignedResponseOperator
