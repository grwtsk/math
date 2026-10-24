# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Observation.Variant3336d1fbc166db1452ca210a1a717d25afb3194faf6a05fd88987fc4525c0ffa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54316eb9022d4a730214b25e739565381607ae2e` · SHA-256 `3336d1fbc166db1452ca210a1a717d25afb3194faf6a05fd88987fc4525c0ffa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ProofStrategy.Kind
import Mathematics.Extractor.Schema

/-! # Exact structural proof observations -/

namespace Mathematics.ProofStrategy

open Mathematics Mathematics.Extractor

inductive MotifAuthority
  | compiledProofTerm
  | elaboratorInformationTree
  | sourceAnnotation
  deriving DecidableEq, Inhabited

structure MotifObservation where
  id : ProofObservationId
  theoremId : DeclarationId
  motifId : ProofMotifId
  proofPath : List Nat
  witnessConstants : List Lean.Name
  dependencies : List DependencyEdgeId
  authority : MotifAuthority
  proofDigest : Digest
  digest : Digest
  deriving DecidableEq

namespace MotifObservation

def Valid (observation : MotifObservation) : Prop :=
  observation.id.Valid ∧
  observation.theoremId.Valid ∧
  observation.motifId.Valid ∧
  observation.witnessConstants.Nodup ∧
  observation.dependencies.Nodup ∧
  (∀ dependency ∈ observation.dependencies, dependency.Valid) ∧
  observation.proofDigest.Valid ∧
  observation.digest.Valid

end MotifObservation

end Mathematics.ProofStrategy
```
