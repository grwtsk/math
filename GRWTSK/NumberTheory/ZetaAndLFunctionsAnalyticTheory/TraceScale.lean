import Mathematics.ConnesBitfield.SpectralSize
import Mathematics.ConnesBitfield.Trace
import Mathematics.MobiusOntology.SquareRootNorm

/-!
# Derived uniform trace scale

The square-root trace estimate is factored through a finite centered envelope
and a separate arithmetic scale bridge.  The final inequality is a theorem,
not a restated certificate field.
-/

namespace Mathematics.ConnesBitfield

universe uScale uTest

structure TraceScaleCertificate
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction)
    (purity :
      OperatorPurityCertificate spectral)
    (spectralSize :
      UniformSpectralSizeCertificate
        spectral purity Scale) where
  mass : Scale → ℝ
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  testNorm : TestFunction → ℝ
  testNormNonnegative :
    ∀ test, 0 ≤ testNorm test
  logarithmicOrder : Nat
  traceScalingBound :
    Scale → TestFunction → ℝ
  traceScalingBoundNonnegative :
    ∀ scale test,
      0 ≤ traceScalingBound scale test
  traceScalingBoundSound :
    ∀ scale test,
      ‖trace.traceScaling scale test‖ ≤
        traceScalingBound scale test
  hilbertDimension : Scale → Nat
  hilbertDimensionMatches :
    ∀ scale,
      hilbertDimension scale = spectral.dim
  spectralSizeMassMatches :
    mass = spectralSize.mass
  purityTransformControl :
    purity.testTransformUniformlyControlled
  spectralSizeTransformControl :
    spectralSize.traceTransformUniformlyBounded
  operatorNormBound : Scale → ℝ
  operatorBoundNonnegative :
    ∀ scale, 0 ≤ operatorNormBound scale
  operatorBound :
    ∀ scale state,
      trace.spectralTransform.operatorSize
          (spectral.operator state) ≤
        operatorNormBound scale
  transformOperatorBound :
    Scale → TestFunction → ℝ
  transformOperatorBoundNonnegative :
    ∀ scale test,
      0 ≤ transformOperatorBound scale test
  transformBound :
    ∀ scale test state,
      trace.spectralTransform.operatorSize
          (trace.spectralTransform.transform
            scale test (spectral.operator state)) ≤
        transformOperatorBound scale test
  centeredTraceEnvelope :
    Scale → TestFunction → ℝ
  centeredTraceEnvelopeNonnegative :
    ∀ scale test,
      0 ≤ centeredTraceEnvelope scale test
  finiteSpectralCancellation :
    ∀ scale test,
      ‖trace.rawTraceTerm scale test‖ ≤
        centeredTraceEnvelope scale test
  traceConstant : ℝ
  traceConstantNonnegative :
    0 ≤ traceConstant
  centeredEnvelopeToArithmeticScale :
    ∀ scale test,
      traceScalingBound scale test *
          centeredTraceEnvelope scale test ≤
        traceConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (mass scale)
            logarithmicOrder *
          testNorm test
  normalizationMatchesReducedTrace : Prop
  uniformInScale : Prop

theorem TraceScaleCertificate.trace_scale_bound
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    {purity : OperatorPurityCertificate spectral}
    {spectralSize :
      UniformSpectralSizeCertificate
        spectral purity Scale}
    (certificate :
      TraceScaleCertificate
        trace purity spectralSize)
    (scale : Scale)
    (test : TestFunction) :
    ‖trace.traceTerm scale test‖ ≤
      certificate.traceConstant *
          Mathematics.MobiusOntology.squareRootWeight
          (certificate.mass scale)
          certificate.logarithmicOrder *
        certificate.testNorm test := by
  calc
    ‖trace.traceTerm scale test‖ =
        ‖trace.traceScaling scale test‖ *
          ‖trace.rawTraceTerm scale test‖ := by
      simp [ArithmeticBitfieldTraceCertificate.traceTerm]
    _ ≤
        certificate.traceScalingBound scale test *
          certificate.centeredTraceEnvelope scale test :=
      mul_le_mul
        (certificate.traceScalingBoundSound scale test)
        (certificate.finiteSpectralCancellation scale test)
        (norm_nonneg _)
        (certificate.traceScalingBoundNonnegative
          scale test)
    _ ≤
        certificate.traceConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (certificate.mass scale)
              certificate.logarithmicOrder *
          certificate.testNorm test :=
      certificate.centeredEnvelopeToArithmeticScale
        scale test

end Mathematics.ConnesBitfield
