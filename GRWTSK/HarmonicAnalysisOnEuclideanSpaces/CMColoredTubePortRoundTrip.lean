/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMColoredHarmonicTubePorts
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped MatrixGroups BigOperators

/-!
# A concrete, typed, provenance-preserving colored lift/lower port cycle

The exact source is the pair (finite signed frame, modular chart), not the
frame alone: dropping the chart would prevent recovery of the full tube.
The two real PortFiber morphisms lift and lower that pair, with a shared
recorded source revision, an exact harmonic color boundary and the same
signed coefficient-sum observation. This is an instantiated certified
composition, not merely an abstract similarity edge between file names.
-/ 

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMColoredTubePortRoundTrip

open GRWTSK.Topology.PortFiber.Colored
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMColoredHarmonicTubePorts

/-- False is the complete source frame with chart; true is its tube form. -/
def frameTubeSystem (N : ℕ) : GRWTSK.Topology.PortFiber :=
  GRWTSK.Topology.PortFiber.ofFunctions Bool
    (fun b => if b then Tube N else SourceFrame N × SL(2, ℤ))

def sourceObservation (N : ℕ) :
    (frameTubeSystem N).Fiber false → ℝ :=
  fun pair => ∑ i : Fin N, pair.1.signedAmplitude i

def tubeObservation (N : ℕ) :
    (frameTubeSystem N).Fiber true → ℝ :=
  fun T => ∑ i : Fin N, T.frame.signedAmplitude i

/-- This exact bound map retains BOTH the signed frame and the group element. -/
def liftBound (N : ℕ) (source : GRWTSK.Topology.PortFiber.SourceIdentity) :
    GRWTSK.Topology.PortFiber.SourceBoundPort (frameTubeSystem N)
      (A := false) (B := true) where
  port := fun pair => lift pair.1 pair.2
  source := source
  invalidationKey := "colored-harmonic-lift-lower-v1"

/-- The reverse map returns the full frame and original modular chart. -/
def lowerBound (N : ℕ) (source : GRWTSK.Topology.PortFiber.SourceIdentity) :
    GRWTSK.Topology.PortFiber.SourceBoundPort (frameTubeSystem N)
      (A := true) (B := false) where
  port := fun T => (lower T, T.modularTransform)
  source := source
  invalidationKey := "colored-harmonic-lift-lower-v1"

/-- Arithmetic-to-harmonic transition with one exact provenance-bearing template. -/
def liftColorPort (N : ℕ)
    (source : GRWTSK.Topology.PortFiber.SourceIdentity)
    (t : SymbolTemplate)
    (ht : t.origin.repository = source.repository ∧
      t.origin.revision = source.revision) :
    Port (frameTubeSystem N) (A := false) (B := true) :=
  Port.atomic (liftBound N source)
    .arithmetic .harmonic t ht
    (sourceObservation N) (tubeObservation N) (by
      intro pair
      rfl)

/-- The reverse boundary returns explicitly to the arithmetic channel. -/
def lowerColorPort (N : ℕ)
    (source : GRWTSK.Topology.PortFiber.SourceIdentity)
    (t : SymbolTemplate)
    (ht : t.origin.repository = source.repository ∧
      t.origin.revision = source.revision) :
    Port (frameTubeSystem N) (A := true) (B := false) :=
  Port.atomic (lowerBound N source)
    .harmonic .arithmetic t ht
    (tubeObservation N) (sourceObservation N) (by
      intro T
      rfl)

/-- A source-exact, color-matched, signed-observation-matched port cycle.
No hypothesis of arithmetic cancellation is needed to define this cycle. -/
def fullCycle (N : ℕ)
    (source : GRWTSK.Topology.PortFiber.SourceIdentity)
    (t : SymbolTemplate)
    (ht : t.origin.repository = source.repository ∧
      t.origin.revision = source.revision) :
    Port (frameTubeSystem N) (A := false) (B := false) :=
  Port.comp (liftColorPort N source t ht) (lowerColorPort N source t ht)
    (by exact ⟨rfl, rfl⟩) rfl rfl

/-- The concrete colored chain returns the complete original pair, not just
a statistic of it, so every signed coefficient and source label survives. -/
theorem fullCycle_is_identity (N : ℕ)
    (source : GRWTSK.Topology.PortFiber.SourceIdentity)
    (t : SymbolTemplate)
    (ht : t.origin.repository = source.repository ∧
      t.origin.revision = source.revision)
    (pair : (frameTubeSystem N).Fiber false) :
    (frameTubeSystem N).map (fullCycle N source t ht).bound.port pair =
      pair := by
  cases pair
  rfl

/-- The source-signed observation is preserved by the actual composite. -/
theorem fullCycle_preserves_signed_sum (N : ℕ)
    (source : GRWTSK.Topology.PortFiber.SourceIdentity)
    (t : SymbolTemplate)
    (ht : t.origin.repository = source.repository ∧
      t.origin.revision = source.revision)
    (pair : (frameTubeSystem N).Fiber false) :
    sourceObservation N
      ((frameTubeSystem N).map (fullCycle N source t ht).bound.port pair) =
        sourceObservation N pair :=
  (fullCycle N source t ht).preservesObservation pair

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMColoredTubePortRoundTrip
