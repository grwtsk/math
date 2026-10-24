# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Typicality.Variantc1e1df380ee985f355da877592aede8079ac5bf85984cc9fac270b0c63ae7369

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99620ce6c57e4185c9b950f14fceb7d50be62649` · SHA-256 `c1e1df380ee985f355da877592aede8079ac5bf85984cc9fac270b0c63ae7369`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SpectralClosure.Concentration

/-!
# Simultaneous typicality and independent witness boundary
-/

namespace Mathematics.SpectralClosure

inductive TestClassUniformization
  | finiteRegistryUnionBound
  | finiteEpsilonNet
  | coveringEntropy
  | genericChaining
  | directOperatorNorm
  | finiteExactEnumeration
  deriving DecidableEq, Repr

structure SimultaneousTypicalityObligation where
  testRegistryRef : SpectralId
  uniformization : TestClassUniformization
  complexityRef : SpectralId
  uniformStatement : Prop
  status : ProofDisposition

structure TypicalRealizationProposal
    {width : Nat} where
  realization : Bitfield width
  realizationRef : SpectralId
  arithmeticCutRef : SpectralId
  witnessRef : SpectralId
  proposedTypicalityStatement : Prop

inductive RealizationAdmission
  | proposed
  | independentlyVerified
  | ownerAdmitted
  deriving DecidableEq, Repr

def RealizationAdmission.committed :
    RealizationAdmission → Bool
  | .proposed => false
  | .independentlyVerified => false
  | .ownerAdmitted => true

theorem proposed_realization_cannot_self_commit :
    RealizationAdmission.proposed.committed = false :=
  rfl

end Mathematics.SpectralClosure
```
