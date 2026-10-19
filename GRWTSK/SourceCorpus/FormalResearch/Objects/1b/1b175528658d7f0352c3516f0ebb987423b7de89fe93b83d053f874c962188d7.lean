import Mathematics.SourceAnalysis.Invariant
import Mathematics.Element.Validation

/-! # Source-analysis completion certificate -/

namespace Mathematics.SourceAnalysis

open Mathematics

structure ValidationCertificate where
  commandCoverage : Digest
  alignmentCoverage : Digest
  contextCoverage : Digest
  witnessCoverage : Digest
  reconstructionDigest : Digest
  unresolvedCount : Nat
  valid : Bool
  deriving DecidableEq, Repr

def ValidationCertificate.Valid (certificate : ValidationCertificate) : Prop :=
  certificate.commandCoverage.Valid ∧ certificate.alignmentCoverage.Valid ∧
    certificate.contextCoverage.Valid ∧ certificate.witnessCoverage.Valid ∧
    certificate.reconstructionDigest.Valid ∧ certificate.unresolvedCount = 0 ∧
    certificate.valid = true

end Mathematics.SourceAnalysis
