# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.JuliaColligation.Variantf9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50e95ee545b8b84382d62f2fbedad0be944c0d39` · SHA-256 `f9717ce47fcafc21937bca3baa7641fe1819ff713020d8410fbfb05b8df1e64b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Hardy.DouglasConnector

/-!
# Julia colligation receipt

The colligation is generated only from a certified reduced Douglas connector.
-/

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

structure JuliaColligation
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    {canonical :
      CanonicalTransmission capacity}
    {operations :
      OperatorComposition model}
    {cut : Finset Prime}
    {prime : Prime}
    (douglas :
      ReducedDouglasConnector
        canonical operations cut prime) where
  blockOperator : model.Operator
  unitaryOnDeclaredRange : Prop
  unitaryOnDeclaredRangeProof :
    unitaryOnDeclaredRange
  realizesConnector : Prop
  realizesConnectorProof :
    realizesConnector

end Mathematics.SemiLocalDefect.Hardy
```
