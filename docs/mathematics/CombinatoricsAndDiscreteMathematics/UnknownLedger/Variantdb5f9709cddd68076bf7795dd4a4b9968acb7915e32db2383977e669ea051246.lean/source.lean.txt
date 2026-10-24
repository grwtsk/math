import Mathlib.Tactic.DeriveFintype
import Mathematics.Resolution.ArithmeticSecurityMacro

/-!
# Conservative unknown ledgers

Missing evidence is represented by a named constructor.  It is never encoded
as false, zero, rejection, or an absent bit.
-/

namespace Mathematics.MobiusOntology

inductive CoreUnknownKind
  | controlledMap
  | lipschitzBound
  | residualPropagation
  | grading
  | shellGeometry
  | dependencyComplex
  | proofAlternativeCompleteness
  | closureOperator
  | admissibilityMask
  | frontierPerfectness
  | coneOverlap
  | dominatorRelation
  | growthSubmodularity
  | behavioralQuotient
  | coarseGrainingStability
  | equationDomain
  | nullstellensatz
  | schemeSemantics
  | automorphismAction
  | holonomy
  | cycleConsistency
  | galoisCocycle
  | effectiveDescent
  | yonedaCompleteness
  | ontologyObservation
  | ontologySeparation
  | continuationCoverage
  | finiteBehavioralQuotient
  | compactificationExtension
  | twistEquivariance
  | equivariantEncoding
  | transitionRealization
  | shiftRealization
  | quantization
  | overflowDomain
  | booleanCorrespondence
  | booleanIdeal
  | hammingEncoding
  | boundaryTransport
  | snapshotAuthority
  | replay
  deriving DecidableEq, Repr, Fintype

inductive ArithmeticUnknownKind
  | arithmeticSource
  | structuralIncidence
  | projectorOrigin
  | arithmeticEssentiality
  | nonfactorization
  | frobenius
  | hasseWeil
  | modularity
  | automorphicRealization
  | localGlobalCompatibility
  | statisticalModel
  deriving DecidableEq, Repr, Fintype

inductive AnalyticUnknownKind
  | scaleAndNorm
  | discrepancyIdentification
  | growthToDiscrepancyBridge
  | invariantBias
  | traceIdentity
  | traceRegularization
  | traceRemainder
  | tracePurityBridge
  | spectralHalfPlane
  | weightNormalization
  | exceptionalSpectrum
  | spectralMultiplicity
  | spectralConditioning
  | jordanOrder
  | logarithmicMechanism
  | uniformConstants
  | bitfieldSquareRootBudget
  deriving DecidableEq, Repr, Fintype

inductive SecurityUnknownKind
  | effectivePresentation
  | securityGame
  | oracleInterface
  | gamePreservingAutomorphisms
  | adversaryWitness
  | queryToWork
  | zeroKnowledgeSimulator
  | knowledgeExtractor
  | succinctnessMechanism
  deriving DecidableEq, Repr, Fintype

/-!
Contractivity changes the shape of traversal unknownness without granting
arithmetic, analytic, or semantic authority.  The constructors distinguish
the obligations introduced by an invariant contractive basin from the
independent claims that contraction cannot discharge.
-/
inductive ContractiveBoundaryUnknownKind
  | verificationBranch
  | verificationResidual
  | basinMembership
  | basinInvariance
  | robustBasinInvariance
  | finiteNormalFormEquality
  | perturbationTail
  | boundaryIdentification
  | commonBoundaryFixation
  | uniformContraction
  | verificationLeftInverse
  | logarithmBranch
  | derivativeToLipschitzBridge
  | observableLipschitzBound
  | replayRefinement
  | contractionToSquareRootScale
  | recurrence
  | escape
  | neutralDynamics
  | admissibilityMask
  | structuralIncidence
  | arithmeticEssentiality
  | automorphicRealization
  | traceIdentity
  | tracePurityBridge
  | spectralHalfPlane
  | invariantBias
  | growthToDiscrepancyBridge
  | periodicAttractor
  | basinDecomposition
  | scheduleSensitiveLimit
  | errorAmplification
  | boundaryBifurcation
  deriving DecidableEq, Repr, Fintype

inductive MobiusOntologyUnknownKind
  | core (kind : CoreUnknownKind)
  | arithmetic (kind : ArithmeticUnknownKind)
  | analytic (kind : AnalyticUnknownKind)
  | security (kind : SecurityUnknownKind)
  | contractive (kind : ContractiveBoundaryUnknownKind)
  | bridge
      (kind :
        Mathematics.Resolution.ArithmeticSecurityMacroObligation)
  deriving DecidableEq, Repr

def terminalBridgeUnknowns :
    Finset MobiusOntologyUnknownKind :=
  {
    .bridge .arithmeticSecurityFunctor,
    .bridge .traceToAdversaryBridge,
    .bridge .purityToHardnessBridge
  }

end Mathematics.MobiusOntology
