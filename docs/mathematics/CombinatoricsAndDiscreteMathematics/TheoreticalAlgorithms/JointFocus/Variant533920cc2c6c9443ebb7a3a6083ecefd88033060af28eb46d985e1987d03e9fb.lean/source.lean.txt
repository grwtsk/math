import Mathematics.AbelReynolds.SemanticBridge

/-!
# Tagged joint frontier

Arithmetic, semantic, and bridge obligations inhabit permanent summands.
Identical finite-field coordinates therefore remain distinct when their
domain tags differ.  Frequency is presentation metadata only.
-/

namespace Mathematics.AbelReynolds

inductive JointObligationDomain
  | sea
  | semantic
  | bridge
  deriving DecidableEq, Repr

structure JointObligation where
  domain : JointObligationDomain
  obligationId : String
  propositionDigest : String
  deriving DecidableEq, Repr

structure JointOriginCoordinate where
  domain : JointObligationDomain
  coordinates : List Nat
  deriving DecidableEq, Repr

theorem equal_coordinates_do_not_erase_domain
    {left right : JointOriginCoordinate}
    (_coordinates : left.coordinates = right.coordinates)
    (domains : left.domain ≠ right.domain) :
    left ≠ right := by
  intro equal
  apply domains
  exact congrArg JointOriginCoordinate.domain equal

structure JointFrontierEntry where
  obligation : JointObligation
  origin : JointOriginCoordinate
  frequency : Nat
  requiredEvidence : String
  deriving DecidableEq, Repr

inductive JointUnknownKind
  | authorityBoundary
  | seaEvidenceBoundary
  | orbitBoundary
  | percolationBoundary
  | transcriptBoundary
  | semanticGraphBoundary
  | chainizationBoundary
  | tensorFactorizationBoundary
  | gaugeBoundary
  | observableBoundary
  | anchorBoundary
  | bridgeBoundary
  | commitBoundary
  deriving DecidableEq, Repr

structure ExactJointCost where
  seaCostDigest : String
  semanticCostDigest : String
  bridgeCostDigest : String
  commitCostDigest : String
  seaCostCertified : seaCostDigest ≠ ""
  semanticCostCertified : semanticCostDigest ≠ ""
  bridgeCostCertified : bridgeCostDigest ≠ ""
  commitCostCertified : commitCostDigest ≠ ""
  deriving Repr

/-- Protected names for quantities that must never collapse by spelling. -/
inductive JointProtectedMeaning
  | arithmeticFrobenius
  | frobeniusMatrixNorm
  | seaSymmetry
  | mpsGauge
  | arithmeticAbelProjector
  | graphAbelFocus
  | seaTally
  | semanticTally
  | noetherianClosure
  | eventClosure
  | arithmeticReuse
  | anchorReuse
  | algebraicFixedness
  | gaugeFixedness
  | observableFixedness
  | arithmeticCompactification
  | semanticClosure
  | gaugeQuotient
  | mappingTorus
  | frontierField
  | seaCoefficientField
  deriving DecidableEq, Repr

end Mathematics.AbelReynolds
