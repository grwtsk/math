# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ModularityCertificate.Variant526bd998fc887c24c7f8d9abd07ca57337d4f12b5abafb8b53ae435d4ac8d443

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fd9cf26237343726270e49027c83d7a4ad0a1cb` · SHA-256 `526bd998fc887c24c7f8d9abd07ca57337d4f12b5abafb8b53ae435d4ac8d443`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.ArithmeticSource

/-!
# Arithmetic quotient and modularity certificate

The representation, eigenform, local Euler comparisons, bad-prime data, and
local--global compatibility are all explicit theorem fields.
-/

namespace Mathematics.MobiusOntology

universe u v w x y

structure ModularityCertificate
    (Representation : Type u) (Eigenform : Type v)
    (Prime : Type w) (LocalFactor : Type x)
    (Snapshot : Type y) where
  enhancement : ArithmeticEnhancement
  representation : Representation
  eigenform : Eigenform
  snapshot : Snapshot
  admittedPrime : Prime → Prop
  representationFactor : Prime → LocalFactor
  eigenformFactor : Prime → LocalFactor
  unramifiedCompatibility :
    ∀ prime,
      admittedPrime prime →
        representationFactor prime = eigenformFactor prime
  badPrimeCompatibility : Prop
  badPrimeCompatibilityProof : badPrimeCompatibility
  localGlobalCompatibility :
    enhancement.localGlobalCompatibility

end Mathematics.MobiusOntology
```
