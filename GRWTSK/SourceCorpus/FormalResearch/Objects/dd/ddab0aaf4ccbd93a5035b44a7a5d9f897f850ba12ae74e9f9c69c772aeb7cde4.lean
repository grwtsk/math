import Mathematics.ConnesBitfield.InvariantLawPerturbation
import Mathematics.ConnesBitfield.Trace

/-!
# Global invariant-trace stability

Law transport, operator functional calculus, arithmetic correspondence, and
both visible remainder channels remain separate summands.
-/

namespace Mathematics.ConnesBitfield

universe uSchedule uScale uTest

noncomputable def invariantLawReducedTrace
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction)
    (law : carrier.Law)
    (scale : Scale)
    (test : TestFunction) : ℂ :=
  (carrier.realize law).expectation
    (reducedTraceObservable
      trace.invariantProjection
      trace.spectralTransform
      scale
      test)

structure BoundaryTraceStabilityCertificate
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    (lawPerturbation :
      InvariantLawPerturbation reference)
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction)
    (scale : Scale)
    (test : TestFunction) where
  referenceInvariantRealizesSystemLaw :
    carrier.realize reference.invariantLaw =
      system.law
  traceLipschitz : ℝ
  traceLipschitzNonnegative :
    0 ≤ traceLipschitz
  lawTraceDisplacement : ℝ
  lawTraceDisplacementNonnegative :
    0 ≤ lawTraceDisplacement
  lawTraceDisplacement_eq :
    lawTraceDisplacement =
      ‖invariantLawReducedTrace trace
          lawPerturbation.perturbedInvariant
          scale test -
        invariantLawReducedTrace trace
          reference.invariantLaw
          scale test‖
  lawTraceControlled :
    lawTraceDisplacement ≤
      traceLipschitz *
        (carrier.wasserstein
          lawPerturbation.perturbedInvariant
          reference.invariantLaw : ℝ)
  referenceOperator :
    Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ
  perturbedOperator :
    Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ
  operatorDefect : ℝ
  operatorDefectNonnegative :
    0 ≤ operatorDefect
  operatorDefectDerived :
    operatorDefect =
      trace.spectralTransform.stabilityConstant
          scale test *
        trace.spectralTransform.operatorSize
          (perturbedOperator - referenceOperator)
  operatorTraceDisplacement : ℝ
  operatorTraceDisplacement_eq :
    operatorTraceDisplacement =
      trace.spectralTransform.operatorSize
        (trace.spectralTransform.transform
            scale test perturbedOperator -
          trace.spectralTransform.transform
            scale test referenceOperator)
  referenceCorrespondence : ℂ
  referenceCorrespondence_eq :
    referenceCorrespondence =
      trace.traceTerm scale test
  perturbedCorrespondence : ℂ
  correspondenceDefect : ℝ
  correspondenceDefectNonnegative :
    0 ≤ correspondenceDefect
  arithmeticCorrespondenceDisplacement : ℝ
  arithmeticCorrespondenceDisplacement_eq :
    arithmeticCorrespondenceDisplacement =
      ‖perturbedCorrespondence -
        referenceCorrespondence‖
  arithmeticCorrespondenceDisplacementLe :
    arithmeticCorrespondenceDisplacement ≤
      correspondenceDefect
  referenceRegularizationRemainder : ℂ
  referenceRegularizationRemainder_eq :
    referenceRegularizationRemainder =
      trace.regularizationRemainder scale test
  perturbedRegularizationRemainder : ℂ
  regularizationDisplacement : ℝ
  regularizationDisplacementNonnegative :
    0 ≤ regularizationDisplacement
  regularizationDisplacement_eq :
    regularizationDisplacement =
      ‖perturbedRegularizationRemainder -
        referenceRegularizationRemainder‖
  referenceBitfieldRemainder : ℂ
  referenceBitfieldRemainder_eq :
    referenceBitfieldRemainder =
      trace.bitfieldRemainder scale test
  perturbedBitfieldRemainder : ℂ
  bitfieldRemainderDisplacement : ℝ
  bitfieldRemainderDisplacementNonnegative :
    0 ≤ bitfieldRemainderDisplacement
  bitfieldRemainderDisplacement_eq :
    bitfieldRemainderDisplacement =
      ‖perturbedBitfieldRemainder -
        referenceBitfieldRemainder‖
  referenceGlobalDiscrepancy : ℂ
  referenceGlobalDiscrepancy_eq :
    referenceGlobalDiscrepancy =
      trace.discrepancy scale test
  perturbedGlobalDiscrepancy : ℂ
  globalDiscrepancyDefect : ℝ
  globalDiscrepancyDefect_eq :
    globalDiscrepancyDefect =
      ‖perturbedGlobalDiscrepancy -
        referenceGlobalDiscrepancy‖
  globalDefectDecomposition :
    globalDiscrepancyDefect ≤
      lawTraceDisplacement +
        operatorTraceDisplacement +
        arithmeticCorrespondenceDisplacement +
        regularizationDisplacement +
        bitfieldRemainderDisplacement

def BoundaryTraceStabilityCertificate.globalBound
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    {lawPerturbation :
      InvariantLawPerturbation reference}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    {scale : Scale}
    {test : TestFunction}
    (certificate :
      BoundaryTraceStabilityCertificate
        lawPerturbation trace scale test) : ℝ :=
  certificate.traceLipschitz *
      ((lawPerturbation.localDefect : ℝ) /
        (1 - (reference.contraction : ℝ))) +
    certificate.operatorDefect +
    certificate.correspondenceDefect +
    certificate.regularizationDisplacement +
    certificate.bitfieldRemainderDisplacement

theorem boundary_trace_stability
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    {lawPerturbation :
      InvariantLawPerturbation reference}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    {scale : Scale}
    {test : TestFunction}
    (certificate :
      BoundaryTraceStabilityCertificate
        lawPerturbation trace scale test) :
    certificate.globalDiscrepancyDefect ≤
      certificate.globalBound := by
  have lawBound :
      certificate.lawTraceDisplacement ≤
        certificate.traceLipschitz *
          ((lawPerturbation.localDefect : ℝ) /
            (1 - (reference.contraction : ℝ))) :=
    le_trans
      certificate.lawTraceControlled
      (mul_le_mul_of_nonneg_left
        lawPerturbation.invariant_law_perturbation_bound
        certificate.traceLipschitzNonnegative)
  have operatorBound :
      certificate.operatorTraceDisplacement ≤
        certificate.operatorDefect := by
    rw [certificate.operatorTraceDisplacement_eq,
      certificate.operatorDefectDerived]
    exact
      trace.spectralTransform.displacement_le
        scale test
        certificate.referenceOperator
        certificate.perturbedOperator
  exact le_trans
    certificate.globalDefectDecomposition
    (add_le_add
      (add_le_add
        (add_le_add
          (add_le_add
            lawBound
            operatorBound)
          certificate.arithmeticCorrespondenceDisplacementLe)
        le_rfl)
      le_rfl)

end Mathematics.ConnesBitfield
