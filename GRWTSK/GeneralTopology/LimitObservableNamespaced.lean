-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SpectralLimitMode.Variantd2971de30f75a2ad2843dad68c4551db4f84c03112c760bf2983fae4e95161f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2971de30f75a2ad2843dad68c4551db4f84c03112c760bf2983fae4e95161f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SpectralLimitMode.Variantd2971de30f75a2ad2843dad68c4551db4f84c03112c760bf2983fae4e95161f6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d2971de30f75a2ad2843dad68c4551db4f84c03112c760bf2983fae4e95161f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Trace/LimitObservable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import Mathematics.StratifiedBoundary.Trace.InductiveLimit

/-!
# Trace-observable and optional operator limits

The boundary architecture needs only convergence of finite trace observables.
A literal limit operator is a stronger optional mode and requires its own
Hilbert embeddings and resolvent compatibility.
-/


namespace GRWTSK.Topology.GeneralTopology.SpectralLimitMode.Variantd2971de30f75a2ad2843dad68c4551db4f84c03112c760bf2983fae4e95161f6

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
