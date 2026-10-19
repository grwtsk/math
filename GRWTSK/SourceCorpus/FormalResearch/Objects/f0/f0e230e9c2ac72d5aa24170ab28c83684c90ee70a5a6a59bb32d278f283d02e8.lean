/-!
# Connector perturbation bounds

Residual terms are explicit fields and cannot disappear in limit notation.
-/

namespace Mathematics.StratifiedBoundary

structure FiniteTracePerturbationCertificate where
  traceDiscrepancy : Nat
  observableLipschitzScale : Nat
  invariantLawDisplacement : Nat
  bound :
    traceDiscrepancy ≤
      observableLipschitzScale * invariantLawDisplacement

theorem finite_trace_perturbation_bound
    (certificate : FiniteTracePerturbationCertificate) :
    certificate.traceDiscrepancy ≤
      certificate.observableLipschitzScale *
        certificate.invariantLawDisplacement :=
  certificate.bound

structure StratumConnectorPerturbationCertificate where
  traceConnectorDefect : Nat
  lawConnectorContribution : Nat
  observableMismatch : Nat
  bound :
    traceConnectorDefect ≤
      lawConnectorContribution + observableMismatch

theorem stratum_connector_perturbation_bound
    (certificate :
      StratumConnectorPerturbationCertificate) :
    certificate.traceConnectorDefect ≤
      certificate.lawConnectorContribution +
        certificate.observableMismatch :=
  certificate.bound

end Mathematics.StratifiedBoundary
