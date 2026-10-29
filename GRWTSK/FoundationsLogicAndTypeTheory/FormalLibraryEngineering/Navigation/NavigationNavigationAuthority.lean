import Mathematics.Oracle.ConceptIR
import Mathematics.Concept.Authority

/-! # Concept navigation, residue, search, and recommendations -/

namespace Mathematics.Oracle

inductive NavigationAuthority
  | navigationOnly
  | candidate
  deriving DecidableEq, Repr

/-- Residual channels are never collapsed into a single untyped score. -/
structure ResidualChannels where
  localResidual : Nat
  coverage : Nat
  sparseSynthesis : Nat
  basisSpan : Nat
  deriving DecidableEq, Repr

structure SearchQuery where
  text : String
  conceptIndexVersion : Digest
  encoderProfile : Digest
  metricProfile : Digest
  deriving DecidableEq, Repr

structure SearchHit where
  concept : ConceptId
  scoreNumerator : Int
  scoreDenominator : Nat
  residuals : ResidualChannels
  authority : NavigationAuthority := .navigationOnly
  deriving DecidableEq, Repr

structure Recommendation where
  concept : ConceptId
  reason : String
  expectedResidualReduction : ResidualChannels
  authority : NavigationAuthority := .navigationOnly
  deriving DecidableEq, Repr

structure InventionProposal where
  candidate : ConceptIR
  admissionStatus : String := "not-reviewed"
  authority : NavigationAuthority := .candidate
  deriving DecidableEq, Repr

end Mathematics.Oracle
