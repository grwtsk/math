/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.AlgebraicTopology.MoebiusBandHolonomyClassification
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQGaugeFullReturn
import Mathlib.Tactic

/-!
# A finite orientation-parity gauge on the unchanged signed pickup source

A real orientation parity is promoted to the complex unit phases 1 and -1
of the *existing* residue-sector Gauge in CMKaehlerZQGaugedResidueAnchor.
The contragredient detector then recovers every original signed Mobius
index and all mixed residue-pair sectors, before forming the square.

This is an explicit connection between topological Z/2 gauge data and
the repository's ORIGINAL source-faithful arithmetic detector. It is
NOT a proof of cancellation, a new Kakeya bound, the Frolkina wild
embedding theorem, or the dyadic all-positive-rate RH premise.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandParitySignedWaveGauge

open GRWTSK.Topology.AlgebraicTopology.MoebiusBandGaugePacking
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugeFullReturn
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.RiemannHypothesis.CCC

/-- Map mod-two orientation choices into a complex norm-one phase.
This does NOT identify the topological Möbius band with a complex torus. -/
def parityPhase (p : ZMod 2) : ℂ :=
  if p = 0 then 1 else -1

theorem parityPhase_norm_one (p : ZMod 2) : ‖parityPhase p‖ = 1 := by
  by_cases hp : p = 0
  · simp [parityPhase, hp]
  · simp [parityPhase, hp]

/-- A source-frame parity attached to each of the original two parity
sectors gives a genuine, unit-complex Gauge for every additive residue
class. Zero coefficients, nonunits and original indices are not deleted. -/
def orientationSectorGauge (d : ℕ) (frame : ℕ → ZMod 2) : Gauge d where
  phase := fun i => parityPhase (frame i.1.val)
  phase_unit := by
    intro i
    exact parityPhase_norm_one (frame i.1.val)

/-- Exact source-wave recovery BEFORE squaring, for an arbitrary frame.
This invokes the existing original-source theorem rather than a proxy. -/
theorem original_signed_wave_under_parity_gauge
    (j d : ℕ) [NeZero d] (frame : ℕ → ZMod 2) (t : ℝ) :
    (detector d (orientationSectorGauge d frame)
      (gaugePacket d (orientationSectorGauge d frame)
        (originalSectorPacket j d t))).re =
      completeWave j d t :=
  compensated_original j d (orientationSectorGauge d frame) t

/-- The recovered square and integral are the exact original signed
pickupEnergy, with all four parity-pair interactions still present. -/
theorem original_signed_energy_under_parity_gauge
    (j d : ℕ) [NeZero d] (frame : ℕ → ZMod 2) :
    pickupEnergy (dyadicTime j) =
      ∫ t in (0 : ℝ)..dyadicTime j,
        ((detector d (orientationSectorGauge d frame)
          (gaugePacket d (orientationSectorGauge d frame)
            (originalSectorPacket j d t))).re) ^ 2 :=
  compensated_original_energy j d (orientationSectorGauge d frame)

/-- Both source invariants are preserved simultaneously. The left side
is the original topological loop orientation; the right is the original
arithmetic energy. No asymptotic improvement is inferred from either. -/
theorem closed_parity_gauge_preserves_topology_and_signed_energy
    (w frame : ℕ → ZMod 2) (n j d : ℕ) [NeZero d]
    (hclosed : frame n = frame 0) :
    parityHolonomy (transportEdge w frame) n = parityHolonomy w n ∧
    pickupEnergy (dyadicTime j) =
      ∫ t in (0 : ℝ)..dyadicTime j,
        ((detector d (orientationSectorGauge d frame)
          (gaugePacket d (orientationSectorGauge d frame)
            (originalSectorPacket j d t))).re) ^ 2 :=
  ⟨closed_holonomy_invariant w frame n hclosed,
    original_signed_energy_under_parity_gauge j d frame⟩

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandParitySignedWaveGauge
