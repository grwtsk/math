import Mathematics.SemiLocalDefect.ResidueDeflection.Graph

/-!
# Positive amplitude transport
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

structure PositiveAmplitudeTransport
    (graph : GraphCut) where
  weight : Arc graph → ℝ
  positive :
    ∀ arc,
      0 < weight arc
  reverse :
    ∀ arc,
      weight arc.reverse =
        (weight arc)⁻¹

def DeflectionPath.amplitudeWeight
    {graph : GraphCut}
    (transport :
      PositiveAmplitudeTransport graph)
    {source target : graph.Node} :
    DeflectionPath graph source target → ℝ
  | .nil _ => 1
  | .cons arc rest =>
      rest.amplitudeWeight transport *
        transport.weight arc

theorem DeflectionPath.amplitudeWeight_positive
    {graph : GraphCut}
    (transport :
      PositiveAmplitudeTransport graph)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target) :
    0 < path.amplitudeWeight transport := by
  induction path with
  | nil =>
      exact zero_lt_one
  | cons arc rest induction =>
      exact mul_pos induction
        (transport.positive arc)

structure PositiveAmplitude where
  value : ℝ
  positive : 0 < value

def PositiveAmplitude.transport
    {graph : GraphCut}
    {source target : graph.Node}
    (amplitude : PositiveAmplitude)
    (transport :
      PositiveAmplitudeTransport graph)
    (path :
      DeflectionPath graph source target) :
    PositiveAmplitude where
  value :=
    path.amplitudeWeight transport *
      amplitude.value
  positive :=
    mul_pos
      (path.amplitudeWeight_positive transport)
      amplitude.positive

end Mathematics.SemiLocalDefect.ResidueDeflection
