/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQGaugedResidueAnchor
import Mathlib.Tactic

/-!
# Discharge the signed source-readout premise of the integer-to-rational
Kähler and U(1) residue anchor, without a new arithmetic estimate.

The original real classWave is cast into the full complex sector packet.
Its coherent real detector returns the original completeWave BEFORE
squaring. The compensated gauge detector then returns the identical source
and time-integrated pickupEnergy with ALL parity and nonunit cross terms.

These are source proof candidates, not new asymptotic arithmetic bounds.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugeFullReturn

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.RiemannHypothesis.CCC

/-- The complete original source, not a classwise unsigned surrogate. -/
theorem rawDetector_original (j d : ℕ) [NeZero d] (t : ℝ) :
    (rawDetector d (originalSectorPacket j d t)).re =
      completeWave j d t := by
  change (∑ r : Fin 2, ∑ a : ZMod (d * d),
    (classWave j d r.val a t : ℂ)).re = completeWave j d t
  simp_rw [← Complex.ofReal_sum]
  simp only [Complex.ofReal_re]
  change (∑ r : Fin 2, ∑ a : ZMod (d * d),
    classWave j d r.val a t : ℝ) = completeWave j d t
  simp [completeWave, Fin.sum_univ_two, Finset.sum_range_succ]

/-- The contragredient detector restores every original parity and additive
class, including nonunits, before calculating any positive energy. -/
theorem compensated_original (j d : ℕ) [NeZero d]
    (g : Gauge d) (t : ℝ) :
    (detector d g (gaugePacket d g (originalSectorPacket j d t))).re =
      completeWave j d t := by
  rw [detector_gauge]
  exact rawDetector_original j d t

/-- All four parity-pair interactions survive in the original scalar square. -/
theorem compensated_four_sector (j d : ℕ) [NeZero d]
    (g : Gauge d) (t : ℝ) :
    (detector d g (gaugePacket d g (originalSectorPacket j d t))).re ^ 2 =
      fourSectorSquare j d t := by
  rw [compensated_original]
  exact completeWave_sq_eq_fourSectorSquare j d t

/-- This is the original signed real pickupEnergy, NOT the sum of positive
Hilbert norms of independently gauged classes. -/
theorem compensated_original_energy (j d : ℕ) [NeZero d] (g : Gauge d) :
    pickupEnergy (dyadicTime j) =
      ∫ t in (0 : ℝ)..dyadicTime j,
        ((detector d g (gaugePacket d g
          (originalSectorPacket j d t))).re) ^ 2 := by
  exact originalGaugeEnergy d j g (rawDetector_original j d)

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugeFullReturn
