# Complete source: GRWTSK.Analysis.FunctionalAnalysis.WeightedPathBudget.Variant98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9899b8af7b1702fa707b9b484f6b6739a934225` · SHA-256 `98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.TransportGain
import Mathlib.Tactic.Ring

/-!
# Weighted path compensation budget

Every local compensation budget is amplified by all preceding transport
gains, matching Hilbert--Schmidt packet propagation.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

noncomputable def weightedCompensationBudget
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      PolarTraceSystem cut Hilbert Test}
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node} :
    DeflectionPath graph source target → ℝ
  | .nil _ => 0
  | .cons arc rest =>
      certificate.budget arc +
        ‖system.transport arc‖ ^ 2 *
          weightedCompensationBudget
            certificate rest

theorem weightedCompensationBudget_nonnegative
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      PolarTraceSystem cut Hilbert Test}
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target) :
    0 ≤ weightedCompensationBudget
      certificate path := by
  induction path with
  | nil =>
      exact le_rfl
  | cons arc rest induction =>
      exact add_nonneg
        (certificate.budget_nonnegative arc)
        (mul_nonneg (sq_nonneg _) induction)

theorem pathCompensationBudget_le_weighted
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    pathCompensationBudget
        certificate path test ≤
      weightedCompensationBudget
          certificate path *
        system.packet.packetNormSq source test := by
  induction path with
  | nil =>
      simp [pathCompensationBudget,
        weightedCompensationBudget]
  | cons arc rest induction =>
      rcases safe with ⟨arcSafe, restSafe⟩
      have downstream :=
        induction restSafe
      have localNorm :=
        system.packetNormTransport
          arc test arcSafe
      have weightedNonnegative :=
        weightedCompensationBudget_nonnegative
          certificate rest
      calc
        pathCompensationBudget certificate
            (.cons arc rest) test =
          certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test +
            pathCompensationBudget
              certificate rest test := by
          rfl
        _ ≤
          certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test +
            weightedCompensationBudget
                certificate rest *
              system.packet.packetNormSq
                arc.head test :=
          add_le_add le_rfl downstream
        _ ≤
          certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test +
            weightedCompensationBudget
                certificate rest *
              (‖system.transport arc‖ ^ 2 *
                system.packet.packetNormSq
                  arc.tail test) :=
          add_le_add le_rfl
            (mul_le_mul_of_nonneg_left
              localNorm weightedNonnegative)
        _ =
          weightedCompensationBudget
              certificate (.cons arc rest) *
            system.packet.packetNormSq
              arc.tail test := by
          simp [weightedCompensationBudget]
          ring

theorem pathEnergy_weighted_compensation_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    abs
        (system.packetEnergy target test -
          system.packetEnergy source test) ≤
      weightedCompensationBudget
          certificate path *
        system.packet.packetNormSq source test :=
  le_trans
    (pathEnergy_compensation_bound
      system certificate path test safe)
    (pathCompensationBudget_le_weighted
      system certificate path test safe)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```
