# Complete source: GRWTSK.Topology.MetricTopology.K128Transport.Variantf9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7df30316b31c2fcd970a2ded7014546e0b374be9` · SHA-256 `f9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Crystalline.BoundaryMeshComparison

namespace Think.Kakeya.Crystalline

def KResidueHeat128 (eps dist : ℝ) : ℝ :=
  if dist - eps < 0 then 0 else dist - eps

theorem k_residue_heat_nonnegative
  (eps dist : ℝ) :
  0 ≤ KResidueHeat128 eps dist := by
  unfold KResidueHeat128
  split
  · decide
  · exact Rat.not_lt.mp ‹¬dist - eps < 0›

end Think.Kakeya.Crystalline
```
