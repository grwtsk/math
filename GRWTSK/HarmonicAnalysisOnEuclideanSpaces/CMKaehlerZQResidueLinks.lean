/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQGaugedResidueAnchor
import Mathlib.Tactic

/-!
# All-sector U(1) link connection on the retained integer-labelled source

Every sector (parity, ZMod(d*d)) is present, including nonunits.
This is a genuine discrete gauge connection with all ordered links,
not only a change of source coordinates. It is an algebraic construction,
not yet a connection derived from an actual CM ample line bundle or
physical gauge action. The original signed source detector must still
transform contragrediently as shown in the imported anchor.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor

variable (d : ℕ)

/-- Every ordered pair of residue channels has a unit-norm link. -/
structure Links where
  transport : Sector d → Sector d → ℂ
  norm_one : ∀ i j : Sector d, ‖transport i j‖ = 1

def gaugeLinks (g : Gauge d) (U : Links d) : Links d where
  transport i j := g.phase i * U.transport i j * (g.phase j)⁻¹
  norm_one i j := by
    simp [norm_mul, g.phase_unit, U.norm_one]

/-- Finite lattice gauge-covariant difference. -/
def covariantDifference (U : Links d) (x : SectorPacket d)
    (i j : Sector d) : ℂ :=
  x i - U.transport i j * x j

/-- Source-gauge covariance including the correct inverse endpoint phase. -/
theorem covariantDifference_gauge (g : Gauge d) (U : Links d)
    (x : SectorPacket d) (i j : Sector d) :
    covariantDifference d (gaugeLinks d g U) (gaugePacket d g x) i j =
      g.phase i * covariantDifference d U x i j := by
  have hj := Gauge.nonzero d g j
  simp only [covariantDifference, gaugeLinks, gaugePacket]
  field_simp [hj]
  ring

theorem covariantDifference_norm_gauge (g : Gauge d) (U : Links d)
    (x : SectorPacket d) (i j : Sector d) :
    ‖covariantDifference d (gaugeLinks d g U) (gaugePacket d g x) i j‖ =
      ‖covariantDifference d U x i j‖ := by
  rw [covariantDifference_gauge, norm_mul, g.phase_unit, one_mul]

/-- The ordered phase around a true closed triangle of residue links. -/
def triangleHolonomy (U : Links d) (i j k : Sector d) : ℂ :=
  U.transport i j * U.transport j k * U.transport k i

/-- Holonomy remains invariant when endpoint gauges cancel around the loop. -/
theorem triangleHolonomy_gauge (g : Gauge d) (U : Links d)
    (i j k : Sector d) :
    triangleHolonomy d (gaugeLinks d g U) i j k =
      triangleHolonomy d U i j k := by
  have hi := Gauge.nonzero d g i
  have hj := Gauge.nonzero d g j
  have hk := Gauge.nonzero d g k
  unfold triangleHolonomy gaugeLinks
  field_simp [hi, hj, hk]
  ring

def flatLinks : Links d where
  transport _ _ := 1
  norm_one _ _ := by simp

@[simp] theorem triangleHolonomy_flat (i j k : Sector d) :
    triangleHolonomy d (flatLinks d) i j k = 1 := by
  simp [triangleHolonomy, flatLinks]

/-- The gauge links do not change the original integer-labelled packet or
permit dropping signed parity and residual cross terms. -/
theorem originalSourceGaugeDetector (j : ℕ) [NeZero d]
    (g : Gauge d) (t : ℝ) :
    detector d g (gaugePacket d g (originalSectorPacket j d t)) =
      rawDetector d (originalSectorPacket j d t) :=
  detector_gauge d g _

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks
