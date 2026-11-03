/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMActualSignedResponseOperator
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleSourceCausalShear
import Mathlib.Tactic

/-!
# The actual signed Möbius finite-response two-time Hilbert cocycle

The preexisting `CMActualSignedResponseOperator.sourceResponse d j t` is a
GIVEN, source-identified, bounded operator:
  B_t(x) = L_j(x) • S_{j,t},
where S_{j,t} is the ORIGINAL real signed Möbius packet in the same Hilbert
carrier as actual CM cycle-class images. The scalar L_j is finite and bounded.

Lift it to `WithLp 2 (H × H)` by retaining both latent and observed data.
The two-time operator is bounded, globally defined on that entire augmented
HILBERT SPACE, invertible and obeys the exact cocycle law even if an observed
packet vanishes at an earlier time. It does NOT assert that B_t is itself
an arithmetic semigroup or that a zero packet in H can evolve linearly into a
nonzero one without a retained latent source.

For the actual CM cycle carrier, both P ΔB Q and Q ΔB P remain explicit.
No arithmetic cancellation, physical Hamiltonian, or RH claim is inferred.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualSignedCausalEvolution

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleResidueHilbertAttachment
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualSignedResponseOperator
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.SourceCausalShear

variable (d : ℕ) [NeZero d]

/-- Unchanged original finite-inventory detector and signed source packet,
now typed as a time-dependent bounded operator. -/
def actualResponseFamily (j : ℕ) : ObservationFamily (CommonHilbert d) :=
  fun u => sourceResponse d j u

/-- The true positive complete-Hilbert *source plus observation* state. -/
abbrev ActualCausalState := SourceState (CommonHilbert d)

/-- Bounded, nonautonomous source-derived evolution on the AUGMENTED space. -/
def actualTwoTime (j : ℕ) (s t : ℝ) :
    ActualCausalState d →L[ℂ] ActualCausalState d :=
  causalStep (actualResponseFamily d j) s t

/-- Exact time identity and composition: not a guessed arithmetic semigroup. -/
theorem actualTwoTime_self (j : ℕ) (s : ℝ) :
    actualTwoTime d j s s = ContinuousLinearMap.id ℂ (ActualCausalState d) :=
  causalStep_self (actualResponseFamily d j) s

theorem actualTwoTime_comp (j : ℕ) (s t u : ℝ) :
    (actualTwoTime d j t u).comp (actualTwoTime d j s t) =
      actualTwoTime d j s u :=
  causalStep_comp (actualResponseFamily d j) s t u

/-- Reverse time exists on the enlarged Hilbert state, even when an
original response has a causal zero before its birth. -/
theorem actualTwoTime_inverse (j : ℕ) (s t : ℝ) :
    (actualTwoTime d j t s).comp (actualTwoTime d j s t) =
      ContinuousLinearMap.id ℂ (ActualCausalState d) :=
  causalStep_left_inverse (actualResponseFamily d j) s t

/-- The arbitrary latent source `c` remains present, while its observed
channel follows the literal source-built bounded response. -/
def actualGraph (j : ℕ) (u : ℝ) (c : CommonHilbert d) :
    ActualCausalState d :=
  sourceGraph (actualResponseFamily d j) u c

theorem actualGraph_transport (j : ℕ) (s t : ℝ) (c : CommonHilbert d) :
    actualTwoTime d j s t (actualGraph d j s c) = actualGraph d j t c :=
  causalStep_graph (actualResponseFamily d j) s t c

/-- Source response is EXACTLY the prior signed rank-one response,
including all parities and additive residue channels. -/
theorem actualGraph_observed (j : ℕ) (u : ℝ) (c : CommonHilbert d) :
    (actualGraph d j u c).snd =
      complexCoherentReadout d j c • actualSignedPacket d j u := by
  change sourceResponse d j u c = _
  exact sourceResponse_apply d j u c

/-- This nonzero-amplitude conditional is not needed for the cocycle or its
inverse; it is only needed to recover an unscaled packet from this latent. -/
theorem actualGraph_packet_of_unit_coherent (j : ℕ) (u : ℝ)
    (c : CommonHilbert d) (hc : complexCoherentReadout d j c = 1) :
    (actualGraph d j u c).snd = actualSignedPacket d j u := by
  rw [actualGraph_observed, hc, one_smul]

/-- Exact observed increment: the same scalar source detector multiplies
the difference of two ORIGINAL signed packets, with no absolute values. -/
theorem actualResponse_increment (j : ℕ) (s t : ℝ) (c : CommonHilbert d) :
    (actualResponseFamily d j t - actualResponseFamily d j s) c =
      complexCoherentReadout d j c •
        (actualSignedPacket d j t - actualSignedPacket d j s) := by
  change sourceResponse d j t c - sourceResponse d j s c = _
  rw [sourceResponse_apply, sourceResponse_apply, smul_sub]

/-- The increment is bounded on the full common Hilbert space. -/
theorem actualResponse_increment_bound (j : ℕ) (s t : ℝ)
    (c : CommonHilbert d) :
    ‖(actualResponseFamily d j t - actualResponseFamily d j s) c‖ ≤
      ‖actualResponseFamily d j t - actualResponseFamily d j s‖ * ‖c‖ :=
  (actualResponseFamily d j t - actualResponseFamily d j s).le_opNorm c

/-- The two-time operator is bounded on the full complete augmented state. -/
theorem actualTwoTime_bound (j : ℕ) (s t : ℝ)
    (z : ActualCausalState d) :
    ‖actualTwoTime d j s t z‖ ≤ ‖actualTwoTime d j s t‖ * ‖z‖ :=
  (actualTwoTime d j s t).le_opNorm z

section CM

variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
variable (p : ℕ) [FiniteDimensional ℚ (OriginalBetti X p)]

/-- A genuine geometric CM cycle-class image determines the actual
algebraic projection; it does not define a new arbitrary projector. -/
abbrev P : CommonHilbert d →L[ℂ] CommonHilbert d :=
  algebraicProjection (geometricCycles d X p)

abbrev Q : CommonHilbert d →L[ℂ] CommonHilbert d :=
  residualProjection (geometricCycles d X p)

/-- Exact CM-to-arithmetic leakage of the ACTUAL causal evolution increment. -/
theorem actual_CM_increment_leak (j : ℕ) (s t : ℝ) (c : CommonHilbert d) :
    Q d X p ((actualResponseFamily d j t - actualResponseFamily d j s)
       (P d X p c)) =
      complexCoherentReadout d j (P d X p c) •
        Q d X p (actualSignedPacket d j t - actualSignedPacket d j s) := by
  rw [actualResponse_increment, map_smul]

/-- Independent reverse leakage; a geometric cycle does not make it zero. -/
theorem actual_arithmetic_increment_leak (j : ℕ) (s t : ℝ) (c : CommonHilbert d) :
    P d X p ((actualResponseFamily d j t - actualResponseFamily d j s)
       (Q d X p c)) =
      complexCoherentReadout d j (Q d X p c) •
        P d X p (actualSignedPacket d j t - actualSignedPacket d j s) := by
  rw [actualResponse_increment, map_smul]

/-- Orthogonal projection energy remains positive; this is a Hilbert norm,
NOT the original signed scalar pickup energy and never deletes cross terms. -/
theorem actual_increment_output_energy (j : ℕ) (s t : ℝ)
    (c : CommonHilbert d) :
    ‖(actualResponseFamily d j t - actualResponseFamily d j s) c‖ ^ 2 =
      ‖P d X p ((actualResponseFamily d j t - actualResponseFamily d j s) c)‖ ^ 2 +
      ‖Q d X p ((actualResponseFamily d j t - actualResponseFamily d j s) c)‖ ^ 2 :=
  complete_energy_split (geometricCycles d X p) _

/-- The signed source readout remains the SAME one used by the old
`originalPickupEnergy_selectedCM_mixedIntegral`; no new energy functional
or putative CM-to-Möbius equivalence is asserted here. -/
theorem original_signed_source_still_exact (j : ℕ) :
    GRWTSK.RiemannHypothesis.CCC.pickupEnergy
       (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j) =
      ∫ u in (0 : ℝ)..GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicTime j,
        (finiteCoherentReadout d j (actualSignedPacket d j u)) ^ 2 :=
  originalPickupEnergy_eq_selectedPacketIntegral d j

end CM
end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualSignedCausalEvolution
