import Mathematics.MobiusOntology.ArithmeticSecurityBridge
import Mathematics.MobiusOntology.SquareRootNorm
import Mathematics.MobiusOntology.QueryToWork

/-!
# Four-domain branch separation

Core ontology, analytic arithmetic, effective security, and the
arithmetic-security bridge have disjoint constructors.
-/

namespace Mathematics.MobiusOntology

inductive ProofDomain
  | coreOntology
  | analyticArithmetic
  | effectiveSecurity
  | arithmeticSecurityBridge
  deriving DecidableEq, Repr

inductive DomainTransition : ProofDomain → ProofDomain → Prop
  | coreStay : DomainTransition .coreOntology .coreOntology
  | analyticStay :
      DomainTransition .analyticArithmetic .analyticArithmetic
  | securityStay :
      DomainTransition .effectiveSecurity .effectiveSecurity
  | bridgeStay :
      DomainTransition
        .arithmeticSecurityBridge .arithmeticSecurityBridge
  | analyticToBridge :
      DomainTransition
        .analyticArithmetic .arithmeticSecurityBridge
  | bridgeToSecurity :
      DomainTransition
        .arithmeticSecurityBridge .effectiveSecurity

theorem no_analytic_to_security_without_bridge :
    ¬ DomainTransition .analyticArithmetic .effectiveSecurity := by
  intro impossible
  cases impossible

inductive ProhibitedCrossBranchInference
  | booleanSatisfiabilityToSemanticSoundness
  | automorphismToHardness
  | functionalEquationToSquareRoot
  | purityToQueryComplexity
  | squareRootToWorkLowerBound
  | mobiusPhaseToZeroKnowledge
  | adversaryBoundToTraceFormula
  deriving DecidableEq, Repr

def ProhibitedCrossBranchInference.admissible
    (_ : ProhibitedCrossBranchInference) : Prop :=
  False

theorem prohibitedCrossBranchInference_rejected
    (inference : ProhibitedCrossBranchInference) :
    ¬ inference.admissible :=
  id

end Mathematics.MobiusOntology
