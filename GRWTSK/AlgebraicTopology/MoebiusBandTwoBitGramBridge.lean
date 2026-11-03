/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.AlgebraicTopology.MoebiusBandParitySignedWaveGauge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusBitGramReturn
import Mathlib.Tactic

/-!
# A parity sign AND a presence bit preserve the complete Mobius source

The topological orientation gauge has only two values, while the
arithmetic Mobius coefficient has three. The genuine two-bit observer
codec retains both zero/nonzero presence and negative sign. This file
connects its sign bit to the parity gauge, and links the latter's
compensated original pickupEnergy to the EXACT source diagonal and the
encoded-stream full ordered Gram. It is not a new cancellation bound.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandTwoBitGramBridge

open GRWTSK.Topology.AlgebraicTopology.MoebiusBandParitySignedWaveGauge
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- The negative bit becomes a mod-two orientation parity. -/
def negativeParity (b : SignedBits) : ZMod 2 :=
  if b.negative then 1 else 0

/-- Keep the separate presence bit to distinguish genuine zero
coefficients from nonzero coefficients with positive sign. -/
def decodePresenceParity (b : SignedBits) : ℤ :=
  if b.nonzero then (if negativeParity b = 0 then 1 else -1) else 0

theorem decodePresenceParity_eq_decodeSigned (b : SignedBits) :
    decodePresenceParity b = decodeSigned b := by
  cases b with
  | mk nonzero negative =>
    cases nonzero <;> cases negative <;>
      simp [decodePresenceParity, negativeParity, decodeSigned]

/-- The exact original integer Mobius coefficient, not a new encoding
chosen from the geometric orientation or from a lossy residue. -/
theorem decodePresenceParity_moebius (n : ℕ) :
    decodePresenceParity (moebiusBits n) =
      (ArithmeticFunction.moebius n : ℤ) := by
  rw [decodePresenceParity_eq_decodeSigned, decode_moebiusBits]

/-- A one-bit orientation parity does not distinguish 0 from +1. -/
theorem zero_and_positive_share_orientation_parity :
    negativeParity ⟨false, false⟩ = negativeParity ⟨true, false⟩ ∧
      decodeSigned ⟨false, false⟩ ≠ decodeSigned ⟨true, false⟩ := by
  simp [negativeParity, decodeSigned]

/-- Two exact representations of the same source: compensated parity
gauge energy = original diagonal + the complete two-bit physical Gram.
The right side retains all ordered cross terms and original zeros. -/
theorem parity_observer_energy_eq_physical_original_gram
    (j d : ℕ) [NeZero d] (frame : ℕ → ZMod 2)
    (p : Parameters) (chart : ℝ) :
    (∫ t in (0 : ℝ)..dyadicTime j,
      ((detector d (orientationSectorGauge d frame)
        (gaugePacket d (orientationSectorGauge d frame)
          (originalSectorPacket j d t))).re) ^ 2) =
    pickupDiagonal (dyadicTime j) +
      observedPacket p chart (dyadicTime j) (encodedStream p) := by
  calc
    _ = pickupEnergy (dyadicTime j) :=
      (original_signed_energy_under_parity_gauge j d frame).symm
    _ = pickupDiagonal (dyadicTime j) + pickupCross (dyadicTime j) :=
      pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative j)
    _ = pickupDiagonal (dyadicTime j) +
      observedPacket p chart (dyadicTime j) (encodedStream p) := by
        rw [observedPacket_encoded_eq_pickupCross]

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandTwoBitGramBridge
