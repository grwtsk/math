# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TransportGain.Variant2e9ef48da17da6a20722619787a7ca357064d1dcee1c24d1596eeba129a862c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3902cdc5f440360cde1a6b41726ffa56f44e04f8` · SHA-256 `2e9ef48da17da6a20722619787a7ca357064d1dcee1c24d1596eeba129a862c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.PathCompensation
import Mathlib.Tactic.Ring

/-!
# Pathwise transport gain

Packet norms propagate through the actual transport norms.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

noncomputable def pathTransportGain
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    {source target : graph.Node} :
    DeflectionPath graph source target → ℝ
  | .nil _ => 1
  | .cons arc rest =>
      ‖system.transport arc‖ ^ 2 *
        pathTransportGain system rest

theorem pathTransportGain_nonnegative
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target) :
    0 ≤ pathTransportGain system path := by
  induction path with
  | nil =>
      exact zero_le_one
  | cons arc rest induction =>
      exact mul_nonneg (sq_nonneg _) induction

theorem packetNorm_path_transport
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    system.packet.packetNormSq target test ≤
      pathTransportGain system path *
        system.packet.packetNormSq source test := by
  induction path with
  | nil =>
      simp [pathTransportGain]
  | cons arc rest induction =>
      rcases safe with ⟨arcSafe, restSafe⟩
      have localTransport :=
        system.packetNormTransport
          arc test arcSafe
      have downstream :=
        induction restSafe
      calc
        system.packet.packetNormSq _ test ≤
            pathTransportGain system rest *
              system.packet.packetNormSq
                arc.head test :=
          downstream
        _ ≤
            pathTransportGain system rest *
              (‖system.transport arc‖ ^ 2 *
                system.packet.packetNormSq
                  arc.tail test) :=
          mul_le_mul_of_nonneg_left
            localTransport
            (pathTransportGain_nonnegative
              system rest)
        _ =
            pathTransportGain system
                (.cons arc rest) *
              system.packet.packetNormSq
                arc.tail test := by
          simp [pathTransportGain]
          ring

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```
