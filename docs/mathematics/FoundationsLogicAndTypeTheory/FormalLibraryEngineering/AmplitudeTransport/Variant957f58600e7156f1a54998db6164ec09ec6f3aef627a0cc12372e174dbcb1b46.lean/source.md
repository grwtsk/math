# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AmplitudeTransport.Variant957f58600e7156f1a54998db6164ec09ec6f3aef627a0cc12372e174dbcb1b46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `450d11d8a9ed6574ffdd7c0b702069773285e3f2` · SHA-256 `957f58600e7156f1a54998db6164ec09ec6f3aef627a0cc12372e174dbcb1b46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
