# Complete source: GRWTSK.Analysis.Fourier.Checks.Negative.LargerSliceMissingPositiveSample

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b913a6c5f7c9ba7cad37cf766436a1e89c68625d` · SHA-256 `5baa48827886f4f57d3af3ceba74dd2e2c6042d54a6f1adcb9411d6c39766266`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: positive sample size cannot be omitted from the
larger-slice theorem's conclusion. This has one deliberate type mismatch. -/
import GRWTSK.Analysis.Fourier.ZModLargerSlice

example {p m : ℕ} [NeZero p] (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdensity : (m : ℝ) ≤ (1 - ε) * S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + GRWTSK.ZModLargerSliceParameters.largerSliceConstant ε *
        Real.sqrt (Real.log S.card) / ((S.card : ℝ) * Real.sqrt m) := by
  have source_bound : 1 ≤ m →
      (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
        1 / p + GRWTSK.ZModLargerSliceParameters.largerSliceConstant ε *
          Real.sqrt (Real.log S.card) / ((S.card : ℝ) * Real.sqrt m) :=
    fun hm =>
      GRWTSK.ZModLargerSlice.subsetSumProbability_le_largerSlice
        hp S hn hm ε hε hε1 hdensity z
  exact source_bound
```
