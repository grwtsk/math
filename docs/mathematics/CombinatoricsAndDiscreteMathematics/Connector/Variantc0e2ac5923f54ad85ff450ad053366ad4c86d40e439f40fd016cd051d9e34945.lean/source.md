# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Connector.Variantc0e2ac5923f54ad85ff450ad053366ad4c86d40e439f40fd016cd051d9e34945

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1873d52e76e9d6fea7a5eb23b956c5c0eb9777d9` · SHA-256 `c0e2ac5923f54ad85ff450ad053366ad4c86d40e439f40fd016cd051d9e34945`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Sonin.Space

/-!
# Certified Sonin connectors

Connector composition is proof-bearing.  Merely sharing source and target
digests does not make two transport maps equal.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure SoninConnectorSystem
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (family : SoninSpaceFamily Prime) where
  connector :
    ∀ {source target : Finset Prime},
      source ⊆ target →
      family.Space source →
      family.Space target
  injective :
    ∀ {source target : Finset Prime}
      (subset : source ⊆ target),
      Function.Injective
        (connector
          (source := source)
          (target := target)
          subset)
  identity :
    ∀ (cut : Finset Prime)
      (state : family.Space cut),
      connector
          (source := cut)
          (target := cut)
          (fun _ member => member)
          state =
        state
  compose :
    ∀ {source middle target : Finset Prime}
      (sourceMiddle : source ⊆ middle)
      (middleTarget : middle ⊆ target)
      (state : family.Space source),
      connector
          (source := source)
          (target := target)
          (Finset.Subset.trans
            sourceMiddle middleTarget)
          state =
        connector
          (source := middle)
          (target := target)
          middleTarget
          (connector
            (source := source)
            (target := middle)
            sourceMiddle state)

end Mathematics.SemiLocalDefect.Sonin
```
