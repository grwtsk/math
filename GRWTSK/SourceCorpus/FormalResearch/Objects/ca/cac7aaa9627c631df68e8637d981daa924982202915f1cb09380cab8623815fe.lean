import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.CompensationDefect

/-!
# Local trace-compensation bounds
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

structure TraceCompensationBudget
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test) where
  budget : Arc graph → ℝ
  budget_nonnegative :
    ∀ arc,
      0 ≤ budget arc
  defect_norm_le :
    ∀ arc,
      cut.safeArc arc = true →
        ‖system.compensationDefect arc‖ ≤
          budget arc

structure PositiveTraceCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test) where
  positive :
    ∀ arc,
      cut.safeArc arc = true →
        (system.compensationDefect arc).IsPositive

theorem packetEnergy_compensation_bound
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
    (arc : Arc graph)
    (test : Test)
    (safe : cut.safeArc arc = true) :
    abs
        (system.packetEnergy arc.head test -
          system.packetEnergy arc.tail test) ≤
      certificate.budget arc *
        system.packet.packetNormSq
          arc.tail test := by
  rw [packetEnergy_difference_eq_compensationDefect
    system arc test safe]
  exact le_trans
    (system.packet.abs_energy_le
      arc.tail
      (system.compensationDefect arc)
      test)
    (mul_le_mul_of_nonneg_right
      (certificate.defect_norm_le arc safe)
      (system.packet.packetNormSq_nonnegative
        arc.tail test))

theorem packetEnergy_monotone_of_positiveCompensation
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
      PositiveTraceCompensation system)
    (arc : Arc graph)
    (test : Test)
    (safe : cut.safeArc arc = true) :
    system.packetEnergy arc.tail test ≤
      system.packetEnergy arc.head test := by
  apply sub_nonneg.mp
  rw [packetEnergy_difference_eq_compensationDefect
    system arc test safe]
  exact system.packet.energy_nonnegative
    arc.tail
    (system.compensationDefect arc)
    test
    (certificate.positive arc safe)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
