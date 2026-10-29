import Mathematics.StratifiedBoundary.Boundary.Perturbation
import Mathematics.StratifiedBoundary.Trace.CylinderTrace

/-!
# Stratified invariant-trace stability

Law displacement, operator displacement, arithmetic correspondence, and both
visible remainder channels remain separate summands.
-/

namespace Mathematics.StratifiedBoundary.Trace

structure TracePerturbationCertificate where
  referenceTrace : ℂ
  perturbedTrace : ℂ
  displacement : ℝ
  displacement_eq :
    displacement =
      ‖perturbedTrace - referenceTrace‖
  traceLipschitz : ℝ
  traceLipschitzNonnegative :
    0 ≤ traceLipschitz
  localKernelDefect : ℝ
  localKernelDefectNonnegative :
    0 ≤ localKernelDefect
  contraction : ℝ
  contractionNonnegative :
    0 ≤ contraction
  contractionLtOne :
    contraction < 1
  lawDisplacement : ℝ
  lawDisplacementBound :
    lawDisplacement ≤
      traceLipschitz *
        (localKernelDefect /
          (1 - contraction))
  operatorDisplacement : ℝ
  correspondenceDisplacement : ℝ
  regularizationDisplacement : ℝ
  bitfieldDisplacement : ℝ
  componentsNonnegative :
    0 ≤ lawDisplacement ∧
    0 ≤ operatorDisplacement ∧
    0 ≤ correspondenceDisplacement ∧
    0 ≤ regularizationDisplacement ∧
    0 ≤ bitfieldDisplacement
  displacementByComponents :
    displacement ≤
      lawDisplacement +
        operatorDisplacement +
        correspondenceDisplacement +
        regularizationDisplacement +
        bitfieldDisplacement

def TracePerturbationCertificate.globalBudget
    (certificate :
      TracePerturbationCertificate) : ℝ :=
  certificate.traceLipschitz *
      (certificate.localKernelDefect /
        (1 - certificate.contraction)) +
    certificate.operatorDisplacement +
    certificate.correspondenceDisplacement +
    certificate.regularizationDisplacement +
    certificate.bitfieldDisplacement

theorem finite_trace_perturbation_bound
    (certificate :
      TracePerturbationCertificate) :
    certificate.displacement ≤
      certificate.globalBudget := by
  calc
    certificate.displacement ≤
        certificate.lawDisplacement +
          certificate.operatorDisplacement +
          certificate.correspondenceDisplacement +
          certificate.regularizationDisplacement +
          certificate.bitfieldDisplacement :=
      certificate.displacementByComponents
    _ ≤
        certificate.traceLipschitz *
            (certificate.localKernelDefect /
              (1 - certificate.contraction)) +
          certificate.operatorDisplacement +
          certificate.correspondenceDisplacement +
          certificate.regularizationDisplacement +
          certificate.bitfieldDisplacement := by
      gcongr
      exact certificate.lawDisplacementBound

structure StratumTraceConnectorBound where
  connectorTraceDefect : ℝ
  traceLipschitz : ℝ
  kernelCoherenceDefect : ℝ
  contraction : ℝ
  contractionLtOne :
    contraction < 1
  observableMismatch : ℝ
  connectorBound :
    connectorTraceDefect ≤
      traceLipschitz *
          (kernelCoherenceDefect /
            (1 - contraction)) +
        observableMismatch

theorem stratum_connector_perturbation_bound
    (certificate :
      StratumTraceConnectorBound) :
    certificate.connectorTraceDefect ≤
      certificate.traceLipschitz *
          (certificate.kernelCoherenceDefect /
            (1 - certificate.contraction)) +
        certificate.observableMismatch :=
  certificate.connectorBound

structure LimitTraceStabilityCertificate where
  limitTraceDefect : ℝ
  finiteKernelBudget : ℝ
  projectiveCoherenceBudget : ℝ
  observableMismatch : ℝ
  visibleRemainderBudget : ℝ
  bound :
    limitTraceDefect ≤
      finiteKernelBudget +
        projectiveCoherenceBudget +
        observableMismatch +
        visibleRemainderBudget

theorem limit_trace_stability
    (certificate :
      LimitTraceStabilityCertificate) :
    certificate.limitTraceDefect ≤
      certificate.finiteKernelBudget +
        certificate.projectiveCoherenceBudget +
        certificate.observableMismatch +
        certificate.visibleRemainderBudget :=
  certificate.bound

end Mathematics.StratifiedBoundary.Trace
