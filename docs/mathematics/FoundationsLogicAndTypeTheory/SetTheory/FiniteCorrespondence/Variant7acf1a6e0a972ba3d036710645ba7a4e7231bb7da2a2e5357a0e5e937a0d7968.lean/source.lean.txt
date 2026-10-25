import Mathematics.StratifiedBoundary.Trace.FiniteCrossedProduct

/-!
# Finite-cut arithmetic correspondence

The exact four-term identity is inherited from the cut's accepted
Connes--bitfield package and is bound to the ordinal stratum as metadata.
-/

namespace Mathematics.StratifiedBoundary.Arithmetic

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure FiniteCorrespondenceRecord
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) where
  arithmeticSourceId : String
  bitfieldEncodingId : String
  checkerId : String
  checkerVersion : String
  ordinalStratumDigest : String
  ordinalDigestMatchesCut : Prop
  ordinalDigestMatchesCutProof :
    ordinalDigestMatchesCut
  traceCertificateBoundToImmutableCut : Prop
  traceCertificateBoundProof :
    traceCertificateBoundToImmutableCut
  ordinalCodeCreatesNoArithmeticMeaning : Prop
  noninterferenceProof :
    ordinalCodeCreatesNoArithmeticMeaning

theorem finite_arithmetic_trace_correspondence
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (scale : Scale)
    (test : TestFunction) :
    cut.closure.trace.discrepancy scale test =
      cut.closure.trace.mainTerm scale test +
        cut.closure.trace.traceTerm scale test +
        cut.closure.trace.regularizationRemainder
          scale test +
        cut.closure.trace.bitfieldRemainder
          scale test :=
  cut.closure.trace.traceIdentity scale test

end Mathematics.StratifiedBoundary.Arithmetic
