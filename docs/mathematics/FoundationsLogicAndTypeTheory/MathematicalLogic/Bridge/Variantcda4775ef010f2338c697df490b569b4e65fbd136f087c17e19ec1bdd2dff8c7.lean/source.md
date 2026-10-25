# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Bridge.Variantcda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d016029d16ed22d9dc28c728af287216d18b89e2` · SHA-256 `cda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.ProjectFiber

/-! # Proof-bearing bridges between project fibers -/

namespace Mathematics.Federation

universe u v

/-- Exact two-sided bridge; construction requires both inverse laws. -/
structure ExactBridge (Source : Type u) (Target : Type v) where
  bridgeId : StableId
  forward : Source → Target
  backward : Target → Source
  leftInverse : Function.LeftInverse backward forward
  rightInverse : Function.RightInverse backward forward
  certificateDigest : Digest

namespace ExactBridge

theorem forward_injective
    {Source : Type u}
    {Target : Type v}
    (bridge : ExactBridge Source Target) :
    Function.Injective bridge.forward :=
  bridge.leftInverse.injective

theorem forward_surjective
    {Source : Type u}
    {Target : Type v}
    (bridge : ExactBridge Source Target) :
    Function.Surjective bridge.forward :=
  bridge.rightInverse.surjective

end ExactBridge

end Mathematics.Federation
```
