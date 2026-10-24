# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizon.Variant0a3e556c3e76571c9e698dc1bb0ef2ae953cbb75eea08a805f68f47770bbdcd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1242286c23ee8f6a1697611cf4dfec1c34740cb7` · SHA-256 `0a3e556c3e76571c9e698dc1bb0ef2ae953cbb75eea08a805f68f47770bbdcd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Sonin.Connector

/-!
# Finite-horizon Sonin images

Every image is formed inside one declared top cut.  No global compatible
metric is assumed.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure FiniteHorizonImage
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family)
    (source horizon : Finset Prime) where
  sourceSubset : source ⊆ horizon
  member : family.Space horizon → Prop
  member_iff :
    ∀ state,
      member state ↔
        ∃ sourceState,
          connectors.connector sourceSubset sourceState =
            state

structure FiniteHorizonFiltration
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family) where
  image :
    ∀ source horizon,
      FiniteHorizonImage
        connectors source horizon
  nested :
    ∀ {source target horizon}
      (_sourceTarget : source ⊆ target)
      (_targetHorizon : target ⊆ horizon)
      (state : family.Space horizon),
      (image source horizon).member state →
        (image target horizon).member state

end Mathematics.SemiLocalDefect.Sonin
```
