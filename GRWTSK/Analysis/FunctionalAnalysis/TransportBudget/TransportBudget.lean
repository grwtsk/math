import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.TransportDifference
import Mathlib.Tactic.Linarith

/-!
# Arithmetic transport budgets
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic

open Mathematics.GraphAccess

universe uHilbert uPacketTest uArithmeticTest

structure ArithmeticTransportBudget
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    (correspondence :
      ArithmeticTraceCorrespondence system)
    (traceBudget :
      Trace.TraceCompensationBudget system) where
  mainBudget :
    ∀ arc : Arc graph,
      correspondence.ArithmeticTest arc.tail →
        ℝ
  regularizationBudget :
    ∀ arc : Arc graph,
      correspondence.ArithmeticTest arc.tail →
        ℝ
  bitfieldBudget :
    ∀ arc : Arc graph,
      correspondence.ArithmeticTest arc.tail →
        ℝ
  correspondenceBudget :
    ∀ arc : Arc graph,
      correspondence.ArithmeticTest arc.tail →
        ℝ
  mainBudget_nonnegative :
    ∀ arc test,
      0 ≤ mainBudget arc test
  regularizationBudget_nonnegative :
    ∀ arc test,
      0 ≤ regularizationBudget arc test
  bitfieldBudget_nonnegative :
    ∀ arc test,
      0 ≤ bitfieldBudget arc test
  correspondenceBudget_nonnegative :
    ∀ arc test,
      0 ≤ correspondenceBudget arc test
  mainDifference_le :
    ∀ arc test,
      abs
          (correspondence.transportDifference
            correspondence.mainTerm arc test) ≤
        mainBudget arc test
  regularizationDifference_le :
    ∀ arc test,
      abs
          (correspondence.transportDifference
            correspondence.regularizationResidual
            arc test) ≤
        regularizationBudget arc test
  bitfieldDifference_le :
    ∀ arc test,
      abs
          (correspondence.transportDifference
            correspondence.bitfieldResidual
            arc test) ≤
        bitfieldBudget arc test
  correspondenceDifference_le :
    ∀ arc test,
      abs
          (correspondence.transportDifference
            correspondence.correspondenceResidual
            arc test) ≤
        correspondenceBudget arc test

theorem abs_add_five
    (first second third fourth fifth : ℝ) :
    abs (first + second + third + fourth + fifth) ≤
      abs first + abs second + abs third +
        abs fourth + abs fifth := by
  have firstTwo :=
    abs_add_le first second
  have firstThree :=
    abs_add_le (first + second) third
  have firstFour :=
    abs_add_le
      (first + second + third) fourth
  have firstFive :=
    abs_add_le
      (first + second + third + fourth)
      fifth
  linarith

theorem arithmeticTrace_transport_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest)
    (correspondence :
      ArithmeticTraceCorrespondence system)
    (traceBudget :
      Trace.TraceCompensationBudget system)
    (budget :
      ArithmeticTransportBudget
        correspondence traceBudget)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    abs
        (correspondence.arithmeticDisplacement
          arc test) ≤
      budget.mainBudget arc test +
        traceBudget.budget arc *
          system.packet.packetNormSq
            arc.tail
            (correspondence.packetCode
              arc.tail test) +
        budget.regularizationBudget arc test +
        budget.bitfieldBudget arc test +
        budget.correspondenceBudget arc test := by
  rw [arithmeticDisplacement_eq
    system correspondence arc test safe]
  apply le_trans (abs_add_five _ _ _ _ _)
  have packetBound :
      abs
          (system.packet.energy arc.tail
            (system.compensationDefect arc)
            (correspondence.packetCode
              arc.tail test)) ≤
        traceBudget.budget arc *
          system.packet.packetNormSq
            arc.tail
            (correspondence.packetCode
              arc.tail test) :=
    le_trans
      (system.packet.abs_energy_le
        arc.tail
        (system.compensationDefect arc)
        (correspondence.packetCode
          arc.tail test))
      (mul_le_mul_of_nonneg_right
        (traceBudget.defect_norm_le arc safe)
        (system.packet.packetNormSq_nonnegative
          arc.tail
          (correspondence.packetCode
            arc.tail test)))
  have mainBound :=
    budget.mainDifference_le arc test
  have regularizationBound :=
    budget.regularizationDifference_le arc test
  have bitfieldBound :=
    budget.bitfieldDifference_le arc test
  have correspondenceBound :=
    budget.correspondenceDifference_le arc test
  linarith

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
