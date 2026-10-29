-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ArithmeticLimitMode.Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ArithmeticLimitMode.Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Arithmetic/LimitCorrespondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Topology.GeneralTopology.ArithmeticLimitMode.Variant63519233d99328d736081d3d4e9520ac115e47917becd37f0d494b61ab3e5bf7

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
