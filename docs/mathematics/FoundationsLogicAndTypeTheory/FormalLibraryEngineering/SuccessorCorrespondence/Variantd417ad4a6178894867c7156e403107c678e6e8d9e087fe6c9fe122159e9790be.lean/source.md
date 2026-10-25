# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorCorrespondence.Variantd417ad4a6178894867c7156e403107c678e6e8d9e087fe6c9fe122159e9790be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33de4b141b7558e8a2834d198c014c356e202fc7` · SHA-256 `7d6103da2aeb94147f1a078049faa72a74006f8e8ef185bb071fc98d43853ae6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorArithmeticCorrespondence.Variant8bd10801851053c275cc57e63ed1d0858b0d1f818bd25cea61e086411ec86e11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bd10801851053c275cc57e63ed1d0858b0d1f818bd25cea61e086411ec86e11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SuccessorArithmeticCorrespondence.Variant8bd10801851053c275cc57e63ed1d0858b0d1f818bd25cea61e086411ec86e11","mathematical_subject":"Foundations.Unclassified","original_sha256":"8bd10801851053c275cc57e63ed1d0858b0d1f818bd25cea61e086411ec86e11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Arithmetic/SuccessorCorrespondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence
import Mathematics.StratifiedBoundary.Trace.SuccessorTrace

/-!
# Arithmetic transport at a successor stratum

Arithmetic discrepancy transport is not inferred from trace compatibility.
Every changed term and the connector remainder remain explicit.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorArithmeticCorrespondence.Variant8bd10801851053c275cc57e63ed1d0858b0d1f818bd25cea61e086411ec86e11

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
