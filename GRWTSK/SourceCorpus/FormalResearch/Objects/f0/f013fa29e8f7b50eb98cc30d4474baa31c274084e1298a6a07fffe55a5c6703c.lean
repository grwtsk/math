import AnalyticNumber.Mathlib.Certificate
import AnalyticNumber.VerifiedNumericalEstimate

/-!
# Mathlib-backed certificate: interval arithmetic for `Real.sqrt 2`

This file provides one genuine verified numerical certificate:

  `1414 / 1000 ≤ Real.sqrt 2 ∧ Real.sqrt 2 ≤ 1415 / 1000`,

proved from `Real.sq_sqrt` and `Real.sqrt_nonneg` by nonlinear arithmetic —
squaring the candidate bounds against `(Real.sqrt 2) ^ 2 = 2`.

The enclosure is routed two ways: through the existing
`VerifiedNumericalEstimate` schema with real proof fields (not `True` or
`trivial`), and through a `MathlibProofCertificate` and the analytic
boundary calculus. The finite numerical payload remains metadata only; the
proof lives in the Lean terms.
-/

namespace AnalyticNumber
namespace MathlibBridge
namespace IntervalArithmetic

/-- A rational interval together with a real value and a proof of
enclosure. The proof field is the only semantic content. -/
structure RationalIntervalCertificate where
  lower : ℚ
  upper : ℚ
  lower_le_upper : lower ≤ upper
  value : ℝ
  containsProof :
    (lower : ℝ) ≤ value ∧ value ≤ (upper : ℝ)

/-- The enclosure proposition of a rational interval certificate. -/
def RationalIntervalCertificate.contains
    (I : RationalIntervalCertificate) : Prop :=
  (I.lower : ℝ) ≤ I.value ∧ I.value ≤ (I.upper : ℝ)

theorem rational_interval_certificate_sound
    (I : RationalIntervalCertificate) :
    I.contains :=
  I.containsProof

/-- Lower bound: `1.414 ≤ √2`. Mathlib proof by squaring against
`Real.sq_sqrt`. -/
theorem sqrt_two_lower_bound :
    (1414 : ℝ) / 1000 ≤ Real.sqrt 2 := by
  nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2), Real.sqrt_nonneg 2]

/-- Upper bound: `√2 ≤ 1.415`. Mathlib proof by squaring against
`Real.sq_sqrt`. -/
theorem sqrt_two_upper_bound :
    Real.sqrt 2 ≤ (1415 : ℝ) / 1000 := by
  nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2), Real.sqrt_nonneg 2]

/-- The rational enclosure of `√2`. -/
theorem sqrt_two_interval_enclosure :
    (1414 : ℝ) / 1000 ≤ Real.sqrt 2 ∧
      Real.sqrt 2 ≤ (1415 : ℝ) / 1000 :=
  ⟨sqrt_two_lower_bound, sqrt_two_upper_bound⟩

/-- The proof-carrying rational interval certificate for `√2`. Noncomputable
because it stores the real value `Real.sqrt 2`. -/
noncomputable def sqrtTwoRationalIntervalCertificate :
    RationalIntervalCertificate where
  lower := 1414 / 1000
  upper := 1415 / 1000
  lower_le_upper := by norm_num
  value := Real.sqrt 2
  containsProof := by
    push_cast
    exact sqrt_two_interval_enclosure

/-! ## Finite numerical payload (metadata only)

The finite payload records the interval endpoints and algorithm metadata in
the `Number.NumericalEstimate` vocabulary. Its `finiteSound := True` fields
are finite metadata only; the payload is not the theorem-level certificate.
-/

def sqrtTwoEndpointLower :
    _root_.Number.NumericalEstimate.RationalIntervalEndpoint where
  numerator := 1414
  denominator := 1000
  denominatorPositive := by decide

def sqrtTwoEndpointUpper :
    _root_.Number.NumericalEstimate.RationalIntervalEndpoint where
  numerator := 1415
  denominator := 1000
  denominatorPositive := by decide

def sqrtTwoFiniteInterval :
    _root_.Number.NumericalEstimate.RationalInterval where
  lower := sqrtTwoEndpointLower
  upper := sqrtTwoEndpointUpper
  enclosureHash := 0
  finiteSound := True
  finiteSoundProof := trivial

def sqrtTwoFiniteDomain :
    _root_.Number.NumericalEstimate.FiniteDomain where
  label := "real line near sqrt 2"
  domainHash := 0
  dimension := 1
  finiteSound := True
  finiteSoundProof := trivial

def sqrtTwoPrecision :
    _root_.Number.NumericalEstimate.PrecisionSpec where
  workingPrecision := 16
  outputPrecision := 4
  positiveWorkingPrecision := by decide
  positiveOutputPrecision := by decide
  roundingModeHash := 0
  finiteSound := True
  finiteSoundProof := trivial

def sqrtTwoAlgorithm :
    _root_.Number.NumericalEstimate.AlgorithmSpec where
  algorithmLabel := "square the rational candidate bounds"
  algorithmVersionHash := 0
  implementationHash := 0
  deterministic := true
  finiteSound := True
  finiteSoundProof := trivial

def sqrtTwoErrorModel :
    _root_.Number.NumericalEstimate.ErrorModel where
  modelLabel := "exact rational arithmetic"
  absoluteErrorNumerator := 1
  absoluteErrorExponent := 3
  relativeErrorNumerator := 1
  relativeErrorExponent := 3
  roundingErrorHash := 0
  truncationErrorHash := 0
  finiteSound := True
  finiteSoundProof := trivial

def sqrtTwoFinitePayload :
    _root_.Number.NumericalEstimate.FiniteNumericalEstimatePayload where
  kind := _root_.Number.NumericalEstimate.NumericalEstimateKind.intervalArithmetic
  domain := sqrtTwoFiniteDomain
  precision := sqrtTwoPrecision
  algorithm := sqrtTwoAlgorithm
  errorModel := sqrtTwoErrorModel
  intervalArithmetic := some
    { expressionHash := 0
      inputIntervals := [sqrtTwoFiniteInterval]
      outputInterval := sqrtTwoFiniteInterval
      operationTraceHash := 0
      finiteSound := True
      finiteSoundProof := trivial }
  tailBound := none
  contourIntegral := none
  argumentPrincipleCount := none
  validatedIntegration := none
  spectralEnclosure := none
  operatorNormBound := none
  rigorousQuadrature := none
  payloadHash := 0
  finiteSound := True
  finiteSoundProof := trivial

/-! ## Theorem-level schema and authority with real proof fields -/

def sqrtTwoEstimateSymbol :
    VerifiedNumericalEstimate.NumericalEstimateSymbol where
  kind := _root_.Number.NumericalEstimate.NumericalEstimateKind.intervalArithmetic
  label := "sqrt 2 rational interval enclosure"
  estimateHash := 0

def sqrtTwoDomainSymbol :
    VerifiedNumericalEstimate.AnalyticDomainSymbol where
  label := "real line near sqrt 2"
  domainHash := 0

def sqrtTwoPrecisionSymbol :
    VerifiedNumericalEstimate.PrecisionSymbol where
  label := "three decimal digits"
  precisionHash := 0

def sqrtTwoAlgorithmSymbol :
    VerifiedNumericalEstimate.AlgorithmSymbol where
  label := "square the rational candidate bounds"
  algorithmHash := 0

def sqrtTwoErrorModelSymbol :
    VerifiedNumericalEstimate.ErrorModelSymbol where
  label := "exact rational arithmetic"
  errorModelHash := 0

/-- The verified numerical schema for `√2`, with genuine proof fields. -/
def sqrtTwoNumericalSchema :
    VerifiedNumericalEstimate.NumericalAnalyticCertificateSchema where
  estimate := sqrtTwoEstimateSymbol
  payload := sqrtTwoFinitePayload
  domain := sqrtTwoDomainSymbol
  precision := sqrtTwoPrecisionSymbol
  algorithm := sqrtTwoAlgorithmSymbol
  errorModel := sqrtTwoErrorModelSymbol
  enclosureSound :=
    (1414 : ℝ) / 1000 ≤ Real.sqrt 2 ∧
      Real.sqrt 2 ≤ (1415 : ℝ) / 1000
  enclosureProof := sqrt_two_interval_enclosure
  theoremInterpretation :=
    (1414 : ℝ) / 1000 ≤ Real.sqrt 2 ∧
      Real.sqrt 2 ≤ (1415 : ℝ) / 1000
  theoremInterpretationProof := sqrt_two_interval_enclosure

/-- The interval-arithmetic authority for `√2`, with a genuine proof field. -/
def sqrtTwoIntervalArithmeticAuthority :
    VerifiedNumericalEstimate.IntervalArithmeticAuthority where
  schema := sqrtTwoNumericalSchema
  intervalArithmeticSound :=
    (1414 : ℝ) / 1000 ≤ Real.sqrt 2 ∧
      Real.sqrt 2 ≤ (1415 : ℝ) / 1000
  intervalArithmeticProof := sqrt_two_interval_enclosure

/-- The `√2` enclosure as an analytic certificate via the existing
verified-numerical-estimate constructor. -/
def sqrtTwoIntervalCertificateAsAnalyticCertificate :
    AnalyticCertificate :=
  VerifiedNumericalEstimate.intervalArithmeticCertificate
    sqrtTwoIntervalArithmeticAuthority

/-! ## MathlibProofCertificate route -/

def sqrtTwoIntervalContext :
    BoundaryCalculus.AnalyticContext where
  label := "Mathlib interval arithmetic certificate for sqrt 2"
  finiteHash := 0

def sqrtTwoIntervalClaim :
    BoundaryCalculus.AnalyticClaim
      sqrtTwoIntervalContext
      Authority.BoundaryKind.intervalArithmetic where
  label := "sqrt 2 in [1.414, 1.415]"
  statement :=
    (1414 : ℝ) / 1000 ≤ Real.sqrt 2 ∧
      Real.sqrt 2 ≤ (1415 : ℝ) / 1000

def sqrtTwoMathlibProofCertificate :
    MathlibProofCertificate
      sqrtTwoIntervalContext
      Authority.BoundaryKind.intervalArithmetic
      sqrtTwoIntervalClaim where
  theoremName := "sqrt_two_interval_enclosure"
  moduleName := "AnalyticNumber.Mathlib.IntervalArithmetic"
  proof := by
    exact sqrt_two_interval_enclosure

/-- The `√2` enclosure, transported through the boundary calculus. -/
theorem sqrt_two_interval_through_boundary_calculus :
    (1414 : ℝ) / 1000 ≤ Real.sqrt 2 ∧
      Real.sqrt 2 ≤ (1415 : ℝ) / 1000 :=
  mathlib_proof_through_boundary_calculus
    sqrtTwoMathlibProofCertificate

end IntervalArithmetic
end MathlibBridge
end AnalyticNumber
