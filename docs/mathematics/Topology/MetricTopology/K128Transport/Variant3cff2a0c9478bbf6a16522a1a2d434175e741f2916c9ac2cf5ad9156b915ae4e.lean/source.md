# Complete source: GRWTSK.Topology.MetricTopology.K128Transport.Variant3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `077b51c1fb60beb074fe3926be081ba764205063` · SHA-256 `3cff2a0c9478bbf6a16522a1a2d434175e741f2916c9ac2cf5ad9156b915ae4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.HasseWeil.Torsion

namespace Think.Kakeya.HasseWeil

theorem torsion_residue_heat_nonnegative
  (eps dist : ℝ) :
  0 ≤ TorsionResidueHeat eps dist := by
  unfold TorsionResidueHeat
  split
  · decide
  · exact Rat.not_lt.mp ‹¬dist - eps < 0›

def k128_torsion_iff_zero_residue : String :=
  "proof-pending: KTorsionClaim eps dist iff TorsionResidueHeat eps dist = 0 under nonnegative epsilon and distance"

theorem exact_torsion_transports_to_k128
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (dist_nP_O : ℝ)
  (hExactDistZero : dist_nP_O = 0) :
  KTorsionClaim eps dist_nP_O := by
  unfold KTorsionClaim KEqual
  rw [hExactDistZero]
  exact heps

end Think.Kakeya.HasseWeil
```
