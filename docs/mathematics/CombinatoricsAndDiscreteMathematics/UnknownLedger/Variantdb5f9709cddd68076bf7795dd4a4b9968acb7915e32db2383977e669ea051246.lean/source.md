# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.UnknownLedger.Variantdb5f9709cddd68076bf7795dd4a4b9968acb7915e32db2383977e669ea051246

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8d852ffb04e3805dd115b8433bf483b4eb79210` · SHA-256 `db5f9709cddd68076bf7795dd4a4b9968acb7915e32db2383977e669ea051246`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
