# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variant68836e454b47019c96b8235cdb60ae3c7d28d5f5b61894abda4dfc184005de88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf6d90101143be3b795a06266a2615b21779b932` · SHA-256 `68836e454b47019c96b8235cdb60ae3c7d28d5f5b61894abda4dfc184005de88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-! # Governed proof-strategy vocabulary -/

namespace Mathematics.ProofStrategy

open Mathematics

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

end Mathematics.ProofStrategy
```
