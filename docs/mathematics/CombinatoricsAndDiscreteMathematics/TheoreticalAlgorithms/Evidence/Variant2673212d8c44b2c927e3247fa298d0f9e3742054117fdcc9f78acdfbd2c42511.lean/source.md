# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Evidence.Variant2673212d8c44b2c927e3247fa298d0f9e3742054117fdcc9f78acdfbd2c42511

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fae9149ab50576d254ecaf5bf07857bd5419e51` · SHA-256 `2673212d8c44b2c927e3247fa298d0f9e3742054117fdcc9f78acdfbd2c42511`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.ProofStrategy.Observation

/-! # Interpreted proof-strategy evidence -/

namespace MathDiscovery.ProofStrategy

open MathDiscovery MathDiscovery.Extractor

inductive InterpretationAuthority
  | reviewedClassification
  | compiledMotifInterpretation
  | heuristicInference
  deriving DecidableEq, Inhabited

structure StrategyEvidence where
  id : ProofObservationId
  theoremId : DeclarationId
  strategy : Kind
  motifObservationIds : List ProofObservationId
  proofPaths : List (List Nat)
  authority : InterpretationAuthority
  ambiguities : List String
  digest : Digest
  deriving DecidableEq

namespace StrategyEvidence

def Valid (evidence : StrategyEvidence) : Prop :=
  evidence.id.Valid ∧
  evidence.theoremId.Valid ∧
  evidence.strategy.id.Valid ∧
  evidence.motifObservationIds.Nodup ∧
  evidence.motifObservationIds ≠ [] ∧
  evidence.digest.Valid

end StrategyEvidence

end MathDiscovery.ProofStrategy
```
