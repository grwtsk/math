# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DouglasConnector.Variant9b8f9362b9bd1f23ebaa540d4dbff98b5b2dd65ce87e4939cdf19e735af7fd86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4859ca7c7eb180b6a69cc104c8cbc553a319b782` · SHA-256 `9b8f9362b9bd1f23ebaa540d4dbff98b5b2dd65ce87e4939cdf19e735af7fd86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Hardy.CanonicalTransmission

/-!
# Reduced Douglas connectors

The chosen connector is bound to minimal norm, its range support, and the
canonical transmission factorization.
-/

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

structure ReducedDouglasConnector
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    (canonical :
      CanonicalTransmission capacity)
    (operations :
      OperatorComposition model)
    (cut : Finset Prime)
    (prime : Prime) where
  connector : model.Operator
  contraction : Prop
  contractionProof : contraction
  factorization :
    canonical.transmission (insert prime cut) =
      operations.compose
        connector
        (canonical.transmission cut)
  minimalNorm : Prop
  minimalNormProof : minimalNorm
  rangeSupported : Prop
  rangeSupportedProof : rangeSupported
  incrementFactorization : Prop
  incrementFactorizationProof :
    incrementFactorization

end Mathematics.SemiLocalDefect.Hardy
```
