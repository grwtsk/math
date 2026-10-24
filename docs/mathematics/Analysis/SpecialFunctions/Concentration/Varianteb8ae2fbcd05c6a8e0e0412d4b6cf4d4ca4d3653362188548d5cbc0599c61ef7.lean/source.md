# Complete source: GRWTSK.Analysis.SpecialFunctions.Concentration.Varianteb8ae2fbcd05c6a8e0e0412d4b6cf4d4ca4d3653362188548d5cbc0599c61ef7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eecf49a5ea49fc12c5a3a0063ee1b77adf0a8fe` · SHA-256 `b452be0b005d4e6ce20daadb41397e93d31e2d85323d3e02342bc42ea91dcfd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.ConcentrationMechanism.Variantb71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.ConcentrationMechanism.Variantb71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"b71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/Concentration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathematics.ConnesBitfield.Influence
import Mathematics.MobiusOntology.SquareRootNorm

/-!
# Uniform ensemble concentration and bias

The concentration tail and invariant-bias estimate are independent proof
fields over the exact finite law.  Neither follows merely from naming an
influence profile.
-/


namespace GRWTSK.Analysis.SpecialFunctions.ConcentrationMechanism.Variantb71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041

namespace Mathematics.ConnesBitfield

universe uScale uTest

inductive ConcentrationMechanism
  | t1TransportEntropy
  | modifiedLogSobolev
  | dobrushin
  | marton
  | finiteMgfVerification
  deriving DecidableEq, Repr, Fintype

structure ConcentrationGeometry
    (system : RandomBitfieldSystem) where
  wasserstein :
    FiniteProbabilityLaw (Bitfield system.bits) →
      FiniteProbabilityLaw (Bitfield system.bits) →
      ℝ
  relativeEntropy :
    FiniteProbabilityLaw (Bitfield system.bits) → ℝ
  exponentialEntropy :
    (Bitfield system.bits → ℝ) → ℝ
  dirichletEnergy :
    (Bitfield system.bits → ℝ) → ℝ
  allFunctionalsNonnegative :
    (∀ left right, 0 ≤ wasserstein left right) ∧
    (∀ law, 0 ≤ relativeEntropy law) ∧
    (∀ observable, 0 ≤ exponentialEntropy observable) ∧
    (∀ observable, 0 ≤ dirichletEnergy observable)

noncomputable def CenteredMgfBound
    {system : RandomBitfieldSystem}
    (geometry : ConcentrationGeometry system)
    (constant : ℝ) : Prop :=
  ∀ observable : Bitfield system.bits → ℝ,
    ∀ parameter : ℝ,
      system.law.realExpectation
          (fun state =>
            Real.exp
              (parameter *
                (observable state -
                  system.law.realExpectation observable))) ≤
        Real.exp
          (constant * parameter ^ 2 *
            geometry.dirichletEnergy observable / 2)

inductive ConcentrationMechanismEvidence
    {system : RandomBitfieldSystem}
    (geometry : ConcentrationGeometry system)
  | t1TransportEntropy
      (constant : ℝ)
      (constantNonnegative : 0 ≤ constant)
      (inequality :
        ∀ law,
          geometry.wasserstein law system.law ≤
            Real.sqrt
              (2 * constant *
                geometry.relativeEntropy law))
  | modifiedLogSobolev
      (constant : ℝ)
      (constantNonnegative : 0 ≤ constant)
      (inequality :
        ∀ observable,
          geometry.exponentialEntropy observable ≤
            (constant / 2) *
              geometry.dirichletEnergy observable *
              system.law.realExpectation
                (fun state =>
                  Real.exp (observable state)))
  | dobrushin
      (coefficient : ℝ)
      (coefficientNonnegative : 0 ≤ coefficient)
      (coefficientLtOne : coefficient < 1)
      (mgfConstant : ℝ)
      (mgfBound :
        CenteredMgfBound geometry mgfConstant)
  | marton
      (couplingConstant : ℝ)
      (couplingConstantNonnegative :
        0 ≤ couplingConstant)
      (mgfBound :
        CenteredMgfBound geometry couplingConstant)
  | finiteMgfVerification
      (mgfConstant : ℝ)
      (mgfConstantNonnegative : 0 ≤ mgfConstant)
      (mgfBound :
        CenteredMgfBound geometry mgfConstant)

def ConcentrationMechanismEvidence.kind
    {system : RandomBitfieldSystem}
    {geometry : ConcentrationGeometry system} :
    ConcentrationMechanismEvidence geometry →
      ConcentrationMechanism
  | .t1TransportEntropy _ _ _ =>
      .t1TransportEntropy
  | .modifiedLogSobolev _ _ _ =>
      .modifiedLogSobolev
  | .dobrushin _ _ _ _ _ =>
      .dobrushin
  | .marton _ _ _ =>
      .marton
  | .finiteMgfVerification _ _ _ =>
      .finiteMgfVerification

noncomputable def traceExpectation
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction)
    (scale : Scale)
    (test : TestFunction) : ℂ :=
  system.law.expectation
    (reducedTraceObservable
      trace.invariantProjection
      trace.spectralTransform
      scale
      test)

noncomputable def traceDeviation
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction)
    (scale : Scale)
    (test : TestFunction)
    (state : Bitfield system.bits) : ℝ :=
  ‖reducedTraceObservable
      trace.invariantProjection
      trace.spectralTransform
      scale test state -
    traceExpectation trace scale test‖

structure ConcentrationMechanismCertificate
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    (influence :
      BitfieldInfluenceCertificate trace) where
  geometry : ConcentrationGeometry system
  evidence :
    ConcentrationMechanismEvidence geometry
  tailConstant : ℝ
  gaussianRate : ℝ
  tailConstantNonnegative :
    0 ≤ tailConstant
  gaussianRatePositive :
    0 < gaussianRate
  tailBound :
    ∀ scale test thresholdMultiplier,
      0 ≤ thresholdMultiplier →
      ((system.law.eventMass fun state =>
          traceDeviation trace scale test state >
            thresholdMultiplier *
              Mathematics.MobiusOntology.squareRootWeight
                (influence.mass scale)
                influence.logarithmicOrder *
              influence.testNorm test) : ℝ) ≤
        tailConstant *
          Real.exp
            (-gaussianRate *
              thresholdMultiplier ^ 2)

structure BitfieldConcentrationCertificate
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    (influence :
      BitfieldInfluenceCertificate trace) where
  mechanism :
    ConcentrationMechanismCertificate influence
  biasConstant : ℝ
  biasConstantNonnegative :
    0 ≤ biasConstant
  invariantBiasBound :
    ∀ scale test,
      ‖traceExpectation trace scale test‖ ≤
        biasConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (influence.mass scale)
            influence.logarithmicOrder *
          influence.testNorm test

theorem BitfieldConcentrationCertificate.tailBound
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    {influence :
      BitfieldInfluenceCertificate trace}
    (certificate :
      BitfieldConcentrationCertificate influence)
    (scale : Scale)
    (test : TestFunction)
    (thresholdMultiplier : ℝ)
    (thresholdNonnegative :
      0 ≤ thresholdMultiplier) :
    ((system.law.eventMass fun state =>
        traceDeviation trace scale test state >
          thresholdMultiplier *
            Mathematics.MobiusOntology.squareRootWeight
              (influence.mass scale)
              influence.logarithmicOrder *
            influence.testNorm test) : ℝ) ≤
      certificate.mechanism.tailConstant *
        Real.exp
          (-certificate.mechanism.gaussianRate *
            thresholdMultiplier ^ 2) :=
  certificate.mechanism.tailBound
    scale test thresholdMultiplier
    thresholdNonnegative

end Mathematics.ConnesBitfield
```
