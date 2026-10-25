import Mathematics.AbelReynolds.Cost
import Mathematics.AbelReynolds.Geometry
import Mathematics.AbelReynolds.ExtensionField
import Mathematics.AbelReynolds.Orbit
import Mathematics.AbelReynolds.SEA
import Mathematics.AbelReynolds.Stabilization
import Mathematics.AbelReynolds.Symmetry
import Mathematics.AbelReynolds.Template
import Mathematics.AbelReynolds.Specialization

/-!
# Certified symmetry-fixed tally-lifted SEA reuse

The positive payload is deliberately compact.  Its focus certificate binds
the full conjunction that may authorize the positive conclusion.
-/

namespace Mathematics.AbelReynolds

structure UnifiedSEAPayload where
  transcriptDigest : String
  transcriptCertificateDigest : String
  transcriptNodeMetadataDigest : String
  pointCount : Nat
  reusableTally : CertifiedTally
  tallyCount : Nat
  realizationSeparationDigest : String
  extensionFieldBasisDigest : String
  templateDigest : String
  dependencyCertificateDigest : String
  classPrimeFactorizationDigest : String
  primeHoleCertificateDigest : String
  symmetryCertificateDigest : String
  orbitCertificateDigest : String
  transportPathCertificateDigest : String
  terminalIdealDigest : String
  terminalSchemeDigest : String
  percolationCertificateDigest : String
  strataDigest : String
  strataCertificateDigest : String
  terminalTimeDigest : String
  specializationCertificateDigest : String
  fixedReturnDigest : String
  reflectionCertificateDigest : String
  coordinateCertificateDigest : String
  geometricHistoryDigest : String
  reuseCostDigest : String
  reuseCertificateDigest : String
  replayDigest : String
  boundaryCertificateDigest : String
  resultDigest : String
  deriving DecidableEq, Repr

structure UnifiedCutBinding where
  cutDigest : String
  snapshotDigest : String
  contextDigest : String
  classId : String
  primeId : String
  seaBound : Nat
  deriving DecidableEq, Repr

structure CertifiedSymmetryFixedTallyLiftedSEAReuse
    (cut : UnifiedCutBinding)
    (payload : UnifiedSEAPayload) : Prop where
  tallyCorrect :
    payload.reusableTally.length = payload.tallyCount
  realizationSeparated :
    payload.realizationSeparationDigest ≠ ""
  extensionFieldBasisCertified :
    payload.extensionFieldBasisDigest ≠ ""
  templateWellTyped :
    payload.templateDigest ≠ ""
  dependencyExact :
    payload.dependencyCertificateDigest ≠ ""
  classPrimeFactorized :
    payload.classPrimeFactorizationDigest ≠ ""
  primeHolesTyped :
    payload.primeHoleCertificateDigest ≠ ""
  reusableCoreNonempty : payload.reusableTally ≠ []
  symmetryFixed :
    payload.symmetryCertificateDigest ≠ ""
  orbitRelationComplete :
    payload.orbitCertificateDigest ≠ ""
  everyCharacterRetained :
    payload.orbitCertificateDigest ≠ ""
  percolationTerminalAndLeast :
    payload.percolationCertificateDigest ≠ ""
  terminalStrataCorrect :
    payload.strataCertificateDigest ≠ ""
  targetSpecializationAccepted :
    payload.specializationCertificateDigest ≠ ""
  transcriptPointCountSound :
    payload.transcriptCertificateDigest ≠ ""
  transcriptNodesComplete :
    payload.transcriptNodeMetadataDigest ≠ ""
  fixedReturnExact :
    payload.fixedReturnDigest ≠ ""
  geometricReflectionCertified :
    payload.reflectionCertificateDigest ≠ ""
  scalePerspectivePhaseSeparated :
    payload.coordinateCertificateDigest ≠ ""
  reuseOrOptimalityCertified :
    payload.reuseCertificateDigest ≠ ""
  replayExact :
    payload.replayDigest = payload.resultDigest
  boundaryConfined :
    payload.boundaryCertificateDigest ≠ "" ∧
      payload.transportPathCertificateDigest ≠ ""
  cutBound :
    cut.cutDigest ≠ "" ∧
      cut.snapshotDigest ≠ "" ∧
      cut.contextDigest ≠ ""

structure UnifiedCandidate (cut : UnifiedCutBinding) where
  payload : UnifiedSEAPayload
  certificate :
    CertifiedSymmetryFixedTallyLiftedSEAReuse cut payload

end Mathematics.AbelReynolds
