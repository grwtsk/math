# Complete source: GRWTSK.Topology.MetricTopology.RobustObservation.Variant2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a222f7b2c0049a262954bb19114e66ad67708c9b` · SHA-256 `2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.MetricSpace.Pseudo.Defs

/-!
# Metric identification and robust semantic observation

Threshold proximity is never used as a quotient relation.  Zero distance is
first quotiented, and semantic equivalence is induced only by a certified
observation.
-/

namespace Mathematics.MobiusOntology

universe u v

def ZeroDistance
    (X : Type u) [PseudoMetricSpace X]
    (left right : X) : Prop :=
  dist left right = 0

theorem zeroDistance_equivalence
    (X : Type u) [PseudoMetricSpace X] :
    Equivalence (ZeroDistance X) := by
  refine ⟨?_, ?_, ?_⟩
  · intro point
    exact dist_self point
  · intro left right equal
    simpa [ZeroDistance, dist_comm] using equal
  · intro left middle right leftMiddle middleRight
    apply le_antisymm
    · calc
        dist left right ≤ dist left middle + dist middle right :=
          dist_triangle left middle right
        _ = 0 := by rw [leftMiddle, middleRight, add_zero]
    · exact dist_nonneg

def zeroDistanceSetoid
    (X : Type u) [PseudoMetricSpace X] :
    Setoid X where
  r := ZeroDistance X
  iseqv := zeroDistance_equivalence X

abbrev MetricIdentification
    (X : Type u) [PseudoMetricSpace X] :=
  Quotient (zeroDistanceSetoid X)

structure RobustObservation
    (X : Type u) (Label : Type v)
    [PseudoMetricSpace X] where
  observe : X → Label
  budget : ℝ≥0
  zeroDistanceInvariant :
    ∀ {left right},
      ZeroDistance X left right →
        observe left = observe right
  robust :
    ∀ {left right},
      nndist left right ≤ budget →
        observe left = observe right

namespace RobustObservation

def observeMetric
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label) :
    MetricIdentification X → Label :=
  Quotient.lift observation.observe
    (fun _ _ equal =>
      observation.zeroDistanceInvariant equal)

def SemanticOntology
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label) :
    Set Label :=
  Set.range observation.observeMetric

end RobustObservation

def ObservationEquivalent
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label)
    (left right : X) : Prop :=
  observation.observe left = observation.observe right

theorem observationEquivalent_equivalence
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label) :
    Equivalence (ObservationEquivalent observation) := by
  refine ⟨?_, ?_, ?_⟩
  · intro point
    rfl
  · intro left right equal
    exact equal.symm
  · intro left middle right leftMiddle middleRight
    exact leftMiddle.trans middleRight

/-- Semantic separation is stronger than robustness and has its own proof. -/
structure ObservationSeparationCertificate
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label) : Prop where
  separated :
    ∀ {left right},
      observation.observe left ≠ observation.observe right →
        2 * observation.budget < nndist left right

end Mathematics.MobiusOntology
```
