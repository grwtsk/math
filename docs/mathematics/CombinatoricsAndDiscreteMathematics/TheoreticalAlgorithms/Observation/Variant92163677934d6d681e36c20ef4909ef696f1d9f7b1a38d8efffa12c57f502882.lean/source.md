# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Observation.Variant92163677934d6d681e36c20ef4909ef696f1d9f7b1a38d8efffa12c57f502882

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19cfe1aebbabde95029f5f4518256150d6dc887b` · SHA-256 `92163677934d6d681e36c20ef4909ef696f1d9f7b1a38d8efffa12c57f502882`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.ProofStrategy.Kind
import MathDiscovery.Extractor.Schema

/-! # Exact structural proof observations -/

namespace MathDiscovery.ProofStrategy

open MathDiscovery MathDiscovery.Extractor

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

end MathDiscovery.ProofStrategy
```
