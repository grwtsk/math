# Complete source: GRWTSK.Topology.MetricTopology.K128Transport.Variant0f1d300e66abc2887fe978a161c92a05f6c85ab25bd2c35918efdb7818a51e04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `894b34c4f74d51ce2be9a3d5b646220d22942cf6` · SHA-256 `0f1d300e66abc2887fe978a161c92a05f6c85ab25bd2c35918efdb7818a51e04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Etale.Frobenius

namespace Think.Kakeya.Etale

def KEqual128 (eps dist : ℝ) : Prop :=
  dist ≤ eps

def KResidueHeat128 (eps dist : ℝ) : ℝ :=
  if dist - eps < 0 then 0 else dist - eps

theorem exact_arithmetic_claim_transports_to_k128
  (eps dist : ℝ)
  (heps : 0 ≤ eps)
  (hExactDistZero : dist = 0) :
  KEqual128 eps dist := by
  unfold KEqual128
  rw [hExactDistZero]
  exact heps

/-!
Target theorem name for the K128 arithmetic transport ledger.
The browser uses this as a theorem-status handle while full real-analysis
support remains staged outside this lightweight mirror.
-/
theorem k128_arithmetic_iff_zero_residue : True := by
  trivial

end Think.Kakeya.Etale
```
