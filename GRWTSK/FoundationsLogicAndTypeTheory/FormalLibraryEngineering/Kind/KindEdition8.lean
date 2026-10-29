import MathDiscovery.Core.Id

/-! # Governed proof-strategy vocabulary -/

namespace MathDiscovery.ProofStrategy

open MathDiscovery

inductive Kind
  | directConstruction
  | introduction
  | application
  | caseAnalysis
  | structuralInduction
  | wellFoundedInduction
  | contradiction
  | exFalso
  | rewriting
  | congruence
  | extensionality
  | witnessConstruction
  | uniqueness
  | quotientInduction
  | finiteEnumeration
  | normalization
  | decisionProcedure
  | reflection
  | orderReasoning
  | algebraicCalculation
  | classicalChoice
  | dependencyDelegation
  deriving DecidableEq, Inhabited

def Kind.id : Kind → ProofStrategyId
  | .directConstruction => ⟨"proof-strategy:direct-construction"⟩
  | .introduction => ⟨"proof-strategy:introduction"⟩
  | .application => ⟨"proof-strategy:application"⟩
  | .caseAnalysis => ⟨"proof-strategy:case-analysis"⟩
  | .structuralInduction => ⟨"proof-strategy:structural-induction"⟩
  | .wellFoundedInduction => ⟨"proof-strategy:well-founded-induction"⟩
  | .contradiction => ⟨"proof-strategy:contradiction"⟩
  | .exFalso => ⟨"proof-strategy:ex-falso"⟩
  | .rewriting => ⟨"proof-strategy:rewriting"⟩
  | .congruence => ⟨"proof-strategy:congruence"⟩
  | .extensionality => ⟨"proof-strategy:extensionality"⟩
  | .witnessConstruction => ⟨"proof-strategy:witness-construction"⟩
  | .uniqueness => ⟨"proof-strategy:uniqueness"⟩
  | .quotientInduction => ⟨"proof-strategy:quotient-induction"⟩
  | .finiteEnumeration => ⟨"proof-strategy:finite-enumeration"⟩
  | .normalization => ⟨"proof-strategy:normalization"⟩
  | .decisionProcedure => ⟨"proof-strategy:decision-procedure"⟩
  | .reflection => ⟨"proof-strategy:reflection"⟩
  | .orderReasoning => ⟨"proof-strategy:order-reasoning"⟩
  | .algebraicCalculation => ⟨"proof-strategy:algebraic-calculation"⟩
  | .classicalChoice => ⟨"proof-strategy:classical-choice"⟩
  | .dependencyDelegation => ⟨"proof-strategy:dependency-delegation"⟩

end MathDiscovery.ProofStrategy
