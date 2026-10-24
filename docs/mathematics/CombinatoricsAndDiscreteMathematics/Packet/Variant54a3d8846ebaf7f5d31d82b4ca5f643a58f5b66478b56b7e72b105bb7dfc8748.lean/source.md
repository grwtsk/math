# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Packet.Variant54a3d8846ebaf7f5d31d82b4ca5f643a58f5b66478b56b7e72b105bb7dfc8748

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b5f41f74e6b26af33845aeae724ac5c80ff6a05` · SHA-256 `54a3d8846ebaf7f5d31d82b4ca5f643a58f5b66478b56b7e72b105bb7dfc8748`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ShapleyAttribution

/-!
# Positive packet functionals

The packet functional abstracts `Tr(W* A W)`.  Its algebraic and positivity
laws are proof-bearing and digests remain metadata only.
-/

namespace Mathematics.SemiLocalDefect.Trace

open scoped BigOperators

universe uTest

structure DefectPacket
    (model : OperatorModel)
    (Test : Type uTest) where
  energy :
    Test → model.Operator → ℝ
  packetNormSq : Test → ℝ
  packetNormSq_nonnegative :
    ∀ test, 0 ≤ packetNormSq test
  map_zero :
    ∀ test, energy test 0 = 0
  map_add :
    ∀ test left right,
      energy test (left + right) =
        energy test left + energy test right
  map_sub :
    ∀ test left right,
      energy test (left - right) =
        energy test left - energy test right
  map_sum :
    ∀ {Index : Type} [DecidableEq Index]
      (test : Test)
      (indices : Finset Index)
      (operator : Index → model.Operator),
      energy test (∑ index ∈ indices, operator index) =
        ∑ index ∈ indices,
          energy test (operator index)
  nonnegative :
    ∀ test operator,
      model.Nonnegative operator →
      0 ≤ energy test operator
  identity_energy :
    ∀ test,
      energy test model.identity =
        packetNormSq test
  digest : CertificateDigest

end Mathematics.SemiLocalDefect.Trace
```
