# Complete source: GRWTSK.Topology.GeneralTopology.LimitCorrespondence.Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77019ab0d8d3b065609fe292840546696c6ce5b8` · SHA-256 `63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import Mathematics.StratifiedBoundary.Arithmetic.SuccessorCorrespondence
import Mathematics.StratifiedBoundary.Trace.LimitObservable

/-!
# Normalized arithmetic correspondence at a limit stratum

Finite square-root estimates control normalized discrepancy functionals.
Accordingly, the limit object here is `widehatDelta`, not an unnormalized
arithmetic functional.  The spectral input is a scalar trace-observable limit;
no limit operator is assumed.
-/

namespace Mathematics.StratifiedBoundary.Arithmetic

open Filter
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally
open Mathematics.StratifiedBoundary.Trace

universe uScale uTest uSchedule

inductive ArithmeticLimitMode
  | normalizedWeakDual
  | normalizedStrongDual
  | projectiveTestRegistry
  deriving DecidableEq, Repr, Fintype

structure TestSpaceCompatibilityCertificate
    (TestFunction : Type uTest) where
  transport :
    ∀ {high low : Nat},
      low ≤ high →
      TestFunction → TestFunction
  transport_refl :
    ∀ stage test,
      transport (le_refl stage) test = test
  transport_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      test,
      transport middle_le
          (transport low_le test) =
        transport
          (low_le.trans middle_le) test
  testNorm : TestFunction → ℝ
  testNormNonnegative :
    ∀ test,
      0 ≤ testNorm test
  transportNormControlled : Prop
  normControlProof :
    transportNormControlled

structure NormalizedLimitArithmeticCorrespondence
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  mode : ArithmeticLimitMode
  testSpace :
    TestSpaceCompatibilityCertificate TestFunction
  stageScale : Nat → Scale
  stageTest :
    Nat → TestFunction → TestFunction
  stageTestCompatibleWithRegistry : Prop
  stageTestCompatibilityProof :
    stageTestCompatibleWithRegistry
  normalization : Nat → ℝ
  normalizationPositive :
    ∀ stage,
      0 < normalization stage
  normalizationIsSquareRootScale : Prop
  normalizationScaleProof :
    normalizationIsSquareRootScale
  normalizedFiniteDiscrepancy :
    Nat → TestFunction → ℂ
  normalizationIdentity :
    ∀ stage test,
      (normalization stage : ℂ) *
          normalizedFiniteDiscrepancy stage test =
        (boundary.cut stage).closure.trace.discrepancy
          (stageScale stage)
          (stageTest stage test)
  limitNormalizedDiscrepancy :
    TestFunction → ℂ
  normalizedFiniteDiscrepancyConverges :
    ∀ test,
      Tendsto
        (fun stage =>
          normalizedFiniteDiscrepancy stage test)
        atTop
        (𝓝 (limitNormalizedDiscrepancy test))
  traceObservableLimit :
    TraceObservableLimitCertificate boundary
  traceObservableMatchesNormalizedSpectralTerms :
    Prop
  traceObservableMatchProof :
    traceObservableMatchesNormalizedSpectralTerms
  limitMainTerm :
    TestFunction → ℂ
  limitTraceScaling :
    TestFunction → ℂ
  limitRegularizationRemainder :
    TestFunction → ℂ
  limitBitfieldRemainder :
    TestFunction → ℂ
  exactNormalizedLimitTraceIdentity :
    ∀ test,
      limitNormalizedDiscrepancy test =
        limitMainTerm test +
          limitTraceScaling test *
            traceObservableLimit.limitObservableValue test +
          limitRegularizationRemainder test +
          limitBitfieldRemainder test
  allTermsFromCompatibleNormalizedFiniteFamily :
    Prop
  termOriginProof :
    allTermsFromCompatibleNormalizedFiniteFamily
  unnormalizedLimitClaimed : Bool := false
  unnormalizedLimitNotClaimed :
    unnormalizedLimitClaimed = false := by
      rfl

abbrev LimitArithmeticCorrespondence :=
  NormalizedLimitArithmeticCorrespondence

theorem normalized_limit_arithmetic_trace_correspondence
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (certificate :
      NormalizedLimitArithmeticCorrespondence boundary)
    (test : TestFunction) :
    certificate.limitNormalizedDiscrepancy test =
      certificate.limitMainTerm test +
        certificate.limitTraceScaling test *
          certificate.traceObservableLimit.limitObservableValue
            test +
        certificate.limitRegularizationRemainder test +
        certificate.limitBitfieldRemainder test :=
  certificate.exactNormalizedLimitTraceIdentity test

end Mathematics.StratifiedBoundary.Arithmetic
```
