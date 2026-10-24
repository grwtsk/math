# Complete source: GRWTSK.Algebra.LinearAlgebra.KNullBridge.Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `934eba5696d1e1679e0a66050d973b4cd2ce4c98` · SHA-256 `2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.ForceDensity.Matrix
import Init.Grind

namespace Think.Kakeya.ForceDensity

def KEqual128 (eps dist : ℝ) : Prop :=
  dist ≤ eps

def KResidueHeat128 (eps dist : ℝ) : ℝ :=
  max 0 (dist - eps)

def KNull (eps normResidual : ℝ) : Prop :=
  KEqual128 eps normResidual

theorem k_null_iff_zero_residue
  (eps dist : ℝ)
  (heps : 0 ≤ eps)
  (hdist : 0 ≤ dist) :
  KNull eps dist ↔ KResidueHeat128 eps dist = 0 := by
  have _ := heps
  have _ := hdist
  unfold KNull KEqual128 KResidueHeat128
  grind

theorem exact_null_transports_to_k_null
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (dist : ℝ)
  (hExactNull : dist = 0) :
  KNull eps dist := by
  unfold KNull KEqual128
  rw [hExactNull]
  exact heps

theorem force_density_bridge_null
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (residualNorm : ℝ)
  (hres : residualNorm = 0) :
  KNull eps residualNorm := by
  unfold KNull KEqual128
  rw [hres]
  exact heps

end Think.Kakeya.ForceDensity
```
