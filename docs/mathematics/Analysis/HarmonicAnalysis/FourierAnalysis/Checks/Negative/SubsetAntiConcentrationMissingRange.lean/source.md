# Complete source: GRWTSK.Analysis.Fourier.Checks.Negative.SubsetAntiConcentrationMissingRange

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2b4b19912b4f1b7b68cb39e935a072b5a946206` · SHA-256 `2d77d8515c63684ff034050a771182a81eaa8a95a65ee41bf983f29d5d160c0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: the source theorem's logarithmic lower and upper
sample-size restrictions cannot be omitted from its conclusion. -/
import GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers

example {p m : ℕ} [NeZero p] (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + (2 : ℝ) ^ 24 / ((S.card : ℝ) * Real.sqrt m) := by
  have source_bound :=
    GRWTSK.ZModBalancedExpectedLayers.subsetSumProbability_le_source_constant (m := m) hp S hn
  exact source_bound
```
