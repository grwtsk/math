import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence
import Mathematics.StratifiedBoundary.Trace.SuccessorTrace

/-!
# Arithmetic transport at a successor stratum

Arithmetic discrepancy transport is not inferred from trace compatibility.
Every changed term and the connector remainder remain explicit.
-/

namespace Mathematics.StratifiedBoundary.Arithmetic

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally
open Mathematics.StratifiedBoundary.Trace

universe uScale uTest uSchedule

structure SuccessorArithmeticCorrespondence
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    {boundary :
      SuccessorCutConnector low high}
    (traceConnector :
      SuccessorTraceConnector boundary) where
  restrictScale : Scale → Scale
  restrictTest :
    TestFunction → TestFunction
  arithmeticConnectorRemainder :
    Scale → TestFunction → ℂ
  discrepancyTransport :
    ∀ scale test,
      high.closure.trace.discrepancy scale test =
        low.closure.trace.discrepancy
            (restrictScale scale)
            (restrictTest test) +
          arithmeticConnectorRemainder scale test
  mainTermTransport : Prop
  mainTermTransportProof :
    mainTermTransport
  spectralTraceTransport : Prop
  spectralTraceTransportProof :
    spectralTraceTransport
  regularizationTransport : Prop
  regularizationTransportProof :
    regularizationTransport
  bitfieldRemainderTransport : Prop
  bitfieldRemainderTransportProof :
    bitfieldRemainderTransport

theorem successor_discrepancy_transport
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    {boundary :
      SuccessorCutConnector low high}
    {traceConnector :
      SuccessorTraceConnector boundary}
    (certificate :
      SuccessorArithmeticCorrespondence
        traceConnector)
    (scale : Scale)
    (test : TestFunction) :
    high.closure.trace.discrepancy scale test =
      low.closure.trace.discrepancy
          (certificate.restrictScale scale)
          (certificate.restrictTest test) +
        certificate.arithmeticConnectorRemainder
          scale test :=
  certificate.discrepancyTransport scale test

end Mathematics.StratifiedBoundary.Arithmetic
