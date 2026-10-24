import Mathlib.LinearAlgebra.Matrix.Trace
import Mathematics.ConnesBitfield.MatrixFiberCrossedProduct
import Mathematics.ConnesBitfield.SpectralOperator

/-!
# Invariant and reduced bitfield traces

The exact arithmetic correspondence is a theorem field.  Finite
self-adjointness alone does not identify an arithmetic discrepancy with this
trace.
-/

namespace Mathematics.ConnesBitfield

open scoped ComplexConjugate

universe uScale uTest

inductive ReducedTraceMode
  | centralSectorUnnormalized
  | centralSectorNormalized
  | cornerAlgebraNormalized
  deriving DecidableEq, Repr

def ReducedTraceMode.requiresCentrality :
    ReducedTraceMode → Prop
  | .centralSectorUnnormalized => True
  | .centralSectorNormalized => True
  | .cornerAlgebraNormalized => False

def ReducedTraceMode.requiresNormalization :
    ReducedTraceMode → Prop
  | .centralSectorUnnormalized => False
  | .centralSectorNormalized => True
  | .cornerAlgebraNormalized => True

structure FiniteMatrixStarAlgebra
    (Index : Type*) [Fintype Index] [DecidableEq Index] where
  carrier : Matrix Index Index ℂ → Prop
  zero_mem : carrier 0
  one_mem : carrier 1
  add_mem :
    ∀ {left right},
      carrier left →
      carrier right →
      carrier (left + right)
  neg_mem :
    ∀ {operator},
      carrier operator →
      carrier (-operator)
  mul_mem :
    ∀ {left right},
      carrier left →
      carrier right →
      carrier (left * right)
  star_mem :
    ∀ {operator},
      carrier operator →
      carrier operatorᴴ

structure InvariantProjectionCertificate
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system) where
  algebra :
    FiniteMatrixStarAlgebra (Fin spectral.dim)
  algebraRepresentsCrossedProduct : Prop
  algebraRepresentsCrossedProductProof :
    algebraRepresentsCrossedProduct
  projection :
    Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ
  selfAdjoint :
    projection.IsHermitian
  idempotent :
    projection * projection = projection
  projection_mem :
    algebra.carrier projection
  operator_mem :
    ∀ state,
      algebra.carrier (spectral.operator state)
  commutesWithOperator :
    ∀ state,
      projection * spectral.operator state =
        spectral.operator state * projection
  mode : ReducedTraceMode
  central_if_required :
    mode.requiresCentrality →
      ∀ operator,
        algebra.carrier operator →
        projection * operator =
          operator * projection
  normalizationNonzero_if_required :
    mode.requiresNormalization →
      normalizedMatrixTrace
        (1 - projection) ≠ 0

theorem InvariantProjectionCertificate.centralNormalizationNonzero
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (_certificate :
      InvariantProjectionCertificate spectral) :
    (spectral.dim : ℂ) ≠ 0 := by
  exact_mod_cast (Nat.ne_of_gt spectral.dimPositive)

theorem InvariantProjectionCertificate.complement_mem
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (certificate :
      InvariantProjectionCertificate spectral) :
    certificate.algebra.carrier
      (1 - certificate.projection) := by
  simpa [sub_eq_add_neg] using
    certificate.algebra.add_mem
      certificate.algebra.one_mem
      (certificate.algebra.neg_mem
        certificate.projection_mem)

theorem InvariantProjectionCertificate.corner_mem
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (certificate :
      InvariantProjectionCertificate spectral)
    {operator :
      Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ}
    (operatorMem :
      certificate.algebra.carrier operator) :
    certificate.algebra.carrier
      ((1 - certificate.projection) * operator *
        (1 - certificate.projection)) :=
  certificate.algebra.mul_mem
    (certificate.algebra.mul_mem
      certificate.complement_mem
      operatorMem)
    certificate.complement_mem

abbrev ReducedTraceCertificate :=
  InvariantProjectionCertificate

inductive SpectralTransformClass
  | polynomial
  | resolventCombination
  | holomorphicFunctionalCalculus
  | operatorLipschitz
  | finiteExactSpectralTransform
  deriving DecidableEq, Repr, Fintype

structure SpectralTestTransform
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system)
    (Scale : Type uScale)
    (TestFunction : Type uTest) where
  transform :
    Scale →
      TestFunction →
      Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ →
      Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ
  transformClass :
    Scale → TestFunction → SpectralTransformClass
  operatorSize :
    Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ →
      ℝ
  operatorSizeNonnegative :
    ∀ operator,
      0 ≤ operatorSize operator
  stabilityConstant :
    Scale → TestFunction → ℝ
  stabilityConstantNonnegative :
    ∀ scale test,
      0 ≤ stabilityConstant scale test
  functionalCalculusStable :
    ∀ scale test reference perturbed,
      operatorSize
          (transform scale test perturbed -
            transform scale test reference) ≤
        stabilityConstant scale test *
          operatorSize (perturbed - reference)
  normalizationDeclared : Prop
  normalizationDeclaredProof :
    normalizationDeclared

theorem SpectralTestTransform.displacement_le
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (registry :
      SpectralTestTransform
        spectral Scale TestFunction)
    (scale : Scale)
    (test : TestFunction)
    (reference perturbed :
      Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ) :
    registry.operatorSize
        (registry.transform scale test perturbed -
          registry.transform scale test reference) ≤
      registry.stabilityConstant scale test *
        registry.operatorSize
          (perturbed - reference) :=
  registry.functionalCalculusStable
    scale test reference perturbed

noncomputable def normalizedCornerTrace
    {Index : Type*}
    [Fintype Index]
    [DecidableEq Index]
    (projection operator : Matrix Index Index ℂ) : ℂ :=
    normalizedMatrixTrace
      ((1 - projection) * operator *
        (1 - projection)) /
    normalizedMatrixTrace (1 - projection)

noncomputable def reducedMatrixTrace
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (projection :
      InvariantProjectionCertificate spectral)
    (operator :
      Matrix
        (Fin spectral.dim)
        (Fin spectral.dim)
        ℂ) : ℂ :=
  match projection.mode with
  | .centralSectorUnnormalized =>
      normalizedMatrixTrace
        ((1 - projection.projection) *
          operator)
  | .centralSectorNormalized =>
      normalizedMatrixTrace
          ((1 - projection.projection) *
            operator) /
        normalizedMatrixTrace
          (1 - projection.projection)
  | .cornerAlgebraNormalized =>
      normalizedCornerTrace
        projection.projection operator

def InvariantProjectionCertificate.reducedDomain
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (projection :
      InvariantProjectionCertificate spectral)
    (operator :
      Matrix
        (Fin spectral.dim)
        (Fin spectral.dim)
        ℂ) : Prop :=
  projection.algebra.carrier operator ∧
    (projection.mode = .cornerAlgebraNormalized →
      operator =
        (1 - projection.projection) *
          operator *
        (1 - projection.projection))

structure ReducedTraceLawCertificate
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (projection :
      InvariantProjectionCertificate spectral) where
  cyclic :
    ∀ {left right},
      projection.reducedDomain left →
      projection.reducedDomain right →
      reducedMatrixTrace projection (left * right) =
        reducedMatrixTrace projection (right * left)
  starPreserving :
    ∀ {operator},
      projection.reducedDomain operator →
      reducedMatrixTrace projection operatorᴴ =
        star (reducedMatrixTrace projection operator)
  positiveReal :
    ∀ {operator},
      projection.reducedDomain operator →
      0 ≤
        (reducedMatrixTrace projection
          (operatorᴴ * operator)).re
  positiveImaginaryZero :
    ∀ {operator},
      projection.reducedDomain operator →
      (reducedMatrixTrace projection
        (operatorᴴ * operator)).im = 0
  normalizedUnit_if_required :
    projection.mode.requiresNormalization →
      reducedMatrixTrace projection
        (1 - projection.projection) =
      1

noncomputable def reducedTraceObservable
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (projection :
      InvariantProjectionCertificate spectral)
    (testTransform :
      SpectralTestTransform spectral Scale TestFunction)
    (scale : Scale)
    (test : TestFunction)
    (state : Bitfield system.bits) : ℂ :=
  reducedMatrixTrace projection
    (testTransform.transform
      scale test (spectral.operator state))

/-- The normalized expectation of the invariant-reduced trace observable. -/
noncomputable def normalizedReducedTrace
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (projection :
      InvariantProjectionCertificate spectral)
    (testTransform :
      SpectralTestTransform spectral Scale TestFunction)
    (scale : Scale)
    (test : TestFunction) : ℂ :=
  system.law.expectation
    (reducedTraceObservable
      projection testTransform scale test)

/--
The central Connes-style interface.  `traceIdentity` is an exact equality,
not an asymptotic analogy and not a consequence of concentration.
-/
structure ArithmeticBitfieldTraceCertificate
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system)
    (Scale : Type uScale)
    (TestFunction : Type uTest) where
  invariantProjection :
    InvariantProjectionCertificate spectral
  reducedTraceLaws :
    ReducedTraceLawCertificate
      invariantProjection
  spectralTransform :
    SpectralTestTransform spectral Scale TestFunction
  transformedOperatorsInAlgebra :
    ∀ scale test state,
      invariantProjection.algebra.carrier
        (spectralTransform.transform
          scale test (spectral.operator state))
  discrepancy :
    Scale → TestFunction → ℂ
  mainTerm :
    Scale → TestFunction → ℂ
  traceScaling :
    Scale → TestFunction → ℂ
  regularizationRemainder :
    Scale → TestFunction → ℂ
  bitfieldRemainder :
    Scale → TestFunction → ℂ
  traceIdentity :
    ∀ scale test,
      discrepancy scale test =
        mainTerm scale test +
          traceScaling scale test *
            normalizedReducedTrace
              invariantProjection spectralTransform scale test +
          regularizationRemainder scale test +
          bitfieldRemainder scale test
  arithmeticSideIdentified : Prop
  spectralSideIdentified : Prop
  transformIdentified : Prop
  allNormalizationFactorsIdentified : Prop
  arithmeticSpectrumEqualsBitfieldSpectrum : Prop

abbrev ArithmeticInvariantTraceCertificate :=
  ArithmeticBitfieldTraceCertificate

noncomputable def ArithmeticBitfieldTraceCertificate.rawTraceTerm
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (certificate :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction)
    (scale : Scale)
    (test : TestFunction) : ℂ :=
  normalizedReducedTrace
    certificate.invariantProjection
    certificate.spectralTransform
    scale
    test

noncomputable def ArithmeticBitfieldTraceCertificate.traceTerm
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (certificate :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction)
    (scale : Scale)
    (test : TestFunction) : ℂ :=
  certificate.traceScaling scale test *
    certificate.rawTraceTerm scale test

end Mathematics.ConnesBitfield
