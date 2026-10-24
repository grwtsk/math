# Complete source: GRWTSK.Analysis.FunctionalAnalysis.PacketModel.Variantedd62dcb1695f664bff5ce978f1733193c3083e785b04e30f5890d73795c2511

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bf2c97a53e202fa0840206da0d48b7225d0daa5` · SHA-256 `edd62dcb1695f664bff5ce978f1733193c3083e785b04e30f5890d73795c2511`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP2.All

/-!
# WP3 abstract packet-energy model

The finite core records the algebra required of a later Hilbert–Schmidt
adapter, without importing a trace-class implementation.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure PacketEnergyModel
    (H : Type*)
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] where
  Test :
    Type*
  energy :
    HilbertEnd H →
    Test →
    ℝ
  projectedNormSq :
    HilbertEnd H →
    Test →
    ℝ
  packetNormSq :
    Test →
    ℝ
  packetNormSq_nonnegative :
    ∀ g,
      0 ≤ packetNormSq g
  projectedNormSq_nonnegative :
    ∀ A g,
      0 ≤ projectedNormSq A g
  energy_zero :
    ∀ g,
      energy 0 g = 0
  energy_sub :
    ∀ A B g,
      energy (A - B) g
      =
      energy A g -
      energy B g
  projection_energy_eq :
    ∀ A g,
      OrthogonalProjectionCertificate A →
      energy A g =
      projectedNormSq A g
  projectedNormSq_le_packetNormSq :
    ∀ A g,
      OrthogonalProjectionCertificate A →
      projectedNormSq A g
      ≤
      packetNormSq g

end Mathematics.SemiLocalDefect.SoninCore
```
