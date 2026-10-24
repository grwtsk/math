# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BranchSeparation.Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80809b73cc2f0594775f7f282cf32aeddb0d4b39` · SHA-256 `d25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
