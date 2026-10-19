import Mathematics.StratifiedBoundary.Boundary.FiniteCut
import Mathematics.StratifiedBoundary.Trace.StableInvariantTrace

/-!
# Stable trace from a finite matrix-fiber crossed product

All laws are imported from the finite Connes--bitfield realization carried by
the cut.  The ordinal index contributes no trace law.
-/

namespace Mathematics.StratifiedBoundary.Trace

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

noncomputable def finiteCrossedProductStableTrace
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :
    StableInvariantTrace cut.Algebra where
  unit :=
    matrixFiberCrossedProductUnit
      cut.Automorphism
      cut.closure.spectral.dim
  multiply :=
    matrixFiberCrossedProductMultiply
      cut.closure.matrixFiberCrossedProduct.fiberAction
  star :=
    matrixFiberCrossedProductStar
      cut.closure.matrixFiberCrossedProduct.fiberAction
  trace :=
    canonicalMatrixFiberCrossedProductTrace
  normalized :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTraceNormalized
  cyclic :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTraceCyclic
  starPreserving :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTraceStar
  positiveReal :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTracePositiveReal
  positiveImaginaryZero :=
    cut.closure.matrixFiberCrossedProduct.laws
      .canonicalTracePositiveImaginaryZero

theorem finite_stable_trace_is_canonical
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (observable : cut.Algebra) :
    (finiteCrossedProductStableTrace cut).trace
        observable =
      cut.stableTrace observable :=
  rfl

end Mathematics.StratifiedBoundary.Trace
