import Mathematics.StratifiedBoundary.Boundary.SuccessorConnector
import Mathematics.StratifiedBoundary.Trace.FiniteCrossedProduct

/-!
# Covariant crossed-product connector

A state projection supplies only coefficient pullback.  A full map between
finite crossed products additionally carries a persistent group lift, a
trace-preserving fiber embedding, covariance, and the induced injective
star-algebra map.
-/

namespace Mathematics.StratifiedBoundary.Trace

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

abbrev CoefficientAlgebra
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  MatrixFiberObservable
    cut.closure.system
    cut.closure.spectral.dim

abbrev FiberAlgebra
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  Matrix
    (Fin cut.closure.spectral.dim)
    (Fin cut.closure.spectral.dim) ℂ

structure CrossedProductConnector
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) where
  coefficientPullback :
    CoefficientAlgebra low →
      CoefficientAlgebra high
  groupLift :
    low.Automorphism →
      high.Automorphism
  groupLiftIdentity :
    groupLift 1 = 1
  groupLiftMultiplication :
    ∀ left right,
      groupLift (left * right) =
        groupLift left * groupLift right
  groupLiftInjective :
    Function.Injective groupLift
  fiberEmbedding :
    FiberAlgebra low →
      FiberAlgebra high
  fiberEmbeddingUnit :
    fiberEmbedding 1 = 1
  fiberEmbeddingMultiplication :
    ∀ left right,
      fiberEmbedding (left * right) =
        fiberEmbedding left *
          fiberEmbedding right
  fiberEmbeddingStar :
    ∀ operator,
      fiberEmbedding operatorᴴ =
        (fiberEmbedding operator)ᴴ
  fiberEmbeddingInjective :
    Function.Injective fiberEmbedding
  fiberTracePreserving :
    ∀ operator,
      normalizedMatrixTrace
          (fiberEmbedding operator) =
        normalizedMatrixTrace operator
  coefficientCovariant : Prop
  covarianceProof :
    coefficientCovariant
  crossedProductMap :
    low.Algebra → high.Algebra
  inducedByCoefficientGroupAndFiber : Prop
  inductionProof :
    inducedByCoefficientGroupAndFiber
  mapUnit :
    crossedProductMap
        (finiteCrossedProductStableTrace low).unit =
      (finiteCrossedProductStableTrace high).unit
  mapMultiply :
    ∀ left right,
      crossedProductMap
          ((finiteCrossedProductStableTrace low).multiply
            left right) =
        (finiteCrossedProductStableTrace high).multiply
          (crossedProductMap left)
          (crossedProductMap right)
  mapStar :
    ∀ observable,
      crossedProductMap
          ((finiteCrossedProductStableTrace low).star
            observable) =
        (finiteCrossedProductStableTrace high).star
          (crossedProductMap observable)
  mapInjective :
    Function.Injective crossedProductMap
  stableTracePreserving :
    ∀ observable,
      (finiteCrossedProductStableTrace high).trace
          (crossedProductMap observable) =
        (finiteCrossedProductStableTrace low).trace
          observable

end Mathematics.StratifiedBoundary.Trace
