# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variant912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `902b3804d56148e1db29c1b28e207d17816989ff` · SHA-256 `912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
