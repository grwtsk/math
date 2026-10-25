# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorCorrespondence.Variant8bd10801851053c275cc57e63ed1d0858b0d1f818bd25cea61e086411ec86e11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0ddfeadc0abf8b118c928b4080b03e604fb8b57` · SHA-256 `8bd10801851053c275cc57e63ed1d0858b0d1f818bd25cea61e086411ec86e11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
