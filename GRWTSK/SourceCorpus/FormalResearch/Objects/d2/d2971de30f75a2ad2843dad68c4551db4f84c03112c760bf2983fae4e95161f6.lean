import Mathlib
import Mathematics.StratifiedBoundary.Trace.InductiveLimit

/-!
# Trace-observable and optional operator limits

The boundary architecture needs only convergence of finite trace observables.
A literal limit operator is a stronger optional mode and requires its own
Hilbert embeddings and resolvent compatibility.
-/

namespace Mathematics.StratifiedBoundary.Trace

open Filter
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule uHilbert uLimitHilbert

inductive SpectralLimitMode
  | traceObservable
  | limitOperator
  deriving DecidableEq, Repr, Fintype

structure TraceObservableLimitCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  stageObservableValue :
    Nat → TestFunction → ℂ
  limitObservableValue :
    TestFunction → ℂ
  converges :
    ∀ test,
      Tendsto
        (fun stage =>
          stageObservableValue stage test)
        atTop
        (𝓝 (limitObservableValue test))
  eachValueIsCertifiedFiniteReducedTrace : Prop
  finiteTraceOriginProof :
    eachValueIsCertifiedFiniteReducedTrace
  testFamilyCompatible : Prop
  testCompatibilityProof :
    testFamilyCompatible

structure LimitSpectralOperatorCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  Hilbert : Nat → Type uHilbert
  LimitHilbert : Type uLimitHilbert
  embed :
    ∀ {high low},
      low ≤ high →
      Hilbert low → Hilbert high
  embedLimit :
    ∀ stage,
      Hilbert stage → LimitHilbert
  embeddingsAreIsometric : Prop
  isometryProof :
    embeddingsAreIsometric
  resolvent :
    ∀ stage,
      ℂ → Hilbert stage → Hilbert stage
  limitResolvent :
    ℂ → LimitHilbert → LimitHilbert
  finiteResolventCompatible :
    ∀ {high low}
      (low_le : low ≤ high)
      (z : ℂ)
      (vector : Hilbert low),
      embed low_le (resolvent low z vector) =
        resolvent high z (embed low_le vector)
  limitResolventCompatible :
    ∀ stage z vector,
      embedLimit stage (resolvent stage z vector) =
        limitResolvent z (embedLimit stage vector)
  representsFiniteSpectralOperators : Prop
  representationProof :
    representsFiniteSpectralOperators
  selfAdjointOrAffiliatedLimitOperator : Prop
  limitOperatorProof :
    selfAdjointOrAffiliatedLimitOperator

end Mathematics.StratifiedBoundary.Trace
