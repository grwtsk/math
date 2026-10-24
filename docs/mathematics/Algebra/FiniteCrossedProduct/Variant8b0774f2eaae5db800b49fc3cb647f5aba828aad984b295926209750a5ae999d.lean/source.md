# Complete source: GRWTSK.Algebra.FiniteCrossedProduct.Variant8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f55b98726f2d1c8e6ac5e3c58d30e159253fc858` · SHA-256 `8b0774f2eaae5db800b49fc3cb647f5aba828aad984b295926209750a5ae999d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
