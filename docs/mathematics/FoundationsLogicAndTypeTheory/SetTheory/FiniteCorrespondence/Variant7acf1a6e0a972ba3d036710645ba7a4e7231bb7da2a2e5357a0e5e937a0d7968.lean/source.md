# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FiniteCorrespondence.Variant7acf1a6e0a972ba3d036710645ba7a4e7231bb7da2a2e5357a0e5e937a0d7968

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11c4e2b7d34064930f9790bdb804086d91482176` · SHA-256 `7acf1a6e0a972ba3d036710645ba7a4e7231bb7da2a2e5357a0e5e937a0d7968`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
